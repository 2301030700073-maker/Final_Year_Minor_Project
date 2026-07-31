.class final Lcom/google/android/gms/internal/ads/zzbdj;
.super Lcom/google/android/gms/internal/ads/zzcca;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdj;->zza:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->zza:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzb()V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcca;->cancel(Z)Z

    move-result p1

    return p1
.end method
