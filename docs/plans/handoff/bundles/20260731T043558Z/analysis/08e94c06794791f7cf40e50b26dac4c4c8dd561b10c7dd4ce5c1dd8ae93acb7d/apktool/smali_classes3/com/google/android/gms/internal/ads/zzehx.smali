.class final Lcom/google/android/gms/internal/ads/zzehx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjl;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbma;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzfgn;ZLcom/google/android/gms/internal/ads/zzbma;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/internal/ads/zzbma;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzh:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzi:Lcom/google/android/gms/internal/ads/zzdvi;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzczb;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzcgy;

    const/4 v15, 0x1

    .line 2
    invoke-interface {v6, v15}, Lcom/google/android/gms/internal/ads/zzcgy;->zzag(Z)V

    .line 3
    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzg:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/internal/ads/zzbma;

    .line 4
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzbma;->zzc(Z)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/internal/ads/zzbma;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbma;->zzd()Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v19, v15

    goto :goto_1

    :cond_1
    move/from16 v19, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/internal/ads/zzbma;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbma;->zze()F

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    .line 5
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzO:Z

    const/16 v24, 0x0

    const/16 v18, 0x1

    const/16 v21, -0x1

    move-object/from16 v16, v10

    move/from16 v22, p1

    move/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzczb;->zzb()V

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqr;->zzj()Lcom/google/android/gms/internal/ads/zzdja;

    move-result-object v4

    .line 9
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzQ:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfgn;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    if-ne v3, v15, :cond_5

    const/4 v1, 0x7

    goto :goto_3

    :cond_5
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    .line 10
    :cond_6
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Error setting app open orientation; no targeting orientation available."

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    :goto_3
    move v7, v1

    .line 9
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 12
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzB:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffu;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzh:Lcom/google/android/gms/internal/ads/zzegj;

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v16, v2

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcgy;->zzn()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v14

    move-object/from16 v25, v14

    move-object/from16 v14, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcgy;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzbvb;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzi:Lcom/google/android/gms/internal/ads/zzdvi;

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    const/4 v4, 0x1

    .line 15
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdvi;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzffu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    return-object v0
.end method
