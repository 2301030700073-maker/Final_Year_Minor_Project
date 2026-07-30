.class Lcom/android/contacts/interactions/ExportDialogFragment$3;
.super Ljava/lang/Object;
.source "ExportDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ExportDialogFragment;->doShareFavoriteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ExportDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ExportDialogFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/contacts/interactions/ExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/interactions/ExportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001ff

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
