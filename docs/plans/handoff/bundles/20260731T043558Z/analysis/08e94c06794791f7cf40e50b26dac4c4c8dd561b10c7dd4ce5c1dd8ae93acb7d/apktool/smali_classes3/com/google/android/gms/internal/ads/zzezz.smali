.class public final Lcom/google/android/gms/internal/ads/zzezz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzgus;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezz;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzezz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method
