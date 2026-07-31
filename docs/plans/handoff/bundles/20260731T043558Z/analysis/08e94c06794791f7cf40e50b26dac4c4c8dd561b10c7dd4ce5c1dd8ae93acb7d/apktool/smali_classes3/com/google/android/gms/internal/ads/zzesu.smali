.class public final Lcom/google/android/gms/internal/ads/zzesu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtd;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzdtd;Lcom/google/android/gms/internal/ads/zzfgn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesu;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzdtd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzest;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzest;-><init>(Lcom/google/android/gms/internal/ads/zzesu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesu;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzesv;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzdtd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdtd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzc()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzesv;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzesv;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method
