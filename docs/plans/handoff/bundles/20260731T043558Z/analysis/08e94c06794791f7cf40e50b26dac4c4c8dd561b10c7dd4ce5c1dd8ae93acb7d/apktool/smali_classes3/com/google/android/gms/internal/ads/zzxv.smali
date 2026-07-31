.class final Lcom/google/android/gms/internal/ads/zzxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzyi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxx;Lcom/google/android/gms/internal/ads/zzyi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyi;->zzl()V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyi;->zzl()V

    return-void
.end method
