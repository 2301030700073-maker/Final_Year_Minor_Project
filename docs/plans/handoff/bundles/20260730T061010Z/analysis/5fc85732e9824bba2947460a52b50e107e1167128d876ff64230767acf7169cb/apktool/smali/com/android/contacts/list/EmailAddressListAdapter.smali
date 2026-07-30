.class public Lcom/android/contacts/list/EmailAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "EmailAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;
    }
.end annotation


# instance fields
.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x1

    .line 144
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 146
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 152
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 11

    const/4 v0, 0x4

    .line 171
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 172
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

    .line 176
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object p2

    move-object v10, p2

    goto :goto_1

    :cond_1
    move-object v10, v0

    .line 179
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

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 2

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p2

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    .line 159
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 161
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 134
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 135
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 136
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 138
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 139
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX"

    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    :cond_2
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "directory"

    .line 90
    invoke-virtual {v0, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "remove_duplicate_entries"

    .line 92
    invoke-virtual {v0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 96
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$000()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$100()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_4

    const-string p2, "sort_key"

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p2, "sort_key_alt"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 2

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 119
    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 37
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/EmailAddressListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 125
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    return-object p1
.end method
