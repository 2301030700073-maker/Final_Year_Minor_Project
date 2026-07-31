.class final synthetic Lcom/google/android/gms/internal/ads/zzchk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmv;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcji;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Z

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzaxa;

.field private final synthetic zzg:Lcom/google/android/gms/internal/ads/zzbgb;

.field private final synthetic zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final synthetic zzi:Lcom/google/android/gms/ads/internal/zzn;

.field private final synthetic zzj:Lcom/google/android/gms/ads/internal/zza;

.field private final synthetic zzk:Lcom/google/android/gms/internal/ads/zzbdt;

.field private final synthetic zzl:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzm:Lcom/google/android/gms/internal/ads/zzffx;

.field private final synthetic zzn:Lcom/google/android/gms/internal/ads/zzfgr;

.field private final synthetic zzo:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final synthetic zzp:Lcom/google/android/gms/internal/ads/zzegj;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcji;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzegj;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zza:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzb:Lcom/google/android/gms/internal/ads/zzcji;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzf:Lcom/google/android/gms/internal/ads/zzaxa;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzbgb;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Lcom/google/android/gms/ads/internal/zza;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzk:Lcom/google/android/gms/internal/ads/zzbdt;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzl:Lcom/google/android/gms/internal/ads/zzffu;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:Lcom/google/android/gms/internal/ads/zzffx;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzfgr;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzo:Lcom/google/android/gms/internal/ads/zzdvi;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzchk;->zzp:Lcom/google/android/gms/internal/ads/zzegj;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzb:Lcom/google/android/gms/internal/ads/zzcji;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzchk;->zze:Z

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzp:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzo:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzk:Lcom/google/android/gms/internal/ads/zzbdt;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzl:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzm:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzfgr;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzf:Lcom/google/android/gms/internal/ads/zzaxa;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzbgb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzchk;->zza:Landroid/content/Context;

    const/16 v17, 0x108

    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzchu;

    .line 2
    sget v18, Lcom/google/android/gms/internal/ads/zzcib;->zza:I

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcja;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcib;

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v7

    move v7, v0

    move-object/from16 v21, v8

    move-object v8, v1

    move-object v1, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v16

    move/from16 v23, v0

    move-object v0, v11

    move-object/from16 v22, v17

    move-object/from16 v11, v18

    move-object/from16 v24, v14

    move-object/from16 v14, v22

    move-object/from16 v25, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v1

    move-object/from16 v17, v21

    .line 4
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzcib;-><init>(Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcji;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzfgr;)V

    move-object/from16 v1, v24

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzchu;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzdvi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v1

    move-object/from16 v4, v22

    move/from16 v2, v23

    move-object/from16 v3, v25

    .line 6
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzz;->zzb(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzbdt;ZLcom/google/android/gms/internal/ads/zzegj;)Lcom/google/android/gms/internal/ads/zzchj;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgx;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 10
    throw v0
.end method
