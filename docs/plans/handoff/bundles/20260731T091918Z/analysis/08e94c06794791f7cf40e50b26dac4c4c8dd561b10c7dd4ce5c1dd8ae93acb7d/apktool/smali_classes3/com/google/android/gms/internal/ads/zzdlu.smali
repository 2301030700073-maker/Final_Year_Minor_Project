.class public final Lcom/google/android/gms/internal/ads/zzdlu;
.super Lcom/google/android/gms/internal/ads/zzdlv;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zzb:Lorg/json/JSONObject;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffu;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdlv;-><init>(Lcom/google/android/gms/internal/ads/zzffu;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tracking_urls_and_actions"

    aput-object v2, v0, v1

    const-string v2, "active_view"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzi(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lorg/json/JSONObject;

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "allow_pub_owned_ad_view"

    aput-object v2, v0, v1

    .line 3
    invoke-static {v1, p2, v0}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzj(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Z

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "attribution"

    aput-object v0, p1, v1

    const-string v0, "allow_pub_rendering"

    aput-object v0, p1, v3

    .line 4
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzj(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "enable_omid"

    aput-object v0, p1, v1

    .line 5
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzj(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zze:Z

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "watermark_overlay_png_base64"

    aput-object v0, p1, v1

    const-string v0, ""

    .line 6
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzk(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzg:Ljava/lang/String;

    const-string p1, "overlay"

    .line 7
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzf:Z

    const-string p1, "omid_settings"

    .line 8
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzh:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzz:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzf:Z

    return v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zze:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzh:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzV:Lcom/google/android/gms/internal/ads/zzfgq;

    :goto_0
    return-object v1
.end method
