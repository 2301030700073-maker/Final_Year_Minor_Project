.class public Lcom/google/android/gms/internal/zzhs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzhv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzGK:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzGL:Z

.field private final zzGM:Lcom/google/android/gms/internal/zzhw;

.field private final zzqt:Ljava/lang/Object;

.field private zzxo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzGK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhs;->zzxo:Z

    new-instance v0, Lcom/google/android/gms/internal/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzGM:Lcom/google/android/gms/internal/zzhw;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    if-eqz v2, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhs;->zzxo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzGM:Lcom/google/android/gms/internal/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhw;->zzgy()V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzxo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGK:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "CallbackFuture timed out."

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzxo:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGK:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzxo:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzb(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzGM:Lcom/google/android/gms/internal/zzhw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhw;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzf(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Provided CallbackFuture with multiple values."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhs;->zzGL:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzGK:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzqt:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzGM:Lcom/google/android/gms/internal/zzhw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhw;->zzgy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
