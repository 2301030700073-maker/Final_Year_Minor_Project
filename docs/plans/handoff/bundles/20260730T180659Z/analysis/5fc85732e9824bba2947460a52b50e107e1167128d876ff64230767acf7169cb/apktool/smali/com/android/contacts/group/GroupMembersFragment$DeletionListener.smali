.class final Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupMembersFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMembersFragment$1;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;-><init>(Lcom/android/contacts/group/GroupMembersFragment;)V

    return-void
.end method


# virtual methods
.method public onContactDeleteClicked(I)V
    .locals 11

    .line 813
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupMembersAdapter;->getContactId(I)J

    move-result-wide v0

    const/4 p1, 0x1

    new-array v5, p1, [J

    const/4 p1, 0x0

    aput-wide v0, v5, p1

    .line 816
    new-instance v0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    .line 817
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;

    move-result-object v1

    iget-wide v6, v1, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;

    move-result-object v1

    iget-object v8, v1, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    .line 818
    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;

    move-result-object v1

    iget-object v9, v1, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$DeletionListener;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;

    move-result-object v1

    iget-object v10, v1, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;-><init>(ILandroid/content/Context;[JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
