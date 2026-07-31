.class public abstract Lnet/thunderbird/feature/notification/api/command/NotificationCommand;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final notification:Lnet/thunderbird/feature/notification/api/content/Notification;

.field public final notifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
