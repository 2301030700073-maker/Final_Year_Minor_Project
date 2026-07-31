.class public final Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onConfigurationChanged$androidx$compose$ui$graphics$AndroidGraphicsContext$1(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onLowMemory$androidx$compose$ui$graphics$AndroidGraphicsContext$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTrimMemory$coil3$util$AndroidSystemCallbacks$ComponentCallbacks(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/Cache$RealCacheRequest;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcoil3/RealImageLoader;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 19
    .line 20
    const/16 v2, 0x28

    .line 21
    .line 22
    if-lt p1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcoil3/RealImageLoader;->getMemoryCache()Lcoil3/memory/RealMemoryCache;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lcoil3/memory/RealMemoryCache;->clear()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/16 v2, 0x14

    .line 37
    .line 38
    if-lt p1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 43
    .line 44
    iget-object v0, v1, Lcoil3/RealImageLoader$Options;->application:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->register(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v1, 0xa

    .line 51
    .line 52
    if-lt p1, v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcoil3/RealImageLoader;->getMemoryCache()Lcoil3/memory/RealMemoryCache;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcoil3/memory/RealMemoryCache;->getSize()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    const-wide/16 v2, 0x2

    .line 65
    .line 66
    div-long/2addr v0, v2

    .line 67
    invoke-virtual {p1, v0, v1}, Lcoil3/memory/RealMemoryCache;->trimToSize(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p0

    .line 77
    throw p1
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget p1, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lokhttp3/Cache$RealCacheRequest;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcoil3/RealImageLoader;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    iget v0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/16 v0, 0x50

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->onTrimMemory(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTrimMemory(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x28

    .line 7
    .line 8
    if-lt p1, v0, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->shadowCache:Landroidx/cardview/widget/CardView$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroidx/collection/MutableScatterMap;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iput-object v0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit p1

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit p1

    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_2
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->shadowCache:Landroidx/cardview/widget/CardView$1;

    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :pswitch_0
    invoke-direct {p0, p1}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->onTrimMemory$coil3$util$AndroidSystemCallbacks$ComponentCallbacks(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
