.class public Lcom/android/contacts/group/GroupMembersFragment;
.super Lcom/android/contacts/list/MultiSelectContactsListFragment;
.source "GroupMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;,
        Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;,
        Lcom/android/contacts/group/GroupMembersFragment$Query;,
        Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/MultiSelectContactsListFragment<",
        "Lcom/android/contacts/group/GroupMembersAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private final mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mActivity:Lcom/android/contacts/activities/PeopleActivity;

.field private final mCheckBoxListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

.field private mGroupMemberContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

.field private final mGroupMetaDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIsEditMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;-><init>()V

    .line 195
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupMembersFragment$1;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    .line 231
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupMembersFragment$2;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mHandler:Landroid/os/Handler;

    .line 527
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupMembersFragment$3;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 560
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupMembersFragment$4;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mCheckBoxListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 252
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x3

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupMembersFragment;)Ljava/util/Set;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupMembersFragment;)Landroid/net/Uri;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupMembersFragment;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMetaData;)Lcom/android/contacts/group/GroupMetaData;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupMembersFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->onGroupMetadataLoaded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupMembersFragment;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object p0
.end method

.method private bindMembersCount(I)V
    .locals 8

    .line 692
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 694
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-lez p1, :cond_0

    .line 696
    new-instance v6, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-object v2, v1, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    invoke-direct {v6, v2, v3, v1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeader(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/account/AccountWithDataSet;I)V

    const/16 p1, 0x8

    .line 700
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->hideHeaderAndAddPadding(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 703
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteGroup()V
    .locals 4

    .line 595
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMembersFragment;->getMemberCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v1, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    .line 596
    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactSaveService;->createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 599
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v2, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    iget-object v1, v1, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getGroupCount()I
    .locals 1

    .line 892
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private isGroupEmpty()Z
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logListEvent()V
    .locals 5

    .line 588
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListType()I

    move-result v0

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    .line 591
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x7

    const/4 v4, -0x1

    .line 586
    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    return-void
.end method

.method private maybeAttachCheckBoxListener()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mCheckBoxListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;)Lcom/android/contacts/group/GroupMembersFragment;
    .locals 2

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "groupUri"

    .line 242
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    new-instance p0, Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;-><init>()V

    .line 245
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private onGroupMetadataLoaded()V
    .locals 3

    const-string v0, "GroupMembers"

    const/4 v1, 0x2

    .line 720
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->maybeAttachCheckBoxListener()V

    .line 724
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-object v1, v1, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 726
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v1, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->updateDrawerGroupMenu(J)V

    .line 729
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method private removeSelectedContacts()V
    .locals 10

    .line 496
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object v4

    .line 497
    new-instance v0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;

    .line 498
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v5, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    iget-object v7, v1, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;-><init>(ILandroid/content/Context;[JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    .line 499
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 501
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method

.method private sendToGroup([JLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_10

    .line 364
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 368
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-static {p1}, Lcom/android/contacts/group/GroupUtil;->convertArrayToString([J)Ljava/lang/String;

    move-result-object v2

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    goto :goto_0

    :cond_1
    const-string v5, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 374
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "contact_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 377
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 378
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    sget-object v2, Lcom/android/contacts/group/GroupMembersFragment$Query;->EMAIL_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 380
    :cond_2
    sget-object v2, Lcom/android/contacts/group/GroupMembersFragment$Query;->PHONE_PROJECTION:[Ljava/lang/String;

    :goto_1
    move-object v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 377
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v3, -0x1

    .line 388
    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 389
    :cond_4
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 390
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 392
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const/4 v3, 0x3

    .line 393
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 397
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 398
    new-instance v8, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;-><init>(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMembersFragment$1;)V

    .line 399
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 401
    :cond_6
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;

    .line 403
    :goto_4
    invoke-virtual {v8, v7, v5}, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->addItem(Ljava/lang/String;Z)V

    .line 404
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 408
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;

    .line 413
    invoke-virtual {v3}, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->hasDefaultItem()Z

    move-result v3

    if-nez v3, :cond_8

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;

    .line 417
    invoke-virtual {v2}, Lcom/android/contacts/group/GroupMembersFragment$ContactDataHelperClass;->getDefaultSelectionItemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 419
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 422
    :cond_a
    invoke-static {v1}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 423
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/contacts/group/GroupMembersFragment;->startSendToSelectionPickerActivity([J[JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    array-length p1, p1

    if-ge v0, p1, :cond_e

    .line 429
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f100140

    .line 430
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    const v0, 0x7f100141

    .line 431
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_6
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 435
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const-string p1, ","

    .line 439
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/group/GroupUtil;->startSendToSelectionActivity(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 409
    throw p1

    :cond_10
    :goto_7
    return-void
.end method

.method private static setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V
    .locals 0

    .line 290
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, 0x7f060020

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private startGroupAddMemberActivity()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMembersFragment;->getMemberContactIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 450
    invoke-static {v0, v1, v2}, Lcom/android/contacts/group/GroupUtil;->createPickMemberIntent(Landroid/content/Context;Lcom/android/contacts/group/GroupMetaData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startSendToSelectionPickerActivity([J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupUtil;->createSendToSelectionPickerIntent(Landroid/content/Context;[J[JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toast(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .line 750
    invoke-super {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->configureAdapter()V

    .line 751
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v1, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/GroupMembersAdapter;->setGroupId(J)V

    :cond_0
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/group/GroupMembersAdapter;
    .locals 3

    .line 741
    new-instance v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/group/GroupMembersAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 742
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 743
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 744
    new-instance v1, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;-><init>(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMembersFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setDeleteContactListener(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMembersFragment;->createListAdapter()Lcom/android/contacts/group/GroupMembersAdapter;

    move-result-object v0

    return-object v0
.end method

.method public displayDeleteButtons(Z)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupMembersAdapter;->setDisplayDeleteButtons(Z)V

    return-void
.end method

.method public exitEditMode()V
    .locals 2

    const/4 v0, 0x0

    .line 896
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    .line 897
    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupMembersFragment;->displayDeleteButtons(Z)V

    return-void
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method public getMemberContactIds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 758
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0c005f

    .line 759
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900d4

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 763
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 764
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 766
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x0

    .line 765
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    .line 767
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 768
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090082

    .line 770
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 771
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f090050

    .line 774
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 775
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupMembersFragment$5;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isCurrentGroup(J)Z
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEditMode()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    return v0
.end method

.method public isInactive()Z
    .locals 1

    .line 834
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 608
    invoke-super {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 609
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    iput-object v2, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    .line 610
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 611
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    const v6, 0x7f100116

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/app/Activity;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroidx/appcompat/app/ActionBar;Landroidx/appcompat/widget/Toolbar;I)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    .line 613
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setShowHomeIcon(Z)V

    .line 614
    new-instance v0, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    const/16 v1, 0x14

    .line 615
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 616
    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 617
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    iget-object p1, p1, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 619
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-boolean p1, p1, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mCheckBoxListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p3

    const/4 v1, -0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_2

    const/16 v1, 0x64

    move/from16 v2, p1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.contacts.action.CONTACT_IDS"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v3, "com.android.contacts.action.CONTACT_ID"

    const-wide/16 v4, -0x1

    .line 514
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [J

    aput-wide v6, v1, v2

    :cond_1
    move-object v11, v1

    .line 521
    new-instance v0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;

    const/4 v9, 0x0

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v12, v3, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    iget-object v14, v3, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;-><init>(ILandroid/content/Context;[JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 524
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    :goto_0
    move-object/from16 v1, p0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 648
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "groupUri"

    if-nez p1, :cond_0

    .line 650
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string v1, "editMode"

    .line 652
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    .line 653
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupUri:Landroid/net/Uri;

    const-string v0, "groupMetadata"

    .line 654
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/group/GroupMetaData;

    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    .line 656
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->maybeAttachCheckBoxListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d0006

    .line 262
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 840
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 842
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3

    .line 787
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupMembersAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->isDisplayingCheckBoxes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onItemClick(IJ)V

    return-void

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result p2

    const/4 p3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 796
    invoke-static {p3, v1, p2, p1, v2}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 799
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x9

    .line 798
    invoke-static {p1, v0, p2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startQuickContact(Landroid/app/Activity;Landroid/net/Uri;I)V

    return-void
.end method

.method protected onItemLongClick(IJ)Z
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 807
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onItemLongClick(IJ)Z

    move-result p1

    return p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 682
    new-instance v0, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;-><init>(Lcom/android/contacts/group/GroupMembersFragment;Landroid/database/Cursor;)V

    .line 683
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment$FilterCursorWrapper;->getCount()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/contacts/group/GroupMembersFragment;->bindMembersCount(I)V

    .line 684
    invoke-super {p0, p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 686
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 687
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateOverflowButtonColor()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupMembersFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 458
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto/16 :goto_2

    :cond_0
    const v2, 0x7f09012b

    if-ne v0, v2, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->startGroupAddMemberActivity()V

    goto/16 :goto_2

    :cond_1
    const v2, 0x7f090134

    if-ne v0, v2, :cond_3

    .line 462
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object p1

    goto :goto_0

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/contacts/group/GroupUtil;->convertStringSetToLongArray(Ljava/util/Set;)[J

    move-result-object p1

    :goto_0
    const v0, 0x7f10019b

    .line 466
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mailto"

    .line 465
    invoke-direct {p0, p1, v2, v0}, Lcom/android/contacts/group/GroupMembersFragment;->sendToGroup([JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const v2, 0x7f090135

    if-ne v0, v2, :cond_5

    .line 468
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 469
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object p1

    goto :goto_1

    .line 470
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMemberContactIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/contacts/group/GroupUtil;->convertStringSetToLongArray(Ljava/util/Set;)[J

    move-result-object p1

    :goto_1
    const v0, 0x7f10019c

    .line 472
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "smsto"

    .line 471
    invoke-direct {p0, p1, v2, v0}, Lcom/android/contacts/group/GroupMembersFragment;->sendToGroup([JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const v2, 0x7f090137

    if-ne v0, v2, :cond_6

    .line 474
    new-instance p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-object v2, v0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    iget-wide v2, v0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    iget-object v0, v0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    const-string v4, "updateGroup"

    invoke-static {p1, v4, v2, v3, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->newInstanceForUpdate(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;JLjava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "groupNameEditDialog"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const v2, 0x7f09012e

    if-ne v0, v2, :cond_7

    .line 481
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->deleteGroup()V

    goto :goto_2

    :cond_7
    const v2, 0x7f090130

    if-ne v0, v2, :cond_8

    .line 483
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    .line 484
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 485
    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupMembersFragment;->displayDeleteButtons(Z)V

    goto :goto_2

    :cond_8
    const v2, 0x7f090136

    if-ne v0, v2, :cond_9

    .line 487
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->logListEvent()V

    .line 488
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->removeSelectedContacts()V

    :goto_2
    return v1

    .line 490
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 269
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/android/contacts/group/GroupMetaData;->readOnly:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 271
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090134

    iget-boolean v7, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->isGroupEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v5, p1, v6, v7}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090135

    iget-boolean v7, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    if-nez v7, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->isGroupEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 272
    :goto_3
    invoke-static {v5, p1, v6, v7}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 274
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09012b

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-static {v5, p1, v6, v7}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 275
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090137

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    invoke-static {v5, p1, v6, v7}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09012e

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-static {v5, p1, v6, v4}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090130

    if-eqz v1, :cond_7

    iget-boolean v6, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    if-nez v6, :cond_7

    if-nez v0, :cond_7

    .line 280
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->isGroupEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    .line 279
    :goto_7
    invoke-static {v4, p1, v5, v6}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090136

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    invoke-static {v4, p1, v5, v2}, Lcom/android/contacts/group/GroupMembersFragment;->setVisible(Landroid/content/Context;Landroid/view/Menu;IZ)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 661
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V

    .line 664
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 709
    invoke-super {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 710
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 711
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 712
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 714
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mIsEditMode:Z

    const-string v1, "editMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 715
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupUri:Landroid/net/Uri;

    const-string v1, "groupUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 716
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    const-string v1, "groupMetadata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected startLoading()V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMetaData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->onGroupMetadataLoaded()V

    goto :goto_1

    .line 670
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    return-void
.end method

.method public toastForSaveAction(Ljava/lang/String;)V
    .locals 6

    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "switchGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "addToGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "createGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "updateGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "removeFromGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_5

    .line 878
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toastForSaveAction passed unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled contact save action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "GroupMembers"

    invoke-static {v0, p1, v1, v2}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const v5, 0x7f10013d

    goto :goto_2

    :cond_2
    const v5, 0x7f100138

    goto :goto_2

    :cond_3
    const v5, 0x7f10013e

    goto :goto_2

    :cond_4
    const v5, 0x7f100142

    .line 882
    :cond_5
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/contacts/group/GroupMembersFragment;->toast(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ea75b2f -> :sswitch_4
        -0x23811cca -> :sswitch_3
        -0x1ebe5d1d -> :sswitch_2
        0x2b9824e3 -> :sswitch_1
        0x7d98afab -> :sswitch_0
    .end sparse-switch
.end method

.method public updateExistingGroupFragment(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 846
    invoke-virtual {p0, p2}, Lcom/android/contacts/group/GroupMembersFragment;->toastForSaveAction(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMembersFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupMembersFragment;->getGroupCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMembersFragment;->exitEditMode()V

    goto :goto_0

    :cond_0
    const-string v0, "removeFromGroup"

    .line 851
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 852
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 853
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mGroupMetaData:Lcom/android/contacts/group/GroupMetaData;

    .line 854
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 855
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method
