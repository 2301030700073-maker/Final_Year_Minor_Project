.class Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportVCardDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardDialogFragment;

.field final synthetic val$sourceDisplayName:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardDialogFragment;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->this$0:Lcom/android/contacts/vcard/ImportVCardDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->val$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->val$sourceDisplayName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->this$0:Lcom/android/contacts/vcard/ImportVCardDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/vcard/ImportVCardDialogFragment$Listener;

    if-eqz p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->val$sourceUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardDialogFragment$2;->val$sourceDisplayName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/android/contacts/vcard/ImportVCardDialogFragment$Listener;->onImportVCardConfirmed(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
