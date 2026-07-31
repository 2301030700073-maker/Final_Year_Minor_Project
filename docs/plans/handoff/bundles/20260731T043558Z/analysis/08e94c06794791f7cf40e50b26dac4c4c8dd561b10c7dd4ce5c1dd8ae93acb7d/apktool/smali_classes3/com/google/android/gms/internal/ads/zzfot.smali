.class public final Lcom/google/android/gms/internal/ads/zzfot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfot;->zza:Z

    return v0
.end method

.method final zzb(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqs;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfot;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfot;->zza:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqa;->zza()Lcom/google/android/gms/internal/ads/zzfqa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqa;->zzb(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpr;->zza()Lcom/google/android/gms/internal/ads/zzfpr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->zzd(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqn;->zza(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqo;->zza(Landroid/content/Context;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpx;->zza()Lcom/google/android/gms/internal/ads/zzfpx;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpx;->zzc(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpq;->zza()Lcom/google/android/gms/internal/ads/zzfpq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpq;->zzc(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqc;->zza()Lcom/google/android/gms/internal/ads/zzfqc;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqc;->zzb(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
