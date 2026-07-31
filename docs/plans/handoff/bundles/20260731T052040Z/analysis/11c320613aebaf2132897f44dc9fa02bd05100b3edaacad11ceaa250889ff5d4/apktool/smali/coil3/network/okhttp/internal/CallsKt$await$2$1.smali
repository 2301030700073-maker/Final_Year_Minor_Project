.class public final Lcoil3/network/okhttp/internal/CallsKt$await$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_await:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 34
    .line 35
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 46
    .line 47
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 51
    .line 52
    const-wide/16 v3, 0x1

    .line 53
    .line 54
    add-long/2addr v3, v1

    .line 55
    sput-wide v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    new-instance v0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2, p1, p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0

    .line 70
    throw p0

    .line 71
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 72
    .line 73
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Landroidx/compose/runtime/CancellationHandle;

    .line 76
    .line 77
    invoke-interface {p0}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 84
    .line 85
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lokhttp3/internal/connection/RealCall;

    .line 88
    .line 89
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
