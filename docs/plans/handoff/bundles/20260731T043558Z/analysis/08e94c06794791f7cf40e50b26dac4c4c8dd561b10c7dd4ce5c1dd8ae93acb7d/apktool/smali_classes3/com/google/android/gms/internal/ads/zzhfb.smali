.class public final Lcom/google/android/gms/internal/ads/zzhfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhfb;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zza:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgh;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfb;->zza:Lcom/google/android/gms/internal/ads/zzhfb;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhgc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhgc;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhgf;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzhgf;-><init>(Lcom/google/android/gms/internal/ads/zzhgc;[B)V

    .line 3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhfb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfb;->zza:Lcom/google/android/gms/internal/ads/zzhfb;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzhec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhgc;-><init>(Lcom/google/android/gms/internal/ads/zzhgf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgc;->zza(Lcom/google/android/gms/internal/ads/zzhec;)Lcom/google/android/gms/internal/ads/zzhgc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhgf;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhgf;-><init>(Lcom/google/android/gms/internal/ads/zzhgc;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzhdz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhgc;-><init>(Lcom/google/android/gms/internal/ads/zzhgf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgc;->zzb(Lcom/google/android/gms/internal/ads/zzhdz;)Lcom/google/android/gms/internal/ads/zzhgc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhgf;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhgf;-><init>(Lcom/google/android/gms/internal/ads/zzhgc;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzhfi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhgc;-><init>(Lcom/google/android/gms/internal/ads/zzhgf;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgc;->zzc(Lcom/google/android/gms/internal/ads/zzhfi;)Lcom/google/android/gms/internal/ads/zzhgc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhgf;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhgf;-><init>(Lcom/google/android/gms/internal/ads/zzhgc;[B)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzhff;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhgc;-><init>(Lcom/google/android/gms/internal/ads/zzhgf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgc;->zzd(Lcom/google/android/gms/internal/ads/zzhff;)Lcom/google/android/gms/internal/ads/zzhgc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhgf;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhgf;-><init>(Lcom/google/android/gms/internal/ads/zzhgc;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhgb;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgf;->zza(Lcom/google/android/gms/internal/ads/zzhgb;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzhgb;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhgf;->zzb(Lcom/google/android/gms/internal/ads/zzhgb;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhgb;
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhgb;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzhgb;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzd(Lcom/google/android/gms/internal/ads/zzhgb;)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgf;->zze(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhgb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfb;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhgf;->zzf(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhgb;

    move-result-object p1

    return-object p1
.end method
