.class final Lcom/google/android/gms/internal/ads/zzbbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/view/View;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbu;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zza:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzb:Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzb:Lcom/google/android/gms/internal/ads/zzbbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zza:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzb(Landroid/view/View;)V

    return-void
.end method
