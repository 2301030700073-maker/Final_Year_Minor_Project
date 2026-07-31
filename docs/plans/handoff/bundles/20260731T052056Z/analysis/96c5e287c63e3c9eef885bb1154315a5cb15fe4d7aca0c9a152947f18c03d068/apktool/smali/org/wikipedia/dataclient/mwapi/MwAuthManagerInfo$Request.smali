.class public final Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request$Companion;


# instance fields
.field public final account:Ljava/lang/String;

.field public final fields:Ljava/util/Map;

.field public final id:Ljava/lang/String;

.field public final metadata:Ljava/util/Map;

.field public final provider:Ljava/lang/String;

.field public final required:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->Companion:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x1a

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
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x1b

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x6

    .line 33
    new-array v2, v2, [Lkotlin/Lazy;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    aput-object v4, v2, v1

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    aput-object v4, v2, v1

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    aput-object v4, v2, v1

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    aput-object v0, v2, v1

    .line 53
    .line 54
    sput-object v2, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->$childSerializers:[Lkotlin/Lazy;

    .line 55
    .line 56
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->id:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->id:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->metadata:Ljava/util/Map;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->metadata:Ljava/util/Map;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->required:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->required:Ljava/lang/String;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->provider:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->provider:Ljava/lang/String;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->account:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->account:Ljava/lang/String;

    .line 49
    .line 50
    :goto_4
    and-int/lit8 p1, p1, 0x20

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields:Ljava/util/Map;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields:Ljava/util/Map;

    .line 58
    .line 59
    return-void
.end method
