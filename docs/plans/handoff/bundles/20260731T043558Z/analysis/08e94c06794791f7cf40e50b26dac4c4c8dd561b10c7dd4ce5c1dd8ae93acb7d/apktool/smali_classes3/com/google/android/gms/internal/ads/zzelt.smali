.class final Lcom/google/android/gms/internal/ads/zzelt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjl;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdse;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbma;

.field private final zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdvc;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzbma;ZLcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzdvc;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzb:Lcom/google/android/gms/internal/ads/zzdse;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelt;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzg:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzh:Lcom/google/android/gms/internal/ads/zzbma;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzi:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzj:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzk:Lcom/google/android/gms/internal/ads/zzdvc;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzl:Lcom/google/android/gms/internal/ads/zzdvi;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzczb;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrj;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzelt;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzg:Lcom/google/android/gms/internal/ads/zzcgy;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaB()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zzbe:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzb:Lcom/google/android/gms/internal/ads/zzdse;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfgn;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 5
    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/gms/internal/ads/zzdse;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;)Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrj;->zzk()Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbmq;->zzb(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzbmp;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdsi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdsi;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrj;->zzl()Lcom/google/android/gms/internal/ads/zzdsd;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzi:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzh:Lcom/google/android/gms/internal/ads/zzbma;

    goto :goto_0

    :cond_1
    move-object v8, v6

    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzk:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v9

    .line 9
    invoke-virtual {v7, v3, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsd;->zzi(Lcom/google/android/gms/internal/ads/zzcgy;ZLcom/google/android/gms/internal/ads/zzbma;Landroid/os/Bundle;)V

    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP()Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzels;

    invoke-direct {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzels;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzcgy;)V

    .line 11
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzciw;->zzG(Lcom/google/android/gms/internal/ads/zzciu;)V

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP()Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzelr;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzelr;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;)V

    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzciw;->zzH(Lcom/google/android/gms/internal/ads/zzciv;)V

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzcgy;->zzau(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzchn; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v11, v3

    .line 16
    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/ads/zzcgy;->zzag(Z)V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzi:Z

    .line 17
    new-instance v3, Lcom/google/android/gms/ads/internal/zzl;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzh:Lcom/google/android/gms/internal/ads/zzbma;

    .line 18
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbma;->zzc(Z)Z

    move-result v7

    move v13, v7

    goto :goto_2

    :cond_3
    move v13, v4

    .line 19
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzelt;->zza:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/content/Context;)Z

    move-result v14

    if-eqz v2, :cond_4

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzh:Lcom/google/android/gms/internal/ads/zzbma;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbma;->zzd()Z

    move-result v7

    if-eqz v7, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    move v15, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzh:Lcom/google/android/gms/internal/ads/zzbma;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbma;->zze()F

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzelt;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    .line 20
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzO:Z

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzP:Z

    const/16 v17, -0x1

    move-object v12, v3

    move/from16 v18, p1

    move/from16 v19, v4

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzczb;->zzb()V

    .line 22
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrj;->zzj()Lcom/google/android/gms/internal/ads/zzdja;

    move-result-object v9

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzQ:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzB:Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffu;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzj:Lcom/google/android/gms/internal/ads/zzegj;

    :cond_7
    move-object/from16 v20, v6

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    .line 25
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcgy;->zzn()Ljava/lang/String;

    move-result-object v21

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v4

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcgy;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzbvb;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzelt;->zzl:Lcom/google/android/gms/internal/ads/zzdvi;

    move-object/from16 v2, p2

    .line 26
    invoke-static {v2, v4, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdvi;)V

    return-void

    :catch_0
    move-exception v0

    .line 14
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzffu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zze:Lcom/google/android/gms/internal/ads/zzffu;

    return-object v0
.end method
