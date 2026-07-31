.class final Lcom/google/android/gms/internal/ads/zzrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrz;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzru;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzrs;
    .locals 2

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsa;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzrr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzrr;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzsa;-><init>(Lcom/google/android/gms/internal/ads/zzrr;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
