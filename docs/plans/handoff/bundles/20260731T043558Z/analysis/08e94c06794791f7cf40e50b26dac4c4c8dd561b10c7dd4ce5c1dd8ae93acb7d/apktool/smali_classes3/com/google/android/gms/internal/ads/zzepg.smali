.class public final Lcom/google/android/gms/internal/ads/zzepg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdma;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeot;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcyr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdma;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepg;->zza:Lcom/google/android/gms/internal/ads/zzdma;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeot;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzeot;-><init>(Lcom/google/android/gms/internal/ads/zzdvi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzeot;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdma;->zze()Lcom/google/android/gms/internal/ads/zzbor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepf;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(Lcom/google/android/gms/internal/ads/zzeot;Lcom/google/android/gms/internal/ads/zzbor;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzc:Lcom/google/android/gms/internal/ads/zzcyr;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzeot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeot;->zzl(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdju;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzeot;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepg;->zza:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeot;->zzi()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Lcom/google/android/gms/internal/ads/zzdma;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzeot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzeot;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzeot;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzcyr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzc:Lcom/google/android/gms/internal/ads/zzcyr;

    return-object v0
.end method
