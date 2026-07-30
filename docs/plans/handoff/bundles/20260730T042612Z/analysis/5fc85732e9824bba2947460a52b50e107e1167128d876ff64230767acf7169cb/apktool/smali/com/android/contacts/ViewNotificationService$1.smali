.class Lcom/android/contacts/ViewNotificationService$1;
.super Ljava/lang/Object;
.source "ViewNotificationService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewNotificationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewNotificationService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewNotificationService;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    iput p2, p0, Lcom/android/contacts/ViewNotificationService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-static {}, Lcom/android/contacts/ViewNotificationService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error reseting loader"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    iget p2, p0, Lcom/android/contacts/ViewNotificationService$1;->val$startId:I

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopSelfResult(I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    invoke-static {}, Lcom/android/contacts/ViewNotificationService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error stopping service"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ViewNotificationService$1;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method
