.class public final Lorg/wikipedia/dataclient/mwapi/UserContribution;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/UserContribution$Companion;


# instance fields
.field public final comment:Ljava/lang/String;

.field public final minor:Z

.field public final new:Z

.field public final ns:I

.field public final pageid:I

.field public final parentid:J

.field public final parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final revid:J

.field public final size:I

.field public final sizediff:I

.field public final tags:Ljava/util/List;

.field public final timestamp:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final top:Z

.field public final user:Ljava/lang/String;

.field public final userid:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/UserContribution$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->Companion:Lorg/wikipedia/dataclient/mwapi/UserContribution$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xc

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
    move-result-object v0

    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v4, v1, v3

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    aput-object v4, v1, v3

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    aput-object v4, v1, v3

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    aput-object v4, v1, v3

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    aput-object v4, v1, v3

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    aput-object v4, v1, v3

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    aput-object v4, v1, v3

    .line 46
    .line 47
    const/4 v3, 0x7

    .line 48
    aput-object v4, v1, v3

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    aput-object v4, v1, v3

    .line 53
    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    aput-object v4, v1, v3

    .line 57
    .line 58
    const/16 v3, 0xa

    .line 59
    .line 60
    aput-object v4, v1, v3

    .line 61
    .line 62
    const/16 v3, 0xb

    .line 63
    .line 64
    aput-object v4, v1, v3

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
    aput-object v0, v1, v2

    .line 75
    .line 76
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/UserContribution;->$childSerializers:[Lkotlin/Lazy;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIILjava/util/List;)V
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
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->userid:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->userid:I

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->user:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->user:Ljava/lang/String;

    .line 24
    .line 25
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput p4, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    const-wide/16 p3, 0x0

    .line 37
    .line 38
    if-nez p2, :cond_3

    .line 39
    .line 40
    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    iput-wide p5, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 44
    .line 45
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 46
    .line 47
    if-nez p2, :cond_4

    .line 48
    .line 49
    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parentid:J

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    iput-wide p7, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parentid:J

    .line 53
    .line 54
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 55
    .line 56
    if-nez p2, :cond_5

    .line 57
    .line 58
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_5
    iput p9, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 62
    .line 63
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 64
    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_6

    .line 70
    :cond_6
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 71
    .line 72
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 73
    .line 74
    if-nez p2, :cond_7

    .line 75
    .line 76
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_7

    .line 79
    :cond_7
    iput-object p11, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    .line 80
    .line 81
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 82
    .line 83
    if-nez p2, :cond_8

    .line 84
    .line 85
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_8

    .line 88
    :cond_8
    iput-object p12, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 89
    .line 90
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 91
    .line 92
    if-nez p2, :cond_9

    .line 93
    .line 94
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->new:Z

    .line 95
    .line 96
    goto :goto_9

    .line 97
    :cond_9
    iput-boolean p13, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->new:Z

    .line 98
    .line 99
    :goto_9
    and-int/lit16 p2, p1, 0x400

    .line 100
    .line 101
    if-nez p2, :cond_a

    .line 102
    .line 103
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->minor:Z

    .line 104
    .line 105
    goto :goto_a

    .line 106
    :cond_a
    move/from16 p2, p14

    .line 107
    .line 108
    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->minor:Z

    .line 109
    .line 110
    :goto_a
    and-int/lit16 p2, p1, 0x800

    .line 111
    .line 112
    if-nez p2, :cond_b

    .line 113
    .line 114
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->top:Z

    .line 115
    .line 116
    goto :goto_b

    .line 117
    :cond_b
    move/from16 p2, p15

    .line 118
    .line 119
    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->top:Z

    .line 120
    .line 121
    :goto_b
    and-int/lit16 p2, p1, 0x1000

    .line 122
    .line 123
    if-nez p2, :cond_c

    .line 124
    .line 125
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->size:I

    .line 126
    .line 127
    goto :goto_c

    .line 128
    :cond_c
    move/from16 p2, p16

    .line 129
    .line 130
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->size:I

    .line 131
    .line 132
    :goto_c
    and-int/lit16 p2, p1, 0x2000

    .line 133
    .line 134
    if-nez p2, :cond_d

    .line 135
    .line 136
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->sizediff:I

    .line 137
    .line 138
    goto :goto_d

    .line 139
    :cond_d
    move/from16 p2, p17

    .line 140
    .line 141
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->sizediff:I

    .line 142
    .line 143
    :goto_d
    and-int/lit16 p1, p1, 0x4000

    .line 144
    .line 145
    if-nez p1, :cond_e

    .line 146
    .line 147
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 148
    .line 149
    :goto_e
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->tags:Ljava/util/List;

    .line 150
    .line 151
    goto :goto_f

    .line 152
    :cond_e
    move-object/from16 p1, p18

    .line 153
    .line 154
    goto :goto_e

    .line 155
    :goto_f
    new-instance p1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/4 p2, 0x3

    .line 158
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 162
    .line 163
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 164
    .line 165
    .line 166
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 167
    .line 168
    return-void
.end method
