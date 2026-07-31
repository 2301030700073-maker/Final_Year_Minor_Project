.class public final Lcom/google/android/gms/internal/ads/zzctb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdac;
.implements Lcom/google/android/gms/internal/ads/zzczi;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zze:Lcom/google/android/gms/internal/ads/zzehf;

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzehd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzehd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzg:Lcom/google/android/gms/internal/ads/zzehd;

    return-void
.end method

.method private final declared-synchronized zza()V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzctb;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzT:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzctb;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v2, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzctb;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzeha;->zza(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzctb;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v5, v6

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzV:Lcom/google/android/gms/internal/ads/zzfgq;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Ljava/lang/String;

    move-result-object v14

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehb;->zzc:Lcom/google/android/gms/internal/ads/zzehb;

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzehc;

    move-object/from16 v16, v3

    move-object v15, v4

    goto :goto_1

    .line 17
    :cond_1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzffu;->zze:I

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzehb;

    if-ne v3, v7, :cond_2

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzehc;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzehc;

    :goto_0
    move-object v15, v3

    move-object/from16 v16, v4

    .line 6
    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzal:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v17, v0

    .line 11
    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzeha;->zzc(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzehb;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzctb;->zze:Lcom/google/android/gms/internal/ads/zzehf;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehf;->zza()Lcom/google/android/gms/internal/ads/zzfou;

    move-result-object v0

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzfR:Lcom/google/android/gms/internal/ads/zzbel;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzeha;->zzh(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzF()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzeha;->zzg(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzE()Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzeha;->zzh(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    .line 16
    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzctb;->zze:Lcom/google/android/gms/internal/ads/zzehf;

    .line 18
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzak(Lcom/google/android/gms/internal/ads/zzehf;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzeha;->zze(Lcom/google/android/gms/internal/ads/zzfou;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzctb;->zzf:Z

    .line 20
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v3, "onSdkLoaded"

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzb()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzfS:Lcom/google/android/gms/internal/ads/zzbel;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzg:Lcom/google/android/gms/internal/ads/zzehd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final declared-synchronized zzdw()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzg:Lcom/google/android/gms/internal/ads/zzehd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzf:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctb;->zza()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zze:Lcom/google/android/gms/internal/ads/zzehf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzg()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzg:Lcom/google/android/gms/internal/ads/zzehd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctb;->zza()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
