.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V
    .locals 2

    .line 123
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "directory"

    .line 124
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p0, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryById(J)Lcom/android/contacts/list/DirectoryPartition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "limit"

    .line 127
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p2, "deferred_snippeting"

    const-string p3, "1"

    .line 130
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    return-void

    .line 176
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x8

    if-eq v0, v1, :cond_5

    const/4 p4, -0x5

    if-eq v0, p4, :cond_4

    const/4 p4, -0x4

    if-eq v0, p4, :cond_3

    const/4 p4, -0x3

    if-eq v0, p4, :cond_2

    goto :goto_0

    :cond_2
    const-string p4, "in_visible_group=1"

    .line 199
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p4, " AND has_phone_number=1"

    .line 201
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p4, "starred!=0"

    .line 191
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p4, "has_phone_number=1"

    .line 195
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 213
    :cond_5
    iget-object v0, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "account_type"

    .line 214
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, " AND "

    .line 218
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "account_name"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object p4, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string p4, "account_type IS NULL AND account_name IS NULL AND data_set IS NULL"

    .line 223
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_7
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 229
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    return-void
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    .line 268
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isGroupMembersFilter()Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 235
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 243
    :cond_1
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 246
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDisplayPhotos()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 255
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindNameAndViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 256
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 259
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 261
    :cond_4
    invoke-virtual {p1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7

    .line 54
    instance-of v0, p1, Lcom/android/contacts/list/FavoritesAndContactsLoader;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/FavoritesAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->shouldIncludeFavorites()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/FavoritesAndContactsLoader;->setLoadFavorites(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    const-string v2, "sort_key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string p2, "0"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isGroupMembersFilter()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    .line 71
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string p2, "display_name LIKE ?1 OR display_name_alt LIKE ?1"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    new-array p2, v3, [Ljava/lang/String;

    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v4

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Lcom/android/contacts/compat/ContactsCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    if-eqz v1, :cond_5

    .line 92
    iget v5, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v6, -0x8

    if-ne v5, v6, :cond_5

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListAdapter;->getDataProjectionForContacts(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, v3, :cond_7

    if-nez v0, :cond_6

    goto :goto_2

    .line 105
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", sort_key"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    const-string v2, "sort_key_alt"

    goto :goto_2

    .line 111
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", sort_key_alt"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_2
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5

    .line 134
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x6

    if-eqz p4, :cond_2

    .line 136
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, -0x8

    if-ne v2, v3, :cond_2

    .line 144
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :cond_2
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-nez v4, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 149
    invoke-static {v0}, Lcom/android/contacts/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_3
    if-eqz p4, :cond_6

    .line 152
    iget p2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 p3, -0x3

    if-eq p2, p3, :cond_6

    if-eq p2, v1, :cond_6

    .line 155
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 156
    iget p3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz p3, :cond_4

    const/4 v0, -0x7

    if-ne p3, v0, :cond_5

    .line 158
    :cond_4
    invoke-virtual {p4, p2}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 160
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 163
    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method
