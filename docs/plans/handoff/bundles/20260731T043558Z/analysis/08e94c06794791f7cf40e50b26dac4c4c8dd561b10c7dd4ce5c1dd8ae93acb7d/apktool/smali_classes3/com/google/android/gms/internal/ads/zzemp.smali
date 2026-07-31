.class final Lcom/google/android/gms/internal/ads/zzemp;
.super Lcom/google/android/gms/internal/ads/zzcrn;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzemt;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/internal/ads/zzffv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/internal/ads/zzffv;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdaa;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
