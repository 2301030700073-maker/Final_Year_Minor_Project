.class public final Lorg/wikipedia/analytics/SessionData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/SessionData$Companion;


# instance fields
.field public lastTouchTime:J

.field public final pageLatency:Lorg/wikipedia/util/MathUtil$Averaged;

.field public pagesFromBack:I

.field public pagesFromExternal:I

.field public pagesFromHistory:I

.field public pagesFromInternal:I

.field public pagesFromLangLink:I

.field public pagesFromRandom:I

.field public pagesFromReadingList:I

.field public pagesFromSearch:I

.field public pagesFromSuggestedEdits:I

.field public pagesWithNoDescription:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/SessionData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/SessionData;->Companion:Lorg/wikipedia/analytics/SessionData$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lorg/wikipedia/util/MathUtil$Averaged;

    .line 119
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v0, p0, Lorg/wikipedia/analytics/SessionData;->pageLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 123
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/util/MathUtil$Averaged;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/analytics/SessionData;->pageLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 16
    .line 17
    and-int/lit8 v0, p1, 0x4

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p2, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 26
    .line 27
    :goto_0
    and-int/lit8 p2, p1, 0x8

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iput p3, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 35
    .line 36
    :goto_1
    and-int/lit8 p2, p1, 0x10

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iput p4, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 44
    .line 45
    :goto_2
    and-int/lit8 p2, p1, 0x20

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    iput p5, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 53
    .line 54
    :goto_3
    and-int/lit8 p2, p1, 0x40

    .line 55
    .line 56
    if-nez p2, :cond_4

    .line 57
    .line 58
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    iput p6, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 62
    .line 63
    :goto_4
    and-int/lit16 p2, p1, 0x80

    .line 64
    .line 65
    if-nez p2, :cond_5

    .line 66
    .line 67
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_5
    iput p7, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 71
    .line 72
    :goto_5
    and-int/lit16 p2, p1, 0x100

    .line 73
    .line 74
    if-nez p2, :cond_6

    .line 75
    .line 76
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_6
    iput p8, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 80
    .line 81
    :goto_6
    and-int/lit16 p2, p1, 0x200

    .line 82
    .line 83
    if-nez p2, :cond_7

    .line 84
    .line 85
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_7
    iput p9, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 89
    .line 90
    :goto_7
    and-int/lit16 p2, p1, 0x400

    .line 91
    .line 92
    if-nez p2, :cond_8

    .line 93
    .line 94
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_8
    iput p10, p0, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 98
    .line 99
    :goto_8
    and-int/lit16 p1, p1, 0x800

    .line 100
    .line 101
    if-nez p1, :cond_9

    .line 102
    .line 103
    iput v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 104
    .line 105
    goto :goto_9

    .line 106
    :cond_9
    iput p11, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 107
    .line 108
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    iput-wide p1, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 113
    .line 114
    iput-wide p1, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final getTotalPages()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iget p0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 22
    .line 23
    add-int/2addr v0, p0

    .line 24
    return v0
.end method
