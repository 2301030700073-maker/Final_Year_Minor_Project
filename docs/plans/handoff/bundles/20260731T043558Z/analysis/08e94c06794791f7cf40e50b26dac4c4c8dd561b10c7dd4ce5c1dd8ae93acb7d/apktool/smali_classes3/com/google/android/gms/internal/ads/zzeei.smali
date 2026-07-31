.class public final Lcom/google/android/gms/internal/ads/zzeei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbxd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbxd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeei;->zza:Lcom/google/android/gms/internal/ads/zzbxd;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeei;->zza:Lcom/google/android/gms/internal/ads/zzbxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxd;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zziq:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "persistFlags"

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcby;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcby;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V

    return-void
.end method
