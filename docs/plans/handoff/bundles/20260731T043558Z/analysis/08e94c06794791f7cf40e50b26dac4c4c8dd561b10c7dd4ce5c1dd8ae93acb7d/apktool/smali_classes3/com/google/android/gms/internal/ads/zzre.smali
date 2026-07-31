.class final Lcom/google/android/gms/internal/ads/zzre;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzrg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzrg;->zza:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrh;->zzJ()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrh;->zzI()Lcom/google/android/gms/internal/ads/zzqe;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrh;->zzL()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrh;->zzI()Lcom/google/android/gms/internal/ads/zzqe;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqe;->zza()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrg;->zza:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zzJ()Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzrh;->zzK(Z)V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrg;->zza:Lcom/google/android/gms/internal/ads/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zzJ()Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zzI()Lcom/google/android/gms/internal/ads/zzqe;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zzL()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrh;->zzI()Lcom/google/android/gms/internal/ads/zzqe;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqe;->zza()V

    :cond_1
    :goto_0
    return-void
.end method
