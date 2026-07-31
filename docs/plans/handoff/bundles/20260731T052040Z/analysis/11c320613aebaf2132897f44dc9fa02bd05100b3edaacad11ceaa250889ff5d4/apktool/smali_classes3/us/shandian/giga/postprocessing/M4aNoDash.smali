.class public final Lus/shandian/giga/postprocessing/M4aNoDash;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lus/shandian/giga/postprocessing/M4aNoDash;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p3, p2}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final varargs process(Lus/shandian/giga/io/CircularFileWriter;[Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    iget v3, v0, Lus/shandian/giga/postprocessing/M4aNoDash;->$r8$classId:I

    const/16 v4, 0x2000

    const-string v5, "already done"

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1
    new-instance v3, Lorg/schabi/newpipe/streams/WebMWriter;

    .line 2
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean v10, v3, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    .line 4
    iput-boolean v10, v3, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    const-wide/16 v11, 0x0

    .line 5
    iput-wide v11, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 6
    iput-object v1, v3, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 7
    array-length v0, v1

    new-array v0, v0, [Lorg/schabi/newpipe/streams/WebMReader;

    iput-object v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    .line 8
    array-length v0, v1

    new-array v0, v0, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iput-object v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 9
    new-array v0, v4, [B

    iput-object v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    .line 12
    iget-boolean v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    if-nez v0, :cond_34

    .line 13
    iget-boolean v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    if-nez v0, :cond_33

    move v0, v10

    .line 14
    :goto_0
    :try_start_0
    iget-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 15
    new-instance v6, Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v7, v3, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lorg/schabi/newpipe/streams/WebMReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    aput-object v6, v4, v0

    .line 16
    iget-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/schabi/newpipe/streams/WebMReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    move v8, v9

    goto/16 :goto_22

    .line 17
    :cond_0
    iput-boolean v9, v3, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 18
    array-length v0, v1

    new-array v0, v0, [I

    move v4, v10

    .line 19
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_5

    .line 20
    iget-boolean v6, v3, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    if-nez v6, :cond_4

    .line 21
    iget-boolean v6, v3, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    if-eqz v6, :cond_3

    .line 22
    iget-object v6, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object v6, v6, v4

    .line 23
    iget-object v6, v6, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move v7, v10

    .line 24
    :goto_2
    array-length v13, v6

    if-ge v7, v13, :cond_2

    .line 25
    aget-object v13, v6, v7

    iget v13, v13, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    if-ne v13, v9, :cond_1

    .line 26
    aput v7, v0, v4

    .line 27
    array-length v4, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/2addr v4, v9

    goto :goto_1

    .line 28
    :cond_3
    const-string v0, "All sources must be parsed first"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 29
    :cond_4
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 30
    :cond_5
    :try_start_1
    iget-object v1, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v4, v1

    new-array v4, v4, [Lorg/schabi/newpipe/streams/WebMReader$Segment;

    iput-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 31
    array-length v1, v1

    new-array v1, v1, [Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    iput-object v1, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move v1, v10

    .line 32
    :goto_4
    iget-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ge v1, v5, :cond_6

    .line 33
    :try_start_2
    iget-object v5, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v6, v4, v1

    aget v7, v0, v1

    .line 34
    iput v7, v6, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 35
    iget-object v6, v6, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v6, v6, v7

    .line 36
    aput-object v6, v5, v1

    .line 37
    iget-object v5, v3, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v4

    aput-object v4, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v3

    move v8, v9

    goto/16 :goto_21

    .line 38
    :cond_6
    iput-boolean v9, v3, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2b

    .line 40
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 41
    invoke-virtual {v3, v1, v0, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 42
    iget-wide v0, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    const-wide/16 v13, 0x5

    add-long v4, v0, v13

    const-wide/16 v6, 0x5e

    add-long/2addr v6, v0

    const-wide/16 v15, 0x3a

    move-wide/from16 v17, v11

    add-long v11, v0, v15

    const-wide/16 v15, 0x4b

    add-long/2addr v0, v15

    .line 43
    new-instance v15, Ljava/util/ArrayList;

    move-wide/from16 v19, v13

    const/4 v13, 0x4

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v14, 0xc

    .line 44
    new-array v14, v14, [B

    fill-array-data v14, :array_1

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-wide v13, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v21, v10

    move-object/from16 v10, v16

    check-cast v10, [B

    array-length v10, v10

    int-to-long v8, v10

    add-long v23, v13, v8

    const/16 v8, 0x43

    .line 46
    new-array v8, v8, [B

    fill-array-data v8, :array_2

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x8

    .line 47
    new-array v9, v8, [B

    fill-array-data v9, :array_3

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v9, 0xf4240

    const/4 v13, 0x1

    .line 48
    invoke-static {v9, v10, v13}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x7

    .line 49
    new-array v10, v9, [B

    fill-array-data v10, :array_4

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x4

    .line 51
    new-array v14, v13, [B

    fill-array-data v14, :array_5

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    .line 52
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v13, v21

    .line 53
    :goto_5
    iget-object v14, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v8, v14

    move-wide/from16 v25, v4

    if-ge v13, v8, :cond_e

    .line 54
    aget-object v5, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-object v14, v10

    int-to-long v9, v13

    const/4 v8, 0x1

    .line 55
    invoke-static {v9, v10, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v9

    .line 56
    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0xc

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    new-array v4, v8, [B

    const/16 v16, -0x52

    aput-byte v16, v4, v21

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-array v4, v8, [B

    const/16 v8, -0x29

    aput-byte v8, v4, v21

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 61
    new-array v8, v4, [B

    fill-array-data v8, :array_6

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    .line 63
    new-array v4, v4, [B

    fill-array-data v4, :array_7

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x7

    .line 64
    new-array v4, v8, [B

    fill-array-data v4, :array_8

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 65
    new-array v9, v4, [B

    const/16 v4, -0x7a

    aput-byte v4, v9, v21

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    .line 67
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    array-length v8, v4

    move-wide/from16 v28, v0

    int-to-long v0, v8

    move/from16 v8, v21

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    cmp-long v0, v0, v17

    const/4 v4, 0x2

    if-ltz v0, :cond_7

    .line 73
    new-array v0, v4, [B

    fill-array-data v0, :array_9

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    const/4 v8, 0x1

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    const/4 v8, 0x1

    .line 75
    :goto_6
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    cmp-long v0, v0, v17

    if-ltz v0, :cond_8

    .line 76
    new-array v0, v4, [B

    fill-array-data v0, :array_a

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_8
    new-array v0, v8, [B

    const/16 v1, -0x7d

    const/16 v21, 0x0

    aput-byte v1, v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    int-to-long v0, v0

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v0, v0, v17

    if-ltz v0, :cond_9

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [B

    fill-array-data v0, :array_b

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-wide v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_9
    iget v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v0, v8, :cond_a

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    :cond_a
    iget-object v1, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    if-eqz v1, :cond_c

    .line 84
    array-length v1, v1

    if-lez v1, :cond_c

    if-ne v0, v8, :cond_b

    const/16 v0, 0xe0

    goto :goto_7

    :cond_b
    const/16 v0, 0xe1

    :goto_7
    int-to-byte v0, v0

    .line 85
    new-array v1, v8, [B

    const/4 v8, 0x0

    aput-byte v0, v1, v8

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_c
    iget-object v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    if-eqz v0, :cond_d

    .line 89
    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v4, 0x2

    .line 90
    new-array v0, v4, [B

    fill-array-data v0, :array_c

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    array-length v0, v0

    int-to-long v0, v0

    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_d
    invoke-static {v10}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v10, v14

    move-wide/from16 v4, v25

    move-wide/from16 v0, v28

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/16 v21, 0x0

    goto/16 :goto_5

    :cond_e
    move-wide/from16 v28, v0

    move-object v14, v10

    .line 95
    invoke-static {v14}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)V

    .line 96
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 98
    invoke-virtual {v2, v1}, Lus/shandian/giga/io/CircularFileWriter;->write([B)V

    .line 99
    iget-wide v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    array-length v1, v1

    int-to-long v8, v1

    add-long/2addr v4, v8

    iput-wide v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    goto :goto_8

    .line 100
    :cond_f
    iget-wide v9, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    const v0, 0xffff

    const/4 v8, 0x1

    .line 101
    invoke-virtual {v3, v2, v0, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V

    .line 102
    iget-object v1, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v4, v1

    new-array v13, v4, [I

    .line 103
    array-length v14, v1

    new-array v15, v14, [J

    const/4 v1, 0x0

    .line 104
    :goto_9
    iget-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v5, v4

    const/4 v8, -0x1

    const-wide/16 v31, -0x1

    if-ge v1, v5, :cond_11

    .line 105
    aget-object v4, v4, v1

    iget-wide v4, v4, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v22, v4, v17

    if-gez v22, :cond_10

    .line 106
    aput v8, v13, v1

    goto :goto_a

    :cond_10
    long-to-float v4, v4

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    aput v4, v13, v1

    .line 108
    :goto_a
    aput-wide v31, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 109
    :goto_b
    iget-object v8, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v0, v8

    if-ge v1, v0, :cond_14

    .line 110
    aget-object v0, v8, v1

    iget v0, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_13

    const/4 v8, 0x2

    if-eq v0, v8, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_13
    const/4 v8, 0x2

    add-int/lit8 v5, v5, 0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    const v0, 0xffff

    goto :goto_b

    :cond_14
    const/16 v27, 0x2

    .line 111
    array-length v0, v8

    if-ne v4, v0, :cond_15

    :goto_d
    move/from16 v0, v27

    goto :goto_f

    .line 112
    :cond_15
    array-length v0, v8

    if-ne v5, v0, :cond_16

    :goto_e
    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    if-lez v5, :cond_17

    goto :goto_e

    :cond_17
    if-lez v4, :cond_19

    goto :goto_d

    :goto_f
    const/4 v1, 0x0

    .line 113
    :goto_10
    iget-object v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v5, v4

    if-ge v1, v5, :cond_19

    .line 114
    aget-object v4, v4, v1

    iget v4, v4, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v0, v4, :cond_18

    move v0, v1

    goto :goto_11

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    .line 115
    :goto_11
    iget-object v1, v3, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_1a

    move-wide/from16 v33, v31

    goto :goto_12

    :cond_1a
    move-wide/from16 v33, v17

    .line 116
    :goto_12
    new-instance v8, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    iget-wide v4, v3, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    long-to-int v1, v4

    move-wide/from16 v35, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move/from16 v22, v1

    move-object v1, v3

    const-wide/16 v3, 0x0

    move-wide/from16 v38, v11

    move-object/from16 v42, v13

    move/from16 v13, v22

    move/from16 v37, v27

    move-wide/from16 v40, v28

    move-wide/from16 v11, v35

    move-wide/from16 v35, v9

    move-wide/from16 v9, v25

    .line 118
    invoke-virtual/range {v1 .. v7}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    move-result-wide v3

    const v2, 0x7fffffff

    move-wide v5, v3

    move-wide/from16 v25, v17

    move-wide/from16 v27, v31

    const/4 v3, -0x1

    move v4, v0

    :goto_13
    if-lez v2, :cond_2b

    move-wide/from16 v29, v33

    const/4 v2, 0x0

    const/16 v33, 0x0

    .line 119
    :goto_14
    iget-object v7, v1, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v7, v7

    if-ge v2, v7, :cond_2a

    .line 120
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;

    move-result-object v7

    if-nez v7, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1b
    move-object/from16 v34, v1

    .line 121
    iget-object v1, v7, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    if-nez v1, :cond_1c

    add-int/lit8 v1, v2, 0x1

    move v3, v2

    const/16 v33, 0x1

    move v2, v1

    move-object/from16 v1, v34

    goto :goto_14

    :cond_1c
    const-wide/16 v43, 0x64

    if-ne v3, v2, :cond_1d

    .line 122
    iget-wide v3, v7, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    add-long v27, v3, v43

    move-object v1, v7

    const/4 v7, 0x1

    move/from16 v45, v13

    move-object v13, v1

    move-object/from16 v1, v34

    move/from16 v34, v45

    move-wide/from16 v46, v11

    move-object/from16 v45, v15

    const/4 v11, 0x5

    move v15, v2

    move-object/from16 v2, p1

    .line 123
    invoke-virtual/range {v1 .. v7}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    move-result-wide v5

    move-wide/from16 v25, v5

    move-wide v5, v3

    move v4, v15

    const/4 v3, -0x1

    :goto_15
    move-wide/from16 v48, v27

    goto :goto_16

    :cond_1d
    move-wide/from16 v46, v11

    move-object/from16 v45, v15

    move-object/from16 v1, v34

    const/4 v11, 0x5

    move v15, v2

    move/from16 v34, v13

    move-object/from16 v2, p1

    move-object v13, v7

    move-wide/from16 v48, v25

    move-wide/from16 v25, v5

    move-wide/from16 v5, v48

    goto :goto_15

    :goto_16
    if-ne v0, v15, :cond_21

    cmp-long v7, v29, v31

    if-lez v7, :cond_1e

    .line 124
    iget-wide v11, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v11, v11, v29

    if-gez v11, :cond_1f

    :cond_1e
    cmp-long v11, v29, v17

    if-gez v11, :cond_21

    .line 125
    iget-byte v11, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    const/16 v12, 0x80

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_21

    :cond_1f
    if-lez v7, :cond_20

    const-wide/16 v11, 0x1388

    add-long v29, v29, v11

    :cond_20
    move-wide/from16 v11, v29

    .line 126
    new-instance v22, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;

    move-wide/from16 v50, v5

    iget-wide v5, v1, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    move-wide/from16 v27, v5

    iget-wide v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    move-wide/from16 v29, v5

    invoke-direct/range {v22 .. v30}, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;-><init>(JJJJ)V

    move-object/from16 v5, v22

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v29, v11

    goto :goto_17

    :cond_21
    move-wide/from16 v50, v5

    .line 127
    :goto_17
    iget-wide v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long v5, v5, v50

    const-wide/16 v11, -0x8000

    cmp-long v7, v5, v11

    if-ltz v7, :cond_29

    const-wide/16 v11, 0x7fff

    cmp-long v7, v5, v11

    if-gtz v7, :cond_29

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x1

    .line 129
    new-array v12, v11, [B

    const/16 v16, -0x5d

    move/from16 v22, v11

    const/4 v11, 0x0

    aput-byte v16, v12, v11

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 130
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget v12, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v52, v8

    move-wide/from16 v53, v9

    int-to-long v8, v12

    invoke-static {v8, v9, v11}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static/range {v37 .. v37}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 134
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-byte v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    move/from16 v8, v22

    new-array v6, v8, [B

    aput-byte v5, v6, v11

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->dataSize:I

    move v6, v5

    move/from16 v5, v37

    .line 137
    :goto_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_22

    .line 138
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_22
    int-to-long v5, v6

    const/4 v8, 0x0

    .line 139
    invoke-static {v5, v6, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 141
    invoke-virtual {v2, v6}, Lus/shandian/giga/io/CircularFileWriter;->write([B)V

    .line 142
    iget-wide v7, v1, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    array-length v6, v6

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, v1, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    goto :goto_19

    .line 143
    :cond_23
    :goto_1a
    iget-object v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    iget-object v6, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_24

    .line 144
    iget-object v6, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {v1, v6, v5, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    goto :goto_1a

    :cond_24
    add-int/lit8 v33, v33, 0x1

    .line 145
    aget v5, v42, v15

    if-gez v5, :cond_25

    aget-wide v5, v45, v15

    cmp-long v7, v5, v17

    if-ltz v7, :cond_25

    .line 146
    iget-wide v7, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long/2addr v7, v5

    long-to-int v5, v7

    aput v5, v42, v15

    .line 147
    :cond_25
    iget-wide v5, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    aput-wide v5, v45, v15

    cmp-long v7, v48, v17

    if-gez v7, :cond_26

    add-long v27, v5, v43

    :goto_1b
    move v2, v15

    move-wide/from16 v5, v25

    move/from16 v13, v34

    move-object/from16 v15, v45

    move-wide/from16 v11, v46

    move-wide/from16 v25, v50

    move-object/from16 v8, v52

    move-wide/from16 v9, v53

    goto/16 :goto_14

    :cond_26
    cmp-long v7, v5, v48

    if-ltz v7, :cond_28

    if-eq v4, v15, :cond_27

    sub-long v5, v5, v48

    sub-long v43, v43, v5

    add-long v48, v43, v48

    :cond_27
    add-int/lit8 v5, v15, 0x1

    move v15, v5

    :cond_28
    move-wide/from16 v27, v48

    goto :goto_1b

    .line 148
    :cond_29
    const-string v0, "SimpleBlock timecode overflow."

    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_2a
    move-object/from16 v2, p1

    move/from16 v2, v33

    move-wide/from16 v33, v29

    goto/16 :goto_13

    :cond_2b
    move-object/from16 v2, p1

    move-object/from16 v52, v8

    move-wide/from16 v53, v9

    move-wide/from16 v46, v11

    move/from16 v34, v13

    move-object/from16 v45, v15

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    .line 149
    invoke-virtual/range {v1 .. v7}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    .line 150
    iget-wide v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    sub-long v3, v3, v53

    const-wide/16 v5, 0x7

    sub-long/2addr v3, v5

    .line 151
    invoke-virtual {v1, v2, v9, v10}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 152
    iget-object v5, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v8, 0x7

    const/4 v13, 0x1

    invoke-virtual {v2, v3, v13, v8}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    move-wide/from16 v11, v17

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v14, :cond_2e

    .line 154
    aget v4, v42, v3

    if-lez v4, :cond_2c

    .line 155
    aget-wide v5, v45, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    aput-wide v5, v45, v3

    .line 156
    :cond_2c
    aget-wide v4, v45, v3

    cmp-long v6, v4, v11

    if-lez v6, :cond_2d

    move-wide v11, v4

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2e
    move-wide/from16 v3, v46

    .line 157
    invoke-virtual {v1, v2, v3, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 158
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    long-to-float v4, v11

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 159
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v13, 0x4

    invoke-virtual {v1, v3, v13, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    move/from16 v3, v34

    int-to-long v3, v3

    sub-long v3, v3, v23

    long-to-int v3, v3

    move-wide/from16 v4, v38

    .line 160
    invoke-virtual {v1, v2, v4, v5}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 161
    iget-object v4, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v11, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {v1, v3, v13, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    move-wide/from16 v3, v35

    .line 163
    invoke-virtual {v1, v2, v3, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    const/4 v8, 0x7

    .line 164
    new-array v5, v8, [B

    fill-array-data v5, :array_d

    .line 165
    invoke-virtual {v1, v5, v8, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 166
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;

    .line 167
    iget-object v8, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x1

    .line 169
    new-array v10, v13, [B

    const/16 v12, -0x45

    const/16 v21, 0x0

    aput-byte v12, v10, v21

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 170
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-array v10, v13, [B

    const/16 v12, -0x4d

    aput-byte v12, v10, v21

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-wide v14, v7, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->duration:J

    invoke-static {v14, v15, v13}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0x8

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    new-array v14, v13, [B

    const/16 v15, -0x49

    aput-byte v15, v14, v21

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 175
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-array v14, v13, [B

    const/16 v15, -0x9

    aput-byte v15, v14, v21

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v0, 0x1

    int-to-long v14, v14

    .line 177
    invoke-static {v14, v15, v13}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-array v14, v13, [B

    const/16 v15, -0xf

    aput-byte v15, v14, v21

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-wide v14, v7, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->clusterPosition:J

    invoke-static {v14, v15, v13}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget v7, v7, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->relativePosition:I

    if-lez v7, :cond_2f

    .line 181
    new-array v14, v13, [B

    const/16 v15, -0x10

    aput-byte v15, v14, v21

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v14, v7

    .line 182
    invoke-static {v14, v15, v13}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2f
    invoke-static {v10}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)V

    .line 184
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-static {v9}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)V

    .line 186
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 187
    array-length v13, v10

    const/4 v14, 0x0

    invoke-static {v10, v14, v8, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v10, v10

    add-int/2addr v9, v10

    goto :goto_1e

    :cond_30
    add-int v7, v6, v9

    add-int/lit8 v8, v7, 0xb

    const v10, 0xffff

    if-le v8, v10, :cond_31

    goto :goto_1f

    :cond_31
    int-to-short v6, v7

    .line 189
    iget-object v7, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {v1, v7, v9, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    goto/16 :goto_1d

    :cond_32
    :goto_1f
    const v0, 0xfff8

    sub-int/2addr v0, v6

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v1, v2, v0, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V

    add-long v9, v3, v19

    .line 191
    invoke-virtual {v1, v2, v9, v10}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 192
    iget-object v0, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v0, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    move/from16 v5, v37

    invoke-virtual {v1, v0, v5, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    sub-long v9, v3, v23

    long-to-int v0, v9

    move-wide/from16 v3, v40

    .line 194
    invoke-virtual {v1, v2, v3, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 195
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v8, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 196
    iget-object v0, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v13, 0x4

    invoke-virtual {v1, v0, v13, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 197
    iget-object v0, v1, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    .line 198
    iget-wide v4, v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->offset:J

    iget v3, v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->size:I

    const/high16 v6, 0x10000000

    or-int/2addr v3, v6

    .line 199
    invoke-virtual {v1, v2, v4, v5}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 200
    iget-object v4, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 201
    iget-object v3, v1, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v13, 0x4

    invoke-virtual {v1, v3, v13, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    goto :goto_20

    :catchall_2
    move-exception v0

    move-object v1, v3

    const/4 v8, 0x1

    .line 202
    :goto_21
    iput-boolean v8, v1, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 203
    throw v0

    .line 204
    :goto_22
    iput-boolean v8, v1, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 205
    throw v0

    .line 206
    :cond_33
    const-string v0, "already parsed"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    goto :goto_23

    .line 207
    :cond_34
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    :cond_35
    :goto_23
    return-void

    :pswitch_0
    move v8, v9

    .line 208
    const-string v3, "TtmlConverter"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    const-string v6, "true"

    invoke-virtual {v0, v8, v6}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v5, :cond_36

    .line 210
    const-string v6, "ttml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_36
    const/4 v8, 0x0

    goto :goto_25

    .line 211
    :cond_37
    const-string v0, "srt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 212
    new-array v0, v4, [B

    const/4 v8, 0x0

    .line 213
    :goto_24
    aget-object v3, v1, v8

    invoke-virtual {v3, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    move-result v3

    if-lez v3, :cond_39

    .line 214
    invoke-virtual {v2, v0, v8, v3}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    goto :goto_24

    .line 215
    :cond_38
    const-string v0, "Can\'t convert this subtitle, unimplemented format: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    goto :goto_26

    .line 216
    :goto_25
    new-instance v4, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;

    invoke-direct {v4, v2, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Z)V

    .line 217
    :try_start_3
    aget-object v0, v1, v8

    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_39
    :goto_26
    return-void

    :catch_0
    move-exception v0

    goto :goto_27

    :catch_1
    move-exception v0

    goto :goto_28

    .line 218
    :goto_27
    const-string v1, "subtitle conversion failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TTML to SRT conversion failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :goto_28
    const-string v1, "subtitle conversion failed due to I/O error"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    throw v0

    .line 222
    :pswitch_1
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;-><init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 223
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parseSources()V

    const/4 v8, 0x0

    .line 224
    filled-new-array {v8, v8}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->selectTracks([I)V

    .line 225
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    return-void

    :pswitch_2
    move v8, v10

    .line 226
    new-instance v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;

    aget-object v1, v1, v8

    iget-object v0, v0, Lus/shandian/giga/postprocessing/Postprocessing;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v3, v1, v2, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 227
    iget-boolean v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_3f

    .line 228
    iget-boolean v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    if-nez v0, :cond_3e

    .line 229
    :try_start_4
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v1, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 230
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader;->parse()V

    .line 231
    iget-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v8, 0x1

    .line 232
    iput-boolean v8, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 233
    iget-boolean v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_3d

    .line 234
    iget-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    if-nez v0, :cond_3c

    .line 235
    iget-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 236
    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    const/16 v21, 0x0

    .line 237
    aget-object v0, v0, v21

    iget v0, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_3b

    if-ne v0, v8, :cond_3a

    goto :goto_29

    .line 238
    :cond_3a
    const-string v0, "the track must an audio or video stream"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    goto :goto_2a

    .line 239
    :cond_3b
    :goto_29
    :try_start_5
    iget-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    const/4 v8, 0x0

    .line 240
    iput v8, v0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 241
    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v0, v0, v8

    .line 242
    iput-object v0, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v8, 0x1

    .line 243
    iput-boolean v8, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 244
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->build()V

    goto :goto_2a

    :catchall_3
    move-exception v0

    const/4 v8, 0x1

    .line 245
    iput-boolean v8, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 246
    throw v0

    .line 247
    :cond_3c
    const-string v0, "tracks already selected"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    goto :goto_2a

    .line 248
    :cond_3d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    goto :goto_2a

    :catchall_4
    move-exception v0

    const/4 v8, 0x1

    .line 249
    iput-boolean v8, v3, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 250
    throw v0

    .line 251
    :cond_3e
    const-string v0, "already parsed"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    goto :goto_2a

    .line 252
    :cond_3f
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    :goto_2a
    return-void

    :pswitch_3
    move v8, v9

    .line 253
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;

    const/16 v21, 0x0

    aget-object v1, v1, v21

    new-array v3, v8, [Lorg/schabi/newpipe/streams/io/SharpStream;

    aput-object v1, v3, v21

    invoke-direct {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;-><init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V

    const v1, 0x4d344120    # 1.8901043E8f

    .line 254
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 255
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parseSources()V

    .line 256
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->selectTracks([I)V

    .line 257
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1at
        0x45t
        -0x21t
        -0x5dt
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x42t
        -0x7at
        -0x7ft
        0x1t
        0x42t
        -0x9t
        -0x7ft
        0x1t
        0x42t
        -0xet
        -0x7ft
        0x4t
        0x42t
        -0xdt
        -0x7ft
        0x8t
        0x42t
        -0x7et
        -0x7ct
        0x77t
        0x65t
        0x62t
        0x6dt
        0x42t
        -0x79t
        -0x7ft
        0x2t
        0x42t
        -0x7bt
        -0x7ft
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x53t
        -0x80t
        0x67t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0x4dt
        -0x65t
        0x74t
        -0x42t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x15t
        0x49t
        -0x57t
        0x66t
        0x53t
        -0x54t
        -0x7ft
        0x43t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x16t
        0x54t
        -0x52t
        0x6bt
        0x53t
        -0x54t
        -0x7ft
        0x56t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ft
        0x43t
        -0x4at
        0x75t
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x15t
        0x49t
        -0x57t
        0x66t
        -0x72t
        0x2at
        -0x29t
        -0x4ft
    .end array-data

    :array_4
    .array-data 1
        0x44t
        -0x77t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x16t
        0x54t
        -0x52t
        0x6bt
    .end array-data

    :array_6
    .array-data 1
        0x73t
        -0x3bt
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x64t
        -0x7ft
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x22t
        -0x4bt
        -0x64t
        -0x7dt
        0x75t
        0x6et
        0x64t
    .end array-data

    :array_9
    .array-data 1
        0x56t
        -0x56t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x56t
        -0x45t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x23t
        -0x1dt
        -0x7dt
    .end array-data

    :array_c
    .array-data 1
        0x63t
        -0x5et
    .end array-data

    nop

    :array_d
    .array-data 1
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public varargs test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z
    .locals 3

    .line 1
    iget v0, p0, Lus/shandian/giga/postprocessing/M4aNoDash;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    const/4 p0, 0x4

    .line 14
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    aget-object p1, p1, v2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const p1, 0x1a45dfa3

    .line 32
    .line 33
    .line 34
    if-eq p0, p1, :cond_1

    .line 35
    .line 36
    const p1, 0x4f676753

    .line 37
    .line 38
    .line 39
    if-ne p0, p1, :cond_0

    .line 40
    .line 41
    :goto_0
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-string p0, "file not recognized, failed to demux the audio stream"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    return v1

    .line 50
    :pswitch_1
    new-instance p0, Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 51
    .line 52
    aget-object p1, p1, v2

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parse()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    .line 61
    .line 62
    check-cast p0, [I

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    aget p0, p0, v2

    .line 67
    .line 68
    const p1, 0x64617368

    .line 69
    .line 70
    .line 71
    if-eq p0, p1, :cond_3

    .line 72
    .line 73
    const p1, 0x69736f35

    .line 74
    .line 75
    .line 76
    if-eq p0, p1, :cond_3

    .line 77
    .line 78
    :goto_2
    move v1, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    const-string p0, "Not parsed"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_3
    return v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
