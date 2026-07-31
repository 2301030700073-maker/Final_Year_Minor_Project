.class final synthetic Lcom/google/android/gms/internal/ads/zzeju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzejw;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzf:Lorg/json/JSONObject;

.field private final synthetic zzg:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzh:Lcom/google/android/gms/internal/ads/zzbzt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbzt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeju;->zza:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzd:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeju;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzf:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzh:Lcom/google/android/gms/internal/ads/zzbzt;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeju;->zza:Lcom/google/android/gms/internal/ads/zzejw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzd:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeju;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzf:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzh:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzejw;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbzt;)Lcom/google/android/gms/internal/ads/zzdll;

    move-result-object v0

    return-object v0
.end method
