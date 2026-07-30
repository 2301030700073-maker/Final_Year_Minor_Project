.class Lcom/android/contacts/group/GroupMembersFragment$3;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;


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

    .line 527
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 542
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$700(Lcom/android/contacts/group/GroupMembersFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/group/GroupMembersFragment;->displayDeleteButtons(Z)V

    goto :goto_0

    .line 545
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 547
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 532
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$700(Lcom/android/contacts/group/GroupMembersFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 533
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/group/GroupMembersFragment;->displayDeleteButtons(Z)V

    .line 534
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$800(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    const v1, 0x7f100236

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 538
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :goto_2
    return-void
.end method

.method public onUpButtonPressed()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$3;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    return-void
.end method
