-- Get all contacts with name "Aileen", "Daniel" or "Frank"
SELECT contact.id, contact.name, contact.LastName, contact.BusinessID
FROM contact
WHERE contact.Name IN ( "Aileen", "Daniel", "Frank")
order by contact.Name, contact.LastName;

-- Get all users with selected busineses
SELECT aspnetusers.NormalizedEmail , business.BusinessLegalName
FROM aspnetusers 
join business
On aspnetusers.SelectedBusinessID = business.ID;

-- Get all stock items with their businesses
select item.ID, item.Title, business.BusinessName
from item
join business
on item.BusinessID = business.ID
order by business.ID;

-- Get all itemgooglecategoryrecords
select * from itemgooglecategoryrecord;

-- Get the Stock Items with their 
select count(itemgooglecategoryrecord.ID), itemgooglecategoryrecord.ID, itemgooglecategory.Name, item.Title
from itemgooglecategoryrecord
join itemgooglecategory
join item
on itemgooglecategoryrecord.ItemID = item.ID and itemgooglecategoryrecord.ItemGoogleCategoryID = itemgooglecategory.ID;

-- Get the number of Admin Users for each Business Tenant
select count(businessProfileRecord.ID) as AdminsCount, aspnetusers.NormalizedEmail, business.BusinessLegalName
from businessProfileRecord
join Business
join aspnetusers
on businessProfileRecord.BusinessID = Business.ID and businessProfileRecord.AccountHolderID = aspnetusers.ID
group by Business.ID;


-- Find the names of the contacts with payments on production and the payment's owner business
select distinct contact.ID, contact.Name, contact.LastName, sum(payment.BaseCost),  business.BusinessLegalName
from walletaccount
join contact
join payment
join business
on payment.EmmisorWalletAccountID = walletaccount.ID 
and walletaccount.ContactID = contact.ID
and payment.businessID = business.ID
and payment.Test = false
group by contact.ID, business.ID;


-- Get the root Business Profile Record
D0ROP PROCEDURE `abs_prod`.`GetRootBusinessProfileRecord`;

delimiter &&
create procedure GetRootBusinessProfileRecord()
begin 
	select bpr.ID, aspnetusers.email
	from businessprofilerecord as bpr
	join aspnetusers
	where bpr.IsAdmin = true
	and bpr.IsRoot = true
	and bpr.IsBusinessOwner = true
	and bpr.BusinessID = (
		-- Get the root tenant
		select business.id 
		from business 
		order by business.CreationTimestamp 
		limit 1
	)
	LIMIT 1;
end &&
delimiter ;

-- Get the root User
select u.id, u.normalizedEmail, u.email, u.name, u.lastName 
from aspnetusers as u 
where u.ID = (
	-- Get the root Business Profile REcord
	select bpr.AccountHolderID
	from businessprofilerecord as bpr
	where bpr.IsAdmin = true
	and bpr.IsRoot = true
	and bpr.IsBusinessOwner = true
	and bpr.BusinessID = (
		-- Get the root tenant
		select business.id 
		from business 
		order by business.CreationTimestamp 
		limit 1
	)
	LIMIT 1
);



-- Find all contacts created by the root user

select c.ID, c.businessID, b.BusinessLegalName
from contact as c
right join business as b
on c.businessprofilerecordID = (
	select bpr.ID
	from businessprofilerecord as bpr
	where bpr.IsAdmin = true
	and bpr.IsRoot = true
	and bpr.IsBusinessOwner = true
	and bpr.BusinessID = (
		select business.id 
		from business 
		order by business.CreationTimestamp desc 
		limit 1
	)
	LIMIT 1
)
group by b.ID;


-- Get contacts count where BPR is null
select count(contact.ID)
from contact
where contact.BusinessProfileRecordID != NULL;

-- Get all social profiles with follows count

select count(followrecord.ID) as FollowersCount, socialProfile.ID
from followrecord
join socialProfile
on followrecord.FollowedSocialProfileID = socialProfile.ID 
group by socialProfile.ID;

-- Get all social profiles with followers count

select count(followrecord.ID) as FollowersCount, socialProfile.ID
from followrecord
join socialProfile
on followrecord.FollowerSocialProfileID = socialProfile.ID 
group by socialProfile.ID;


-- Get all social profiles with more than 1 followers

select *
from aspnetusers
where aspnetusers.ID in (

	SELECT  sp.AccountHolderID
	from socialProfile as sp

	join followrecord as fr
	on fr.FollowedSocialProfileID = sp.ID

	join aspnetusers as usr
	on usr.ID = sp.accountHolderID

	group by sp.ID
    
);






-- Get the number of contacts for each business tenant
SELECT c.businessID, biz.BusinessName, COUNT(c.ID) AS nContacts
FROM contact AS c
JOIN business AS biz ON biz.ID = c.BusinessID
GROUP BY c.businessID 
ORDER BY nContacts ASC;

-- Get the number of stock items for each business tenant who has any Stock Item
SELECT i.businessID, biz.BusinessName, COUNT(i.ID) AS nContacts
FROM item AS i
JOIN business AS biz ON biz.ID = i.BusinessID
GROUP BY i.businessID 
ORDER BY nContacts ASC;

-- Get the number of stock items on each cart

SELECT c.ID,c.Type, COUNT(cr.ItemID) AS nStockItems
FROM cartrecord AS cr
JOIN cart AS c
on c.ID = cr.CartID
GROUP BY c.ID 
ORDER BY nStockItems ASC;

-- Get cart records whose cartID is null
select * 
FROM cartrecord 
where CartID is NULL;


-- Get the RecentlyViewedItemRecords count
select Count(*) 
FROM cartrecord
where Discriminator = "RecentlyViewedItemRecord" ;

-- Get the ItemCartRecords count
select *
FROM cartrecord
where Discriminator = "ItemCartRecord" ;

-- Get the ItemToCompareRecords count
select *
FROM cartrecord
where Discriminator = "ItemToCompareRecord" ;


-- Get the top stock items per cart
delimiter &&
create procedure GetTopItemsPerCart()
begin 
	SELECT i.ID, COUNT(i.ID) AS nStockItems
	FROM item AS i
	JOIN cartrecord AS cr 
	on i.ID = cr.ItemID
	GROUP BY i.ID 
	ORDER BY nStockItems ASC;
end &&

delimiter ;

call GetTopItemsPerCart();
call GetRootBusinessProfileRecord();


create view GetHolders
as 
select * from aspnetusers;

select * from GetHolders;

select *
from aspnetusers;

select aspnetusers.ID, count(businessprofilerecord.ID)
from aspnetusers
left join businessprofilerecord 
on aspnetusers.ID = businessprofilerecord.AccountHolderID
group by aspnetusers.ID
having count(businessprofilerecord.ID) > -1
order by count(businessprofilerecord.ID) desc;