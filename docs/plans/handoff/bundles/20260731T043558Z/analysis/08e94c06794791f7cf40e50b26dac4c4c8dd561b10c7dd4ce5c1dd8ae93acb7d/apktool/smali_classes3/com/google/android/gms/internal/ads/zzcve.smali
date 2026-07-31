.class public final Lcom/google/android/gms/internal/ads/zzcve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdac;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzdbu;
.implements Lcom/google/android/gms/internal/ads/zzczi;
.implements Lcom/google/android/gms/internal/ads/zzcyo;
.implements Lcom/google/android/gms/internal/ads/zzdef;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcbd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->zzf()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzdO()V
    .locals 0

    return-void
.end method

.method public final zzdT(Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 0

    return-void
.end method

.method public final zzdU(Lcom/google/android/gms/internal/ads/zzfgf;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbd;->zzd(J)V

    return-void
.end method

.method public final zzdw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->zze()V

    return-void
.end method

.method public final zzdx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->zzg()V

    return-void
.end method

.method public final zzdy()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbd;->zzh(Z)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbd;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbdz$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbd;->zzb()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbdz$zzb;)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbdz$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbd;->zzc()V

    return-void
.end method

.method public final zzm(Z)V
    .locals 0

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    return-void
.end method

.method public final zzo()V
    .locals 0

    return-void
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzb:Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
