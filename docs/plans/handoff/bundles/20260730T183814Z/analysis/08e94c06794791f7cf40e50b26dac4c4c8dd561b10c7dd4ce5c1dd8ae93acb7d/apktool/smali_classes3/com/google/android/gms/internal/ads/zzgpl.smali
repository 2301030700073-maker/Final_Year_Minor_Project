.class final Lcom/google/android/gms/internal/ads/zzgpl;
.super Lcom/google/android/gms/internal/ads/zzgpa;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzgpm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgpm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnz;->zzr(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpj;-><init>(Lcom/google/android/gms/internal/ads/zzgpm;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgpm;->size:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgrs;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpj;-><init>(Lcom/google/android/gms/internal/ads/zzgpm;)V

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgpm;->map:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzh()Lcom/google/android/gms/internal/ads/zzgpa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->zzu(I)Lcom/google/android/gms/internal/ads/zzgrt;

    move-result-object v0

    .line 1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgpa;

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpa;->zzg([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method
