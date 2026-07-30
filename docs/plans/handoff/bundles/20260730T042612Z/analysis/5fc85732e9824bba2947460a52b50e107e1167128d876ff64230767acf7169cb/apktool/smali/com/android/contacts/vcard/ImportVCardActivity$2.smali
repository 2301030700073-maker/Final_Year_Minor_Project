.class Lcom/android/contacts/vcard/ImportVCardActivity$2;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f100243

    .line 810
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 809
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
