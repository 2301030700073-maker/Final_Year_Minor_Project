.class public abstract Lorg/schabi/newpipe/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/ArrayList;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 12
    .line 13
    iget v1, v1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 18
    .line 19
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 24
    .line 25
    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFormatId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.end method

.method public final getManifestUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isUrl()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 2
    .line 3
    return p0
.end method
