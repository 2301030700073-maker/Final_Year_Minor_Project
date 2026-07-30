.class Lcom/android/contacts/group/GroupMembersFragment$4;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupMembersFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedContactIdsChanged()V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$700(Lcom/android/contacts/group/GroupMembersFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    const v2, 0x7f100236

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionCount(I)V

    :goto_0
    return-void
.end method

.method public onStartDisplayingCheckBoxes()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method

.method public onStopDisplayingCheckBoxes()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$4;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method
