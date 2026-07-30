.class public abstract Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "MultiSelectEntryContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;,
        Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;
    }
.end annotation


# instance fields
.field private final mContactIdColumnIndex:I

.field private mDeleteContactListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

.field private mDisplayCheckBoxes:Z

.field private mSelectedContactIds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedContactsListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    .line 57
    iput p2, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mContactIdColumnIndex:I

    return-void
.end method

.method private bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 182
    iget-boolean v1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDisplayCheckBoxes:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 185
    iget-boolean v1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDisplayCheckBoxes:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    .line 190
    iget p3, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mContactIdColumnIndex:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 191
    iget-object v1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 193
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideCheckBox()V

    return-void
.end method


# virtual methods
.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;III)V
    .locals 12

    .line 169
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v7, v1

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v7, v3

    :goto_0
    cmp-long v0, v7, v1

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    .line 172
    invoke-virtual {p0, p2, v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, p0

    const/4 v1, 0x0

    :goto_1
    move-object v11, v1

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v10

    invoke-virtual/range {v5 .. v11}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 4

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 156
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getContactColumnIdIndex()I

    move-result p4

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 158
    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;Z)V

    return-void
.end method

.method public getContactColumnIdIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mContactIdColumnIndex:I

    return v0
.end method

.method public getDeleteContactListener()Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDeleteContactListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getContactColumnIdIndex()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedContactIds()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getSelectedContactIdsArray()[J
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/android/contacts/group/GroupUtil;->convertLongSetToLongArray(Ljava/util/Set;)[J

    move-result-object v0

    return-object v0
.end method

.method public hasSelectedItems()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayingCheckBoxes()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDisplayCheckBoxes:Z

    return v0
.end method

.method public setDeleteContactListener(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDeleteContactListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

    return-void
.end method

.method public setDisplayCheckBoxes(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mDisplayCheckBoxes:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 117
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactsListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;->onSelectedContactsChanged()V

    :cond_0
    return-void
.end method

.method public setSelectedContactIds(Ljava/util/TreeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    .line 104
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactsListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;->onSelectedContactsChanged()V

    :cond_0
    return-void
.end method

.method public setSelectedContactsListener(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactsListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;

    return-void
.end method

.method public toggleSelectionOfContactId(J)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactIds:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 139
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->mSelectedContactsListener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;->onSelectedContactsChanged()V

    :cond_1
    return-void
.end method
