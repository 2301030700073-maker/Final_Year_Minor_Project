.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public content:Ljava/lang/String;

.field public deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public id:Ljava/lang/String;

.field public isUrl:Z

.field public isVideoOnly:Ljava/lang/Boolean;

.field public mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public resolution:Ljava/lang/String;


# virtual methods
.method public final build()Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 10

    .line 1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    iget-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    .line 24
    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v4, p0

    .line 34
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    const-string p0, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    const-string p0, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    const-string p0, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    const-string p0, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method
