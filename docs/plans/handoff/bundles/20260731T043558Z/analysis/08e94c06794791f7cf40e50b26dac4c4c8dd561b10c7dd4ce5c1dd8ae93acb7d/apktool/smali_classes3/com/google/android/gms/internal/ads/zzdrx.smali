.class final synthetic Lcom/google/android/gms/internal/ads/zzdrx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrx;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    return-void
.end method


# virtual methods
.method public final synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrx;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
