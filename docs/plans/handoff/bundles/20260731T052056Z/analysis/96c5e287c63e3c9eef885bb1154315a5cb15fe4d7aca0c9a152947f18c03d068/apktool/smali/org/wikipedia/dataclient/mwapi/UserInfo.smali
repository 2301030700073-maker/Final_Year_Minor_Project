.class public final Lorg/wikipedia/dataclient/mwapi/UserInfo;
.super Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/UserInfo$Companion;


# instance fields
.field public final anon:Z

.field public final canCreate:Z

.field public final canCreateError:Ljava/util/List;

.field public final editCount:I

.field public final groups:Ljava/util/List;

.field public final id:I

.field public final latestContrib:Ljava/lang/String;

.field public final messages:Z

.field public final name:Ljava/lang/String;

.field public final options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

.field public final regDate:Ljava/lang/String;

.field public final registration:Ljava/lang/String;

.field public final rights:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->Companion:Lorg/wikipedia/dataclient/mwapi/UserInfo$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0xe

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v5, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v6, 0xf

    .line 35
    .line 36
    invoke-direct {v5, v6}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v5, 0x13

    .line 44
    .line 45
    new-array v5, v5, [Lkotlin/Lazy;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    aput-object v8, v5, v7

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    aput-object v8, v5, v7

    .line 53
    .line 54
    const/4 v7, 0x2

    .line 55
    aput-object v8, v5, v7

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    aput-object v8, v5, v7

    .line 59
    .line 60
    const/4 v7, 0x4

    .line 61
    aput-object v8, v5, v7

    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    aput-object v8, v5, v7

    .line 65
    .line 66
    const/4 v7, 0x6

    .line 67
    aput-object v8, v5, v7

    .line 68
    .line 69
    const/4 v7, 0x7

    .line 70
    aput-object v1, v5, v7

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    aput-object v8, v5, v1

    .line 75
    .line 76
    const/16 v1, 0x9

    .line 77
    .line 78
    aput-object v8, v5, v1

    .line 79
    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    aput-object v8, v5, v1

    .line 83
    .line 84
    const/16 v1, 0xb

    .line 85
    .line 86
    aput-object v8, v5, v1

    .line 87
    .line 88
    const/16 v1, 0xc

    .line 89
    .line 90
    aput-object v8, v5, v1

    .line 91
    .line 92
    aput-object v8, v5, v2

    .line 93
    .line 94
    aput-object v8, v5, v4

    .line 95
    .line 96
    aput-object v3, v5, v6

    .line 97
    .line 98
    const/16 v1, 0x10

    .line 99
    .line 100
    aput-object v8, v5, v1

    .line 101
    .line 102
    const/16 v1, 0x11

    .line 103
    .line 104
    aput-object v0, v5, v1

    .line 105
    .line 106
    const/16 v0, 0x12

    .line 107
    .line 108
    aput-object v8, v5, v0

    .line 109
    .line 110
    sput-object v5, Lorg/wikipedia/dataclient/mwapi/UserInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 111
    .line 112
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/util/List;ZLjava/util/List;Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p2, p1, 0x40

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    goto :goto_0

    :cond_0
    iput p8, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    :goto_0
    and-int/lit16 p2, p1, 0x80

    const/4 p4, 0x0

    if-nez p2, :cond_1

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p9, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    :goto_1
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_2

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->latestContrib:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->latestContrib:Ljava/lang/String;

    :goto_2
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_3

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->regDate:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p11, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->regDate:Ljava/lang/String;

    :goto_3
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_4

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->registration:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p12, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->registration:Ljava/lang/String;

    :goto_4
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_5

    const/4 p2, -0x1

    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    goto :goto_5

    :cond_5
    iput p13, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    :goto_5
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_6

    .line 2
    const-string p2, ""

    .line 3
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p14, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_7

    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->anon:Z

    goto :goto_7

    :cond_7
    iput-boolean p15, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->anon:Z

    :goto_7
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_8

    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->messages:Z

    goto :goto_8

    :cond_8
    move/from16 p2, p16

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->messages:Z

    :goto_8
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_9

    .line 4
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 5
    :goto_9
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->rights:Ljava/util/List;

    goto :goto_a

    :cond_9
    move-object/from16 p2, p17

    goto :goto_9

    :goto_a
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreate:Z

    goto :goto_b

    :cond_a
    move/from16 p2, p18

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreate:Z

    :goto_b
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_b

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreateError:Ljava/util/List;

    goto :goto_c

    :cond_b
    move-object/from16 p2, p19

    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreateError:Ljava/util/List;

    :goto_c
    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_c

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    return-void

    :cond_c
    move-object/from16 p1, p20

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    return-void
.end method


# virtual methods
.method public final getRegistrationDate()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->regDate:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->registration:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    :goto_1
    return-object v0
.end method
