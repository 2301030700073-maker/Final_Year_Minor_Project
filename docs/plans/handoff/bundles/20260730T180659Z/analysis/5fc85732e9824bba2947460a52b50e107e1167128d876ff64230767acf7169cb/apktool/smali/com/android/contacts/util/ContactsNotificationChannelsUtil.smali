.class public Lcom/android/contacts/util/ContactsNotificationChannelsUtil;
.super Ljava/lang/Object;
.source "ContactsNotificationChannelsUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static DEFAULT_CHANNEL:Ljava/lang/String; = "DEFAULT_CHANNEL"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createDefaultChannel(Landroid/content/Context;)V
    .locals 4

    .line 35
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 39
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    const v3, 0x7f1000b8

    .line 40
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    invoke-direct {v1, v2, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
