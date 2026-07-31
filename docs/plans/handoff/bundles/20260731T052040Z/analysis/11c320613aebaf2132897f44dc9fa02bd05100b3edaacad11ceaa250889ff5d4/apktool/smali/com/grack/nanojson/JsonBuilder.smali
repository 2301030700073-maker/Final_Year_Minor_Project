.class public final Lcom/grack/nanojson/JsonBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lio/reactivex/rxjava3/core/SingleObserver;
.implements Lio/reactivex/rxjava3/operators/SimplePlainQueue;
.implements Lokio/Socket;
.implements Lorg/acra/scheduler/SenderScheduler;


# instance fields
.field public final synthetic $r8$classId:I

.field public json:Ljava/lang/Object;

.field public root:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Landroidx/collection/LongSparseArray;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 42
    .line 43
    new-instance p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 56
    .line 57
    return-void

    .line 58
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance p1, Lcom/google/android/material/internal/StateListAnimator$1;

    .line 69
    .line 70
    invoke-direct {p1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 74
    .line 75
    return-void

    .line 76
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance p1, Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 85
    .line 86
    new-instance p1, Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Latch;)V
    .locals 13

    const/16 v0, 0x1b

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 136
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 137
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lokio/Socket;

    move-result-object v2

    invoke-interface {v2}, Lokio/Socket;->getSink()Lokio/Sink;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v2, p1

    .line 138
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Landroidx/compose/runtime/Latch;Lokio/Sink;JZ)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 139
    new-instance v7, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 140
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getSocket()Lokio/Socket;

    move-result-object p1

    invoke-interface {p1}, Lokio/Socket;->getSource()Lokio/Source;

    move-result-object v9

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    move-object v8, v2

    .line 141
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Landroidx/compose/runtime/Latch;Lokio/Source;JZ)V

    iput-object v7, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 130
    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 131
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 133
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 143
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data$Builder;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 127
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/Processor;Lokhttp3/Dispatcher;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 122
    iput-object p2, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    sget-boolean v1, Lcoil3/util/HardwareBitmapsKt;->IS_DEVICE_BLOCKED:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Lcoil3/util/ImmutableHardwareBitmapService;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcoil3/util/ImmutableHardwareBitmapService;-><init>(Z)V

    goto :goto_2

    .line 115
    :cond_2
    :goto_0
    new-instance p1, Lcoil3/util/LimitedFileDescriptorHardwareBitmapService;

    .line 116
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    .line 117
    :cond_3
    sget-boolean p1, Lcoil3/util/HardwareBitmapsKt;->IS_DEVICE_BLOCKED:Z

    .line 118
    :goto_1
    new-instance p1, Lcoil3/util/ImmutableHardwareBitmapService;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcoil3/util/ImmutableHardwareBitmapService;-><init>(Z)V

    .line 119
    :goto_2
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;I)V
    .locals 0

    .line 95
    iput p3, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    iput-object p2, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 96
    iput p3, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    iput-object p2, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, ".lck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/FileMetadata;Landroidx/sqlite/SQLiteDriver;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    iput-object p2, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V
    .locals 3

    const/16 v0, 0x1d

    iput v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/acra/file/ReportLocator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 99
    invoke-virtual {p2}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object v0

    .line 100
    const-class v2, Lorg/acra/scheduler/SenderSchedulerFactory;

    check-cast v0, Lorg/acra/plugins/ServicePluginLoader;

    invoke-virtual {v0, p2, v2}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, p1, p2, v1}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/scheduler/SenderSchedulerFactory;

    invoke-interface {v1, p1, p2}, Lorg/acra/scheduler/SenderSchedulerFactory;->create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/scheduler/SenderScheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_1

    .line 105
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "More than one SenderScheduler found. Will use only "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string p1, "ACRA"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static findLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil3/target/ImageViewTarget;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcoil3/target/ImageViewTarget;

    .line 8
    .line 9
    iget-object p0, v0, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 17
    .line 18
    :goto_0
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    .line 23
    .line 24
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0
.end method

.method public static isConfigValidForHardware(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->allowHardwareKey:Lcoil3/Extras$Key;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 24
    .line 25
    instance-of p1, p0, Lcoil3/target/ImageViewTarget;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    check-cast p0, Lcoil3/target/ImageViewTarget;

    .line 30
    .line 31
    iget-object p0, p0, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 48
    return p0
.end method


# virtual methods
.method public addState(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/material/internal/StateListAnimator$1;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/compose/material3/FabPlacement;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/collection/SimpleArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/compose/material3/FabPlacement;

    .line 21
    .line 22
    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 23
    .line 24
    or-int/lit8 p0, p0, 0x8

    .line 25
    .line 26
    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 27
    .line 28
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "The mapper returned a null Publisher"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    check-cast v0, Lorg/reactivestreams/Publisher;

    .line 20
    .line 21
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    .line 22
    .line 23
    new-instance v2, Lcom/grack/nanojson/JsonBuilder;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 28
    .line 29
    const/16 v3, 0x10

    .line 30
    .line 31
    invoke-direct {v2, p0, p1, v3}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-direct {v1, v0, v2, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->poll()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/Data$Builder;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0
.end method

.method public end()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 17
    .line 18
    const-string v0, "Cannot end the root object or array"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le p2, p1, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, -0x1

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    :goto_1
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 26
    .line 27
    packed-switch v5, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_2

    .line 37
    :pswitch_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :goto_2
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iput v1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 52
    .line 53
    iput v2, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 54
    .line 55
    iput v6, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 56
    .line 57
    iput v7, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 58
    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    iput p3, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    return-object v5

    .line 70
    :cond_1
    if-eqz p4, :cond_2

    .line 71
    .line 72
    iput p4, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_2

    .line 79
    .line 80
    move-object v4, v5

    .line 81
    :cond_2
    add-int/2addr p1, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    return-object v4

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 4
    .line 5
    return-object p0
.end method

.method public hasConnectionPool()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/sqlite/SQLiteDriver;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteDriver;->hasConnectionPool()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 20
    .line 21
    if-ne v0, p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public isViewWithinBoundFlags(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iput v1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 26
    .line 27
    iput v2, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 28
    .line 29
    iput v3, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 30
    .line 31
    iput p0, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 32
    .line 33
    const/16 p0, 0x6003

    .line 34
    .line 35
    iput p0, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public lock()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void

    .line 46
    :goto_2
    iget-object v2, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/nio/channels/FileChannel;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v2, "Unable to lock file: \'"

    .line 61
    .line 62
    const-string v3, "\'."

    .line 63
    .line 64
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public object(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/Stack;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const-string p0, "Null is not a valid element"

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lkotlinx/serialization/json/internal/Composer;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 19
    .line 20
    iget v5, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 21
    .line 22
    iget v6, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 23
    .line 24
    iget v0, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 25
    .line 26
    iget-object v7, v2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 27
    .line 28
    const/16 v8, 0x207

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const/16 v9, 0x20

    .line 35
    .line 36
    invoke-virtual {v7, v9}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v9, v3, Lkotlinx/serialization/json/internal/Composer;->writer:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 43
    .line 44
    iget v10, v8, Landroidx/core/graphics/Insets;->top:I

    .line 45
    .line 46
    iget v11, v8, Landroidx/core/graphics/Insets;->right:I

    .line 47
    .line 48
    iget v12, v8, Landroidx/core/graphics/Insets;->left:I

    .line 49
    .line 50
    iput v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    iget-boolean v4, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 69
    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    iput v13, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 77
    .line 78
    add-int/2addr v13, v0

    .line 79
    :cond_0
    iget-boolean v0, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    if-eqz v10, :cond_1

    .line 84
    .line 85
    move v0, v6

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v0, v5

    .line 88
    :goto_0
    add-int v14, v0, v12

    .line 89
    .line 90
    :cond_2
    iget-boolean v0, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    if-eqz v10, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v5, v6

    .line 98
    :goto_1
    add-int v15, v5, v11

    .line 99
    .line 100
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    .line 106
    iget-boolean v5, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 112
    .line 113
    if-eq v5, v12, :cond_5

    .line 114
    .line 115
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    .line 117
    move/from16 v16, v6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    const/16 v16, 0x0

    .line 121
    .line 122
    :goto_2
    iget-boolean v5, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    if-eq v5, v11, :cond_6

    .line 129
    .line 130
    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 131
    .line 132
    move/from16 v16, v6

    .line 133
    .line 134
    :cond_6
    iget-boolean v5, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 135
    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    .line 140
    iget v8, v8, Landroidx/core/graphics/Insets;->top:I

    .line 141
    .line 142
    if-eq v5, v8, :cond_7

    .line 143
    .line 144
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move/from16 v6, v16

    .line 148
    .line 149
    :goto_3
    if-eqz v6, :cond_8

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v1, v14, v0, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    .line 160
    .line 161
    iget-boolean v0, v3, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    iget v1, v7, Landroidx/core/graphics/Insets;->bottom:I

    .line 166
    .line 167
    iput v1, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 168
    .line 169
    :cond_9
    if-nez v4, :cond_a

    .line 170
    .line 171
    if-eqz v0, :cond_b

    .line 172
    .line 173
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    .line 174
    .line 175
    .line 176
    :cond_b
    return-object v2

    .line 177
    :pswitch_0
    iget-object v3, v0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 180
    .line 181
    invoke-static/range {p1 .. p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v2, v1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 186
    .line 187
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_c

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_c
    iget-object v0, v0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Landroid/graphics/Rect;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 209
    .line 210
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 215
    .line 216
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    const/4 v4, 0x0

    .line 227
    :goto_4
    if-ge v4, v2, :cond_d

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v5, v1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 242
    .line 243
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 248
    .line 249
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 254
    .line 255
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 260
    .line 261
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 266
    .line 267
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 272
    .line 273
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 278
    .line 279
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 284
    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 289
    .line 290
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 291
    .line 292
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 293
    .line 294
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 295
    .line 296
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    :goto_5
    return-object v1

    .line 301
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;

    .line 9
    .line 10
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 15
    .line 16
    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 23
    .line 24
    invoke-interface {p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 16
    .line 17
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/rxjava3/functions/Function;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-interface {v4, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 33
    .line 34
    aput-object p1, v3, v2

    .line 35
    .line 36
    aput-object p0, v3, v1

    .line 37
    .line 38
    invoke-direct {v4, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v4}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;->value:Ljava/lang/Object;

    .line 46
    .line 47
    :goto_0
    if-nez p0, :cond_1

    .line 48
    .line 49
    new-instance p0, Ljava/lang/NullPointerException;

    .line 50
    .line 51
    const-string v1, "Value supplied was null"

    .line 52
    .line 53
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void

    .line 67
    :pswitch_1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 70
    .line 71
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 78
    .line 79
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_3
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 86
    .line 87
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 94
    .line 95
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lio/reactivex/rxjava3/functions/BiConsumer;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-interface {v0, v4, p1}, Lio/reactivex/rxjava3/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 109
    .line 110
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 111
    .line 112
    aput-object p1, v3, v2

    .line 113
    .line 114
    aput-object v0, v3, v1

    .line 115
    .line 116
    invoke-direct {v4, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    move-object p1, v4

    .line 120
    :goto_2
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 123
    .line 124
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_5
    :try_start_2
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 131
    .line 132
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    .line 133
    .line 134
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 143
    .line 144
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 145
    .line 146
    aput-object p1, v3, v2

    .line 147
    .line 148
    aput-object v0, v3, v1

    .line 149
    .line 150
    invoke-direct {v4, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    move-object p1, v4

    .line 154
    :goto_3
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 157
    .line 158
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_6
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 165
    .line 166
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_7
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 173
    .line 174
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_5
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 49
    .line 50
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_6
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 57
    .line 58
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_7
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableAndThenCompletable$SourceObserver;

    .line 65
    .line 66
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lio/reactivex/rxjava3/functions/Function;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "The mapper function returned a null value."

    .line 23
    .line 24
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->onError(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 54
    .line 55
    :try_start_1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 58
    .line 59
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    :pswitch_3
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 81
    .line 82
    :try_start_2
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 85
    .line 86
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lio/reactivex/rxjava3/functions/BiConsumer;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-interface {p0, p1, v1}, Lio/reactivex/rxjava3/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_2
    move-exception p0

    .line 99
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void

    .line 106
    :pswitch_4
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 109
    .line 110
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokio/FileMetadata;

    .line 7
    .line 8
    const-string v1, ":memory:"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lokio/FileMetadata;->symlinkTarget:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Landroidx/room/DatabaseConfiguration;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v2, Landroidx/room/concurrent/ExclusiveLock;

    .line 34
    .line 35
    iget-boolean v3, v0, Lokio/FileMetadata;->isRegularFile:Z

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    move v1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v5

    .line 54
    :goto_0
    invoke-direct {v2, p1, v1}, Landroidx/room/concurrent/ExclusiveLock;-><init>(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v2, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Landroidx/room/concurrent/ExclusiveLock;->fileLock:Lcom/grack/nanojson/JsonBuilder;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonBuilder;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    move v4, v5

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 75
    :try_start_1
    iget-boolean v6, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 76
    .line 77
    if-nez v6, :cond_7

    .line 78
    .line 79
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Landroidx/sqlite/SQLiteDriver;

    .line 82
    .line 83
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-boolean v6, v0, Lokio/FileMetadata;->isRegularFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    :try_start_2
    iput-boolean v4, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 92
    .line 93
    invoke-static {v0, p0}, Lokio/FileMetadata;->access$configureDatabase(Lokio/FileMetadata;Landroidx/sqlite/SQLiteConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    :try_start_3
    iput-boolean v5, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    iput-boolean v5, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    invoke-static {p0}, Lokio/FileMetadata;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Lokio/FileMetadata;->symlinkTarget:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Landroidx/room/DatabaseConfiguration;

    .line 109
    .line 110
    iget-object v5, v5, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 111
    .line 112
    sget-object v6, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 113
    .line 114
    if-ne v5, v6, :cond_4

    .line 115
    .line 116
    const-string v5, "PRAGMA synchronous = NORMAL"

    .line 117
    .line 118
    invoke-static {p0, v5}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const-string v5, "PRAGMA synchronous = FULL"

    .line 123
    .line 124
    invoke-static {p0, v5}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    iget-object v0, v0, Lokio/FileMetadata;->size:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Landroidx/room/RoomOpenDelegate;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 132
    .line 133
    .line 134
    :goto_3
    if-eqz v2, :cond_6

    .line 135
    .line 136
    :try_start_4
    iget-object v0, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 139
    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    .line 145
    .line 146
    :try_start_6
    iput-object v3, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    iput-object v3, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 151
    .line 152
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 153
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_7
    :try_start_7
    const-string p0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    .line 158
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 165
    :catchall_3
    move-exception p0

    .line 166
    if-eqz v2, :cond_9

    .line 167
    .line 168
    :try_start_8
    iget-object v0, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 171
    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_8
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 176
    .line 177
    .line 178
    :try_start_a
    iput-object v3, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_4
    move-exception p0

    .line 182
    iput-object v3, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 183
    .line 184
    throw p0

    .line 185
    :cond_9
    :goto_5
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 186
    :catchall_5
    move-exception p0

    .line 187
    :goto_6
    if-eqz v4, :cond_a

    .line 188
    .line 189
    :try_start_b
    throw p0

    .line 190
    :catchall_6
    move-exception p0

    .line 191
    goto :goto_7

    .line 192
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v3, "Unable to open database \'"

    .line 197
    .line 198
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p1, "\'. Was a proper path / name used in Room\'s database builder?"

    .line 205
    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 217
    :goto_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method public options(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcoil3/request/Options;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v3, v0, Lcoil3/request/ImageRequest;->scale:Lcoil3/size/Scale;

    .line 9
    .line 10
    iget-object v4, v0, Lcoil3/request/ImageRequest;->precision:Lcoil3/size/Precision;

    .line 11
    .line 12
    iget-object v5, v0, Lcoil3/request/ImageRequest;->diskCacheKey:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v6, v0, Lcoil3/request/ImageRequest;->fileSystem:Lokio/FileSystem;

    .line 15
    .line 16
    iget-object v7, v0, Lcoil3/request/ImageRequest;->memoryCachePolicy:Lcoil3/request/CachePolicy;

    .line 17
    .line 18
    iget-object v8, v0, Lcoil3/request/ImageRequest;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 19
    .line 20
    iget-object v9, v0, Lcoil3/request/ImageRequest;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 21
    .line 22
    sget-object v10, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 23
    .line 24
    invoke-static {v0, v10}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    check-cast v11, Landroid/graphics/Bitmap$Config;

    .line 29
    .line 30
    sget-object v12, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 31
    .line 32
    invoke-static {v0, v12}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    check-cast v13, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    sget-object v14, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 43
    .line 44
    invoke-static {v0, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    check-cast v15, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    const/16 v16, 0x1

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    if-nez v15, :cond_1

    .line 59
    .line 60
    sget-object v15, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    invoke-static {v0, v10}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v18

    .line 66
    move-object/from16 v19, v1

    .line 67
    .line 68
    move-object/from16 v1, v18

    .line 69
    .line 70
    check-cast v1, Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    invoke-static {v15, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move/from16 v1, v17

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object/from16 v19, v1

    .line 83
    .line 84
    :goto_0
    move/from16 v1, v16

    .line 85
    .line 86
    :goto_1
    invoke-static {v0, v10}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    check-cast v15, Landroid/graphics/Bitmap$Config;

    .line 91
    .line 92
    invoke-static {v15}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-eqz v15, :cond_4

    .line 97
    .line 98
    invoke-static {v0, v10}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    check-cast v15, Landroid/graphics/Bitmap$Config;

    .line 103
    .line 104
    invoke-static {v0, v15}, Lcom/grack/nanojson/JsonBuilder;->isConfigValidForHardware(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    if-eqz v15, :cond_2

    .line 109
    .line 110
    move-object/from16 v15, p0

    .line 111
    .line 112
    iget-object v15, v15, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v15, Lcoil3/util/HardwareBitmapService;

    .line 115
    .line 116
    move/from16 v18, v1

    .line 117
    .line 118
    move-object/from16 v1, p2

    .line 119
    .line 120
    invoke-interface {v15, v1}, Lcoil3/util/HardwareBitmapService;->allowHardwareMainThread(Lcoil3/size/Size;)Z

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    if-eqz v15, :cond_3

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    move/from16 v18, v1

    .line 128
    .line 129
    move-object/from16 v1, p2

    .line 130
    .line 131
    :cond_3
    move/from16 v15, v17

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    move/from16 v18, v1

    .line 135
    .line 136
    move-object/from16 v1, p2

    .line 137
    .line 138
    :goto_2
    move/from16 v15, v16

    .line 139
    .line 140
    :goto_3
    if-eqz v18, :cond_5

    .line 141
    .line 142
    if-eqz v15, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 146
    .line 147
    :goto_4
    if-eqz v13, :cond_6

    .line 148
    .line 149
    invoke-static {v0, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    check-cast v13, Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    if-eqz v13, :cond_6

    .line 160
    .line 161
    sget-object v13, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 162
    .line 163
    if-eq v11, v13, :cond_6

    .line 164
    .line 165
    move/from16 v13, v16

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    move/from16 v13, v17

    .line 169
    .line 170
    :goto_5
    iget-object v14, v0, Lcoil3/request/ImageRequest;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 171
    .line 172
    iget-object v14, v14, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 173
    .line 174
    iget-object v14, v14, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 175
    .line 176
    iget-object v15, v0, Lcoil3/request/ImageRequest;->extras:Lcoil3/Extras;

    .line 177
    .line 178
    iget-object v15, v15, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 179
    .line 180
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-direct {v1, v14}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v15}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 192
    .line 193
    .line 194
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 195
    .line 196
    invoke-direct {v14, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v10}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Landroid/graphics/Bitmap$Config;

    .line 204
    .line 205
    if-eq v11, v1, :cond_8

    .line 206
    .line 207
    if-eqz v11, :cond_7

    .line 208
    .line 209
    invoke-interface {v14, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_7
    invoke-interface {v14, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_6
    invoke-static {v0, v12}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eq v13, v0, :cond_9

    .line 227
    .line 228
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v14, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_9
    new-instance v10, Lcoil3/Extras;

    .line 236
    .line 237
    invoke-static {v14}, Lcoil3/util/UtilsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-direct {v10, v0}, Lcoil3/Extras;-><init>(Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    move-object v0, v2

    .line 245
    move-object/from16 v1, v19

    .line 246
    .line 247
    move-object/from16 v2, p2

    .line 248
    .line 249
    invoke-direct/range {v0 .. v10}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    .line 250
    .line 251
    .line 252
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 40
    .line 41
    if-eq v1, p0, :cond_2

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_2
    return-object v3
.end method

.method public popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/compose/material3/FabPlacement;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/collection/SimpleArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 22
    .line 23
    and-int v3, v2, p2

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    not-int v3, p2

    .line 28
    and-int/2addr v2, v3

    .line 29
    iput v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne p2, v3, :cond_1

    .line 33
    .line 34
    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/compose/material3/FabPlacement;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v3, 0x8

    .line 38
    .line 39
    if-ne p2, v3, :cond_3

    .line 40
    .line 41
    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/compose/material3/FabPlacement;

    .line 42
    .line 43
    :goto_0
    and-int/lit8 v2, v2, 0xc

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput p0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 52
    .line 53
    iput-object v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/compose/material3/FabPlacement;

    .line 54
    .line 55
    iput-object v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/compose/material3/FabPlacement;

    .line 56
    .line 57
    sget-object p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object p2

    .line 63
    :cond_3
    const-string p0, "Must provide flag PRE or POST"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    return-object v0
.end method

.method public remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/work/Data$Builder;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/work/Data$Builder;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/collection/SimpleArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 15
    .line 16
    and-int/lit8 p1, p1, -0x2

    .line 17
    .line 18
    iput p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 19
    .line 20
    return-void
.end method

.method public removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-ne p1, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v4, v3, v1

    .line 22
    .line 23
    sget-object v5, Landroidx/collection/ArraySetKt;->DELETED:Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    aput-object v5, v3, v1

    .line 28
    .line 29
    iput-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroidx/collection/SimpleArrayMap;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/compose/material3/FabPlacement;

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/compose/material3/FabPlacement;

    .line 54
    .line 55
    sget-object p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public scheduleReports(Ljava/io/File;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "ACRA"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/File;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Lorg/acra/file/ReportLocator;

    .line 13
    .line 14
    iget-object v3, v3, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    .line 15
    .line 16
    const-string v4, "ACRA-approved"

    .line 17
    .line 18
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "Could not rename approved report from "

    .line 41
    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " to "

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lorg/acra/scheduler/SenderScheduler;

    .line 68
    .line 69
    check-cast p0, Lcom/grack/nanojson/JsonBuilder;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lorg/schabi/newpipe/App;

    .line 74
    .line 75
    new-instance v2, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lorg/acra/config/CoreConfiguration;

    .line 83
    .line 84
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .line 88
    .line 89
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 90
    .line 91
    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v3

    .line 112
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :catchall_1
    move-exception v5

    .line 114
    :try_start_4
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    :goto_1
    const-string v4, "acraConfig"

    .line 123
    .line 124
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v3, "onlySendSilentReports"

    .line 128
    .line 129
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lorg/acra/plugins/ServicePluginLoader;

    .line 139
    .line 140
    const-class v4, Lorg/acra/sender/ReportSenderFactory;

    .line 141
    .line 142
    invoke-virtual {v3, p0, v4}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    .line 147
    .line 148
    const/16 v6, 0xa

    .line 149
    .line 150
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_1

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Lorg/acra/sender/ReportSenderFactory;

    .line 172
    .line 173
    invoke-interface {v7, p1, p0}, Lorg/acra/sender/ReportSenderFactory;->create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/sender/ReportSender;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    sget-object v8, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 178
    .line 179
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_13

    .line 200
    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Lorg/acra/sender/ReportSender;

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const-string v3, "jobscheduler"

    .line 211
    .line 212
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    check-cast v3, Landroid/app/job/JobScheduler;

    .line 220
    .line 221
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    .line 222
    .line 223
    new-instance v7, Landroid/content/ComponentName;

    .line 224
    .line 225
    const-class v8, Lorg/acra/sender/JobSenderService;

    .line 226
    .line 227
    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v5, v0, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Landroid/os/PersistableBundle;

    .line 234
    .line 235
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_12

    .line 251
    .line 252
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    check-cast v8, Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    instance-of v10, v9, Landroid/os/PersistableBundle;

    .line 263
    .line 264
    if-nez v10, :cond_5

    .line 265
    .line 266
    instance-of v10, v9, Ljava/lang/Integer;

    .line 267
    .line 268
    if-nez v10, :cond_5

    .line 269
    .line 270
    instance-of v10, v9, [I

    .line 271
    .line 272
    if-nez v10, :cond_5

    .line 273
    .line 274
    instance-of v10, v9, Ljava/lang/Long;

    .line 275
    .line 276
    if-nez v10, :cond_5

    .line 277
    .line 278
    instance-of v10, v9, [J

    .line 279
    .line 280
    if-nez v10, :cond_5

    .line 281
    .line 282
    instance-of v10, v9, Ljava/lang/Double;

    .line 283
    .line 284
    if-nez v10, :cond_5

    .line 285
    .line 286
    instance-of v10, v9, [D

    .line 287
    .line 288
    if-nez v10, :cond_5

    .line 289
    .line 290
    instance-of v10, v9, Ljava/lang/String;

    .line 291
    .line 292
    if-nez v10, :cond_5

    .line 293
    .line 294
    instance-of v10, v9, [Ljava/lang/Object;

    .line 295
    .line 296
    if-eqz v10, :cond_4

    .line 297
    .line 298
    move-object v10, v9

    .line 299
    check-cast v10, [Ljava/lang/Object;

    .line 300
    .line 301
    instance-of v10, v10, [Ljava/lang/String;

    .line 302
    .line 303
    if-nez v10, :cond_5

    .line 304
    .line 305
    :cond_4
    instance-of v10, v9, Ljava/lang/Boolean;

    .line 306
    .line 307
    if-nez v10, :cond_5

    .line 308
    .line 309
    instance-of v10, v9, [Z

    .line 310
    .line 311
    if-eqz v10, :cond_3

    .line 312
    .line 313
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    if-eqz v9, :cond_11

    .line 317
    .line 318
    instance-of v10, v9, Ljava/lang/Integer;

    .line 319
    .line 320
    if-eqz v10, :cond_6

    .line 321
    .line 322
    check-cast v9, Ljava/lang/Number;

    .line 323
    .line 324
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_6
    instance-of v10, v9, [I

    .line 333
    .line 334
    if-eqz v10, :cond_7

    .line 335
    .line 336
    check-cast v9, [I

    .line 337
    .line 338
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_7
    instance-of v10, v9, Ljava/lang/Long;

    .line 343
    .line 344
    if-eqz v10, :cond_8

    .line 345
    .line 346
    check-cast v9, Ljava/lang/Number;

    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 349
    .line 350
    .line 351
    move-result-wide v9

    .line 352
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 353
    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_8
    instance-of v10, v9, [J

    .line 357
    .line 358
    if-eqz v10, :cond_9

    .line 359
    .line 360
    check-cast v9, [J

    .line 361
    .line 362
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_9
    instance-of v10, v9, Ljava/lang/Double;

    .line 367
    .line 368
    if-eqz v10, :cond_a

    .line 369
    .line 370
    check-cast v9, Ljava/lang/Number;

    .line 371
    .line 372
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    .line 373
    .line 374
    .line 375
    move-result-wide v9

    .line 376
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_a
    instance-of v10, v9, [D

    .line 382
    .line 383
    if-eqz v10, :cond_b

    .line 384
    .line 385
    check-cast v9, [D

    .line 386
    .line 387
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_b
    instance-of v10, v9, Ljava/lang/String;

    .line 393
    .line 394
    if-eqz v10, :cond_c

    .line 395
    .line 396
    check-cast v9, Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    :cond_c
    instance-of v10, v9, [Ljava/lang/Object;

    .line 404
    .line 405
    if-eqz v10, :cond_d

    .line 406
    .line 407
    move-object v10, v9

    .line 408
    check-cast v10, [Ljava/lang/Object;

    .line 409
    .line 410
    instance-of v10, v10, [Ljava/lang/String;

    .line 411
    .line 412
    if-eqz v10, :cond_d

    .line 413
    .line 414
    check-cast v9, [Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_3

    .line 420
    .line 421
    :cond_d
    instance-of v10, v9, Ljava/lang/Boolean;

    .line 422
    .line 423
    if-eqz v10, :cond_e

    .line 424
    .line 425
    check-cast v9, Ljava/lang/Boolean;

    .line 426
    .line 427
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_3

    .line 435
    .line 436
    :cond_e
    instance-of v10, v9, [Z

    .line 437
    .line 438
    if-eqz v10, :cond_f

    .line 439
    .line 440
    check-cast v9, [Z

    .line 441
    .line 442
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_3

    .line 446
    .line 447
    :cond_f
    instance-of v8, v9, Landroid/os/PersistableBundle;

    .line 448
    .line 449
    if-eqz v8, :cond_10

    .line 450
    .line 451
    check-cast v9, Landroid/os/PersistableBundle;

    .line 452
    .line 453
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :cond_10
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    const-string p1, "Objects of type "

    .line 467
    .line 468
    const-string v0, " can not be put into a PersistableBundle"

    .line 469
    .line 470
    invoke-static {p1, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_11
    const-string p0, "Unable to determine type of null values"

    .line 479
    .line 480
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_12
    invoke-virtual {v5, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    const-wide/16 v7, 0x0

    .line 492
    .line 493
    invoke-virtual {v0, v7, v8}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 494
    .line 495
    .line 496
    :try_start_5
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 501
    .line 502
    .line 503
    goto :goto_4

    .line 504
    :catch_1
    move-exception v0

    .line 505
    sget-object v2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 506
    .line 507
    const-string v2, "Failed to schedule Sender Service. No reports can be sent."

    .line 508
    .line 509
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .line 511
    .line 512
    :cond_13
    :goto_4
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 513
    .line 514
    invoke-virtual {p0}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Lorg/acra/plugins/ServicePluginLoader;

    .line 519
    .line 520
    invoke-virtual {v0, p0, v4}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    new-instance v1, Ljava/util/ArrayList;

    .line 525
    .line 526
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_14

    .line 542
    .line 543
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    check-cast v2, Lorg/acra/sender/ReportSenderFactory;

    .line 548
    .line 549
    invoke-interface {v2, p1, p0}, Lorg/acra/sender/ReportSenderFactory;->create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/sender/ReportSender;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_5

    .line 559
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 560
    .line 561
    .line 562
    move-result p0

    .line 563
    if-eqz p0, :cond_15

    .line 564
    .line 565
    goto :goto_7

    .line 566
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_16

    .line 575
    .line 576
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    check-cast p1, Lorg/acra/sender/ReportSender;

    .line 581
    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_16
    :goto_7
    return-void
.end method

.method public startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/SystemClock;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/Dispatcher;

    .line 7
    .line 8
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, v2, p0, p1, p2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stopWork(Landroidx/work/impl/StartStopToken;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/Dispatcher;

    .line 7
    .line 8
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/work/impl/Processor;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/Data$Builder;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/work/Data$Builder;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method

.method public updateOptions(Lcoil3/request/Options;)Lcoil3/request/Options;
    .locals 12

    .line 1
    iget-object v0, p1, Lcoil3/request/Options;->extras:Lcoil3/Extras;

    .line 2
    .line 3
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v2}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcoil3/util/HardwareBitmapService;

    .line 20
    .line 21
    invoke-interface {p0}, Lcoil3/util/HardwareBitmapService;->allowHardwareWorkerThread()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_0
    new-instance p0, Lcoil3/Extras;

    .line 53
    .line 54
    invoke-static {v0}, Lcoil3/util/UtilsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcoil3/Extras;-><init>(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    move-object v11, p0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 65
    move-object v11, v0

    .line 66
    move v0, p0

    .line 67
    :goto_2
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v2, p1, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v3, p1, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 72
    .line 73
    iget-object v4, p1, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 74
    .line 75
    iget-object v5, p1, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 76
    .line 77
    iget-object v6, p1, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v7, p1, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 80
    .line 81
    iget-object v8, p1, Lcoil3/request/Options;->memoryCachePolicy:Lcoil3/request/CachePolicy;

    .line 82
    .line 83
    iget-object v9, p1, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 84
    .line 85
    iget-object v10, p1, Lcoil3/request/Options;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 86
    .line 87
    new-instance v1, Lcoil3/request/Options;

    .line 88
    .line 89
    invoke-direct/range {v1 .. v11}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    return-object p1
.end method

.method public value(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 16
    .line 17
    const-string p1, "Attempted to write a keyed value to a JsonArray"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public value(Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
