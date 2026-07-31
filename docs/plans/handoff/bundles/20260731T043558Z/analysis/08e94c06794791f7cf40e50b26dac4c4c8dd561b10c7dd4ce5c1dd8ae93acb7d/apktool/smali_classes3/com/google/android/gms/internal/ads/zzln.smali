.class public interface abstract Lcom/google/android/gms/internal/ads/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzli;


# virtual methods
.method public abstract zzS()Ljava/lang/String;
.end method

.method public zzT(JJ)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzln;->zze()I

    move-result p1

    const/4 p2, 0x1

    const-wide/16 p3, 0x2710

    if-ne p1, p2, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzY()Z

    move-result p1

    const-wide/32 v0, 0xf4240

    if-nez p1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzZ()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    move-wide p3, v0

    :cond_2
    :goto_0
    return-wide p3
.end method

.method public zzU(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzV(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method public zzW()V
    .locals 0

    return-void
.end method

.method public abstract zzX(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public abstract zzY()Z
.end method

.method public abstract zzZ()Z
.end method

.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/ads/zzlp;
.end method

.method public abstract zzc(ILcom/google/android/gms/internal/ads/zzpc;Lcom/google/android/gms/internal/ads/zzdc;)V
.end method

.method public abstract zzcY()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public abstract zzcZ([Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzwk;JJLcom/google/android/gms/internal/ads/zzuu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/ads/zzko;
.end method

.method public abstract zzda()Lcom/google/android/gms/internal/ads/zzwk;
.end method

.method public abstract zzdb()Z
.end method

.method public abstract zze()I
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/ads/zzlq;[Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzwk;JZZJJLcom/google/android/gms/internal/ads/zzuu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public abstract zzk()J
.end method

.method public abstract zzl()V
.end method

.method public abstract zzm()Z
.end method

.method public abstract zzn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo(Lcom/google/android/gms/internal/ads/zzbf;)V
.end method

.method public abstract zzp(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public abstract zzq()V
.end method

.method public abstract zzr()V
.end method

.method public abstract zzs()V
.end method

.method public zzt()V
    .locals 0

    return-void
.end method
