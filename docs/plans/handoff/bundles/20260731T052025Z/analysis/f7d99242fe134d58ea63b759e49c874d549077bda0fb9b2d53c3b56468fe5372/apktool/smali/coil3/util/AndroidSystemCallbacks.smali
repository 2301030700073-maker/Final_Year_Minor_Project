.class public final Lcoil3/util/AndroidSystemCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/util/SystemCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;,
        Lcoil3/util/AndroidSystemCallbacks$Companion;,
        Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
    }
.end annotation


# static fields
.field private static final Companion:Lcoil3/util/AndroidSystemCallbacks$Companion;

.field private static final TAG:Ljava/lang/String; = "AndroidSystemCallbacks"


# instance fields
.field private final activityCallbacks:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

.field private application:Landroid/content/Context;

.field private final componentCallbacks:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

.field private final imageLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcoil3/RealImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/util/AndroidSystemCallbacks$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/util/AndroidSystemCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/util/AndroidSystemCallbacks;->Companion:Lcoil3/util/AndroidSystemCallbacks$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance v0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 17
    .line 18
    new-instance p1, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic getActivityCallbacks$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getComponentCallbacks$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getImageLoader$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getShutdown$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final withImageLoader(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->getImageLoader()Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcoil3/RealImageLoader;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->shutdown()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getActivityCallbacks()Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getComponentCallbacks()Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImageLoader()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcoil3/RealImageLoader;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShutdown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/util/AndroidSystemCallbacks;->shutdown:Z

    .line 2
    .line 3
    return p0
.end method

.method public declared-synchronized registerMemoryPressureCallbacks()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->getImageLoader()Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcoil3/RealImageLoader;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->application:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcoil3/RealImageLoader;->getOptions()Lcoil3/RealImageLoader$Options;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcoil3/RealImageLoader$Options;->getApplication()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->application:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcoil3/util/AndroidSystemCallbacks;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcoil3/util/AndroidSystemCallbacks;->shutdown:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->application:Landroid/content/Context;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->unregister(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw v0
.end method
