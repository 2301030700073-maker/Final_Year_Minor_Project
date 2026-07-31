.class final Lcom/google/android/gms/internal/ads/zzflj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzflm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflj;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflj;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzflc;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
