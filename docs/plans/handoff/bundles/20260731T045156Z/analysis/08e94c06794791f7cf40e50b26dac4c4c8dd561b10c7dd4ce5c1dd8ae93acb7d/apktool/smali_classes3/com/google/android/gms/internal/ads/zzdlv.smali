.class public Lcom/google/android/gms/internal/ads/zzdlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzffu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    return-void
.end method


# virtual methods
.method public zza()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzK:Z

    return v0
.end method

.method public zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzT:Z

    return v0
.end method

.method public zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzJ:Z

    return v0
.end method

.method public zzf()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zzg()Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzV:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object v0
.end method
