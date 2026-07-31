.class public abstract Landroidx/compose/ui/text/ParagraphKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LineBreakSaver:Landroidx/cardview/widget/CardView$1;

.field public static final PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

.field public static final TagHandler:Landroidx/compose/ui/text/Html_androidKt$TagHandler$1;

.field public static final TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

.field public static final TextMotionSaver:Landroidx/cardview/widget/CardView$1;

.field public static final emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/text/Html_androidKt$TagHandler$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/ParagraphKt;->TagHandler:Landroidx/compose/ui/text/Html_androidKt$TagHandler$1;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/16 v1, 0x16

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    invoke-direct {v2, v3, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    const/16 v1, 0x17

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/16 v2, 0xc

    .line 41
    .line 42
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 46
    .line 47
    invoke-direct {v2, v3, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 53
    .line 54
    const/16 v1, 0x18

    .line 55
    .line 56
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v2, 0xd

    .line 62
    .line 63
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 67
    .line 68
    invoke-direct {v2, v3, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sput-object v2, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/cardview/widget/CardView$1;

    .line 72
    .line 73
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 74
    .line 75
    const/16 v1, 0x19

    .line 76
    .line 77
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 v2, 0xe

    .line 83
    .line 84
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 88
    .line 89
    invoke-direct {v2, v3, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sput-object v2, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/cardview/widget/CardView$1;

    .line 93
    .line 94
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 95
    .line 96
    const/16 v1, 0x1a

    .line 97
    .line 98
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    const/16 v2, 0xf

    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 109
    .line 110
    invoke-direct {v2, v3, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sput-object v2, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

    .line 114
    .line 115
    return-void
.end method

.method public static Paragraph-Ul8oQg4$default(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;II)Landroidx/compose/ui/text/AndroidParagraph;
    .locals 7

    .line 1
    move-object v1, p0

    .line 2
    new-instance p0, Landroidx/compose/ui/text/AndroidParagraph;

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 5
    .line 6
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    move-object v4, v3

    .line 9
    move-object v2, p1

    .line 10
    move-object v6, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    .line 13
    .line 14
    .line 15
    move-wide p4, p2

    .line 16
    move-object p1, v0

    .line 17
    const/4 p3, 0x1

    .line 18
    move p2, p6

    .line 19
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static final TextRange(II)J
    .locals 4

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "start and end cannot be negative. [start: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", end: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x5d

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    int-to-long v0, p0

    .line 37
    const/16 p0, 0x20

    .line 38
    .line 39
    shl-long/2addr v0, p0

    .line 40
    int-to-long p0, p1

    .line 41
    const-wide v2, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr p0, v2

    .line 47
    or-long/2addr p0, v0

    .line 48
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 49
    .line 50
    return-wide p0
.end method

.method public static final coerceIn-8ffj60Q(JI)J
    .locals 5

    .line 1
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    shr-long v0, p0, v0

    .line 6
    .line 7
    long-to-int v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    if-le v2, p2, :cond_1

    .line 15
    .line 16
    move v2, p2

    .line 17
    :cond_1
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v3, p0

    .line 23
    long-to-int v3, v3

    .line 24
    if-gez v3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v1, v3

    .line 28
    :goto_1
    if-le v1, p2, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move p2, v1

    .line 32
    :goto_2
    if-ne v2, v0, :cond_5

    .line 33
    .line 34
    if-eq p2, v3, :cond_4

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_4
    return-wide p0

    .line 38
    :cond_5
    :goto_3
    invoke-static {v2, p2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0
.end method

.method public static final findParagraphByIndex(Ljava/util/List;I)I
    .locals 7

    .line 1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 6
    .line 7
    iget v0, v0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 14
    .line 15
    iget v1, v1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 16
    .line 17
    if-gt p1, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Index "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " should be less or equal than last line\'s end "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    const/4 v2, 0x0

    .line 52
    move v3, v2

    .line 53
    :goto_1
    if-gt v3, v0, :cond_4

    .line 54
    .line 55
    add-int v4, v3, v0

    .line 56
    .line 57
    ushr-int/2addr v4, v1

    .line 58
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 63
    .line 64
    iget v6, v5, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 65
    .line 66
    if-le v6, p1, :cond_1

    .line 67
    .line 68
    move v5, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget v5, v5, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 71
    .line 72
    if-gt v5, p1, :cond_2

    .line 73
    .line 74
    const/4 v5, -0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v5, v2

    .line 77
    :goto_2
    if-gez v5, :cond_3

    .line 78
    .line 79
    add-int/lit8 v3, v4, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-lez v5, :cond_5

    .line 83
    .line 84
    add-int/lit8 v0, v4, -0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    add-int/2addr v3, v1

    .line 88
    neg-int v4, v3

    .line 89
    :cond_5
    if-ltz v4, :cond_6

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ge v4, v0, :cond_6

    .line 96
    .line 97
    return v4

    .line 98
    :cond_6
    const-string v0, "Found paragraph index "

    .line 99
    .line 100
    const-string v1, " should be in range [0, "

    .line 101
    .line 102
    invoke-static {v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ").\nDebug info: index="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, ", paragraphs=["

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    new-instance p1, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 127
    .line 128
    const/16 v1, 0x9

    .line 129
    .line 130
    invoke-direct {p1, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x1f

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-static {p0, v2, p1, v1}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const/16 p0, 0x5d

    .line 144
    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return v4
.end method

.method public static final findParagraphByLineIndex(Ljava/util/List;I)I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-gt v3, v0, :cond_4

    .line 10
    .line 11
    add-int v4, v3, v0

    .line 12
    .line 13
    ushr-int/2addr v4, v1

    .line 14
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 19
    .line 20
    iget v6, v5, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    .line 21
    .line 22
    if-le v6, p1, :cond_0

    .line 23
    .line 24
    move v5, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v5, v5, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    .line 27
    .line 28
    if-gt v5, p1, :cond_1

    .line 29
    .line 30
    const/4 v5, -0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v5, v2

    .line 33
    :goto_1
    if-gez v5, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-lez v5, :cond_3

    .line 39
    .line 40
    add-int/lit8 v0, v4, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v4

    .line 44
    :cond_4
    add-int/2addr v3, v1

    .line 45
    neg-int p0, v3

    .line 46
    return p0
.end method

.method public static final findParagraphByY(Ljava/util/ArrayList;F)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 13
    .line 14
    iget v0, v0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    .line 15
    .line 16
    cmpl-float v0, p1, v0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sub-int/2addr p0, v2

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v0, v2

    .line 32
    move v3, v1

    .line 33
    :goto_0
    if-gt v3, v0, :cond_6

    .line 34
    .line 35
    add-int v4, v3, v0

    .line 36
    .line 37
    ushr-int/2addr v4, v2

    .line 38
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 43
    .line 44
    iget v6, v5, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 45
    .line 46
    cmpl-float v6, v6, p1

    .line 47
    .line 48
    if-lez v6, :cond_2

    .line 49
    .line 50
    move v5, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v5, v5, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    .line 53
    .line 54
    cmpg-float v5, v5, p1

    .line 55
    .line 56
    if-gtz v5, :cond_3

    .line 57
    .line 58
    const/4 v5, -0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v5, v1

    .line 61
    :goto_1
    if-gez v5, :cond_4

    .line 62
    .line 63
    add-int/lit8 v3, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    if-lez v5, :cond_5

    .line 67
    .line 68
    add-int/lit8 v0, v4, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    return v4

    .line 72
    :cond_6
    add-int/2addr v3, v2

    .line 73
    neg-int p0, v3

    .line 74
    return p0
.end method

.method public static final findParagraphsByRange-Sb-Bc2M(Ljava/util/ArrayList;JLkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/ParagraphKt;->findParagraphByIndex(Ljava/util/List;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/compose/ui/text/ParagraphInfo;

    .line 20
    .line 21
    iget v3, v2, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    iget v3, v2, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 30
    .line 31
    iget v4, v2, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public static fromHtml$default(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 38

    .line 1
    const/4 v0, 0x2

    .line 2
    and-int/lit8 v1, p2, 0x2

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v1, p1

    .line 10
    .line 11
    :goto_0
    const-string v3, "<ContentHandlerReplacementTag />"

    .line 12
    .line 13
    move-object/from16 v4, p0

    .line 14
    .line 15
    invoke-static {v3, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v5, 0x18

    .line 22
    .line 23
    sget-object v6, Landroidx/compose/ui/text/ParagraphKt;->TagHandler:Landroidx/compose/ui/text/Html_androidKt$TagHandler$1;

    .line 24
    .line 25
    if-lt v4, v5, :cond_1

    .line 26
    .line 27
    const/16 v4, 0x3f

    .line 28
    .line 29
    invoke-static {v3, v4, v2, v6}, Lorg/wikipedia/language/LanguageUtil;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3, v2, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :goto_1
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-direct {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const-class v6, Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-interface {v3, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    array-length v6, v5

    .line 64
    move v8, v7

    .line 65
    :goto_2
    if-ge v8, v6, :cond_20

    .line 66
    .line 67
    aget-object v9, v5, v8

    .line 68
    .line 69
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    invoke-static {v10, v11}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    sget v12, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 82
    .line 83
    const/16 v12, 0x20

    .line 84
    .line 85
    shr-long v12, v10, v12

    .line 86
    .line 87
    long-to-int v12, v12

    .line 88
    const-wide v13, 0xffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long/2addr v10, v13

    .line 94
    long-to-int v10, v10

    .line 95
    instance-of v11, v9, Landroid/text/style/AbsoluteSizeSpan;

    .line 96
    .line 97
    if-nez v11, :cond_1f

    .line 98
    .line 99
    instance-of v11, v9, Landroid/text/style/AlignmentSpan;

    .line 100
    .line 101
    const/16 v13, 0x8

    .line 102
    .line 103
    iget-object v14, v4, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 104
    .line 105
    const/4 v15, 0x1

    .line 106
    const/4 v7, 0x3

    .line 107
    if-eqz v11, :cond_6

    .line 108
    .line 109
    check-cast v9, Landroid/text/style/AlignmentSpan;

    .line 110
    .line 111
    invoke-interface {v9}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    if-nez v9, :cond_2

    .line 116
    .line 117
    const/4 v9, -0x1

    .line 118
    goto :goto_3

    .line 119
    :cond_2
    sget-object v11, Landroidx/compose/ui/text/Html_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    aget v9, v11, v9

    .line 126
    .line 127
    :goto_3
    if-eq v9, v15, :cond_4

    .line 128
    .line 129
    if-eq v9, v0, :cond_5

    .line 130
    .line 131
    if-eq v9, v7, :cond_3

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    const/4 v7, 0x6

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    const/4 v7, 0x5

    .line 138
    :cond_5
    :goto_4
    new-instance v9, Landroidx/compose/ui/text/ParagraphStyle;

    .line 139
    .line 140
    const/16 v11, 0x1fe

    .line 141
    .line 142
    invoke-direct {v9, v7, v2, v11}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(ILandroidx/compose/ui/text/style/TextIndent;I)V

    .line 143
    .line 144
    .line 145
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 146
    .line 147
    invoke-direct {v7, v9, v12, v10, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :goto_5
    move-object v9, v2

    .line 154
    move-object/from16 p1, v3

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    goto/16 :goto_e

    .line 158
    .line 159
    :cond_6
    instance-of v11, v9, Landroidx/compose/ui/text/AnnotationSpan;

    .line 160
    .line 161
    if-eqz v11, :cond_7

    .line 162
    .line 163
    check-cast v9, Landroidx/compose/ui/text/AnnotationSpan;

    .line 164
    .line 165
    iget-object v7, v9, Landroidx/compose/ui/text/AnnotationSpan;->key:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v9, v9, Landroidx/compose/ui/text/AnnotationSpan;->value:Ljava/lang/String;

    .line 168
    .line 169
    new-instance v11, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 170
    .line 171
    new-instance v13, Landroidx/compose/ui/text/StringAnnotation;

    .line 172
    .line 173
    invoke-direct {v13, v9}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v11, v12, v10, v13, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    instance-of v11, v9, Landroid/text/style/BackgroundColorSpan;

    .line 184
    .line 185
    if-eqz v11, :cond_8

    .line 186
    .line 187
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 188
    .line 189
    check-cast v9, Landroid/text/style/BackgroundColorSpan;

    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 196
    .line 197
    .line 198
    move-result-wide v31

    .line 199
    const/16 v34, 0x0

    .line 200
    .line 201
    const v35, 0xf7ff

    .line 202
    .line 203
    .line 204
    const-wide/16 v17, 0x0

    .line 205
    .line 206
    const-wide/16 v19, 0x0

    .line 207
    .line 208
    const/16 v21, 0x0

    .line 209
    .line 210
    const/16 v22, 0x0

    .line 211
    .line 212
    const/16 v23, 0x0

    .line 213
    .line 214
    const/16 v24, 0x0

    .line 215
    .line 216
    const/16 v25, 0x0

    .line 217
    .line 218
    const-wide/16 v26, 0x0

    .line 219
    .line 220
    const/16 v28, 0x0

    .line 221
    .line 222
    const/16 v29, 0x0

    .line 223
    .line 224
    const/16 v30, 0x0

    .line 225
    .line 226
    const/16 v33, 0x0

    .line 227
    .line 228
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 229
    .line 230
    .line 231
    move-object/from16 v7, v16

    .line 232
    .line 233
    invoke-virtual {v4, v7, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_8
    instance-of v11, v9, Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 238
    .line 239
    if-eqz v11, :cond_b

    .line 240
    .line 241
    sget-wide v15, Landroidx/compose/ui/text/Bullet;->DefaultIndentation:J

    .line 242
    .line 243
    check-cast v9, Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 244
    .line 245
    iget v7, v9, Landroidx/compose/ui/text/BulletSpanWithLevel;->indentationLevel:I

    .line 246
    .line 247
    invoke-static/range {v15 .. v16}, Lcoil3/util/ContextsKt;->checkArithmetic--R2X_6o(J)V

    .line 248
    .line 249
    .line 250
    const-wide v17, 0xff00000000L

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    move-object/from16 p1, v3

    .line 256
    .line 257
    and-long v2, v15, v17

    .line 258
    .line 259
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    int-to-float v7, v7

    .line 264
    mul-float/2addr v11, v7

    .line 265
    invoke-static {v11, v2, v3}, Lcoil3/util/ContextsKt;->pack(FJ)J

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    iget-object v7, v9, Landroidx/compose/ui/text/BulletSpanWithLevel;->bullet:Landroidx/compose/ui/text/Bullet;

    .line 270
    .line 271
    new-instance v9, Landroidx/compose/ui/text/ParagraphStyle;

    .line 272
    .line 273
    new-instance v11, Landroidx/compose/ui/text/style/TextIndent;

    .line 274
    .line 275
    invoke-direct {v11, v2, v3, v2, v3}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 276
    .line 277
    .line 278
    const/16 v2, 0x1f7

    .line 279
    .line 280
    const/4 v3, 0x0

    .line 281
    invoke-direct {v9, v3, v11, v2}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(ILandroidx/compose/ui/text/style/TextIndent;I)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 285
    .line 286
    invoke-direct {v2, v9, v12, v10, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 293
    .line 294
    invoke-direct {v2, v7, v12, v10, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_9
    :goto_6
    const/4 v3, 0x0

    .line 301
    :cond_a
    :goto_7
    const/4 v9, 0x0

    .line 302
    goto/16 :goto_e

    .line 303
    .line 304
    :cond_b
    move-object/from16 p1, v3

    .line 305
    .line 306
    instance-of v2, v9, Landroid/text/style/ForegroundColorSpan;

    .line 307
    .line 308
    if-eqz v2, :cond_c

    .line 309
    .line 310
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 311
    .line 312
    check-cast v9, Landroid/text/style/ForegroundColorSpan;

    .line 313
    .line 314
    invoke-virtual {v9}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v17

    .line 322
    const/16 v34, 0x0

    .line 323
    .line 324
    const v35, 0xfffe

    .line 325
    .line 326
    .line 327
    const-wide/16 v19, 0x0

    .line 328
    .line 329
    const/16 v21, 0x0

    .line 330
    .line 331
    const/16 v22, 0x0

    .line 332
    .line 333
    const/16 v23, 0x0

    .line 334
    .line 335
    const/16 v24, 0x0

    .line 336
    .line 337
    const/16 v25, 0x0

    .line 338
    .line 339
    const-wide/16 v26, 0x0

    .line 340
    .line 341
    const/16 v28, 0x0

    .line 342
    .line 343
    const/16 v29, 0x0

    .line 344
    .line 345
    const/16 v30, 0x0

    .line 346
    .line 347
    const-wide/16 v31, 0x0

    .line 348
    .line 349
    const/16 v33, 0x0

    .line 350
    .line 351
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v2, v16

    .line 355
    .line 356
    invoke-virtual {v4, v2, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_c
    instance-of v2, v9, Landroid/text/style/RelativeSizeSpan;

    .line 361
    .line 362
    if-eqz v2, :cond_d

    .line 363
    .line 364
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 365
    .line 366
    check-cast v9, Landroid/text/style/RelativeSizeSpan;

    .line 367
    .line 368
    invoke-virtual {v9}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    const-wide v13, 0x200000000L

    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    invoke-static {v2, v13, v14}, Lcoil3/util/ContextsKt;->pack(FJ)J

    .line 378
    .line 379
    .line 380
    move-result-wide v19

    .line 381
    const/16 v34, 0x0

    .line 382
    .line 383
    const v35, 0xfffd

    .line 384
    .line 385
    .line 386
    const-wide/16 v17, 0x0

    .line 387
    .line 388
    const/16 v21, 0x0

    .line 389
    .line 390
    const/16 v22, 0x0

    .line 391
    .line 392
    const/16 v23, 0x0

    .line 393
    .line 394
    const/16 v24, 0x0

    .line 395
    .line 396
    const/16 v25, 0x0

    .line 397
    .line 398
    const-wide/16 v26, 0x0

    .line 399
    .line 400
    const/16 v28, 0x0

    .line 401
    .line 402
    const/16 v29, 0x0

    .line 403
    .line 404
    const/16 v30, 0x0

    .line 405
    .line 406
    const-wide/16 v31, 0x0

    .line 407
    .line 408
    const/16 v33, 0x0

    .line 409
    .line 410
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v2, v16

    .line 414
    .line 415
    invoke-virtual {v4, v2, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_d
    instance-of v2, v9, Landroid/text/style/StrikethroughSpan;

    .line 420
    .line 421
    if-eqz v2, :cond_e

    .line 422
    .line 423
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 424
    .line 425
    const/16 v34, 0x0

    .line 426
    .line 427
    const v35, 0xefff

    .line 428
    .line 429
    .line 430
    const-wide/16 v17, 0x0

    .line 431
    .line 432
    const-wide/16 v19, 0x0

    .line 433
    .line 434
    const/16 v21, 0x0

    .line 435
    .line 436
    const/16 v22, 0x0

    .line 437
    .line 438
    const/16 v23, 0x0

    .line 439
    .line 440
    const/16 v24, 0x0

    .line 441
    .line 442
    const/16 v25, 0x0

    .line 443
    .line 444
    const-wide/16 v26, 0x0

    .line 445
    .line 446
    const/16 v28, 0x0

    .line 447
    .line 448
    const/16 v29, 0x0

    .line 449
    .line 450
    const/16 v30, 0x0

    .line 451
    .line 452
    const-wide/16 v31, 0x0

    .line 453
    .line 454
    sget-object v33, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 455
    .line 456
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v2, v16

    .line 460
    .line 461
    invoke-virtual {v4, v2, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_6

    .line 465
    .line 466
    :cond_e
    instance-of v2, v9, Landroid/text/style/StyleSpan;

    .line 467
    .line 468
    if-eqz v2, :cond_12

    .line 469
    .line 470
    check-cast v9, Landroid/text/style/StyleSpan;

    .line 471
    .line 472
    invoke-virtual {v9}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eq v2, v15, :cond_11

    .line 477
    .line 478
    if-eq v2, v0, :cond_10

    .line 479
    .line 480
    if-eq v2, v7, :cond_f

    .line 481
    .line 482
    const/4 v2, 0x0

    .line 483
    goto/16 :goto_8

    .line 484
    .line 485
    :cond_f
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 486
    .line 487
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 488
    .line 489
    new-instance v2, Landroidx/compose/ui/text/font/FontStyle;

    .line 490
    .line 491
    invoke-direct {v2, v15}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 492
    .line 493
    .line 494
    const/16 v34, 0x0

    .line 495
    .line 496
    const v35, 0xfff3

    .line 497
    .line 498
    .line 499
    const-wide/16 v17, 0x0

    .line 500
    .line 501
    const-wide/16 v19, 0x0

    .line 502
    .line 503
    const/16 v23, 0x0

    .line 504
    .line 505
    const/16 v24, 0x0

    .line 506
    .line 507
    const/16 v25, 0x0

    .line 508
    .line 509
    const-wide/16 v26, 0x0

    .line 510
    .line 511
    const/16 v28, 0x0

    .line 512
    .line 513
    const/16 v29, 0x0

    .line 514
    .line 515
    const/16 v30, 0x0

    .line 516
    .line 517
    const-wide/16 v31, 0x0

    .line 518
    .line 519
    const/16 v33, 0x0

    .line 520
    .line 521
    move-object/from16 v22, v2

    .line 522
    .line 523
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 524
    .line 525
    .line 526
    move-object/from16 v2, v16

    .line 527
    .line 528
    goto :goto_8

    .line 529
    :cond_10
    new-instance v17, Landroidx/compose/ui/text/SpanStyle;

    .line 530
    .line 531
    new-instance v2, Landroidx/compose/ui/text/font/FontStyle;

    .line 532
    .line 533
    invoke-direct {v2, v15}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 534
    .line 535
    .line 536
    const/16 v35, 0x0

    .line 537
    .line 538
    const v36, 0xfff7

    .line 539
    .line 540
    .line 541
    const-wide/16 v18, 0x0

    .line 542
    .line 543
    const-wide/16 v20, 0x0

    .line 544
    .line 545
    const/16 v22, 0x0

    .line 546
    .line 547
    const/16 v24, 0x0

    .line 548
    .line 549
    const/16 v25, 0x0

    .line 550
    .line 551
    const/16 v26, 0x0

    .line 552
    .line 553
    const-wide/16 v27, 0x0

    .line 554
    .line 555
    const/16 v29, 0x0

    .line 556
    .line 557
    const/16 v30, 0x0

    .line 558
    .line 559
    const/16 v31, 0x0

    .line 560
    .line 561
    const-wide/16 v32, 0x0

    .line 562
    .line 563
    const/16 v34, 0x0

    .line 564
    .line 565
    move-object/from16 v23, v2

    .line 566
    .line 567
    invoke-direct/range {v17 .. v36}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v2, v17

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_11
    new-instance v18, Landroidx/compose/ui/text/SpanStyle;

    .line 574
    .line 575
    sget-object v23, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 576
    .line 577
    const/16 v36, 0x0

    .line 578
    .line 579
    const v37, 0xfffb

    .line 580
    .line 581
    .line 582
    const-wide/16 v19, 0x0

    .line 583
    .line 584
    const-wide/16 v21, 0x0

    .line 585
    .line 586
    const/16 v24, 0x0

    .line 587
    .line 588
    const/16 v25, 0x0

    .line 589
    .line 590
    const/16 v26, 0x0

    .line 591
    .line 592
    const/16 v27, 0x0

    .line 593
    .line 594
    const-wide/16 v28, 0x0

    .line 595
    .line 596
    const/16 v30, 0x0

    .line 597
    .line 598
    const/16 v31, 0x0

    .line 599
    .line 600
    const/16 v32, 0x0

    .line 601
    .line 602
    const-wide/16 v33, 0x0

    .line 603
    .line 604
    const/16 v35, 0x0

    .line 605
    .line 606
    invoke-direct/range {v18 .. v37}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v2, v18

    .line 610
    .line 611
    :goto_8
    if-eqz v2, :cond_9

    .line 612
    .line 613
    invoke-virtual {v4, v2, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_6

    .line 617
    .line 618
    :cond_12
    instance-of v2, v9, Landroid/text/style/SubscriptSpan;

    .line 619
    .line 620
    if-eqz v2, :cond_13

    .line 621
    .line 622
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 623
    .line 624
    new-instance v2, Landroidx/compose/ui/text/style/BaselineShift;

    .line 625
    .line 626
    const/high16 v3, -0x41000000    # -0.5f

    .line 627
    .line 628
    invoke-direct {v2, v3}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 629
    .line 630
    .line 631
    const/16 v33, 0x0

    .line 632
    .line 633
    const v34, 0xfeff

    .line 634
    .line 635
    .line 636
    const-wide/16 v16, 0x0

    .line 637
    .line 638
    const-wide/16 v18, 0x0

    .line 639
    .line 640
    const/16 v20, 0x0

    .line 641
    .line 642
    const/16 v21, 0x0

    .line 643
    .line 644
    const/16 v22, 0x0

    .line 645
    .line 646
    const/16 v23, 0x0

    .line 647
    .line 648
    const/16 v24, 0x0

    .line 649
    .line 650
    const-wide/16 v25, 0x0

    .line 651
    .line 652
    const/16 v28, 0x0

    .line 653
    .line 654
    const/16 v29, 0x0

    .line 655
    .line 656
    const-wide/16 v30, 0x0

    .line 657
    .line 658
    const/16 v32, 0x0

    .line 659
    .line 660
    move-object/from16 v27, v2

    .line 661
    .line 662
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v4, v15, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_6

    .line 669
    .line 670
    :cond_13
    instance-of v2, v9, Landroid/text/style/SuperscriptSpan;

    .line 671
    .line 672
    if-eqz v2, :cond_14

    .line 673
    .line 674
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 675
    .line 676
    new-instance v2, Landroidx/compose/ui/text/style/BaselineShift;

    .line 677
    .line 678
    const/high16 v3, 0x3f000000    # 0.5f

    .line 679
    .line 680
    invoke-direct {v2, v3}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 681
    .line 682
    .line 683
    const/16 v33, 0x0

    .line 684
    .line 685
    const v34, 0xfeff

    .line 686
    .line 687
    .line 688
    const-wide/16 v16, 0x0

    .line 689
    .line 690
    const-wide/16 v18, 0x0

    .line 691
    .line 692
    const/16 v20, 0x0

    .line 693
    .line 694
    const/16 v21, 0x0

    .line 695
    .line 696
    const/16 v22, 0x0

    .line 697
    .line 698
    const/16 v23, 0x0

    .line 699
    .line 700
    const/16 v24, 0x0

    .line 701
    .line 702
    const-wide/16 v25, 0x0

    .line 703
    .line 704
    const/16 v28, 0x0

    .line 705
    .line 706
    const/16 v29, 0x0

    .line 707
    .line 708
    const-wide/16 v30, 0x0

    .line 709
    .line 710
    const/16 v32, 0x0

    .line 711
    .line 712
    move-object/from16 v27, v2

    .line 713
    .line 714
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v4, v15, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_6

    .line 721
    .line 722
    :cond_14
    instance-of v2, v9, Landroid/text/style/TypefaceSpan;

    .line 723
    .line 724
    if-eqz v2, :cond_1d

    .line 725
    .line 726
    check-cast v9, Landroid/text/style/TypefaceSpan;

    .line 727
    .line 728
    invoke-virtual {v9}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    const-string v3, "cursive"

    .line 733
    .line 734
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    if-eqz v3, :cond_15

    .line 739
    .line 740
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 741
    .line 742
    :goto_9
    move-object/from16 v21, v2

    .line 743
    .line 744
    const/4 v3, 0x0

    .line 745
    goto :goto_d

    .line 746
    :cond_15
    const-string v3, "monospace"

    .line 747
    .line 748
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    if-eqz v3, :cond_16

    .line 753
    .line 754
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 755
    .line 756
    goto :goto_9

    .line 757
    :cond_16
    const-string v3, "sans-serif"

    .line 758
    .line 759
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    if-eqz v3, :cond_17

    .line 764
    .line 765
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 766
    .line 767
    goto :goto_9

    .line 768
    :cond_17
    const-string v3, "serif"

    .line 769
    .line 770
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-eqz v2, :cond_18

    .line 775
    .line 776
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 777
    .line 778
    goto :goto_9

    .line 779
    :cond_18
    invoke-virtual {v9}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    if-eqz v2, :cond_19

    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    if-nez v3, :cond_1a

    .line 790
    .line 791
    :cond_19
    const/4 v3, 0x0

    .line 792
    goto :goto_b

    .line 793
    :cond_1a
    const/4 v3, 0x0

    .line 794
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 799
    .line 800
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v9

    .line 804
    if-nez v9, :cond_1b

    .line 805
    .line 806
    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result v7

    .line 814
    if-nez v7, :cond_1b

    .line 815
    .line 816
    goto :goto_a

    .line 817
    :cond_1b
    const/4 v2, 0x0

    .line 818
    :goto_a
    if-eqz v2, :cond_1c

    .line 819
    .line 820
    new-instance v7, Landroidx/paging/HintHandler;

    .line 821
    .line 822
    const/16 v9, 0xa

    .line 823
    .line 824
    invoke-direct {v7, v9, v2}, Landroidx/paging/HintHandler;-><init>(ILjava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    new-instance v2, Landroidx/compose/ui/text/font/LoadedFontFamily;

    .line 828
    .line 829
    invoke-direct {v2, v7}, Landroidx/compose/ui/text/font/LoadedFontFamily;-><init>(Landroidx/paging/HintHandler;)V

    .line 830
    .line 831
    .line 832
    goto :goto_c

    .line 833
    :cond_1c
    :goto_b
    const/4 v2, 0x0

    .line 834
    :goto_c
    move-object/from16 v21, v2

    .line 835
    .line 836
    :goto_d
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 837
    .line 838
    const/16 v31, 0x0

    .line 839
    .line 840
    const v32, 0xffdf

    .line 841
    .line 842
    .line 843
    const-wide/16 v14, 0x0

    .line 844
    .line 845
    const-wide/16 v16, 0x0

    .line 846
    .line 847
    const/16 v18, 0x0

    .line 848
    .line 849
    const/16 v19, 0x0

    .line 850
    .line 851
    const/16 v20, 0x0

    .line 852
    .line 853
    const/16 v22, 0x0

    .line 854
    .line 855
    const-wide/16 v23, 0x0

    .line 856
    .line 857
    const/16 v25, 0x0

    .line 858
    .line 859
    const/16 v26, 0x0

    .line 860
    .line 861
    const/16 v27, 0x0

    .line 862
    .line 863
    const-wide/16 v28, 0x0

    .line 864
    .line 865
    const/16 v30, 0x0

    .line 866
    .line 867
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v4, v13, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_7

    .line 874
    .line 875
    :cond_1d
    const/4 v3, 0x0

    .line 876
    instance-of v2, v9, Landroid/text/style/UnderlineSpan;

    .line 877
    .line 878
    if-eqz v2, :cond_1e

    .line 879
    .line 880
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 881
    .line 882
    const/16 v33, 0x0

    .line 883
    .line 884
    const v34, 0xefff

    .line 885
    .line 886
    .line 887
    const-wide/16 v16, 0x0

    .line 888
    .line 889
    const-wide/16 v18, 0x0

    .line 890
    .line 891
    const/16 v20, 0x0

    .line 892
    .line 893
    const/16 v21, 0x0

    .line 894
    .line 895
    const/16 v22, 0x0

    .line 896
    .line 897
    const/16 v23, 0x0

    .line 898
    .line 899
    const/16 v24, 0x0

    .line 900
    .line 901
    const-wide/16 v25, 0x0

    .line 902
    .line 903
    const/16 v27, 0x0

    .line 904
    .line 905
    const/16 v28, 0x0

    .line 906
    .line 907
    const/16 v29, 0x0

    .line 908
    .line 909
    const-wide/16 v30, 0x0

    .line 910
    .line 911
    sget-object v32, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 912
    .line 913
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v4, v15, v12, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_7

    .line 920
    .line 921
    :cond_1e
    instance-of v2, v9, Landroid/text/style/URLSpan;

    .line 922
    .line 923
    if-eqz v2, :cond_a

    .line 924
    .line 925
    check-cast v9, Landroid/text/style/URLSpan;

    .line 926
    .line 927
    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    if-eqz v2, :cond_a

    .line 932
    .line 933
    new-instance v7, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 934
    .line 935
    const/4 v9, 0x0

    .line 936
    invoke-direct {v7, v2, v1, v9}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 937
    .line 938
    .line 939
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 940
    .line 941
    invoke-direct {v2, v7, v12, v10, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    goto :goto_e

    .line 948
    :cond_1f
    move-object v9, v2

    .line 949
    move-object/from16 p1, v3

    .line 950
    .line 951
    move v3, v7

    .line 952
    :goto_e
    add-int/lit8 v8, v8, 0x1

    .line 953
    .line 954
    move v7, v3

    .line 955
    move-object v2, v9

    .line 956
    move-object/from16 v3, p1

    .line 957
    .line 958
    goto/16 :goto_2

    .line 959
    .line 960
    :cond_20
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    return-object v0
.end method

.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 10
    .line 11
    new-instance v4, Landroidx/work/Worker$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/16 v5, 0x10

    .line 14
    .line 15
    invoke-direct {v4, v5}, Landroidx/work/Worker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3, v4}, Landroidx/compose/ui/text/style/TextForegroundStyle;->takeOrElse(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 23
    .line 24
    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 25
    .line 26
    const-wide v26, 0xff00000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long v5, v3, v26

    .line 32
    .line 33
    const-wide/16 v28, 0x0

    .line 34
    .line 35
    cmp-long v5, v5, v28

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    .line 40
    .line 41
    :cond_0
    move-wide v8, v3

    .line 42
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 47
    .line 48
    :cond_1
    move-object v10, v3

    .line 49
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v3, 0x0

    .line 57
    :goto_0
    new-instance v11, Landroidx/compose/ui/text/font/FontStyle;

    .line 58
    .line 59
    invoke-direct {v11, v3}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    iget v3, v3, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const v3, 0xffff

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v12, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 73
    .line 74
    invoke-direct {v12, v3}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 78
    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    sget-object v3, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 82
    .line 83
    :cond_4
    move-object v13, v3

    .line 84
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    const-string v3, ""

    .line 89
    .line 90
    :cond_5
    move-object v14, v3

    .line 91
    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 92
    .line 93
    and-long v5, v3, v26

    .line 94
    .line 95
    cmp-long v5, v5, v28

    .line 96
    .line 97
    if-nez v5, :cond_6

    .line 98
    .line 99
    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    .line 100
    .line 101
    :cond_6
    move-wide v15, v3

    .line 102
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    iget v3, v3, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move v3, v4

    .line 111
    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_8

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    move v4, v3

    .line 119
    :goto_3
    new-instance v3, Landroidx/compose/ui/text/style/BaselineShift;

    .line 120
    .line 121
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 125
    .line 126
    if-nez v4, :cond_9

    .line 127
    .line 128
    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 129
    .line 130
    :cond_9
    move-object/from16 v18, v4

    .line 131
    .line 132
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 133
    .line 134
    if-nez v4, :cond_a

    .line 135
    .line 136
    sget-object v4, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 137
    .line 138
    sget-object v4, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 139
    .line 140
    invoke-interface {v4}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :cond_a
    move-object/from16 v19, v4

    .line 145
    .line 146
    iget-wide v4, v2, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 147
    .line 148
    const-wide/16 v20, 0x10

    .line 149
    .line 150
    cmp-long v6, v4, v20

    .line 151
    .line 152
    if-eqz v6, :cond_b

    .line 153
    .line 154
    :goto_4
    move-wide/from16 v20, v4

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_b
    sget-wide v4, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :goto_5
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 161
    .line 162
    if-nez v4, :cond_c

    .line 163
    .line 164
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 165
    .line 166
    :cond_c
    move-object/from16 v22, v4

    .line 167
    .line 168
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 169
    .line 170
    if-nez v4, :cond_d

    .line 171
    .line 172
    sget-object v4, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 173
    .line 174
    :cond_d
    move-object/from16 v23, v4

    .line 175
    .line 176
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 177
    .line 178
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 179
    .line 180
    if-nez v2, :cond_e

    .line 181
    .line 182
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 183
    .line 184
    :cond_e
    move-object/from16 v25, v2

    .line 185
    .line 186
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 187
    .line 188
    move-object/from16 v17, v3

    .line 189
    .line 190
    move-object/from16 v24, v4

    .line 191
    .line 192
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 193
    .line 194
    .line 195
    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 196
    .line 197
    sget v3, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    .line 198
    .line 199
    new-instance v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 200
    .line 201
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 202
    .line 203
    const/4 v4, 0x5

    .line 204
    if-nez v3, :cond_f

    .line 205
    .line 206
    move v8, v4

    .line 207
    goto :goto_6

    .line 208
    :cond_f
    move v8, v3

    .line 209
    :goto_6
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 210
    .line 211
    const/4 v5, 0x3

    .line 212
    const/4 v9, 0x0

    .line 213
    const/4 v10, 0x1

    .line 214
    const/4 v11, 0x2

    .line 215
    if-ne v3, v5, :cond_12

    .line 216
    .line 217
    sget-object v3, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    aget v3, v3, v5

    .line 224
    .line 225
    if-eq v3, v10, :cond_11

    .line 226
    .line 227
    if-ne v3, v11, :cond_10

    .line 228
    .line 229
    :goto_7
    move v9, v4

    .line 230
    goto :goto_8

    .line 231
    :cond_10
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 232
    .line 233
    .line 234
    return-object v9

    .line 235
    :cond_11
    const/4 v4, 0x4

    .line 236
    goto :goto_7

    .line 237
    :cond_12
    if-nez v3, :cond_15

    .line 238
    .line 239
    sget-object v3, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    aget v3, v3, v4

    .line 246
    .line 247
    if-eq v3, v10, :cond_14

    .line 248
    .line 249
    if-ne v3, v11, :cond_13

    .line 250
    .line 251
    move v9, v11

    .line 252
    goto :goto_8

    .line 253
    :cond_13
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 254
    .line 255
    .line 256
    return-object v9

    .line 257
    :cond_14
    move v9, v10

    .line 258
    goto :goto_8

    .line 259
    :cond_15
    move v9, v3

    .line 260
    :goto_8
    iget-wide v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 261
    .line 262
    and-long v11, v3, v26

    .line 263
    .line 264
    cmp-long v5, v11, v28

    .line 265
    .line 266
    if-nez v5, :cond_16

    .line 267
    .line 268
    sget-wide v3, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    .line 269
    .line 270
    :cond_16
    iget-object v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 271
    .line 272
    if-nez v5, :cond_17

    .line 273
    .line 274
    sget-object v5, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 275
    .line 276
    :cond_17
    move-object v12, v5

    .line 277
    iget-object v13, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 278
    .line 279
    iget-object v14, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 280
    .line 281
    iget v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 282
    .line 283
    if-nez v5, :cond_18

    .line 284
    .line 285
    sget v5, Landroidx/compose/ui/text/style/LineBreak;->Simple:I

    .line 286
    .line 287
    :cond_18
    move v15, v5

    .line 288
    iget v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 289
    .line 290
    if-nez v5, :cond_19

    .line 291
    .line 292
    move/from16 v16, v10

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_19
    move/from16 v16, v5

    .line 296
    .line 297
    :goto_9
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 298
    .line 299
    if-nez v2, :cond_1a

    .line 300
    .line 301
    sget-object v2, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    .line 302
    .line 303
    :cond_1a
    move-object/from16 v17, v2

    .line 304
    .line 305
    move-wide v10, v3

    .line 306
    invoke-direct/range {v7 .. v17}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 310
    .line 311
    invoke-direct {v1, v6, v7, v0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    .line 312
    .line 313
    .line 314
    return-object v1
.end method
