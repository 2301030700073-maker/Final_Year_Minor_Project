.class public final Lorg/schabi/newpipe/extractor/Image;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field private final height:I

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    .line 9
    .line 10
    const-string p1, "estimatedResolutionLevel is null"

    .line 11
    .line 12
    invoke-static {p4, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    .line 4
    .line 5
    iget v2, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v4, "Image {url="

    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", height="

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", width="

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", estimatedResolutionLevel="

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo p0, "}"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
