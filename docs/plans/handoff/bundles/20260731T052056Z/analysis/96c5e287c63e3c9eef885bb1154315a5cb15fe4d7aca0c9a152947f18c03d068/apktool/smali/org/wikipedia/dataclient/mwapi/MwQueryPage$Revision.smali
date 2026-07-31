.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$Companion;


# instance fields
.field public final comment:Ljava/lang/String;

.field public diffSize:I

.field public final isAnon:Z

.field public final isTemp:Z

.field public final localDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final minor:Z

.field public final oresscores:Lkotlinx/serialization/json/JsonElement;

.field public final parentRevId:J

.field public final parsedcomment:Ljava/lang/String;

.field public final revId:J

.field public final size:I

.field public final slots:Ljava/util/Map;

.field public final timeStamp:Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object v2, v1, v0

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    aput-object v2, v1, v0

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    aput-object v2, v1, v0

    .line 40
    .line 41
    const/4 v0, 0x5

    .line 42
    aput-object v2, v1, v0

    .line 43
    .line 44
    const/4 v0, 0x6

    .line 45
    aput-object v2, v1, v0

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    aput-object v2, v1, v0

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    aput-object v2, v1, v0

    .line 53
    .line 54
    const/16 v0, 0x9

    .line 55
    .line 56
    aput-object v2, v1, v0

    .line 57
    .line 58
    const/16 v0, 0xa

    .line 59
    .line 60
    aput-object v2, v1, v0

    .line 61
    .line 62
    const/16 v0, 0xb

    .line 63
    .line 64
    aput-object v2, v1, v0

    .line 65
    .line 66
    const/16 v0, 0xc

    .line 67
    .line 68
    aput-object v2, v1, v0

    .line 69
    .line 70
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->$childSerializers:[Lkotlin/Lazy;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 156
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;I)V

    .line 157
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 158
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->localDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;ZJJZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;I)V
    .locals 4

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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->minor:Z

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->minor:Z

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    iput-wide v2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iput-wide p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 34
    .line 35
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 36
    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    iput-wide v2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-wide p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 43
    .line 44
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput-boolean p8, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 52
    .line 53
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 54
    .line 55
    if-nez p2, :cond_5

    .line 56
    .line 57
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    iput-boolean p9, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 61
    .line 62
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 63
    .line 64
    const-string p3, ""

    .line 65
    .line 66
    if-nez p2, :cond_6

    .line 67
    .line 68
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_6
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 72
    .line 73
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 74
    .line 75
    if-nez p2, :cond_7

    .line 76
    .line 77
    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 78
    .line 79
    goto :goto_7

    .line 80
    :cond_7
    iput p11, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 81
    .line 82
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 83
    .line 84
    if-nez p2, :cond_8

    .line 85
    .line 86
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_8

    .line 89
    :cond_8
    move-object/from16 p2, p12

    .line 90
    .line 91
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 92
    .line 93
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 94
    .line 95
    if-nez p2, :cond_9

    .line 96
    .line 97
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_9

    .line 100
    :cond_9
    move-object/from16 p2, p13

    .line 101
    .line 102
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 103
    .line 104
    :goto_9
    and-int/lit16 p2, p1, 0x400

    .line 105
    .line 106
    if-nez p2, :cond_a

    .line 107
    .line 108
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_a

    .line 111
    :cond_a
    move-object/from16 p2, p14

    .line 112
    .line 113
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 114
    .line 115
    :goto_a
    and-int/lit16 p2, p1, 0x800

    .line 116
    .line 117
    if-nez p2, :cond_b

    .line 118
    .line 119
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 120
    .line 121
    goto :goto_b

    .line 122
    :cond_b
    move-object/from16 p2, p15

    .line 123
    .line 124
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 125
    .line 126
    :goto_b
    and-int/lit16 p1, p1, 0x1000

    .line 127
    .line 128
    if-nez p1, :cond_c

    .line 129
    .line 130
    iput v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 131
    .line 132
    goto :goto_c

    .line 133
    :cond_c
    move/from16 p1, p16

    .line 134
    .line 135
    iput p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 136
    .line 137
    :goto_c
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$ExternalSyntheticLambda1;

    .line 138
    .line 139
    const/4 p2, 0x0

    .line 140
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;I)V

    .line 141
    .line 142
    .line 143
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 144
    .line 145
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->localDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 149
    .line 150
    return-void
.end method


# virtual methods
.method public final getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;->content:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    :cond_1
    return-object p0
.end method

.method public final getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->oresscores:Lkotlinx/serialization/json/JsonElement;

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
