.class public Lcom/google/android/gms/ads/internal/request/zzb;
.super Lcom/google/android/gms/internal/zzhh;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzb$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzBr:Ljava/lang/Object;

.field zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field zzCf:Lcom/google/android/gms/internal/zzhh;

.field zzqt:Ljava/lang/Object;

.field private final zzvA:Lcom/google/android/gms/internal/zzan;

.field zzxn:Lcom/google/android/gms/internal/zzdy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBr:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzqt:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzvA:Lcom/google/android/gms/internal/zzan;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/zza$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

    return-object p0
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCf:Lcom/google/android/gms/internal/zzhh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCf:Lcom/google/android/gms/internal/zzhh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhh;->cancel()V

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

.method zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zzhh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/ads/internal/request/zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzhh;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Received ad response."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzqt:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCN:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCN:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ad size format from the ad response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzso:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    iget v8, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_1

    :cond_2
    iget v8, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    :goto_1
    iget v9, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_2

    :cond_3
    iget v7, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    :goto_2
    if-ne v2, v8, :cond_4

    if-ne v0, v7, :cond_4

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzso:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-object v0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ad size number from the ad response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public zzdP()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AdLoaderBackgroundTask started."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzvA:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzan;->zzab()Lcom/google/android/gms/internal/zzaj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzaj;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzl;->getClientId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    invoke-direct {v4, v3, v1, v2}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, -0x2

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/request/zzb;->zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zzhh;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBr:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v8, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCf:Lcom/google/android/gms/internal/zzhh;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCf:Lcom/google/android/gms/internal/zzhh;

    if-nez v8, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v6, "Could not start the ad request service."

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/ads/internal/request/zzb;->zzi(J)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v6
    :try_end_3
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzb;->zzfu()V

    iget-object v2, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzso:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/request/zzb;->zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2
    :try_end_4
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCU:Z

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zzw(Z)V
    :try_end_5
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v9, v6

    const/4 v8, -0x2

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v1

    move-wide v6, v2

    :goto_1
    move-object v2, v5

    :goto_2
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getErrorCode()I

    move-result v3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    goto :goto_6

    :cond_4
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxJ:J

    invoke-direct {v1, v3, v8, v9}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    goto :goto_5

    :goto_6
    sget-object v1, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/ads/internal/request/zzb$1;

    invoke-direct {v8, p0}, Lcom/google/android/gms/ads/internal/request/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v8, v3

    move-wide v9, v6

    :goto_7
    move-object v7, v2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v1, :cond_5

    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCS:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v13, v1

    goto :goto_8

    :catch_3
    move-exception v1

    :try_start_a
    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v13, v5

    :goto_8
    new-instance v1, Lcom/google/android/gms/internal/zzha$zza;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzxn:Lcom/google/android/gms/internal/zzdy;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v11, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCO:J

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/zzha$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/request/zzb$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/ads/internal/request/zzb$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/zzha$zza;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method protected zze(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/32 p1, 0xea60

    sub-long v0, p1, v2

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzqt:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string p2, "Ad request cancelled."

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method protected zzfu()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCu:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhc;->zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCK:Z

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzdy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzxn:Lcom/google/android/gms/internal/zzdy;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-void
.end method

.method protected zzi(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzb;->zze(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string p2, "Timed out waiting for ad response."

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzCf:Lcom/google/android/gms/internal/zzhh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 p2, -0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 p2, -0x3

    if-eq p1, p2, :cond_2

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected zzw(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhc;->zzA(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzhc;->zzD(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbk;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start fetching content..."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->zzcp()V

    :cond_0
    return-void
.end method
