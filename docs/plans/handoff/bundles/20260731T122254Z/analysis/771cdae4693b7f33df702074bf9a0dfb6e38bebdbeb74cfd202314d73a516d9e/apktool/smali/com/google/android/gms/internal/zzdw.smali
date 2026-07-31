.class public final Lcom/google/android/gms/internal/zzdw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzoq:Lcom/google/android/gms/internal/zzef;

.field private final zzqt:Ljava/lang/Object;

.field private final zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final zzxn:Lcom/google/android/gms/internal/zzdy;

.field private zzxo:Z

.field private zzxp:Lcom/google/android/gms/internal/zzeb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzdy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdw;->zzqt:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdw;->zzxo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdw;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdw;->zzoq:Lcom/google/android/gms/internal/zzef;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdw;->zzxo:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw;->zzxp:Lcom/google/android/gms/internal/zzeb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw;->zzxp:Lcom/google/android/gms/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeb;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(JJ)Lcom/google/android/gms/internal/zzec;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzdw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzdy;->zzxD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdx;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying mediation network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzdx;->zzxt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/gms/internal/zzdx;->zzxu:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/zzdw;->zzqt:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/gms/internal/zzdw;->zzxo:Z

    if-eqz v4, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/zzec;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzec;-><init>(I)V

    monitor-exit v14

    return-object v2

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/zzeb;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzdw;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzdw;->zzoq:Lcom/google/android/gms/internal/zzef;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzdw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzdw;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v10, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzdw;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v11, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzdw;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v4, v15

    move-object v9, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/zzeb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v15, v1, Lcom/google/android/gms/internal/zzdw;->zzxp:Lcom/google/android/gms/internal/zzeb;

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lcom/google/android/gms/internal/zzdw;->zzxp:Lcom/google/android/gms/internal/zzeb;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzeb;->zzb(JJ)Lcom/google/android/gms/internal/zzec;

    move-result-object v4

    iget v9, v4, Lcom/google/android/gms/internal/zzec;->zzxY:I

    if-nez v9, :cond_2

    const-string v2, "Adapter succeeded."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget-object v9, v4, Lcom/google/android/gms/internal/zzec;->zzya:Lcom/google/android/gms/internal/zzeg;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v10, Lcom/google/android/gms/internal/zzdw$1;

    invoke-direct {v10, v1, v4}, Lcom/google/android/gms/internal/zzdw$1;-><init>(Lcom/google/android/gms/internal/zzdw;Lcom/google/android/gms/internal/zzec;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzec;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzec;-><init>(I)V

    return-object v2
.end method
