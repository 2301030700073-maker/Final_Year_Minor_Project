.class Lcom/android/contacts/vcard/ExportProcessor$1;
.super Landroid/os/Handler;
.source "ExportProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ExportProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ExportProcessor;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ExportProcessor;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor$1;->this$0:Lcom/android/contacts/vcard/ExportProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 66
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor$1;->this$0:Lcom/android/contacts/vcard/ExportProcessor;

    invoke-static {p1}, Lcom/android/contacts/vcard/ExportProcessor;->access$000(Lcom/android/contacts/vcard/ExportProcessor;)Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    const v1, 0x7f100127

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
