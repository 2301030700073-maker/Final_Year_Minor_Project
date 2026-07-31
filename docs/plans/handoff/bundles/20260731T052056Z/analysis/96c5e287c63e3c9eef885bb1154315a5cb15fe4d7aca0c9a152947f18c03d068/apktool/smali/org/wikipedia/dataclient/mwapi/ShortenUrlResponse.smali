.class public final Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$Companion;


# instance fields
.field public final shortenUrl:Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$ShortenUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;->Companion:Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object v2, v1, v0

    .line 32
    .line 33
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 34
    .line 35
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$ShortenUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;->shortenUrl:Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$ShortenUrl;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;->shortenUrl:Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse$ShortenUrl;

    .line 13
    .line 14
    return-void
.end method
