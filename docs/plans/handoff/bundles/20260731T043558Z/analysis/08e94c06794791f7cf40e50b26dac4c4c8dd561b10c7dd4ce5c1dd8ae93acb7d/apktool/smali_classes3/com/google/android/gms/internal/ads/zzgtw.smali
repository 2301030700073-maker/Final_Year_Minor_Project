.class final Lcom/google/android/gms/internal/ads/zzgtw;
.super Lcom/google/android/gms/internal/ads/zzgtk;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgtv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgpa;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgtk;-><init>(Lcom/google/android/gms/internal/ads/zzgpa;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgtu;-><init>(Lcom/google/android/gms/internal/ads/zzgtw;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtw;->zza:Lcom/google/android/gms/internal/ads/zzgtv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtk;->zze()V

    return-void
.end method


# virtual methods
.method final zzA(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtk;->zzA(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtw;->zza:Lcom/google/android/gms/internal/ads/zzgtv;

    :cond_0
    return-void
.end method

.method final synthetic zzD(Lcom/google/android/gms/internal/ads/zzgtv;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtw;->zza:Lcom/google/android/gms/internal/ads/zzgtv;

    return-void
.end method

.method protected final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtw;->zza:Lcom/google/android/gms/internal/ads/zzgtv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgup;->zzh()V

    :cond_0
    return-void
.end method

.method final zzw(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method final zzx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtw;->zza:Lcom/google/android/gms/internal/ads/zzgtv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtv;->zze()V

    :cond_0
    return-void
.end method
