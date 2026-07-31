.class public final Lcom/google/android/gms/internal/ads/zzcpg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcbn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zzb:Lcom/google/android/gms/internal/ads/zzcbn;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzdO()V
    .locals 0

    return-void
.end method

.method public final zzdx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zzb:Lcom/google/android/gms/internal/ads/zzcbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzi()V

    :cond_0
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
