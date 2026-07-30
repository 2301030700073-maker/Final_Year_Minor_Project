.class public Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "LegacyPhoneNumberListAdapter.java"


# static fields
.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "_id"

    const-string v1, "type"

    const-string v2, "label"

    const-string v3, "number"

    const-string v4, "display_name"

    const-string v5, "phonetic_name"

    .line 35
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    const/4 v0, 0x5

    .line 96
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x1

    .line 101
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 102
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 103
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 108
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 109
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 88
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 89
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 91
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 0

    .line 60
    sget-object p2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 61
    sget-object p2, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string p2, "display_name"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method public getPhoneUri(I)Landroid/net/Uri;
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    .line 72
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 73
    sget-object p1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 80
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
