.class final synthetic Lcom/google/android/gms/internal/ads/zzou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzoy;

.field private final synthetic zzb:Landroid/media/metrics/TrackChangeEvent;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzoy;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzou;->zza:Lcom/google/android/gms/internal/ads/zzoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzou;->zzb:Landroid/media/metrics/TrackChangeEvent;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzou;->zza:Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzou;->zzb:Landroid/media/metrics/TrackChangeEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzu(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method
