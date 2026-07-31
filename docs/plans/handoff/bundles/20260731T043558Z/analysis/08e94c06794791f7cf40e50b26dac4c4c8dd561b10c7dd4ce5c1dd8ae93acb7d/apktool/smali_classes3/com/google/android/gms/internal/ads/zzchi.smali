.class final Lcom/google/android/gms/internal/ads/zzchi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchi;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    return-void
.end method


# virtual methods
.method public final zzdA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdA()V

    :cond_0
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdX()V

    :cond_0
    return-void
.end method

.method public final zzdY(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdY(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchi;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzG()V

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzh()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzI()V

    return-void
.end method
