.class public final Lcom/google/android/gms/internal/ads/zzejg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehk;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdse;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdjd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbma;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdvc;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgn;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdjd;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzbma;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzdvc;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejg;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzc:Lcom/google/android/gms/internal/ads/zzdjd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejg;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzb:Lcom/google/android/gms/internal/ads/zzdse;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzg:Lcom/google/android/gms/internal/ads/zzbma;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjS:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzi:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzj:Lcom/google/android/gms/internal/ads/zzdvc;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzk:Lcom/google/android/gms/internal/ads/zzdvi;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsi;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzejd;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzejd;-><init>(Lcom/google/android/gms/internal/ads/zzejg;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzdsi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejg;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzejf;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;)V

    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzdsi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v13, Lcom/google/android/gms/internal/ads/zzbeu;->zzcy:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzj:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzduq;->zzB:Lcom/google/android/gms/internal/ads/zzduq;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzb:Lcom/google/android/gms/internal/ads/zzdse;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfgn;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    invoke-virtual {v2, v4, v12, v3}, Lcom/google/android/gms/internal/ads/zzdse;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;)Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v14

    .line 9
    iget-boolean v2, v12, Lcom/google/android/gms/internal/ads/zzffu;->zzW:Z

    invoke-interface {v14, v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaw(Z)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzj:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzduq;->zzC:Lcom/google/android/gms/internal/ads/zzduq;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 15
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/ads/zzcca;

    .line 17
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzc:Lcom/google/android/gms/internal/ads/zzdjd;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcue;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v12, v9}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejg;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzh:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzg:Lcom/google/android/gms/internal/ads/zzbma;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzi:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzejg;->zzk:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdia;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzeje;

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v16, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-object v6, v14

    move/from16 p2, v8

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 p3, v13

    move-object v13, v10

    move-object/from16 v10, v17

    move-object/from16 p4, v15

    move-object v15, v11

    move-object/from16 v11, v16

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzeje;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzfgn;ZLcom/google/android/gms/internal/ads/zzbma;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzdvi;)V

    invoke-direct {v0, v12, v14}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdjl;Lcom/google/android/gms/internal/ads/zzcgy;)V

    .line 19
    invoke-virtual {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzdjd;->zzd(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdia;)Lcom/google/android/gms/internal/ads/zzdhx;

    move-result-object v0

    move-object/from16 v1, p4

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzejg;->zzj:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzduq;->zzD:Lcom/google/android/gms/internal/ads/zzduq;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 26
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    .line 27
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzd()Lcom/google/android/gms/internal/ads/zzczg;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzejb;

    invoke-direct {v3, v14}, Lcom/google/android/gms/internal/ads/zzejb;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;)V

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    move-object/from16 v2, p1

    .line 30
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbeu;->zzfS:Lcom/google/android/gms/internal/ads/zzbel;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzl()Lcom/google/android/gms/internal/ads/zzehd;

    move-result-object v5

    .line 34
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzehd;->zza(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcip;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 36
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzk()Lcom/google/android/gms/internal/ads/zzdsd;

    move-result-object v5

    move/from16 v7, p2

    if-eq v6, v7, :cond_4

    move-object/from16 v9, v19

    goto :goto_1

    :cond_4
    move-object/from16 v9, v18

    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzejg;->zzj:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v8

    .line 39
    invoke-virtual {v5, v14, v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzdsd;->zzi(Lcom/google/android/gms/internal/ads/zzcgy;ZLcom/google/android/gms/internal/ads/zzbma;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzk()Lcom/google/android/gms/internal/ads/zzdsd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v5

    .line 42
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdjd;->zzc()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object v6

    .line 43
    invoke-static {v14, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsd;->zzj(Lcom/google/android/gms/internal/ads/zzcgy;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzflm;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzejc;

    invoke-direct {v4, v1, v14, v2, v0}, Lcom/google/android/gms/internal/ads/zzejc;-><init>(Lcom/google/android/gms/internal/ads/zzejg;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzdhx;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzejg;->zze:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
