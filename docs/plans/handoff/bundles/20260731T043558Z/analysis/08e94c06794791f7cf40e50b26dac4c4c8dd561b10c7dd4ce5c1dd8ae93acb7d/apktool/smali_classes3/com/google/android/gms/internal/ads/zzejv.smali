.class final synthetic Lcom/google/android/gms/internal/ads/zzejv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzejw;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejv;->zza:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejv;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv;->zza:Lcom/google/android/gms/internal/ads/zzejw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejv;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzejw;->zzc(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzdqt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
