.class public final Lcom/google/android/gms/internal/ads/zzdkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdqt;

.field private final zzc:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbzt;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbzt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zza:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzb:Lcom/google/android/gms/internal/ads/zzdqt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzc:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzd:Lcom/google/android/gms/internal/ads/zzbzt;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzc:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzbzt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzd:Lcom/google/android/gms/internal/ads/zzbzt;

    return-object v0
.end method

.method public final zzc()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdqt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzb:Lcom/google/android/gms/internal/ads/zzdqt;

    return-object v0
.end method
