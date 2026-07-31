.class final synthetic Lcom/google/android/gms/internal/ads/zzchm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtp;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaxa;

.field private final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final synthetic zzd:Lcom/google/android/gms/ads/internal/zza;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzegj;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfgr;

.field private final synthetic zzg:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final synthetic zzh:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzdvi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchm;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzb:Lcom/google/android/gms/internal/ads/zzaxa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchm;->zze:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzf:Lcom/google/android/gms/internal/ads/zzfgr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzg:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchm;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzcho;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchm;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcji;->zzb()Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzd:Lcom/google/android/gms/ads/internal/zza;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdt;->zza()Lcom/google/android/gms/internal/ads/zzbdt;

    move-result-object v12

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzchm;->zze:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzf:Lcom/google/android/gms/internal/ads/zzfgr;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzg:Lcom/google/android/gms/internal/ads/zzdvi;

    move-object/from16 v17, v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzb:Lcom/google/android/gms/internal/ads/zzaxa;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzcho;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcji;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcbz;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP()Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzchl;-><init>(Lcom/google/android/gms/internal/ads/zzcbz;)V

    .line 6
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzciw;->zzG(Lcom/google/android/gms/internal/ads/zzciu;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzchm;->zzh:Ljava/lang/String;

    .line 7
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcgy;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
