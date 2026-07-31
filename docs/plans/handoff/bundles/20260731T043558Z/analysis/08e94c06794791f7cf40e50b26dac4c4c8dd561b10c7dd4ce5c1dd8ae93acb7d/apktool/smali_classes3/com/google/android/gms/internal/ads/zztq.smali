.class public final Lcom/google/android/gms/internal/ads/zztq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztq;->zzb:Ljava/util/HashMap;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzsy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation

    .line 1
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zztq;->zzb(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy;

    return-object v0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zztq;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzth;-><init>(Ljava/lang/String;ZZ)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zztq;->zzb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    :try_start_1
    const-string v3, "video/mv-hevc"

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {v4, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zztl;-><init>(ZZZ)V

    .line 3
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zzh(Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zztj;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    :cond_1
    const-string p1, "audio/raw"

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge p0, v4, :cond_2

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "R9"

    .line 10
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 12
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    const-string v4, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v4, "OMX.google.raw.decoder"

    const-string v5, "audio/raw"

    const-string v6, "audio/raw"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 13
    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object p0

    .line 14
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zztm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 15
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zztq;->zzj(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztp;)V

    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-ge p0, v4, :cond_4

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p1, :cond_4

    .line 17
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    const-string p1, "OMX.qti.audio.decoder.flac"

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    .line 21
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.sampleMimeType"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 2
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zztg;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object p0

    .line 4
    sget p1, Lcom/google/android/gms/internal/ads/zzgpe;->zzd:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgpb;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgpb;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpb;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgpb;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpb;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztq;->zzg(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztg;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzv;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzto;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zztq;->zzj(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztp;)V

    return-object v0
.end method

.method public static zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 2
    iput p0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 3
    iput p1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "audio/eac3"

    return-object p0

    :cond_0
    const-string v1, "video/dolby-vision"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_5

    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x200

    if-ne p0, v1, :cond_2

    const-string p0, "video/avc"

    return-object p0

    :cond_2
    const/16 v1, 0x400

    if-eq p0, v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    const-string p0, "video/av01"

    return-object p0

    .line 4
    :cond_4
    :goto_0
    const-string p0, "video/mv-hevc"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_5
    :goto_1
    const-string p0, "video/hevc"

    return-object p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zztj;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "secure-playback"

    const-string v3, "tunneled-playback"

    const-string v4, ")"

    const-string v5, " ("

    const-string v6, "Failed to query codec "

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzth;->zza:Ljava/lang/String;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztj;->zza()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztj;->zzc()Z

    move-result v18

    const/16 v19, 0x0

    move/from16 v13, v19

    :goto_0
    if-ge v13, v14, :cond_1b

    .line 3
    invoke-interface {v1, v13}, Lcom/google/android/gms/internal/ads/zztj;->zzb(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_1

    .line 4
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_b

    .line 5
    :cond_1
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v10, :cond_0

    const-string v10, ".secure"

    if-nez v18, :cond_2

    :try_start_1
    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 19
    :cond_2
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 20
    array-length v11, v7

    move/from16 v17, v13

    move/from16 v13, v19

    :goto_1
    if-ge v13, v11, :cond_4

    move/from16 v20, v11

    aget-object v11, v7, v13

    .line 21
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    :goto_2
    move-object v7, v11

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v20

    goto :goto_1

    .line 37
    :cond_4
    const-string v7, "video/dolby-vision"

    .line 22
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "OMX.MS.HEVCDV.Decoder"

    .line 23
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v11, "video/hevcdv"

    goto :goto_2

    :cond_5
    const-string v7, "OMX.RTK.video.decoder"

    .line 24
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "OMX.realtek.video.decoder.tunneled"

    .line 25
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_6
    const-string v11, "video/dv_hevc"

    goto :goto_2

    :cond_7
    const-string v7, "video/mv-hevc"

    .line 26
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "c2.qti.mvhevc.decoder"

    .line 27
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "c2.qti.mvhevc.decoder.secure"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const-string v11, "video/x-mvhevc"

    goto :goto_2

    :cond_a
    const-string v7, "audio/alac"

    .line 28
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "OMX.lge.alac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v11, "audio/x-lg-alac"

    goto :goto_2

    :cond_b
    const-string v7, "audio/flac"

    .line 29
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "OMX.lge.flac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v11, "audio/x-lg-flac"

    goto :goto_2

    :cond_c
    const-string v7, "audio/ac3"

    .line 30
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "OMX.lge.ac3.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v11, "audio/lg-ac3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :goto_4
    if-eqz v7, :cond_19

    const/16 v20, 0x1

    .line 31
    :try_start_2
    invoke-virtual {v9, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v13

    .line 32
    invoke-interface {v1, v3, v7, v13}, Lcom/google/android/gms/internal/ads/zztj;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11

    .line 33
    invoke-interface {v1, v3, v7, v13}, Lcom/google/android/gms/internal/ads/zztj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v21

    move-object/from16 v22, v3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzth;->zzc:Z

    if-nez v3, :cond_e

    if-nez v21, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    move-object/from16 v23, v2

    goto/16 :goto_a

    :cond_e
    if-nez v11, :cond_f

    goto :goto_5

    .line 34
    :cond_f
    :goto_6
    invoke-interface {v1, v2, v7, v13}, Lcom/google/android/gms/internal/ads/zztj;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v3

    .line 35
    invoke-interface {v1, v2, v7, v13}, Lcom/google/android/gms/internal/ads/zztj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzb:Z

    if-nez v1, :cond_10

    if-nez v11, :cond_d

    :cond_10
    if-eqz v1, :cond_11

    if-eqz v3, :cond_d

    move/from16 v3, v20

    :cond_11
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v11, v0, :cond_12

    .line 36
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    goto :goto_7

    .line 37
    :cond_12
    invoke-static {v9, v15}, Lcom/google/android/gms/internal/ads/zztq;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    move/from16 v0, v20

    goto :goto_7

    :cond_13
    move/from16 v0, v19

    .line 38
    :goto_7
    invoke-static {v9, v15}, Lcom/google/android/gms/internal/ads/zztq;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v21

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v23, v2

    const/16 v2, 0x1d

    if-lt v11, v2, :cond_14

    .line 39
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v2

    goto :goto_8

    .line 40
    :cond_14
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzglm;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "omx.google."

    .line 41
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string v9, "c2.android."

    .line 42
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string v9, "c2.google."

    .line 43
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_15

    move/from16 v2, v20

    goto :goto_8

    :cond_15
    move/from16 v2, v19

    :goto_8
    if-eqz v18, :cond_16

    if-eq v1, v3, :cond_17

    move/from16 v3, v20

    :cond_16
    if-nez v18, :cond_18

    if-nez v1, :cond_18

    :cond_17
    const/16 v16, 0x0

    const/4 v1, 0x0

    move-object v9, v12

    move-object v10, v15

    move-object v11, v7

    move-object v3, v12

    move-object v12, v13

    move/from16 v24, v17

    move v13, v0

    move/from16 v25, v14

    move/from16 v14, v21

    move-object/from16 v26, v15

    move v15, v2

    move/from16 v17, v1

    .line 46
    :try_start_3
    invoke-static/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v0

    .line 47
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_9

    :cond_18
    move-object v1, v12

    move/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v24, v17

    if-nez v18, :cond_1a

    if-eqz v3, :cond_1a

    .line 44
    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, v26

    move-object v11, v7

    move-object v12, v13

    move v13, v0

    move/from16 v14, v21

    move v15, v2

    .line 45
    invoke-static/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v0

    .line 44
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v12

    .line 49
    :goto_9
    :try_start_5
    const-string v2, "MediaCodecUtil"

    .line 50
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    :goto_a
    move/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v24, v17

    :cond_1a
    :goto_b
    add-int/lit8 v13, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move/from16 v14, v25

    move-object/from16 v15, v26

    goto/16 :goto_0

    :cond_1b
    :goto_c
    return-object v8

    :catch_3
    move-exception v0

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzti;

    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Ljava/lang/Throwable;[B)V

    throw v1
.end method

.method private static zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzglm;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "omx.google."

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx.ffmpeg."

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx.sec."

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "c2.android."

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "c2.google."

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx."

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0
.end method

.method private static zzj(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztp;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zztn;-><init>(Lcom/google/android/gms/internal/ads/zztp;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
