.class public final Lcom/google/android/gms/internal/ads/zzdjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdac;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzczi;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzehf;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzehd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzehd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzc:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzf:Lcom/google/android/gms/internal/ads/zzehd;

    return-void
.end method

.method private final zzl()Z
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzf:Lcom/google/android/gms/internal/ads/zzehd;

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
.method public final zzdA()V
    .locals 0

    return-void
.end method

.method public final zzdB()V
    .locals 0

    return-void
.end method

.method public final zzdC()V
    .locals 0

    return-void
.end method

.method public final zzdD()V
    .locals 0

    return-void
.end method

.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdX()V
    .locals 0

    return-void
.end method

.method public final zzdY(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    return-void
.end method

.method public final zzdt()V
    .locals 0

    return-void
.end method

.method public final zzdu()V
    .locals 0

    return-void
.end method

.method public final zzdv()V
    .locals 0

    return-void
.end method

.method public final zzdw()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzf:Lcom/google/android/gms/internal/ads/zzehd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzc:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzfV:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzg()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzT:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zzc:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzeha;->zza(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zzf:Lcom/google/android/gms/internal/ads/zzehd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehd;->zzc()V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
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

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzV:Lcom/google/android/gms/internal/ads/zzfgq;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Ljava/lang/String;

    move-result-object v14

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehb;->zzc:Lcom/google/android/gms/internal/ads/zzehb;

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzehc;

    move-object/from16 v16, v3

    move-object v15, v4

    goto :goto_1

    .line 19
    :cond_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzY:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzehc;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzehc;

    .line 11
    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzehb;

    move-object v15, v3

    move-object/from16 v16, v4

    .line 8
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzal:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v17, v1

    .line 13
    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzeha;->zzc(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzehb;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehf;->zza()Lcom/google/android/gms/internal/ads/zzfou;

    move-result-object v1

    .line 14
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzfR:Lcom/google/android/gms/internal/ads/zzbel;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzeha;->zzh(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    .line 17
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

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzeha;->zzg(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzE()Landroid/view/View;

    move-result-object v3

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzeha;->zzh(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V

    .line 18
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    .line 20
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzak(Lcom/google/android/gms/internal/ads/zzehf;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzeha;->zze(Lcom/google/android/gms/internal/ads/zzfou;)V

    .line 22
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v3, "onSdkLoaded"

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzfV:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzc:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzl()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzehf;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzf:Lcom/google/android/gms/internal/ads/zzehd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzd()V

    :cond_2
    return-void
.end method
