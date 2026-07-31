.class public final Lorg/schabi/newpipe/player/helper/YoutubeDashLiveManifestParser;
.super Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 22

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-wide/from16 v6, p5

    .line 8
    .line 9
    move/from16 v8, p7

    .line 10
    .line 11
    move-wide/from16 v9, p8

    .line 12
    .line 13
    move-wide/from16 v11, p10

    .line 14
    .line 15
    move-wide/from16 v13, p12

    .line 16
    .line 17
    move-wide/from16 v15, p14

    .line 18
    .line 19
    move-object/from16 v17, p16

    .line 20
    .line 21
    move-object/from16 v18, p17

    .line 22
    .line 23
    move-object/from16 v19, p18

    .line 24
    .line 25
    move-object/from16 v20, p19

    .line 26
    .line 27
    move-object/from16 v21, p20

    .line 28
    .line 29
    invoke-super/range {v1 .. v21}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
