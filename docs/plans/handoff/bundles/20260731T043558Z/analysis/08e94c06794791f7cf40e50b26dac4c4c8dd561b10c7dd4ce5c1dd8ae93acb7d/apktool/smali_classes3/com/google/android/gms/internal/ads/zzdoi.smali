.class final synthetic Lcom/google/android/gms/internal/ads/zzdoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzd:Lorg/json/JSONObject;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoj;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zza:Lcom/google/android/gms/internal/ads/zzdoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzb:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzd:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zza:Lcom/google/android/gms/internal/ads/zzdoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzb:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzd:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoj;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v0

    return-object v0
.end method
