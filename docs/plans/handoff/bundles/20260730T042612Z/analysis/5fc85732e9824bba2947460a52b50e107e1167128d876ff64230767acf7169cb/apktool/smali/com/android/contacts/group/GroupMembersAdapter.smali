.class public Lcom/android/contacts/group/GroupMembersAdapter;
.super Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;
.source "GroupMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;
    }
.end annotation


# instance fields
.field private mDisplayDeleteButtons:Z

.field private mGroupId:J

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1001a6

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method private bindDeleteButton(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mDisplayDeleteButtons:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getDeleteContactListener()Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/contacts/list/ContactListItemView;->getDeleteImageButton(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;I)Landroidx/appcompat/widget/AppCompatImageButton;

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDeleteImageButton()V

    :goto_0
    return-void
.end method

.method private bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x6

    .line 168
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method


# virtual methods
.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/list/IndexerListAdapter$Placement;

    move-result-object p2

    .line 161
    iget-object p2, p2, Lcom/android/contacts/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 163
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 6

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 149
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 150
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/group/GroupMembersAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 151
    invoke-direct {p0, p1, p3}, Lcom/android/contacts/group/GroupMembersAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;III)V

    .line 154
    invoke-direct {p0, p1, p4}, Lcom/android/contacts/group/GroupMembersAdapter;->bindDeleteButton(Lcom/android/contacts/list/ContactListItemView;I)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 2

    .line 109
    sget-object p2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-wide/16 v0, 0x0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "directory"

    .line 110
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v0, "true"

    .line 112
    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    const-string p2, "mimetype=? AND data1=?"

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "vnd.android.cursor.item/group_membership"

    aput-object v0, p2, p3

    .line 119
    iget-wide v0, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mGroupId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 124
    invoke-static {}, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->access$000()[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/android/contacts/group/GroupMembersAdapter$GroupMembersQuery;->access$100()[Ljava/lang/String;

    move-result-object p2

    .line 122
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, v0, :cond_1

    const-string p2, "sort_key"

    goto :goto_1

    :cond_1
    const-string p2, "sort_key_alt"

    .line 127
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method public getContactId(I)J
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    .line 95
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 88
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/group/GroupMembersAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 141
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setDisplayDeleteButtons(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mDisplayDeleteButtons:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGroupId(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/android/contacts/group/GroupMembersAdapter;->mGroupId:J

    return-void
.end method
