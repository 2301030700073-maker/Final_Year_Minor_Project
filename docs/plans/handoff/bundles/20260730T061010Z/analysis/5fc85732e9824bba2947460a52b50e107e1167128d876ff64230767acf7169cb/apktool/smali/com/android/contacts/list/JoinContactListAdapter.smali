.class public Lcom/android/contacts/list/JoinContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "JoinContactListAdapter.java"


# instance fields
.field private mTargetContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/IndexerListAdapter;->setIndexedPartition(I)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected addPartitions()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(ZZ)V

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 193
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 195
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindNameAndViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 185
    :cond_1
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    const/4 p4, 0x0

    .line 186
    invoke-virtual {p1, p4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 188
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindNameAndViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_0
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 4

    .line 69
    check-cast p1, Lcom/android/contacts/list/JoinContactLoader;

    .line 71
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 72
    iget-wide v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p3, "suggestions"

    .line 73
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const/4 v0, 0x4

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/JoinContactLoader;->setSuggestionUri(Landroid/net/Uri;)V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/JoinContactLoader;->setProjection([Ljava/lang/String;)V

    .line 87
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "directory"

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 91
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p3, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 92
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 94
    :cond_1
    sget-object p3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/android/contacts/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    .line 96
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p3, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 97
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 99
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    const-string p3, "_id!=?"

    .line 100
    invoke-virtual {p1, p3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    .line 101
    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_2

    const-string p2, "sort_key"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "sort_key_alt"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 2

    const/4 p1, 0x0

    .line 203
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 p1, 0x6

    .line 204
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewType(II)I

    move-result p1

    return p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0901d7

    const p3, 0x7f0c006c

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f1001f6

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    .line 144
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f1001f7

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/JoinContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    return-void
.end method

.method public setTargetContactId(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    return-void
.end method
