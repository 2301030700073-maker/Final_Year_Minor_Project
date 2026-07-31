.class public abstract Lcom/google/android/gms/ads/internal/zzb;
.super Lcom/google/android/gms/ads/internal/zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzf;
.implements Lcom/google/android/gms/ads/internal/purchase/zzj;
.implements Lcom/google/android/gms/internal/zzdi;
.implements Lcom/google/android/gms/internal/zzdz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final mMessenger:Landroid/os/Messenger;

.field protected final zzoq:Lcom/google/android/gms/internal/zzef;

.field protected transient zzor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p4, p1}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/zzn;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/zzn;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/ads/internal/zzp;Lcom/google/android/gms/ads/internal/zzn;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzoq:Lcom/google/android/gms/internal/zzef;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/android/gms/internal/zzfc;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzfc;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzor:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    .locals 36

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v2

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/zzp$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/ads/internal/zzp$zza;->getLocationOnScreen([I)V

    aget v5, v2, v3

    const/4 v6, 0x1

    aget v2, v2, v6

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/zzp$zza;->getWidth()I

    move-result v7

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/zzp$zza;->getHeight()I

    move-result v10

    iget-object v11, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/zzp$zza;->isShown()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int v11, v5, v7

    if-lez v11, :cond_0

    add-int v11, v2, v10

    if-lez v11, :cond_0

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v5, v11, :cond_0

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    new-instance v11, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(I)V

    const-string v12, "x"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "y"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v11, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v11, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "visible"

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    move-object v11, v2

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhc;->zzfW()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    new-instance v5, Lcom/google/android/gms/internal/zzhb;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    invoke-direct {v5, v10, v6}, Lcom/google/android/gms/internal/zzhb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpQ:Lcom/google/android/gms/internal/zzhb;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpQ:Lcom/google/android/gms/internal/zzhb;

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzhb;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v2

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    iget-object v12, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v2, v6, v7, v12}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v22

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzbn()I

    move-result v24

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzbl()Z

    move-result v23

    const-wide/16 v6, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpU:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpU:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzu;->getValue()J

    move-result-wide v12
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v25, v12

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_2
    move-wide/from16 v25, v6

    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v2

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v2, v6, v1, v10}, Lcom/google/android/gms/internal/zzhc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzqa:Lcom/google/android/gms/internal/zzkw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkw;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzqa:Lcom/google/android/gms/internal/zzkw;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkw;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v6, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v7, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzhc;->getSessionId()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v14, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzqd:Ljava/util/List;

    move-object/from16 v31, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzhc;->zzga()Z

    move-result v17

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    move-object/from16 v32, v15

    iget v15, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v15

    iget v15, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/google/android/gms/internal/zzbz;->zzdb()Ljava/util/List;

    move-result-object v28

    move-object/from16 v34, v3

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpF:Ljava/lang/String;

    move-object/from16 v35, v3

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzqb:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v30, v3

    move-object/from16 v16, v31

    move-object/from16 v18, v34

    move-object/from16 v29, v35

    move-object v3, v2

    move/from16 v21, v4

    move-object v4, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v14, v16

    move/from16 v20, v15

    move/from16 v19, v33

    move-object/from16 v15, v32

    move-object/from16 v16, p2

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;ZIJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    return-object v2
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzyb:Ljava/lang/String;

    return-object v0
.end method

.method public onAdClicked()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzxF:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzxF:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzha;->zzCC:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/ads/internal/zzb;->zza(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzed;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdx;->zzxx:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzdx;->zzxx:Ljava/util/List;

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzed;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->zzbM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeg;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzop:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzay;->zzi(Lcom/google/android/gms/internal/zzha;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->pause()V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->zzbM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhm;->zzb(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeg;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->resume()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzop:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzay;->zzj(Lcom/google/android/gms/internal/zzha;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzff;)V
    .locals 1

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpV:Lcom/google/android/gms/internal/zzff;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzfj;Ljava/lang/String;)V
    .locals 2

    const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzk;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzp;->zzqe:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzhc;->zzfZ()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/internal/purchase/zzc;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzqe:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/ads/internal/purchase/zzk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzgi()Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzha;Z)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "Ad state was null when trying to ping impression URLs."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/internal/zzha;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzxG:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzxG:Ljava/util/List;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzha;->zzCC:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/ads/internal/zzb;->zza(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzed;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdx;->zzxy:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzdx;->zzxy:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzed;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzd;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpV:Lcom/google/android/gms/internal/zzff;

    if-nez p2, :cond_5

    const-string p2, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzP(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    if-nez p2, :cond_1

    const-string p1, "PlayStorePurchaseListener is not set."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzqe:Lcom/google/android/gms/ads/internal/purchase/zzk;

    if-nez p2, :cond_2

    const-string p1, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-boolean p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzqi:Z

    if-eqz p2, :cond_3

    const-string p1, "An in-app purchase request is already in progress, abort"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/google/android/gms/ads/internal/zzp;->zzqi:Z

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzfj;->isValidPurchase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iput-boolean p2, p1, Lcom/google/android/gms/ads/internal/zzp;->zzqi:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGJ:Z

    new-instance v2, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzp;->zzqe:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v2, v3, v4, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/zzk;Lcom/google/android/gms/internal/zzfe;Lcom/google/android/gms/ads/internal/purchase/zzj;)V

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    return-void

    :catch_0
    move-exception p1

    const-string p1, "Could not start In-App purchase."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iput-boolean p2, p1, Lcom/google/android/gms/ads/internal/zzp;->zzqi:Z

    return-void

    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzp;->zzpV:Lcom/google/android/gms/internal/zzff;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzff;->zza(Lcom/google/android/gms/internal/zzfe;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p1, "Could not start In-App purchase."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpW:Lcom/google/android/gms/internal/zzfj;

    new-instance v8, Lcom/google/android/gms/ads/internal/purchase/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    move-object v1, v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/purchase/zzg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/zzb$1;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/ads/internal/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/zzb;Landroid/content/Intent;)V

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzha;Z)Z
    .locals 4

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/zzp;->zzbM()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzha;->zzxJ:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzha;->zzxJ:J

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_1

    :cond_0
    iget-object p3, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-wide v0, p3, Lcom/google/android/gms/internal/zzdy;->zzxJ:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzdy;->zzxJ:J

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/google/android/gms/internal/zzha;->zzCK:Z

    if-nez p3, :cond_2

    iget p2, p2, Lcom/google/android/gms/internal/zzha;->errorCode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzn;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzn;->zzbp()Z

    move-result p1

    return p1
.end method

.method zza(Lcom/google/android/gms/internal/zzha;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzoo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzoo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzoo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzha;Z)Z

    move-result p1

    return p1
.end method

.method protected zza(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzha;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzyc:Lcom/google/android/gms/internal/zzea;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzha;->zzyc:Lcom/google/android/gms/internal/zzea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzdz;)V

    :cond_0
    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzyc:Lcom/google/android/gms/internal/zzea;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzyc:Lcom/google/android/gms/internal/zzea;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzdz;)V

    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget v0, p1, Lcom/google/android/gms/internal/zzdy;->zzxM:I

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget p1, p1, Lcom/google/android/gms/internal/zzdy;->zzxN:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzqf:Lcom/google/android/gms/internal/zzhf;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzhf;->zzf(II)V

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaU()Z
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhl;->zzG(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzaV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzop:Lcom/google/android/gms/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzay;->zzg(Lcom/google/android/gms/internal/zzha;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzor:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaQ()Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpQ:Lcom/google/android/gms/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->zzfR()V

    return-void
.end method

.method public zzaW()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzor:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaS()Z

    return-void
.end method

.method public zzaX()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->onAdClicked()V

    return-void
.end method

.method public zzaY()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaV()V

    return-void
.end method

.method public zzaZ()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaO()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzha;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzha;)V

    iget v0, p1, Lcom/google/android/gms/internal/zzha;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzxH:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpG:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzdy;->zzxH:Ljava/util/List;

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzed;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaU()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzhc;->zzD(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzbk;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzom:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzn;->cancel()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iput v1, v2, Lcom/google/android/gms/ads/internal/zzp;->zzqh:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbr()Lcom/google/android/gms/ads/internal/request/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpI:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v1, v2, p1, v3, p0}, Lcom/google/android/gms/ads/internal/request/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/request/zza$zza;)Lcom/google/android/gms/internal/zzhh;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpL:Lcom/google/android/gms/internal/zzhh;

    const/4 p1, 0x1

    return p1
.end method

.method public zzba()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaW()V

    return-void
.end method

.method public zzbb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzha;->zzyb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpO:Lcom/google/android/gms/internal/zzha;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzha;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzaT()Z

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzor:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
