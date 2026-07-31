.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$Companion;


# instance fields
.field public final anon:Z

.field public final bot:Z

.field public final curRev:J

.field public final isNew:Z

.field public final joinedTags$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final minor:Z

.field public final newlen:I

.field public final ns:I

.field public final oldlen:I

.field public final oresscores:Lkotlinx/serialization/json/JsonElement;

.field public final pageid:I

.field public final parsedComment:Ljava/lang/String;

.field public final parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final parsedInstant$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final rcid:J

.field public final revFrom:J

.field public final tags:Ljava/util/List;

.field public final timestamp:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x2

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
    const/16 v1, 0x12

    .line 21
    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v4, v1, v3

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    aput-object v4, v1, v3

    .line 30
    .line 31
    aput-object v4, v1, v2

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    aput-object v4, v1, v2

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    aput-object v4, v1, v2

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    aput-object v4, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x6

    .line 43
    aput-object v4, v1, v2

    .line 44
    .line 45
    const/4 v2, 0x7

    .line 46
    aput-object v4, v1, v2

    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    aput-object v4, v1, v2

    .line 51
    .line 52
    const/16 v2, 0x9

    .line 53
    .line 54
    aput-object v4, v1, v2

    .line 55
    .line 56
    const/16 v2, 0xa

    .line 57
    .line 58
    aput-object v4, v1, v2

    .line 59
    .line 60
    const/16 v2, 0xb

    .line 61
    .line 62
    aput-object v4, v1, v2

    .line 63
    .line 64
    const/16 v2, 0xc

    .line 65
    .line 66
    aput-object v4, v1, v2

    .line 67
    .line 68
    const/16 v2, 0xd

    .line 69
    .line 70
    aput-object v4, v1, v2

    .line 71
    .line 72
    const/16 v2, 0xe

    .line 73
    .line 74
    aput-object v4, v1, v2

    .line 75
    .line 76
    const/16 v2, 0xf

    .line 77
    .line 78
    aput-object v4, v1, v2

    .line 79
    .line 80
    const/16 v2, 0x10

    .line 81
    .line 82
    aput-object v0, v1, v2

    .line 83
    .line 84
    const/16 v0, 0x11

    .line 85
    .line 86
    aput-object v4, v1, v0

    .line 87
    .line 88
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->$childSerializers:[Lkotlin/Lazy;

    .line 89
    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;IJJJLjava/lang/String;ZZZZIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->type:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->ns:I

    goto :goto_1

    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->ns:I

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->pageid:I

    goto :goto_3

    :cond_3
    iput p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->pageid:I

    :goto_3
    and-int/lit8 p2, p1, 0x10

    const-wide/16 p3, 0x0

    if-nez p2, :cond_4

    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    goto :goto_4

    :cond_4
    iput-wide p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->revFrom:J

    goto :goto_5

    :cond_5
    iput-wide p8, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->revFrom:J

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->rcid:J

    goto :goto_6

    :cond_6
    iput-wide p10, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->rcid:J

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p12, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    goto :goto_8

    :cond_8
    iput-boolean p13, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->bot:Z

    goto :goto_9

    :cond_9
    move/from16 p2, p14

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->bot:Z

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->isNew:Z

    goto :goto_a

    :cond_a
    move/from16 p2, p15

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->isNew:Z

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->minor:Z

    goto :goto_b

    :cond_b
    move/from16 p2, p16

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->minor:Z

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oldlen:I

    goto :goto_c

    :cond_c
    move/from16 p2, p17

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oldlen:I

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->newlen:I

    goto :goto_d

    :cond_d
    move/from16 p2, p18

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->newlen:I

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->timestamp:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p19

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->timestamp:Ljava/lang/String;

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedComment:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p2, p20

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedComment:Ljava/lang/String;

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-nez p2, :cond_10

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->tags:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 p2, p21

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->tags:Ljava/util/List;

    :goto_10
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-nez p1, :cond_11

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oresscores:Lkotlinx/serialization/json/JsonElement;

    goto :goto_11

    :cond_11
    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 2
    :goto_11
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;I)V

    .line 3
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedInstant$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 5
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;I)V

    .line 6
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 7
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 8
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;I)V

    .line 9
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->joinedTags$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lkotlinx/serialization/json/JsonArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final getParsedDateTime()Lj$/time/LocalDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lj$/time/LocalDateTime;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getParsedInstant()Lj$/time/Instant;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedInstant$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lj$/time/Instant;

    .line 11
    .line 12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
