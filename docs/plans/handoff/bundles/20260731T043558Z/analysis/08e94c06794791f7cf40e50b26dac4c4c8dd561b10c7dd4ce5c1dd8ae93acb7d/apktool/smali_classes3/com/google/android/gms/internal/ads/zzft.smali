.class public abstract Lcom/google/android/gms/internal/ads/zzft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgb;


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/util/ArrayList;

.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgf;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzgz;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    :cond_0
    return-void
.end method

.method protected final zzf(Lcom/google/android/gms/internal/ads/zzgf;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgz;->zza(Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzgf;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzg(Lcom/google/android/gms/internal/ads/zzgf;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzd:Lcom/google/android/gms/internal/ads/zzgf;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgz;->zzb(Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzgf;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzh(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zzd:Lcom/google/android/gms/internal/ads/zzgf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgz;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Z

    .line 3
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/android/gms/internal/ads/zzgz;->zzc(Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzgf;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zzd:Lcom/google/android/gms/internal/ads/zzgf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zzc:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgz;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzgz;->zzd(Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzgf;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zzd:Lcom/google/android/gms/internal/ads/zzgf;

    return-void
.end method
