.class public final Lexpo/modules/video/player/VideoPlayerKt;
.super Ljava/lang/Object;
.source "VideoPlayer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "toVideoTracks",
        "",
        "Lexpo/modules/video/records/VideoTrack;",
        "Landroidx/media3/common/Tracks;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toVideoTracks(Landroidx/media3/common/Tracks;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/video/player/VideoPlayerKt;->toVideoTracks(Landroidx/media3/common/Tracks;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final toVideoTracks(Landroidx/media3/common/Tracks;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Tracks;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 448
    invoke-virtual {p0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    const-string v1, "iterator(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 449
    iget v2, v1, Landroidx/media3/common/Tracks$Group;->length:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 450
    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    const-string v5, "getTrackFormat(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v5

    .line 453
    iget-object v6, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 456
    :cond_1
    sget-object v6, Lexpo/modules/video/records/VideoTrack;->Companion:Lexpo/modules/video/records/VideoTrack$Companion;

    invoke-virtual {v6, v4, v5}, Lexpo/modules/video/records/VideoTrack$Companion;->fromFormat(Landroidx/media3/common/Format;Z)Lexpo/modules/video/records/VideoTrack;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
