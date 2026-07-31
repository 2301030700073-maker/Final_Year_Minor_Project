.class final synthetic Lcom/google/android/gms/internal/ads/zzdpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbau;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final synthetic zzdo(Lcom/google/android/gms/internal/ads/zzbat;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbat;->zzd:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP()Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzciw;->zza(IIZ)V

    return-void
.end method
