.class public final Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final id:I

.field public volatile startTime:Ljava/lang/Long;

.field public final tag:Ljava/lang/String;

.field public volatile timeout:Ljava/lang/Long;

.field public final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/power/AndroidPowerManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->tag:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/fsck/k9/power/AndroidPowerManager;->systemPowerManager:Landroid/os/PowerManager;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    sget-object p1, Lcom/fsck/k9/power/AndroidPowerManager;->wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->id:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x2

    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p2, p1, v1

    .line 35
    .line 36
    aput-object p0, p1, v0

    .line 37
    .line 38
    const-string p0, "AndroidWakeLock for tag %s / id %d: Create"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final acquire()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    .line 66
    const-string v0, "AndroidWakeLock for tag %s / id %d: acquired with no timeout."

    iget-object v1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->tag:Ljava/lang/String;

    iget v2, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->timeout:Ljava/lang/Long;

    return-void

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0

    throw p0
.end method

.method public final acquire(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    const-string v0, "AndroidWakeLock for tag %s / id %d for %d ms: acquired"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->tag:Ljava/lang/String;

    .line 13
    .line 14
    iget v2, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->id:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v1, v4, v5

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aput-object v2, v4, v1

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    aput-object v3, v4, v1

    .line 35
    .line 36
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    .line 52
    .line 53
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->timeout:Ljava/lang/Long;

    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0

    .line 62
    throw p0
.end method

.method public final release()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    const-string v7, "AndroidWakeLock for tag %s / id %d: releasing after %d ms, timeout = %d ms"

    .line 14
    .line 15
    iget-object v8, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->tag:Ljava/lang/String;

    .line 16
    .line 17
    iget v9, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->id:I

    .line 18
    .line 19
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v10

    .line 27
    sub-long/2addr v5, v10

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v5, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->timeout:Ljava/lang/Long;

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    new-array v6, v6, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v8, v6, v4

    .line 38
    .line 39
    aput-object v9, v6, v3

    .line 40
    .line 41
    aput-object v0, v6, v2

    .line 42
    .line 43
    aput-object v5, v6, v1

    .line 44
    .line 45
    invoke-static {v7, v6}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "AndroidWakeLock for tag %s / id %d, timeout = %d ms: releasing"

    .line 50
    .line 51
    iget-object v5, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->tag:Ljava/lang/String;

    .line 52
    .line 53
    iget v6, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->id:I

    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v7, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->timeout:Ljava/lang/Long;

    .line 60
    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v5, v1, v4

    .line 64
    .line 65
    aput-object v6, v1, v3

    .line 66
    .line 67
    aput-object v7, v1, v2

    .line 68
    .line 69
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    .line 74
    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->startTime:Ljava/lang/Long;

    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0

    .line 87
    throw p0
.end method
