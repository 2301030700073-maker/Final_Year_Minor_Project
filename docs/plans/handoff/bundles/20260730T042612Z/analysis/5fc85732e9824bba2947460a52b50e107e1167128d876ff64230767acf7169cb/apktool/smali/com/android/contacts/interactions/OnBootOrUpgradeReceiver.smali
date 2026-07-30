.class public Lcom/android/contacts/interactions/OnBootOrUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootOrUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
