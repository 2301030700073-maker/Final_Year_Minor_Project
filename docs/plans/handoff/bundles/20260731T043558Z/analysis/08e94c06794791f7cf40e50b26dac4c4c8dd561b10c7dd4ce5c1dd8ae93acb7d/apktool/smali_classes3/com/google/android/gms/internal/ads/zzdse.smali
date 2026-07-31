.class public final Lcom/google/android/gms/internal/ads/zzdse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaxa;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbgb;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbdt;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdbp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfgr;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcix;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcho;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzdbp;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzcix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdse;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzb:Lcom/google/android/gms/internal/ads/zzaxa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzc:Lcom/google/android/gms/internal/ads/zzbgb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdse;->zze:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzf:Lcom/google/android/gms/internal/ads/zzbdt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzh:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzi:Lcom/google/android/gms/internal/ads/zzfgr;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzj:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzk:Lcom/google/android/gms/internal/ads/zzcix;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;)Lcom/google/android/gms/internal/ads/zzcgy;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzchn;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcji;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrt;

    move-object v10, v1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>(Lcom/google/android/gms/internal/ads/zzdse;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzb:Lcom/google/android/gms/internal/ads/zzaxa;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzh:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzc:Lcom/google/android/gms/internal/ads/zzbgb;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdse;->zze:Lcom/google/android/gms/ads/internal/zza;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzi:Lcom/google/android/gms/internal/ads/zzfgr;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdse;->zza:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzf:Lcom/google/android/gms/internal/ads/zzbdt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzj:Lcom/google/android/gms/internal/ads/zzdvi;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzcho;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcji;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzoP:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdse;->zzk:Lcom/google/android/gms/internal/ads/zzcix;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcix;->zza(Landroid/webkit/WebView;)V

    :cond_0
    return-object v1
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzdbp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    return-object v0
.end method
