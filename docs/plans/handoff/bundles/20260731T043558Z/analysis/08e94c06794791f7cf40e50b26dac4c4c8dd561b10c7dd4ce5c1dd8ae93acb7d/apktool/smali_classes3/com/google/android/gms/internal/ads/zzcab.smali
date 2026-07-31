.class final Lcom/google/android/gms/internal/ads/zzcab;
.super Lcom/google/android/gms/internal/ads/zzcag;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field final zze:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzf:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzg:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzh:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcag;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzbzv;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzbzv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcab;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbzx;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzbzz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzg:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcam;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcam;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzh:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzbzy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbzw;)V

    return-object v1
.end method
