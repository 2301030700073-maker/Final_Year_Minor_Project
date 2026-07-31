.class public final Lcom/google/android/gms/internal/ads/zzpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzpc;


# instance fields
.field public final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpb;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpc;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpc;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpc;

    const-string v1, "preload"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpc;->zza:Lcom/google/android/gms/internal/ads/zzpc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzb:Ljava/lang/String;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzpc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzb:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpc;->zzb:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    .line 3
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzd:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpc;->zzd:Ljava/lang/Object;

    .line 4
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzd:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zza()Landroid/media/metrics/LogSessionId;
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    if-eqz v0, :cond_0

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Landroid/media/metrics/LogSessionId;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzc:Lcom/google/android/gms/internal/ads/zzpb;

    if-eqz v0, :cond_0

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Landroid/media/metrics/LogSessionId;

    .line 2
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1, v2}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    :try_start_1
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
