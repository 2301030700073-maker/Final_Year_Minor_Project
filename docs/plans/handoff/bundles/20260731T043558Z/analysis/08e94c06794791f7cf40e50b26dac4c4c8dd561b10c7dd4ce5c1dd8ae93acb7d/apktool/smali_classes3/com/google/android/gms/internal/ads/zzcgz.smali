.class final Lcom/google/android/gms/internal/ads/zzcgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzt;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;Lcom/google/android/gms/internal/ads/zzbzt;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Lcom/google/android/gms/internal/ads/zzbzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzb:Lcom/google/android/gms/internal/ads/zzchj;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzchj;->zzX(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbzt;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
