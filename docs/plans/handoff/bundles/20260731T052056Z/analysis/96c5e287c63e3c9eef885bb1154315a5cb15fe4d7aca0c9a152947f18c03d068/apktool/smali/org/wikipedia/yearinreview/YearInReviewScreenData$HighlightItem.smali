.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final highlightColor:J

.field public final items:Ljava/util/List;

.field public final singleValue:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V
    .locals 1

    .line 1
    and-int/lit8 v0, p6, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 v0, p6, 0x4

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 11
    .line 12
    :cond_1
    and-int/lit8 p6, p6, 0x8

    .line 13
    .line 14
    if-eqz p6, :cond_2

    .line 15
    .line 16
    sget-wide p4, Lorg/wikipedia/compose/ComposeColors;->Gray700:J

    .line 17
    .line 18
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->title:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->singleValue:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->items:Ljava/util/List;

    .line 29
    .line 30
    iput-wide p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->highlightColor:J

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->title:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->singleValue:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->singleValue:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->items:Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->items:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-wide v0, p1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->highlightColor:J

    .line 45
    .line 46
    sget p1, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 47
    .line 48
    iget-wide p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->highlightColor:J

    .line 49
    .line 50
    invoke-static {p0, p1, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->singleValue:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->items:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget v1, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 29
    .line 30
    iget-wide v1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->highlightColor:J

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->highlightColor:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", singleValue="

    .line 8
    .line 9
    const-string v2, ", items="

    .line 10
    .line 11
    const-string v3, "HighlightItem(title="

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->title:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->singleValue:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v4, v1, v5, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;->items:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ", highlightColor="

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, ")"

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
