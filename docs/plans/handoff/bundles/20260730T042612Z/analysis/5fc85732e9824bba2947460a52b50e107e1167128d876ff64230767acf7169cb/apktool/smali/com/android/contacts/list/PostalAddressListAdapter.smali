.class public Lcom/android/contacts/list/PostalAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PostalAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;
    }
.end annotation


# instance fields
.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 11

    const/4 v0, 0x4

    .line 162
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 163
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :goto_0
    const/4 v0, 0x0

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x5

    .line 168
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object p2

    move-object v10, p2

    goto :goto_1

    :cond_1
    move-object v10, v0

    .line 172
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method protected bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x1

    .line 135
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 137
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 143
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 2

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p2

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    .line 150
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 152
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 125
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 126
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 127
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 129
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 130
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 1

    .line 78
    sget-object p2, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "remove_duplicate_entries"

    const-string v0, "true"

    .line 79
    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "android.provider.extra.ADDRESS_BOOK_INDEX"

    .line 81
    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 86
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$000()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$100()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_2

    const-string p2, "sort_key"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "sort_key_alt"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 109
    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/PostalAddressListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 115
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    return-object p1
.end method
