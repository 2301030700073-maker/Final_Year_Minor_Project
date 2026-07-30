.class Lcom/android/contacts/editor/GroupMembershipView$1;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"

# interfaces
.implements Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupNameEditCancelled()V
    .locals 0

    return-void
.end method

.method public onGroupNameEditCompleted(Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/contacts/editor/GroupMembershipView;->access$102(Lcom/android/contacts/editor/GroupMembershipView;Z)Z

    return-void
.end method
