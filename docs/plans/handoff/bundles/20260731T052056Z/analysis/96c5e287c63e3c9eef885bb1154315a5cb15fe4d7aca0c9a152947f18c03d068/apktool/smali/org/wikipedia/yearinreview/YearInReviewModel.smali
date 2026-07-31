.class public final Lorg/wikipedia/yearinreview/YearInReviewModel;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/yearinreview/YearInReviewModel$Companion;


# instance fields
.field public final favoriteDayToRead:I

.field public final favoriteMonthDidMostReading:I

.field public final favoriteTimeToRead:I

.field public final isCustomIconUnlocked:Z

.field public final isReadingListCreated:Z

.field public final isReadingListDialogShown:Z

.field public final largestClusterArticles:Ljava/util/List;

.field public final largestClusterBottomRight:Lkotlin/Pair;

.field public final largestClusterCountryName:Ljava/lang/String;

.field public final largestClusterLocation:Lkotlin/Pair;

.field public final largestClusterTopLeft:Lkotlin/Pair;

.field public final localReadingArticlesCount:I

.field public final localSavedArticles:Ljava/util/List;

.field public final localSavedArticlesCount:I

.field public final localTopCategories:Ljava/util/List;

.field public final localTopVisitedArticles:Ljava/util/List;

.field public final slideViewedCount:I

.field public final totalReadingTimeMinutes:J

.field public final userEditsCount:I

.field public final userEditsViewedTimes:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewModel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->Companion:Lorg/wikipedia/yearinreview/YearInReviewModel$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x17

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x18

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v4, 0x19

    .line 35
    .line 36
    invoke-direct {v3, v4}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v4, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v5, 0x1a

    .line 46
    .line 47
    invoke-direct {v4, v5}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v4}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/16 v6, 0x1b

    .line 57
    .line 58
    invoke-direct {v5, v6}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v6, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v7, 0x1c

    .line 68
    .line 69
    invoke-direct {v6, v7}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v6}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v7, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/16 v8, 0x1d

    .line 79
    .line 80
    invoke-direct {v7, v8}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/16 v7, 0x14

    .line 88
    .line 89
    new-array v7, v7, [Lkotlin/Lazy;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    aput-object v9, v7, v8

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    aput-object v9, v7, v8

    .line 97
    .line 98
    const/4 v8, 0x2

    .line 99
    aput-object v9, v7, v8

    .line 100
    .line 101
    const/4 v8, 0x3

    .line 102
    aput-object v1, v7, v8

    .line 103
    .line 104
    const/4 v1, 0x4

    .line 105
    aput-object v2, v7, v1

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    aput-object v3, v7, v1

    .line 109
    .line 110
    const/4 v1, 0x6

    .line 111
    aput-object v9, v7, v1

    .line 112
    .line 113
    const/4 v1, 0x7

    .line 114
    aput-object v9, v7, v1

    .line 115
    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    aput-object v9, v7, v1

    .line 119
    .line 120
    const/16 v1, 0x9

    .line 121
    .line 122
    aput-object v4, v7, v1

    .line 123
    .line 124
    const/16 v1, 0xa

    .line 125
    .line 126
    aput-object v5, v7, v1

    .line 127
    .line 128
    const/16 v1, 0xb

    .line 129
    .line 130
    aput-object v6, v7, v1

    .line 131
    .line 132
    const/16 v1, 0xc

    .line 133
    .line 134
    aput-object v9, v7, v1

    .line 135
    .line 136
    const/16 v1, 0xd

    .line 137
    .line 138
    aput-object v0, v7, v1

    .line 139
    .line 140
    const/16 v0, 0xe

    .line 141
    .line 142
    aput-object v9, v7, v0

    .line 143
    .line 144
    const/16 v0, 0xf

    .line 145
    .line 146
    aput-object v9, v7, v0

    .line 147
    .line 148
    const/16 v0, 0x10

    .line 149
    .line 150
    aput-object v9, v7, v0

    .line 151
    .line 152
    const/16 v0, 0x11

    .line 153
    .line 154
    aput-object v9, v7, v0

    .line 155
    .line 156
    const/16 v0, 0x12

    .line 157
    .line 158
    aput-object v9, v7, v0

    .line 159
    .line 160
    const/16 v0, 0x13

    .line 161
    .line 162
    aput-object v9, v7, v0

    .line 163
    .line 164
    sput-object v7, Lorg/wikipedia/yearinreview/YearInReviewModel;->$childSerializers:[Lkotlin/Lazy;

    .line 165
    .line 166
    return-void
.end method

.method public synthetic constructor <init>(IJIILjava/util/List;Ljava/util/List;Ljava/util/List;IIILkotlin/Pair;Lkotlin/Pair;Lkotlin/Pair;Ljava/lang/String;Ljava/util/List;IJZIZZ)V
    .locals 2

    .line 1
    const v0, 0x1ffff

    .line 2
    .line 3
    .line 4
    and-int v1, p1, v0

    .line 5
    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-wide p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 14
    .line 15
    iput p5, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 16
    .line 17
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 18
    .line 19
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 20
    .line 21
    iput-object p8, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 22
    .line 23
    iput p9, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 24
    .line 25
    iput p10, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 26
    .line 27
    iput p11, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 28
    .line 29
    iput-object p12, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 30
    .line 31
    iput-object p13, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 32
    .line 33
    move-object/from16 p2, p14

    .line 34
    .line 35
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 36
    .line 37
    move-object/from16 p2, p15

    .line 38
    .line 39
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 p2, p16

    .line 42
    .line 43
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 44
    .line 45
    move/from16 p2, p17

    .line 46
    .line 47
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 48
    .line 49
    move-wide/from16 p2, p18

    .line 50
    .line 51
    iput-wide p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 52
    .line 53
    move/from16 p2, p20

    .line 54
    .line 55
    iput-boolean p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 56
    .line 57
    const/high16 p2, 0x20000

    .line 58
    .line 59
    and-int/2addr p2, p1

    .line 60
    const/4 p3, 0x0

    .line 61
    if-nez p2, :cond_0

    .line 62
    .line 63
    iput p3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move/from16 p2, p21

    .line 67
    .line 68
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 69
    .line 70
    :goto_0
    const/high16 p2, 0x40000

    .line 71
    .line 72
    and-int/2addr p2, p1

    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    iput-boolean p3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move/from16 p2, p22

    .line 79
    .line 80
    iput-boolean p2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 81
    .line 82
    :goto_1
    const/high16 p2, 0x80000

    .line 83
    .line 84
    and-int/2addr p1, p2

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    iput-boolean p3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    move/from16 p1, p23

    .line 91
    .line 92
    iput-boolean p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    sget-object p0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->INSTANCE:Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;

    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    throw p0
.end method

.method public constructor <init>(JIILjava/util/List;Ljava/util/List;Ljava/util/List;IIILkotlin/Pair;Lkotlin/Pair;Lkotlin/Pair;Ljava/lang/String;Ljava/util/List;IJZIZZ)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 108
    iput p3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 109
    iput p4, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 110
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 111
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 112
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 113
    iput p8, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 114
    iput p9, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 115
    iput p10, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 116
    iput-object p11, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 117
    iput-object p12, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 118
    iput-object p13, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 119
    iput-object p14, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 120
    iput-object p15, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    move/from16 p1, p16

    .line 121
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    move-wide/from16 p1, p17

    .line 122
    iput-wide p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    move/from16 p1, p19

    .line 123
    iput-boolean p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    move/from16 p1, p20

    .line 124
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    move/from16 p1, p21

    .line 125
    iput-boolean p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    move/from16 p1, p22

    .line 126
    iput-boolean p1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/yearinreview/YearInReviewModel;IZI)Lorg/wikipedia/yearinreview/YearInReviewModel;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 4
    .line 5
    iget v3, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 6
    .line 7
    iget v4, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 8
    .line 9
    iget-object v5, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 10
    .line 11
    iget-object v6, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 12
    .line 13
    iget-object v7, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 14
    .line 15
    iget v8, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 16
    .line 17
    iget v9, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 18
    .line 19
    iget v10, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 20
    .line 21
    iget-object v11, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 22
    .line 23
    iget-object v12, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 24
    .line 25
    iget-object v13, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 26
    .line 27
    iget-object v14, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v15, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 30
    .line 31
    move-wide/from16 v16, v1

    .line 32
    .line 33
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 34
    .line 35
    move/from16 v18, v1

    .line 36
    .line 37
    iget-wide v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 38
    .line 39
    move-wide/from16 v19, v1

    .line 40
    .line 41
    iget-boolean v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 42
    .line 43
    const/high16 v2, 0x20000

    .line 44
    .line 45
    and-int v2, p3, v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget v2, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 50
    .line 51
    :goto_0
    move/from16 v21, v1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move/from16 v2, p1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    iget-boolean v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 58
    .line 59
    const/high16 v22, 0x80000

    .line 60
    .line 61
    and-int v22, p3, v22

    .line 62
    .line 63
    if-eqz v22, :cond_1

    .line 64
    .line 65
    iget-boolean v0, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 66
    .line 67
    move/from16 v22, v0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    move/from16 v22, p2

    .line 71
    .line 72
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 97
    .line 98
    move/from16 v23, v21

    .line 99
    .line 100
    move/from16 v21, v1

    .line 101
    .line 102
    move-wide/from16 v24, v19

    .line 103
    .line 104
    move/from16 v20, v2

    .line 105
    .line 106
    move-wide/from16 v1, v16

    .line 107
    .line 108
    move/from16 v16, v18

    .line 109
    .line 110
    move-wide/from16 v17, v24

    .line 111
    .line 112
    move/from16 v19, v23

    .line 113
    .line 114
    invoke-direct/range {v0 .. v22}, Lorg/wikipedia/yearinreview/YearInReviewModel;-><init>(JIILjava/util/List;Ljava/util/List;Ljava/util/List;IIILkotlin/Pair;Lkotlin/Pair;Lkotlin/Pair;Ljava/lang/String;Ljava/util/List;IJZIZZ)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;

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
    check-cast p1, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 23
    .line 24
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 30
    .line 31
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 37
    .line 38
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 59
    .line 60
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 70
    .line 71
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 72
    .line 73
    if-eq v1, v3, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 77
    .line 78
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 79
    .line 80
    if-eq v1, v3, :cond_9

    .line 81
    .line 82
    return v2

    .line 83
    :cond_9
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 84
    .line 85
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 86
    .line 87
    if-eq v1, v3, :cond_a

    .line 88
    .line 89
    return v2

    .line 90
    :cond_a
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_b

    .line 99
    .line 100
    return v2

    .line 101
    :cond_b
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_c

    .line 110
    .line 111
    return v2

    .line 112
    :cond_c
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 113
    .line 114
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_d

    .line 121
    .line 122
    return v2

    .line 123
    :cond_d
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_e

    .line 132
    .line 133
    return v2

    .line 134
    :cond_e
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 135
    .line 136
    iget-object v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_f

    .line 143
    .line 144
    return v2

    .line 145
    :cond_f
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 146
    .line 147
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 148
    .line 149
    if-eq v1, v3, :cond_10

    .line 150
    .line 151
    return v2

    .line 152
    :cond_10
    iget-wide v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 153
    .line 154
    iget-wide v5, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 155
    .line 156
    cmp-long v1, v3, v5

    .line 157
    .line 158
    if-eqz v1, :cond_11

    .line 159
    .line 160
    return v2

    .line 161
    :cond_11
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 162
    .line 163
    iget-boolean v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 164
    .line 165
    if-eq v1, v3, :cond_12

    .line 166
    .line 167
    return v2

    .line 168
    :cond_12
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 169
    .line 170
    iget v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 171
    .line 172
    if-eq v1, v3, :cond_13

    .line 173
    .line 174
    return v2

    .line 175
    :cond_13
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 176
    .line 177
    iget-boolean v3, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 178
    .line 179
    if-eq v1, v3, :cond_14

    .line 180
    .line 181
    return v2

    .line 182
    :cond_14
    iget-boolean p0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 183
    .line 184
    iget-boolean p1, p1, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 185
    .line 186
    if-eq p0, p1, :cond_15

    .line 187
    .line 188
    return v2

    .line 189
    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 13
    .line 14
    add-int/2addr v0, v3

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 17
    .line 18
    add-int/2addr v0, v3

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 39
    .line 40
    add-int/2addr v0, v3

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 43
    .line 44
    add-int/2addr v0, v3

    .line 45
    mul-int/2addr v0, v1

    .line 46
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 47
    .line 48
    add-int/2addr v0, v3

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 51
    .line 52
    invoke-virtual {v3}, Lkotlin/Pair;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    mul-int/2addr v3, v1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 59
    .line 60
    invoke-virtual {v0}, Lkotlin/Pair;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v3

    .line 65
    mul-int/2addr v0, v1

    .line 66
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 67
    .line 68
    invoke-virtual {v3}, Lkotlin/Pair;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/2addr v3, v0

    .line 73
    mul-int/2addr v3, v1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v3, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 87
    .line 88
    add-int/2addr v0, v3

    .line 89
    mul-int/2addr v0, v1

    .line 90
    iget-wide v3, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 91
    .line 92
    ushr-long v5, v3, v2

    .line 93
    .line 94
    xor-long/2addr v3, v5

    .line 95
    long-to-int v2, v3

    .line 96
    add-int/2addr v0, v2

    .line 97
    mul-int/2addr v0, v1

    .line 98
    iget-boolean v2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 99
    .line 100
    const/16 v3, 0x4d5

    .line 101
    .line 102
    const/16 v4, 0x4cf

    .line 103
    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    move v2, v4

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move v2, v3

    .line 109
    :goto_0
    add-int/2addr v0, v2

    .line 110
    mul-int/2addr v0, v1

    .line 111
    iget v2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 112
    .line 113
    add-int/2addr v0, v2

    .line 114
    mul-int/2addr v0, v1

    .line 115
    iget-boolean v2, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 116
    .line 117
    if-eqz v2, :cond_1

    .line 118
    .line 119
    move v2, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    move v2, v3

    .line 122
    :goto_1
    add-int/2addr v0, v2

    .line 123
    mul-int/2addr v0, v1

    .line 124
    iget-boolean p0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 125
    .line 126
    if-eqz p0, :cond_2

    .line 127
    .line 128
    move v3, v4

    .line 129
    :cond_2
    add-int/2addr v0, v3

    .line 130
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "YearInReviewModel(totalReadingTimeMinutes="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", localReadingArticlesCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", localSavedArticlesCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", localSavedArticles="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", localTopVisitedArticles="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", localTopCategories="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", favoriteTimeToRead="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", favoriteDayToRead="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", favoriteMonthDidMostReading="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", largestClusterLocation="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", largestClusterTopLeft="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", largestClusterBottomRight="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", largestClusterCountryName="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", largestClusterArticles="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", userEditsCount="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", userEditsViewedTimes="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", isCustomIconUnlocked="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", slideViewedCount="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", isReadingListDialogShown="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", isReadingListCreated="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-boolean p0, p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string p0, ")"

    .line 204
    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0
.end method
