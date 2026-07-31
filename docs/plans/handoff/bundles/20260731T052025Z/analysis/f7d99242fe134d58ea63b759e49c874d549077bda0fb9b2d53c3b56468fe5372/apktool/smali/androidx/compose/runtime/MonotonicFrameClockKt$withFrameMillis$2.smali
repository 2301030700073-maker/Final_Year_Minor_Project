.class public final Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $onFrame:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$onFrame:Lkotlin/jvm/functions/Function1;

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
    iget v0, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lapp/k9mail/feature/account/setup/domain/entity/AccountUuid;

    .line 7
    .line 8
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/domain/entity/AccountUuid;->value:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$onFrame:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 32
    .line 33
    const-wide/16 v3, 0x1

    .line 34
    .line 35
    add-long/2addr v3, v1

    .line 36
    sput-wide v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    iget-object p0, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$onFrame:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, p1, p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0

    .line 49
    throw p0

    .line 50
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-object p0, p0, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;->$onFrame:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    const-wide/32 v2, 0xf4240

    .line 59
    .line 60
    .line 61
    div-long/2addr v0, v2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
