.class public final Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$Companion;


# instance fields
.field public final activeEndDate:Lj$/time/LocalDateTime;

.field public final activeStartDate:Lj$/time/LocalDateTime;

.field public final articles:J

.field public final averageArticlesReadPerYear:I

.field public final bytesAddedEN:J

.field public final dataEndDate:Lj$/time/LocalDateTime;

.field public final dataStartDate:Lj$/time/LocalDateTime;

.field public final edits:J

.field public final editsApps:J

.field public final editsEN:J

.field public final editsPerMinute:I

.field public final hideCountryCodes:Ljava/util/List;

.field public final hideDonateCountryCodes:Ljava/util/List;

.field public final hoursReadEN:J

.field public final languages:I

.field public final savedArticlesApps:J

.field public final topReadEN:Ljava/util/List;

.field public final topReadPercentages:Ljava/util/List;

.field public final viewsApps:J

.field public final year:I

.field public final yearsReadEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xd

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
    new-instance v3, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0xe

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v5, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v6, 0xf

    .line 35
    .line 36
    invoke-direct {v5, v6}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v7, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v8, 0x10

    .line 46
    .line 47
    invoke-direct {v7, v8}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v7, 0x15

    .line 55
    .line 56
    new-array v7, v7, [Lkotlin/Lazy;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    aput-object v10, v7, v9

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    aput-object v10, v7, v9

    .line 64
    .line 65
    const/4 v9, 0x2

    .line 66
    aput-object v10, v7, v9

    .line 67
    .line 68
    const/4 v9, 0x3

    .line 69
    aput-object v10, v7, v9

    .line 70
    .line 71
    const/4 v9, 0x4

    .line 72
    aput-object v10, v7, v9

    .line 73
    .line 74
    const/4 v9, 0x5

    .line 75
    aput-object v10, v7, v9

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    aput-object v10, v7, v9

    .line 79
    .line 80
    const/4 v9, 0x7

    .line 81
    aput-object v10, v7, v9

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    aput-object v10, v7, v9

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    aput-object v10, v7, v9

    .line 90
    .line 91
    const/16 v9, 0xa

    .line 92
    .line 93
    aput-object v10, v7, v9

    .line 94
    .line 95
    const/16 v9, 0xb

    .line 96
    .line 97
    aput-object v10, v7, v9

    .line 98
    .line 99
    const/16 v9, 0xc

    .line 100
    .line 101
    aput-object v10, v7, v9

    .line 102
    .line 103
    aput-object v10, v7, v2

    .line 104
    .line 105
    aput-object v10, v7, v4

    .line 106
    .line 107
    aput-object v10, v7, v6

    .line 108
    .line 109
    aput-object v10, v7, v8

    .line 110
    .line 111
    const/16 v2, 0x11

    .line 112
    .line 113
    aput-object v1, v7, v2

    .line 114
    .line 115
    const/16 v1, 0x12

    .line 116
    .line 117
    aput-object v3, v7, v1

    .line 118
    .line 119
    const/16 v1, 0x13

    .line 120
    .line 121
    aput-object v5, v7, v1

    .line 122
    .line 123
    const/16 v1, 0x14

    .line 124
    .line 125
    aput-object v0, v7, v1

    .line 126
    .line 127
    sput-object v7, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->$childSerializers:[Lkotlin/Lazy;

    .line 128
    .line 129
    return-void
.end method

.method public synthetic constructor <init>(IILj$/time/LocalDateTime;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;IJJJJIIJJJJILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->year:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->year:I

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeStartDate:Lj$/time/LocalDateTime;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeStartDate:Lj$/time/LocalDateTime;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 4
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeEndDate:Lj$/time/LocalDateTime;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeEndDate:Lj$/time/LocalDateTime;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 6
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataStartDate:Lj$/time/LocalDateTime;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataStartDate:Lj$/time/LocalDateTime;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    .line 8
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataEndDate:Lj$/time/LocalDateTime;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataEndDate:Lj$/time/LocalDateTime;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->languages:I

    goto :goto_5

    :cond_5
    iput p7, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->languages:I

    :goto_5
    and-int/lit8 p2, p1, 0x40

    const-wide/16 p3, 0x0

    if-nez p2, :cond_6

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->articles:J

    goto :goto_6

    :cond_6
    iput-wide p8, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->articles:J

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->savedArticlesApps:J

    goto :goto_7

    :cond_7
    iput-wide p10, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->savedArticlesApps:J

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->viewsApps:J

    goto :goto_8

    :cond_8
    iput-wide p12, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->viewsApps:J

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsApps:J

    goto :goto_9

    :cond_9
    move-wide/from16 p5, p14

    iput-wide p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsApps:J

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsPerMinute:I

    goto :goto_a

    :cond_a
    move/from16 p2, p16

    iput p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsPerMinute:I

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->averageArticlesReadPerYear:I

    goto :goto_b

    :cond_b
    move/from16 p2, p17

    iput p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->averageArticlesReadPerYear:I

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->edits:J

    goto :goto_c

    :cond_c
    move-wide/from16 p5, p18

    iput-wide p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->edits:J

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsEN:J

    goto :goto_d

    :cond_d
    move-wide/from16 p5, p20

    iput-wide p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsEN:J

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->bytesAddedEN:J

    goto :goto_e

    :cond_e
    move-wide/from16 p5, p22

    iput-wide p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->bytesAddedEN:J

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-wide p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hoursReadEN:J

    goto :goto_f

    :cond_f
    move-wide/from16 p2, p24

    iput-wide p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hoursReadEN:J

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->yearsReadEN:I

    goto :goto_10

    :cond_10
    move/from16 p2, p26

    iput p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->yearsReadEN:I

    :goto_10
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez p2, :cond_11

    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadEN:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 p2, p27

    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadEN:Ljava/util/List;

    :goto_11
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadPercentages:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 p2, p28

    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadPercentages:Ljava/util/List;

    :goto_12
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideCountryCodes:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 p2, p29

    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideCountryCodes:Ljava/util/List;

    :goto_13
    const/high16 p2, 0x100000

    and-int/2addr p1, p2

    if-nez p1, :cond_14

    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideDonateCountryCodes:Ljava/util/List;

    return-void

    :cond_14
    move-object/from16 p1, p30

    iput-object p1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideDonateCountryCodes:Ljava/util/List;

    return-void
.end method
