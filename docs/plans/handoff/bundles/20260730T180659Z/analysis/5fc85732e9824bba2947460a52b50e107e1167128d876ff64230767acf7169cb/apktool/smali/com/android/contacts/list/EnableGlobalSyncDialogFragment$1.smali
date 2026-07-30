.class Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;
.super Ljava/lang/Object;
.source "EnableGlobalSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;

.field final synthetic val$targetListener:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;->this$0:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;->val$targetListener:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;->val$targetListener:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;

    if-eqz p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;->this$0:Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;

    invoke-static {p2}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;->access$000(Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;->onEnableAutoSync(Lcom/android/contacts/list/ContactListFilter;)V

    :cond_0
    return-void
.end method
