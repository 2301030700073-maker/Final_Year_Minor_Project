.class public final Lcom/google/android/gms/internal/ads/zzdht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffx;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsq;Lcom/google/android/gms/internal/ads/zzffx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdht;->zza:Lcom/google/android/gms/internal/ads/zzdsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdht;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    return-void
.end method

.method private final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->zza:Lcom/google/android/gms/internal/ads/zzdsq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsq;->zzd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->zza:Lcom/google/android/gms/internal/ads/zzdsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsq;->zzc()V

    return-void
.end method

.method public final zzdA()V
    .locals 0

    return-void
.end method

.method public final zzdB()V
    .locals 0

    return-void
.end method

.method public final zzdC()V
    .locals 0

    return-void
.end method

.method public final zzdD()V
    .locals 0

    return-void
.end method

.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdX()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdht;->zzl()V

    return-void
.end method

.method public final zzdY(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdht;->zzl()V

    return-void
.end method

.method public final zzdt()V
    .locals 0

    return-void
.end method

.method public final zzdu()V
    .locals 0

    return-void
.end method

.method public final zzdv()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->zza:Lcom/google/android/gms/internal/ads/zzdsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdht;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffx;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsq;->zzb(Ljava/lang/String;)V

    return-void
.end method
