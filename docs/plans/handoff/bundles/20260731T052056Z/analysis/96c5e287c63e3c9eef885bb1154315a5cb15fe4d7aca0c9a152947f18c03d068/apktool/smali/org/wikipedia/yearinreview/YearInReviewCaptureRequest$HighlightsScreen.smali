.class public final Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;
.super Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;


# direct methods
.method public constructor <init>(Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;->data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;->data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;->data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;->data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HighlightsScreen(data="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$HighlightsScreen;->data:Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
