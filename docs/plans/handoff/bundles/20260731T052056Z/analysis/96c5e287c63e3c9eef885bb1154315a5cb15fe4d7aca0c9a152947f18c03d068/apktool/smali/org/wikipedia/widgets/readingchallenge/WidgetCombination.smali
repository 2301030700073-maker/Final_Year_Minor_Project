.class public final Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final backgroundColor:J

.field public final contentColor:J

.field public final iconResId:I

.field public final progressColor:Landroidx/compose/ui/graphics/Color;

.field public final subtitleResId:Ljava/lang/Integer;

.field public final titleResId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p9, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p6, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p9, 0x10

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p7, v1

    .line 12
    :cond_1
    and-int/lit8 p9, p9, 0x20

    .line 13
    .line 14
    if-eqz p9, :cond_2

    .line 15
    .line 16
    move-object p8, v1

    .line 17
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->iconResId:I

    .line 21
    .line 22
    iput-wide p2, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 23
    .line 24
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 25
    .line 26
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->progressColor:Landroidx/compose/ui/graphics/Color;

    .line 27
    .line 28
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->titleResId:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object p8, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->subtitleResId:Ljava/lang/Integer;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 10
    .line 11
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->iconResId:I

    .line 12
    .line 13
    iget v1, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->iconResId:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-wide v0, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 19
    .line 20
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 21
    .line 22
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 32
    .line 33
    iget-wide v2, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->progressColor:Landroidx/compose/ui/graphics/Color;

    .line 43
    .line 44
    iget-object v1, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->progressColor:Landroidx/compose/ui/graphics/Color;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->titleResId:Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v1, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->titleResId:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->subtitleResId:Ljava/lang/Integer;

    .line 65
    .line 66
    iget-object p1, p1, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->subtitleResId:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_7

    .line 73
    .line 74
    :goto_0
    const/4 p0, 0x0

    .line 75
    return p0

    .line 76
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 77
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->iconResId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 7
    .line 8
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->progressColor:Landroidx/compose/ui/graphics/Color;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    move v3, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 28
    .line 29
    invoke-static {v3, v4}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v3, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->titleResId:Ljava/lang/Integer;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_1
    add-int/2addr v0, v3

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->subtitleResId:Ljava/lang/Integer;

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_2
    add-int/2addr v0, v2

    .line 57
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "WidgetCombination(iconResId="

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->iconResId:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", backgroundColor="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", contentColor="

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", progressColor="

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->progressColor:Landroidx/compose/ui/graphics/Color;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", titleResId="

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->titleResId:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", subtitleResId="

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->subtitleResId:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ")"

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
