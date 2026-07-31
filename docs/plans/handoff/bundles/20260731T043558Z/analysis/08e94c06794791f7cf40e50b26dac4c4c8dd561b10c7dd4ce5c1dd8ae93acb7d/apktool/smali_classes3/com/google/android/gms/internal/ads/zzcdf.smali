.class public final Lcom/google/android/gms/internal/ads/zzcdf;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccw;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzcdt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcdr;

.field private final zzc:Landroid/widget/FrameLayout;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbfj;

.field private final zzf:J

.field private final zzg:Lcom/google/android/gms/internal/ads/zzccx;

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:[Ljava/lang/String;

.field private zzp:Landroid/graphics/Bitmap;

.field private final zzq:Landroid/widget/ImageView;

.field private zzr:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;IZLcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/internal/ads/zzcdq;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v10, p5

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdr;

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zze:Lcom/google/android/gms/internal/ads/zzbfj;

    new-instance v11, Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {v11, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    .line 3
    invoke-direct {v1, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v11, v1}, Lcom/google/android/gms/internal/ads/zzcdf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zza;->zza:Lcom/google/android/gms/internal/ads/zzccy;

    .line 6
    new-instance v13, Lcom/google/android/gms/internal/ads/zzcds;

    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzm()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzi()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v6

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcds;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/internal/ads/zzbfg;)V

    const/4 v1, 0x3

    if-ne v7, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgn;

    .line 17
    invoke-direct {v1, v9, v13}, Lcom/google/android/gms/internal/ads/zzcgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcds;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    .line 15
    new-instance v14, Lcom/google/android/gms/internal/ads/zzcej;

    .line 16
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdj;->zza(Lcom/google/android/gms/internal/ads/zzcdr;)Z

    move-result v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcej;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcds;Lcom/google/android/gms/internal/ads/zzcdr;ZZLcom/google/android/gms/internal/ads/zzcdq;Lcom/google/android/gms/internal/ads/zzdvi;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzccv;

    .line 11
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdj;->zza(Lcom/google/android/gms/internal/ads/zzcdr;)Z

    move-result v7

    new-instance v14, Lcom/google/android/gms/internal/ads/zzcds;

    .line 12
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzm()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzi()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcds;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfj;Lcom/google/android/gms/internal/ads/zzbfg;)V

    move-object v1, v13

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, v7

    move-object/from16 v6, p6

    move-object v7, v14

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzccv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;ZZLcom/google/android/gms/internal/ads/zzcdq;Lcom/google/android/gms/internal/ads/zzcds;Lcom/google/android/gms/internal/ads/zzdvi;)V

    .line 17
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    new-instance v2, Landroid/view/View;

    .line 18
    invoke-direct {v2, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:Landroid/view/View;

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    .line 20
    invoke-direct {v3, v12, v12, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzaa:Lcom/google/android/gms/internal/ads/zzbel;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzX:Lcom/google/android/gms/internal/ads/zzbel;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzD()V

    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    .line 28
    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzq:Landroid/widget/ImageView;

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzac:Lcom/google/android/gms/internal/ads/zzbel;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzf:J

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzZ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zzk:Z

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    if-eq v3, v2, :cond_4

    const-string v2, "0"

    goto :goto_1

    .line 35
    :cond_4
    const-string v2, "1"

    .line 32
    :goto_1
    const-string v3, "spinner_used"

    .line 33
    invoke-virtual {v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfj;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcdt;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 34
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzccx;->zzb(Lcom/google/android/gms/internal/ads/zzccw;)V

    return-void
.end method

.method private final zzJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzq:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final varargs zzK(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzl()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "playerId"

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "event"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 4
    aget-object v4, p2, v2

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdr;

    const-string p2, "onVideoEvent"

    .line 6
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final zzL()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzj:Z

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj()Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzi:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcbv;->zzf:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcdc;-><init>(Lcom/google/android/gms/internal/ads/zzccx;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgus;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zzb()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzm:J

    .line 4
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcde;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcde;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzb()V

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzm:J

    const/4 p1, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdb;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzB(I)V

    return-void
.end method

.method public final zzB(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzC(I)V

    return-void
.end method

.method public final zzC(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzD()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    .line 2
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbj;->zzf()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AdMob - "

    goto :goto_0

    .line 4
    :cond_1
    sget v3, Lcom/google/android/gms/ads/impl/R$string;->watermark_label_prefix:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zza()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    .line 7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    .line 8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x11

    .line 9
    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final zzE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzd()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzL()V

    return-void
.end method

.method final zzF()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzh()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzl:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    long-to-float v3, v1

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zzch:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    const-string v5, "timeupdate"

    const/4 v6, 0x1

    const-string v7, "time"

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v8

    .line 4
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const-string v3, "totalBytes"

    aput-object v3, v4, v9

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v4, v6

    const/4 v3, 0x4

    const-string v6, "qoeCachedBytes"

    aput-object v6, v4, v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzn()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v4, v6

    const/4 v3, 0x6

    const-string v6, "qoeLoadedBytes"

    aput-object v6, v4, v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x7

    aput-object v3, v4, v6

    const/16 v3, 0x8

    const-string v6, "droppedFrames"

    aput-object v6, v4, v3

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v4, v3

    const/16 v0, 0xa

    const-string v3, "reportTime"

    aput-object v3, v4, v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v4, v3

    .line 10
    invoke-direct {p0, v5, v4}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v0, v9, [Ljava/lang/String;

    aput-object v7, v0, v8

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    :goto_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzl:J

    :cond_2
    :goto_1
    return-void
.end method

.method final synthetic zzG(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzH()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "firstFrameRendered"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzI(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zzb()V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzccz;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzm:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzg()I

    move-result v1

    int-to-float v1, v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzk()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzl()I

    move-result v0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "videoHeight"

    aput-object v2, v3, v1

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "canplaythrough"

    .line 7
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcj:Lcom/google/android/gms/internal/ads/zzbel;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdr;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzi:Z

    if-nez v1, :cond_3

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 6
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzj:Z

    if-nez v1, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj()Landroid/app/Activity;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzi:Z

    .line 4
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzh:Z

    return-void
.end method

.method public final zzd()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzL()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzh:Z

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcj:Lcom/google/android/gms/internal/ads/zzbel;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const-string v1, "ended"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzL()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x4

    .line 1
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "what"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "ExoPlayerAdapter exception"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "extra"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "exception"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzh()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzJ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzq:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 4
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdt;->zza()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzm:J

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcda;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcda;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzi()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzq:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzccx;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzr:Z

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzf:J

    cmp-long v0, v3, v0

    if-lez v0, :cond_4

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzk:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zze:Lcom/google/android/gms/internal/ads/zzbfj;

    if-eqz v0, :cond_4

    const-string v1, "spinner_jank"

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfj;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final zzj(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzk:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzab:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzp:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzr:Z

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdd;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzl()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzw()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzaa:Lcom/google/android/gms/internal/ads/zzbel;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:Landroid/view/View;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final zzn(IIII)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Set video bounds to x:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";y:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";w:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";h:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzo(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzo:[Ljava/lang/String;

    return-void
.end method

.method public final zzp(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzccx;->zzj(FF)V

    :cond_0
    return-void
.end method

.method public final zzq(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzo:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 3
    const-string v0, "no_src"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzK(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzf()V

    return-void
.end method

.method public final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zze()V

    return-void
.end method

.method public final zzt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzi(I)V

    return-void
.end method

.method public final zzu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzccx;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzq()V

    return-void
.end method

.method public final zzv()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzccx;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzq()V

    return-void
.end method

.method public final zzw(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzccx;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(F)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzq()V

    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzy(I)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzz(I)V

    return-void
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzg:Lcom/google/android/gms/internal/ads/zzccx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzA(I)V

    return-void
.end method
