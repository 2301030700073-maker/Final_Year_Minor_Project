.class final Lcom/google/android/gms/internal/ads/zzjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlm;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjv;->zza:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjv;->zza:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzw()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(I)Z

    return-void
.end method
