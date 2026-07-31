.class final synthetic Lcom/google/android/gms/internal/ads/zzdos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdos;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzh()Lcom/google/android/gms/internal/ads/zzcie;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdos;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekz;

    const/4 v0, 0x1

    const-string v1, "Retrieve video view in html5 ad response failed."

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    throw p1
.end method
