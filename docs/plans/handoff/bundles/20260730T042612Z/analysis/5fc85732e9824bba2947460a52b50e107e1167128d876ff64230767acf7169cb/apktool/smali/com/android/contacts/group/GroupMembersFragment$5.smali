.class Lcom/android/contacts/group/GroupMembersFragment$5;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupMembersFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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

    .line 775
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$5;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 778
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$5;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$5;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    .line 779
    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->access$400(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/group/GroupMetaData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupMembersFragment$5;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupMembersFragment;->getMemberContactIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 778
    invoke-static {v0, v1, v2}, Lcom/android/contacts/group/GroupUtil;->createPickMemberIntent(Landroid/content/Context;Lcom/android/contacts/group/GroupMetaData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
