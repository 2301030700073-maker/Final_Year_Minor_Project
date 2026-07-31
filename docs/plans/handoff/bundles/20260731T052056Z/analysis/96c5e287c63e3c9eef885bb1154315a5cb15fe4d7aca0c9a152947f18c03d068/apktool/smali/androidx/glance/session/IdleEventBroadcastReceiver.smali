.class public final Landroidx/glance/session/IdleEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final events:Ljava/util/List;

.field public static final filter:Landroid/content/IntentFilter;


# instance fields
.field public final onIdle:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 2
    .line 3
    const-string v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    .line 4
    .line 5
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/glance/session/IdleEventBroadcastReceiver;->events:Ljava/util/List;

    .line 16
    .line 17
    new-instance v1, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sput-object v1, Landroidx/glance/session/IdleEventBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/session/IdleEventBroadcastReceiver;->onIdle:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkIdleStatus$glance_release(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "power"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/os/PowerManager;

    .line 11
    .line 12
    sget-object v0, Landroidx/glance/session/Api23Impl;->INSTANCE:Landroidx/glance/session/Api23Impl;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/glance/session/Api23Impl;->isIdle(Landroid/os/PowerManager;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-lt v1, v2, :cond_2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Landroidx/glance/session/Api33Impl;->INSTANCE:Landroidx/glance/session/Api33Impl;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/glance/session/Api33Impl;->isLightIdleOrLowPowerStandby(Landroid/os/PowerManager;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    move v0, p1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/glance/session/IdleEventBroadcastReceiver;->onIdle:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/session/IdleEventBroadcastReceiver;->events:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/glance/session/IdleEventBroadcastReceiver;->checkIdleStatus$glance_release(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
