.class public final Lcom/fsck/k9/message/html/EmailSection;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final length:I

.field public final quoteDepth:I

.field public final segments:Ljava/util/List;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/message/html/EmailSection$Builder;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 5
    .line 6
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection;->quoteDepth:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/message/html/EmailSection;->text:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 15
    .line 16
    iget-object v1, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/fsck/k9/message/html/EmailSection;->text:Ljava/lang/String;

    .line 56
    .line 57
    iget v6, v4, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    sub-int/2addr v6, v7

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ne v5, v3, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v7, v2

    .line 69
    :goto_1
    iget v5, v4, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 70
    .line 71
    iget v6, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 72
    .line 73
    add-int/2addr v5, v6

    .line 74
    iget v4, v4, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 75
    .line 76
    sub-int v6, v4, v7

    .line 77
    .line 78
    if-le v5, v6, :cond_2

    .line 79
    .line 80
    move v5, v6

    .line 81
    :cond_2
    new-instance v6, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 82
    .line 83
    invoke-direct {v6, v5, v4}, Lcom/fsck/k9/message/html/EmailSection$Segment;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object p1, v0

    .line 91
    :goto_2
    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection;->segments:Ljava/util/List;

    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 117
    .line 118
    iget v3, v1, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 119
    .line 120
    iget v1, v1, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 121
    .line 122
    sub-int/2addr v3, v1

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v2, v0

    .line 152
    goto :goto_4

    .line 153
    :cond_5
    iput v2, p0, Lcom/fsck/k9/message/html/EmailSection;->length:I

    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection;->length:I

    .line 3
    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    if-gt p1, v2, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection;->segments:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    :goto_0
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 23
    .line 24
    iget v4, v3, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 25
    .line 26
    iget v3, v3, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 27
    .line 28
    sub-int/2addr v4, v3

    .line 29
    if-ge p1, v4, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection;->text:Ljava/lang/String;

    .line 32
    .line 33
    add-int/2addr v3, p1

    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_0
    sub-int/2addr p1, v4

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    const-string p0, "index: "

    .line 50
    .line 51
    const-string v2, "; length: "

    .line 52
    .line 53
    invoke-static {p1, v1, p0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return v0
.end method

.method public final findSegmentIndexAndOffset(IZ)Lkotlin/Pair;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection;->segments:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    add-int/lit8 v2, v0, 0x1

    .line 19
    .line 20
    if-ltz v0, :cond_2

    .line 21
    .line 22
    check-cast v1, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 23
    .line 24
    iget v3, v1, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 25
    .line 26
    iget v1, v1, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 27
    .line 28
    sub-int/2addr v3, v1

    .line 29
    if-lt p1, v3, :cond_1

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    if-ne p1, v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sub-int/2addr p1, v3

    .line 37
    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    new-instance p0, Lkotlin/Pair;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    throw p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 59
    .line 60
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final length()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection;->length:I

    .line 2
    .line 3
    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "; length: "

    .line 3
    .line 4
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection;->length:I

    .line 5
    .line 6
    if-ltz p1, :cond_8

    .line 7
    .line 8
    add-int/lit8 v3, v2, -0x1

    .line 9
    .line 10
    if-gt p1, v3, :cond_8

    .line 11
    .line 12
    if-ltz p2, :cond_7

    .line 13
    .line 14
    if-gt p2, v2, :cond_7

    .line 15
    .line 16
    if-gt p1, p2, :cond_6

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    if-ne p2, v2, :cond_1

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection;->text:Ljava/lang/String;

    .line 31
    .line 32
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection;->quoteDepth:I

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/message/html/EmailSection;->findSegmentIndexAndOffset(IZ)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v3, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-virtual {p0, p2, v4}, Lcom/fsck/k9/message/html/EmailSection;->findSegmentIndexAndOffset(IZ)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object v5, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object p2, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p2, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection;->segments:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 90
    .line 91
    if-ne v3, v5, :cond_2

    .line 92
    .line 93
    iget p0, v6, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 94
    .line 95
    add-int/2addr p1, p0

    .line 96
    add-int/2addr p0, p2

    .line 97
    invoke-virtual {v0, v2, p1, p0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->build()Lcom/fsck/k9/message/html/EmailSection;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_2
    if-nez p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iput v2, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 111
    .line 112
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    iget v7, v6, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 117
    .line 118
    add-int/2addr v7, p1

    .line 119
    iget p1, v6, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 120
    .line 121
    invoke-virtual {v0, v2, v7, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 122
    .line 123
    .line 124
    :goto_0
    add-int/2addr v3, v4

    .line 125
    :goto_1
    if-ge v3, v5, :cond_4

    .line 126
    .line 127
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iput v2, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 149
    .line 150
    iget p1, p0, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 151
    .line 152
    add-int/2addr p2, p1

    .line 153
    iget v3, p0, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 154
    .line 155
    if-ne p2, v3, :cond_5

    .line 156
    .line 157
    iput v2, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 158
    .line 159
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v0, v2, p1, p2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->build()Lcom/fsck/k9/message/html/EmailSection;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_6
    const-string p0, "startIndex > endIndex"

    .line 172
    .line 173
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_7
    const-string p0, "endIndex: "

    .line 178
    .line 179
    invoke-static {p2, v2, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_8
    const-string p0, "startIndex: "

    .line 188
    .line 189
    invoke-static {p1, v2, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection;->segments:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 23
    .line 24
    iget v3, v2, Lcom/fsck/k9/message/html/EmailSection$Segment;->startIndex:I

    .line 25
    .line 26
    iget v2, v2, Lcom/fsck/k9/message/html/EmailSection$Segment;->endIndex:I

    .line 27
    .line 28
    iget-object v4, p0, Lcom/fsck/k9/message/html/EmailSection;->text:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v4, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
