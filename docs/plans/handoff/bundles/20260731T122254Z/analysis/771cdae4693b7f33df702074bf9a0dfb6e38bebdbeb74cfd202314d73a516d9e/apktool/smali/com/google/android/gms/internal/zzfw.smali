.class public Lcom/google/android/gms/internal/zzfw;
.super Lcom/google/android/gms/internal/zzfs;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private zzBA:Lcom/google/android/gms/internal/zzdw;

.field protected zzBB:Lcom/google/android/gms/internal/zzec;

.field private zzoq:Lcom/google/android/gms/internal/zzef;

.field private zzxn:Lcom/google/android/gms/internal/zzdy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzft$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfw;->zzoq:Lcom/google/android/gms/internal/zzef;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha$zza;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfw;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzfs;->onStop()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfw;->zzBA:Lcom/google/android/gms/internal/zzdw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfw;->zzBA:Lcom/google/android/gms/internal/zzdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdw;->cancel()V

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

.method protected zzh(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfs$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfw;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzdw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfw;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfw;->zzBs:Lcom/google/android/gms/internal/zzha$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzha$zza;->zzFr:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfw;->zzoq:Lcom/google/android/gms/internal/zzef;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzdw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzdy;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfw;->zzBA:Lcom/google/android/gms/internal/zzdw;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfw;->zzBA:Lcom/google/android/gms/internal/zzdw;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzdw;->zza(JJ)Lcom/google/android/gms/internal/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget p1, p1, Lcom/google/android/gms/internal/zzec;->zzxY:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/zzfs$zza;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected mediation result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget v0, v0, Lcom/google/android/gms/internal/zzec;->zzxY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/zzfs$zza;

    const-string p2, "No fill from any mediation ad networks."

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :pswitch_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zzz(I)Lcom/google/android/gms/internal/zzha;
    .locals 43

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfw;->zzBs:Lcom/google/android/gms/internal/zzha$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzha$zza;->zzFr:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v32, Lcom/google/android/gms/internal/zzha;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzfw;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxF:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxG:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCM:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxJ:J

    iget-object v12, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCp:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCK:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzec;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    move-object v14, v2

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzec;->zzya:Lcom/google/android/gms/internal/zzeg;

    move-object v15, v2

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzec;->zzyb:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    :cond_2
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzxn:Lcom/google/android/gms/internal/zzdy;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/google/android/gms/internal/zzfw;->zzBB:Lcom/google/android/gms/internal/zzec;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzec;->zzyc:Lcom/google/android/gms/internal/zzea;

    move-object/from16 v18, v6

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    iget-wide v14, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCL:J

    iget-object v6, v0, Lcom/google/android/gms/internal/zzfw;->zzBs:Lcom/google/android/gms/internal/zzha$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzha$zza;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v35, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-wide/from16 v36, v14

    iget-wide v14, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCJ:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBs:Lcom/google/android/gms/internal/zzha$zza;

    move-wide/from16 v38, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzha$zza;->zzFo:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-wide/from16 v40, v14

    iget-wide v14, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCO:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCP:Ljava/lang/String;

    move-object/from16 v42, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfw;->zzBs:Lcom/google/android/gms/internal/zzha$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzha$zza;->zzFl:Lorg/json/JSONObject;

    const/16 v30, 0x0

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCC:Ljava/lang/String;

    move-object/from16 v29, v2

    move-object/from16 v17, v35

    move-object/from16 v28, v42

    move-object/from16 v2, v32

    move-object/from16 v21, v6

    move/from16 v6, p1

    move-wide/from16 v26, v14

    move-wide/from16 v19, v36

    move-wide/from16 v22, v38

    move-wide/from16 v24, v40

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v31, v1

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/zzha;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzid;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzea;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzg$zza;Ljava/lang/String;)V

    return-object v32
.end method
