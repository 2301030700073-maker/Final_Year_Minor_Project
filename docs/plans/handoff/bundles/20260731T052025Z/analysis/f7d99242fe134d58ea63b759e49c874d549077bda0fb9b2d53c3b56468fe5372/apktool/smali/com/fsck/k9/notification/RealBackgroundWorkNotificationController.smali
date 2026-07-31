.class public final Lcom/fsck/k9/notification/RealBackgroundWorkNotificationController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/notification/BackgroundWorkNotificationController;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lcom/fsck/k9/notification/NotificationChannelManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/RealBackgroundWorkNotificationController;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method
