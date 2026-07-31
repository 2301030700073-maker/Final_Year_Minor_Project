.class final Lcom/google/android/gms/internal/ads/zzhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzko;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzly;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhy;

.field private zzc:Lcom/google/android/gms/internal/ads/zzln;

.field private zzd:Lcom/google/android/gms/internal/ads/zzko;

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzly;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->zza()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->zzb()V

    return-void
.end method

.method public final zzc(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzly;->zzc(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzln;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzln;->zzd()Lcom/google/android/gms/internal/ads/zzko;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzly;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzko;->zzi(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzib;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzln;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    :cond_0
    return-void
.end method

.method public final zzf(Z)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzZ()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzln;->zze()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzY()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzc:Lcom/google/android/gms/internal/ads/zzln;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzln;->zzdb()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzko;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzg()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzly;->zzg()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzly;->zzb()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzf:Z

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzly;->zza()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzly;->zzc(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzly;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzav;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzly;->zzi(Lcom/google/android/gms/internal/ads/zzav;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhy;->zzc(Lcom/google/android/gms/internal/ads/zzav;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzf:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzly;->zza()V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->zzg()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzko;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzko;->zzg()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final zzh()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zze:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzko;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzko;->zzh()Z

    move-result v0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzko;->zzi(Lcom/google/android/gms/internal/ads/zzav;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzly;->zzi(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:Lcom/google/android/gms/internal/ads/zzko;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzko;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zza:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->zzj()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    :goto_0
    return-object v0
.end method
