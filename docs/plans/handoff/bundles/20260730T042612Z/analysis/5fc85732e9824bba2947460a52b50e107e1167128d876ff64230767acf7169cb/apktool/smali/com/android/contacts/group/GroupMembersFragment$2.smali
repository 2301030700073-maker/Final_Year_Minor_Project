.class Lcom/android/contacts/group/GroupMembersFragment$2;
.super Landroid/os/Handler;
.source "GroupMembersFragment.java"


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

    .line 231
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$2;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 234
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$2;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
