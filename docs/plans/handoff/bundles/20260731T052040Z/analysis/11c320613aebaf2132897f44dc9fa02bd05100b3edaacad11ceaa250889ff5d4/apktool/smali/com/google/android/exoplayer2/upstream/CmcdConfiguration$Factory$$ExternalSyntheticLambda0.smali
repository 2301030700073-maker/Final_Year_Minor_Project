.class public final synthetic Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;


# virtual methods
.method public final createCmcdConfiguration(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method
