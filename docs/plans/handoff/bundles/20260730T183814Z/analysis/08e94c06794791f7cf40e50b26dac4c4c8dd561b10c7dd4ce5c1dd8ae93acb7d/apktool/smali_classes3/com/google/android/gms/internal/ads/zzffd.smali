.class final Lcom/google/android/gms/internal/ads/zzffd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzepi;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflm;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzflc;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzffg;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzffh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffh;Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzffg;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffd;->zza:Lcom/google/android/gms/internal/ads/zzepi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzb:Lcom/google/android/gms/internal/ads/zzflm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzd:Lcom/google/android/gms/internal/ads/zzffg;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zze:Lcom/google/android/gms/internal/ads/zzffh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgq:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Rewarded ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffd;->zze:Lcom/google/android/gms/internal/ads/zzffh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzh()Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfdm;->zzd()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrn;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrn;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcus;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 5
    :goto_0
    monitor-enter v0

    if-eqz v1, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrn;->zze()Lcom/google/android/gms/internal/ads/zzcyq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyq;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffc;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzffc;-><init>(Lcom/google/android/gms/internal/ads/zzffd;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzg()Lcom/google/android/gms/internal/ads/zzfey;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfey;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzd:Lcom/google/android/gms/internal/ads/zzffg;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzffh;->zze(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdrm;->zza()Lcom/google/android/gms/internal/ads/zzdrn;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrn;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcus;->zzd()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzded;->zzo()V

    .line 15
    :goto_1
    iget v1, v2, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "RewardedAdLoader.onFailure"

    invoke-static {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzfhk;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zza:Lcom/google/android/gms/internal/ads/zzepi;

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzepi;->zza()V

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzb:Lcom/google/android/gms/internal/ads/zzflm;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzflm;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 21
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflm;->zzh()V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzi()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 18
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    .line 23
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffd;->zze:Lcom/google/android/gms/internal/ads/zzffh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdri;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzt()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzq()Lcom/google/android/gms/internal/ads/zzdce;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzg()Lcom/google/android/gms/internal/ads/zzfey;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdce;->zzd(Lcom/google/android/gms/internal/ads/zzfey;)Lcom/google/android/gms/internal/ads/zzdce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zza:Lcom/google/android/gms/internal/ads/zzepi;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzepi;->zzb(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzg()Lcom/google/android/gms/internal/ads/zzfey;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffb;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzffb;-><init>(Lcom/google/android/gms/internal/ads/zzfey;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzg()Lcom/google/android/gms/internal/ads/zzfey;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfey;->onAdMetadataChanged()V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzb:Lcom/google/android/gms/internal/ads/zzflm;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzr()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzflm;->zze(Lcom/google/android/gms/internal/ads/zzfge;)Lcom/google/android/gms/internal/ads/zzflm;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzn()Lcom/google/android/gms/internal/ads/zzcyh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyh;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflm;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 16
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflm;->zzh()V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzi()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzr()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzflc;->zzg(Lcom/google/android/gms/internal/ads/zzfge;)Lcom/google/android/gms/internal/ads/zzflc;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzn()Lcom/google/android/gms/internal/ads/zzcyh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyh;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    .line 11
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
