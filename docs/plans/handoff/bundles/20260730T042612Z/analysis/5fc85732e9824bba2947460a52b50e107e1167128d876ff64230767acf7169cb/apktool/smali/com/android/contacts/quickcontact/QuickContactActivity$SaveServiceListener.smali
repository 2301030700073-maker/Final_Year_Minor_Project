.class Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;
.super Landroid/content/BroadcastReceiver;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 2582
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0

    .line 2582
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "QuickContact"

    const/4 v0, 0x3

    .line 2585
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got broadcast from save service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "linkComplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "unlinkComplete"

    if-nez p1, :cond_1

    .line 2589
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2590
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2591
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2592
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    :cond_2
    return-void
.end method
