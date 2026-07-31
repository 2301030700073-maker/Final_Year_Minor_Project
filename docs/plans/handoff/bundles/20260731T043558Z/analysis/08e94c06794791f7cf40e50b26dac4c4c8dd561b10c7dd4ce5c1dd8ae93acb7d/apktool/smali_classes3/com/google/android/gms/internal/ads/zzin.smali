.class final synthetic Lcom/google/android/gms/internal/ads/zzin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzju;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzpc;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzju;Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzju;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzpc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoy;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzoy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzju;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzju;->zzD(Lcom/google/android/gms/internal/ads/zzml;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzpc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzb()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpc;->zzb(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method
