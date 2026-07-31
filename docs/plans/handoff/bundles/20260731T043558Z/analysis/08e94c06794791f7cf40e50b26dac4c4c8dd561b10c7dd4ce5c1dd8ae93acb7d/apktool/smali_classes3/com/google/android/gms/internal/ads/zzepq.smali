.class public final Lcom/google/android/gms/internal/ads/zzepq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcjn;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzepg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzflp;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcud;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzepg;Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepq;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzx()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zze:Lcom/google/android/gms/internal/ads/zzflp;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzepg;->zzc()Lcom/google/android/gms/internal/ads/zzeot;

    move-result-object p1

    .line 2
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzt(Lcom/google/android/gms/internal/ads/zzeot;)Lcom/google/android/gms/internal/ads/zzfgm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzepi;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzepp;-><init>(Lcom/google/android/gms/internal/ads/zzepq;)V

    .line 44
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzepo;-><init>(Lcom/google/android/gms/internal/ads/zzepq;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 6
    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb(Landroid/content/Context;Z)V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjT:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzw()Lcom/google/android/gms/internal/ads/zzdyo;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdyo;->zzc(Z)V

    .line 10
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzepk;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzepk;->zza:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    .line 12
    sget-object v6, Lcom/google/android/gms/internal/ads/zzduq;->zza:Lcom/google/android/gms/internal/ads/zzduq;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p3, v2

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduq;->zzb:Lcom/google/android/gms/internal/ads/zzduq;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p3, v3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdus;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 17
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfgm;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 18
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzl(I)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzz()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfll;->zzg(Lcom/google/android/gms/internal/ads/zzfgn;)I

    move-result p3

    const/16 v1, 0x8

    .line 20
    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v8

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfgn;->zzo:Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzepg;->zzc()Lcom/google/android/gms/internal/ads/zzeot;

    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzeot;->zzn(Lcom/google/android/gms/ads/internal/client/zzco;)V

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzo()Lcom/google/android/gms/internal/ads/zzdjy;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>()V

    .line 23
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxw;

    .line 24
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcxw;->zze()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p2

    .line 25
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdjy;->zzf(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzdjy;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzden;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzden;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zzc()Lcom/google/android/gms/internal/ads/zzeot;

    move-result-object v4

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzden;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzden;->zzn()Lcom/google/android/gms/internal/ads/zzdeo;

    move-result-object p2

    .line 27
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdjy;->zzg(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdjy;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zzb()Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdjy;->zze(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdjy;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcrd;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Landroid/view/ViewGroup;)V

    .line 29
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdjy;->zzd(Lcom/google/android/gms/internal/ads/zzcrd;)Lcom/google/android/gms/internal/ads/zzdjy;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdjy;->zza()Lcom/google/android/gms/internal/ads/zzdjz;

    move-result-object v9

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdjz;->zzc()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzflm;->zzi(I)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzflm;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 35
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzflm;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzflm;

    move-object v7, p2

    goto :goto_1

    :cond_5
    move-object v7, v0

    .line 36
    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzv()Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfhm;->zza(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcud;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object p2

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdjz;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcus;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcus;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcud;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzf:Lcom/google/android/gms/internal/ads/zzcud;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzepn;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    .line 40
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzepn;-><init>(Lcom/google/android/gms/internal/ads/zzepq;Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzdjz;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcud;->zza(Lcom/google/android/gms/internal/ads/zzguf;)V

    return v3
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzf:Lcom/google/android/gms/internal/ads/zzcud;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcud;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zze()Lcom/google/android/gms/internal/ads/zzcyr;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyr;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zze()Lcom/google/android/gms/internal/ads/zzcyr;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyr;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzcjn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzepg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zzd:Lcom/google/android/gms/internal/ads/zzepg;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzflp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->zze:Lcom/google/android/gms/internal/ads/zzflp;

    return-object v0
.end method
