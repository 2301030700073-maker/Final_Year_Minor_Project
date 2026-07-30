.class Lcom/android/contacts/group/GroupNameEditDialogFragment$2$1;
.super Ljava/lang/Object;
.source "GroupNameEditDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupNameEditDialogFragment$2;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$1;->this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$1;->this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

    iget-object v0, v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0, p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$700(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/view/View;)V

    return-void
.end method
