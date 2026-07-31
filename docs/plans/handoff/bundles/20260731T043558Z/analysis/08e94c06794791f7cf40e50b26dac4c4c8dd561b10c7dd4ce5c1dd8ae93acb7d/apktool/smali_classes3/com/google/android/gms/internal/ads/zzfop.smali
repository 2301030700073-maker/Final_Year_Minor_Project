.class final Lcom/google/android/gms/internal/ads/zzfop;
.super Lcom/google/android/gms/internal/ads/zzbyu;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgvb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbyo;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfoq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoq;Lcom/google/android/gms/internal/ads/zzgvb;Lcom/google/android/gms/internal/ads/zzbyo;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfop;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfop;->zzb:Lcom/google/android/gms/internal/ads/zzbyo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfop;->zzc:Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbyu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfop;->zzc:Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfop;->zzb:Lcom/google/android/gms/internal/ads/zzbyo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfop;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvb;)V

    return-void
.end method

.method public final zzf(I)V
    .locals 0

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzb()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfop;->zzc:Lcom/google/android/gms/internal/ads/zzfoq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfoq;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x33

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load rewarded ad with error: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitId: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfom;->zzv(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
