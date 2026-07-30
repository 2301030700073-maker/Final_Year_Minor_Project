.class public Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;
.super Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;
.source "MultiSelectPhoneNumbersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter$PhoneQuery;
    }
.end annotation


# instance fields
.field private mContactIdsFilter:[J

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mContactIdsFilter:[J

    const v0, 0x104000e

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x1

    .line 177
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 179
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 185
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 7

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 146
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 148
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 p2, 0x4

    .line 150
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 151
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long p2, v0, v5

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 157
    :goto_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 159
    invoke-virtual {p0, p1, p3, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    if-eqz p2, :cond_1

    .line 161
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;III)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->unbindName(Lcom/android/contacts/list/ContactListItemView;)V

    .line 166
    invoke-virtual {p1, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 168
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v2, "true"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    :cond_2
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "directory"

    .line 99
    invoke-virtual {v0, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 103
    iget-object p2, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mContactIdsFilter:[J

    if-eqz p2, :cond_3

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contact_id IN ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mContactIdsFilter:[J

    .line 105
    invoke-static {p3}, Lcom/android/contacts/group/GroupUtil;->convertArrayToString([J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    .line 109
    sget-object p2, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_4
    sget-object p2, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_5

    const-string p2, "sort_key"

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p2, "sort_key_alt"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 137
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    return-object p1
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.android.contacts.extra.SELECTION_ITEM_LIST"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListAdapter;->mContactIdsFilter:[J

    return-void
.end method

.method protected unbindName(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    return-void
.end method
