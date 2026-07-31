.class public final Lcom/google/android/gms/internal/ads/zzffh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfey;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfdm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfgg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzflp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfgm;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcjn;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfey;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzc:Lcom/google/android/gms/internal/ads/zzcjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffh;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzd:Lcom/google/android/gms/internal/ads/zzfey;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzh:Lcom/google/android/gms/internal/ads/zzfgm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzf:Lcom/google/android/gms/internal/ads/zzfgg;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzx()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzg:Lcom/google/android/gms/internal/ads/zzflp;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzffg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzc:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjn;->zzp()Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffh;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzf:Lcom/google/android/gms/internal/ads/zzfgg;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzf(Lcom/google/android/gms/internal/ads/zzfgg;)Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zze()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrm;->zzd(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzdrm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzden;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzden;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzden;->zzn()Lcom/google/android/gms/internal/ads/zzdeo;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrm;->zze(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdrm;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzepi;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbyc;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzffa;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfff;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfff;-><init>(Lcom/google/android/gms/internal/ads/zzffh;)V

    .line 5
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfdm;->zzd()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfdm;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 8
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdrn;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdrn;->zzd()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object p3

    .line 10
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzflm;->zzi(I)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 11
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzflm;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzflm;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzflm;

    move-object v7, p3

    goto :goto_0

    :cond_2
    move-object v7, v2

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbyc;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 13
    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v3}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb(Landroid/content/Context;Z)V

    .line 14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zzjT:Lcom/google/android/gms/internal/ads/zzbel;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzc:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzw()Lcom/google/android/gms/internal/ads/zzdyo;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzdyo;->zzc(Z)V

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    .line 17
    sget-object v5, Lcom/google/android/gms/internal/ads/zzduq;->zza:Lcom/google/android/gms/internal/ads/zzduq;

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v5

    iget-wide v8, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 19
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, p2

    new-instance p2, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzduq;->zzb:Lcom/google/android/gms/internal/ads/zzduq;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v3, v10

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdus;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzh:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 23
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 26
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgm;->zzz()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfll;->zzg(Lcom/google/android/gms/internal/ads/zzfgn;)I

    move-result p2

    .line 28
    invoke-static {p3, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzffg;

    invoke-direct {v9, v2}, Lcom/google/android/gms/internal/ads/zzffg;-><init>([B)V

    iput-object p1, v9, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfdn;

    invoke-direct {p2, v9, v2}, Lcom/google/android/gms/internal/ads/zzfdn;-><init>(Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzbxj;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzffe;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzffe;-><init>(Lcom/google/android/gms/internal/ads/zzffh;)V

    .line 29
    invoke-interface {p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfdm;->zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzffd;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    .line 30
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzffd;-><init>(Lcom/google/android/gms/internal/ads/zzffh;Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzffg;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    move p2, v10

    :goto_1
    return p2
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzd:Lcom/google/android/gms/internal/ads/zzfey;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfey;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzffh;->zzk(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzffh;->zzk(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzd:Lcom/google/android/gms/internal/ads/zzfey;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzflp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzg:Lcom/google/android/gms/internal/ads/zzflp;

    return-object v0
.end method

.method final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzh:Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zzj()Lcom/google/android/gms/internal/ads/zzfga;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfga;->zza(I)Lcom/google/android/gms/internal/ads/zzfga;

    return-void
.end method
