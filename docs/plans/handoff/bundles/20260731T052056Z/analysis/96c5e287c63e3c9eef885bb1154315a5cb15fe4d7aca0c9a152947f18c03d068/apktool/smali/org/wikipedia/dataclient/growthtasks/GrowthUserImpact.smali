.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;


# instance fields
.field public final dailyTotalViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final editCountByDay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final editsLastMonth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final editsThisMonth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final givenThanksCount:I

.field public final groupEditsByMonth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final lastEditRelativeTime$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final lastEditTimestamp:J

.field public final lastThirtyDaysEdits$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final longestEditingStreak$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final mDailyTotalViews:Lkotlinx/serialization/json/JsonElement;

.field public final mEditCountByDay:Lkotlinx/serialization/json/JsonElement;

.field public final mEditCountByNamespace:Lkotlinx/serialization/json/JsonElement;

.field public final mEditCountByTaskType:Lkotlinx/serialization/json/JsonElement;

.field public final mLongestEditingStreak:Lkotlinx/serialization/json/JsonElement;

.field public final mTopViewedArticles:Lkotlinx/serialization/json/JsonElement;

.field public final newcomerTaskEditCount:I

.field public final receivedThanksCount:I

.field public final revertedEditCount:I

.field public final topViewedArticles$delegate:Lkotlin/SynchronizedLazyImpl;

.field public topViewedArticlesWithPageTitle:Ljava/util/Map;

.field public final totalArticlesCreatedCount:I

.field public final totalEditsCount:I

.field public final totalPageviewsCount:J

.field public final totalUserEditCount:I

.field public final userId:I

.field public final userName:Ljava/lang/String;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x16

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x13

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    aput-object v3, v1, v2

    .line 53
    .line 54
    const/16 v2, 0x9

    .line 55
    .line 56
    aput-object v3, v1, v2

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    aput-object v3, v1, v2

    .line 61
    .line 62
    const/16 v2, 0xb

    .line 63
    .line 64
    aput-object v3, v1, v2

    .line 65
    .line 66
    const/16 v2, 0xc

    .line 67
    .line 68
    aput-object v3, v1, v2

    .line 69
    .line 70
    const/16 v2, 0xd

    .line 71
    .line 72
    aput-object v3, v1, v2

    .line 73
    .line 74
    const/16 v2, 0xe

    .line 75
    .line 76
    aput-object v3, v1, v2

    .line 77
    .line 78
    const/16 v2, 0xf

    .line 79
    .line 80
    aput-object v3, v1, v2

    .line 81
    .line 82
    const/16 v2, 0x10

    .line 83
    .line 84
    aput-object v3, v1, v2

    .line 85
    .line 86
    const/16 v2, 0x11

    .line 87
    .line 88
    aput-object v3, v1, v2

    .line 89
    .line 90
    const/16 v2, 0x12

    .line 91
    .line 92
    aput-object v0, v1, v2

    .line 93
    .line 94
    sput-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->$childSerializers:[Lkotlin/Lazy;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IILkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;IIIIJILkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;JLkotlinx/serialization/json/JsonElement;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->version:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->version:I

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userId:I

    goto :goto_1

    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userId:I

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 2
    const-string p2, ""

    .line 3
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userName:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->receivedThanksCount:I

    goto :goto_3

    :cond_3
    iput p5, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->receivedThanksCount:I

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->givenThanksCount:I

    goto :goto_4

    :cond_4
    iput p6, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->givenThanksCount:I

    :goto_4
    and-int/lit8 p2, p1, 0x20

    const/4 p3, 0x0

    if-nez p2, :cond_5

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByNamespace:Lkotlinx/serialization/json/JsonElement;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByNamespace:Lkotlinx/serialization/json/JsonElement;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByDay:Lkotlinx/serialization/json/JsonElement;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByDay:Lkotlinx/serialization/json/JsonElement;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByTaskType:Lkotlinx/serialization/json/JsonElement;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByTaskType:Lkotlinx/serialization/json/JsonElement;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalUserEditCount:I

    goto :goto_8

    :cond_8
    iput p10, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalUserEditCount:I

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalEditsCount:I

    goto :goto_9

    :cond_9
    iput p11, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalEditsCount:I

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->newcomerTaskEditCount:I

    goto :goto_a

    :cond_a
    iput p12, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->newcomerTaskEditCount:I

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->revertedEditCount:I

    goto :goto_b

    :cond_b
    iput p13, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->revertedEditCount:I

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    const-wide/16 p4, 0x0

    if-nez p2, :cond_c

    iput-wide p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastEditTimestamp:J

    goto :goto_c

    :cond_c
    move-wide/from16 p6, p14

    iput-wide p6, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastEditTimestamp:J

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalArticlesCreatedCount:I

    goto :goto_d

    :cond_d
    move/from16 p2, p16

    iput p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalArticlesCreatedCount:I

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mLongestEditingStreak:Lkotlinx/serialization/json/JsonElement;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p17

    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mLongestEditingStreak:Lkotlinx/serialization/json/JsonElement;

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mDailyTotalViews:Lkotlinx/serialization/json/JsonElement;

    goto :goto_f

    :cond_f
    move-object/from16 p2, p18

    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mDailyTotalViews:Lkotlinx/serialization/json/JsonElement;

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    :goto_10
    iput-wide p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalPageviewsCount:J

    goto :goto_11

    :cond_10
    move-wide/from16 p4, p19

    goto :goto_10

    :goto_11
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mTopViewedArticles:Lkotlinx/serialization/json/JsonElement;

    goto :goto_12

    :cond_11
    move-object/from16 p2, p21

    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mTopViewedArticles:Lkotlinx/serialization/json/JsonElement;

    .line 4
    :goto_12
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 5
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 7
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 8
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->editCountByDay$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 9
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p3, 0x5

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 10
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 12
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->dailyTotalViews$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 15
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticles$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 17
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/16 p3, 0x8

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 18
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 19
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->longestEditingStreak$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 20
    new-instance p2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/16 p3, 0x9

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 21
    new-instance p3, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p3, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 22
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->groupEditsByMonth$delegate:Lkotlin/SynchronizedLazyImpl;

    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_12

    .line 23
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 24
    :goto_13
    iput-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticlesWithPageTitle:Ljava/util/Map;

    goto :goto_14

    :cond_12
    move-object/from16 p1, p22

    goto :goto_13

    .line 25
    :goto_14
    new-instance p1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 26
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 27
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->editsThisMonth$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 28
    new-instance p1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 29
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 30
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->editsLastMonth$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 31
    new-instance p1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 32
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastThirtyDaysEdits$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 34
    new-instance p1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V

    .line 35
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastEditRelativeTime$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method
