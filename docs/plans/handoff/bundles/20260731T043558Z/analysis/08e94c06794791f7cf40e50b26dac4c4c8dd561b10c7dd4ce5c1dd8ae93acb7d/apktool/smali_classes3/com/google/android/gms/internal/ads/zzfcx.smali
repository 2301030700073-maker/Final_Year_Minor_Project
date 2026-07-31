.class final synthetic Lcom/google/android/gms/internal/ads/zzfcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfcz;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcx;->zza:Lcom/google/android/gms/internal/ads/zzfcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcx;->zzb:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcx;->zza:Lcom/google/android/gms/internal/ads/zzfcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcx;->zzb:Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfdg;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfcz;->zzb(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzfdg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
