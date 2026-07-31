.class final Lcom/google/android/gms/internal/ads/zzfli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzflm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflc;

.field final synthetic zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzflc;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflm;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflm;->zzh()V

    :cond_0
    return-void
.end method
