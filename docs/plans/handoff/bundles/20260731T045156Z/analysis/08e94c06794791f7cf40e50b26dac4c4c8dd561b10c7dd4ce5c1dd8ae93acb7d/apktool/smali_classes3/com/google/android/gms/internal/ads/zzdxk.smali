.class final Lcom/google/android/gms/internal/ads/zzdxk;
.super Lcom/google/android/gms/internal/ads/zzbnz;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzflc;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzcca;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzdxt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:Lcom/google/android/gms/internal/ads/zzflc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzf:Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzf:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzdxt;->zzm(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzr()Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzdvt;->zzb(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzs()Lcom/google/android/gms/internal/ads/zzdfu;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzdfu;->zzb(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzt()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:Lcom/google/android/gms/internal/ads/zzflc;

    .line 5
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzcca;

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzf:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v1, v2, v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzdxt;->zzm(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzr()Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v3

    const-string v5, "error"

    .line 3
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdvt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzs()Lcom/google/android/gms/internal/ads/zzdfu;

    move-result-object v3

    const-string v5, "error"

    .line 4
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdfu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzt()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:Lcom/google/android/gms/internal/ads/zzflc;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzcca;

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
