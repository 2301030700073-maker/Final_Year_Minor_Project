.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedNewGroup:Z

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mGroupNameEditDialogFragment:Lcom/android/contacts/group/GroupNameEditDialogFragment;

.field private mHintTextColor:I

.field private mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPrimaryTextColor:I

.field private mState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance p1, Lcom/android/contacts/editor/GroupMembershipView$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/GroupMembershipView$1;-><init>(Lcom/android/contacts/editor/GroupMembershipView;)V

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance p1, Lcom/android/contacts/editor/GroupMembershipView$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/GroupMembershipView$1;-><init>(Lcom/android/contacts/editor/GroupMembershipView;)V

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/GroupMembershipView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/GroupMembershipView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    return p1
.end method

.method private createNewGroup()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 480
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->newInstanceForCreation(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupNameEditDialogFragment:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    .line 483
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->setListener(Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;)V

    .line 484
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupNameEditDialogFragment:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    .line 485
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "createGroupDialog"

    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private hasMembership(J)Z
    .locals 5

    .line 459
    iget-wide v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    .line 466
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isGroupChecked(J)Z
    .locals 7

    .line 448
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 450
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 451
    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_0

    .line 452
    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setGroupNameEditDialogFragment()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "createGroupDialog"

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupNameEditDialogFragment;

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupNameEditDialogFragment:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->setListener(Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;)V

    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 9

    .line 270
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x0

    .line 276
    iput-wide v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 277
    iput-wide v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 281
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 282
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 286
    invoke-static {v7, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 288
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 289
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    goto :goto_1

    .line 291
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 292
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 293
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_1

    .line 295
    :cond_3
    iput-boolean v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountHasGroups:Z

    .line 300
    :goto_1
    iget-wide v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    iget-wide v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 301
    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ", "

    .line 305
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 313
    :cond_5
    iget-boolean v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountHasGroups:Z

    if-nez v4, :cond_6

    .line 314
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v1, :cond_7

    const v1, 0x7f0900fd

    .line 319
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 325
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mHintTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    :goto_2
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v0, :cond_a

    .line 335
    iget-wide v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v5, 0x1

    :cond_9
    iput-boolean v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 336
    iput-boolean v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    :cond_a
    return-void

    .line 272
    :cond_b
    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public accountHasGroups()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountHasGroups:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 342
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 343
    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 348
    new-instance p1, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    .line 349
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0066

    invoke-direct {p1, p0, v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;-><init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    const-wide/16 v1, -0x1

    .line 353
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 354
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    .line 355
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 359
    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 361
    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz p1, :cond_1

    :cond_2
    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    .line 365
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->setNewestGroupPosition(I)V

    move-wide v1, v3

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-direct {p0, v3, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v5

    .line 369
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v7, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v7, v3, v4, p1, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v6, 0x85

    .line 375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f1000c6

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v7, v2, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    .line 374
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 377
    new-instance p1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 378
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 379
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 381
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 382
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    .line 384
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 385
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 386
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    :goto_1
    if-ge v5, v0, :cond_5

    .line 389
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 392
    :cond_5
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 397
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 398
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600eb

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    const v1, 0x7f060087

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mHintTextColor:I

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 404
    check-cast p1, Landroid/widget/ListView;

    .line 405
    iget-object p2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    .line 407
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    .line 408
    invoke-virtual {p1, p3, p5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 409
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    return-void

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 414
    iget-object p4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 418
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string p3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p1, p3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 420
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/model/ValuesDelta;

    .line 421
    invoke-virtual {p3}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result p4

    if-nez p4, :cond_2

    .line 422
    invoke-virtual {p3}, Lcom/android/contacts/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 423
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 424
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v0, :cond_2

    .line 425
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result p4

    if-nez p4, :cond_2

    .line 426
    invoke-virtual {p3}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    goto :goto_1

    :cond_4
    :goto_2
    if-ge p5, p2, :cond_6

    .line 434
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p1, p5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 435
    invoke-virtual {p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide p3

    .line 436
    invoke-virtual {p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p3, p4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result p1

    if-nez p1, :cond_5

    .line 437
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-static {p1, v0}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 439
    invoke-virtual {p1, p3, p4}, Lcom/android/contacts/model/ValuesDelta;->setGroupRowId(J)V

    :cond_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 444
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 6

    .line 226
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 227
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 229
    iget-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 231
    invoke-virtual {p0, p0}, Lcom/android/contacts/editor/GroupMembershipView;->onClick(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getNewestGroupPosition()I

    move-result v3

    .line 235
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 238
    invoke-virtual {v1, v3, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/GroupMembershipView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setKind(Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 2

    .line 220
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    const v0, 0x7f090116

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 260
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 261
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 264
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 265
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 266
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupNameEditDialogFragment()V

    return-void
.end method

.method public wasGroupMetaDataBound()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
