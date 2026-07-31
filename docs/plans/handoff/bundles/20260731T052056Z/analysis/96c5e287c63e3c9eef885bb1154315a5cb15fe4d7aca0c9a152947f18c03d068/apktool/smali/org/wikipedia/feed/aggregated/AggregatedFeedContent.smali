.class public final Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/aggregated/AggregatedFeedContent$Companion;


# instance fields
.field public final dyk:Ljava/util/List;

.field public final news:Ljava/util/List;

.field public final onthisday:Ljava/util/List;

.field public final potd:Lorg/wikipedia/feed/image/FeaturedImage;

.field public final tfa:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final topRead:Lorg/wikipedia/feed/topread/TopRead;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->Companion:Lorg/wikipedia/feed/aggregated/AggregatedFeedContent$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x18

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x19

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v4, 0x1a

    .line 35
    .line 36
    invoke-direct {v3, v4}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v3, 0x6

    .line 44
    new-array v3, v3, [Lkotlin/Lazy;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v5, v3, v4

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    aput-object v1, v3, v4

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    aput-object v5, v3, v1

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    aput-object v5, v3, v1

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    aput-object v2, v3, v1

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    aput-object v0, v3, v1

    .line 64
    .line 65
    sput-object v3, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->$childSerializers:[Lkotlin/Lazy;

    .line 66
    .line 67
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/dataclient/page/PageSummary;Ljava/util/List;Lorg/wikipedia/feed/topread/TopRead;Lorg/wikipedia/feed/image/FeaturedImage;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->news:Ljava/util/List;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->news:Ljava/util/List;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->topRead:Lorg/wikipedia/feed/topread/TopRead;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->topRead:Lorg/wikipedia/feed/topread/TopRead;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday:Ljava/util/List;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday:Ljava/util/List;

    .line 49
    .line 50
    :goto_4
    and-int/lit8 p1, p1, 0x20

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->dyk:Ljava/util/List;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->dyk:Ljava/util/List;

    .line 58
    .line 59
    return-void
.end method
