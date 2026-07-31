.class public final Lorg/schabi/newpipe/extractor/stream/StreamSegment;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelName:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private startTimeSeconds:I

.field private title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->startTimeSeconds:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getChannelName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreviewUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartTimeSeconds()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->startTimeSeconds:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
