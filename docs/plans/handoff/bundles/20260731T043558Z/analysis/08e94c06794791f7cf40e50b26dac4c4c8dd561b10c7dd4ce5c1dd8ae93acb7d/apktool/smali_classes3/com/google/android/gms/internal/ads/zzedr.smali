.class final synthetic Lcom/google/android/gms/internal/ads/zzedr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyd;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyd;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Lcom/google/android/gms/internal/ads/zzeyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    check-cast p1, Landroid/os/Bundle;

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzm(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Lcom/google/android/gms/internal/ads/zzeyd;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzeyd;->zza(Ljava/lang/Object;Landroid/os/Bundle;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
