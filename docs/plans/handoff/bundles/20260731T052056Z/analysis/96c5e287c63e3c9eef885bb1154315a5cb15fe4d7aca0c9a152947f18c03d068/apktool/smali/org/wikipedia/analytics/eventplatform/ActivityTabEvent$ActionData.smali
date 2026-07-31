.class public final Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$Companion;


# instance fields
.field public final all:Ljava/lang/String;

.field public final donations:Ljava/lang/String;

.field public final editCount:Ljava/lang/Integer;

.field public final editingInsight:Ljava/lang/String;

.field public final feedbackSelect:Ljava/lang/Integer;

.field public final feedbackText:Ljava/lang/String;

.field public final games:Ljava/lang/String;

.field public final group:Ljava/lang/String;

.field public final impact:Ljava/lang/String;

.field public final readingInsight:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final timeSpent:Ljava/lang/String;

.field public final timeline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->Companion:Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
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
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->group:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->group:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->state:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->state:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->impact:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->impact:Ljava/lang/String;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->games:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->games:Ljava/lang/String;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->donations:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->donations:Ljava/lang/String;

    .line 49
    .line 50
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 51
    .line 52
    if-nez p2, :cond_5

    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeline:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeline:Ljava/lang/String;

    .line 58
    .line 59
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 60
    .line 61
    if-nez p2, :cond_6

    .line 62
    .line 63
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->all:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->all:Ljava/lang/String;

    .line 67
    .line 68
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 69
    .line 70
    if-nez p2, :cond_7

    .line 71
    .line 72
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeSpent:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeSpent:Ljava/lang/String;

    .line 76
    .line 77
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 78
    .line 79
    if-nez p2, :cond_8

    .line 80
    .line 81
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->readingInsight:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->readingInsight:Ljava/lang/String;

    .line 85
    .line 86
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 87
    .line 88
    if-nez p2, :cond_9

    .line 89
    .line 90
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editingInsight:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    iput-object p11, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editingInsight:Ljava/lang/String;

    .line 94
    .line 95
    :goto_9
    and-int/lit16 p2, p1, 0x400

    .line 96
    .line 97
    if-nez p2, :cond_a

    .line 98
    .line 99
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editCount:Ljava/lang/Integer;

    .line 100
    .line 101
    goto :goto_a

    .line 102
    :cond_a
    iput-object p12, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editCount:Ljava/lang/Integer;

    .line 103
    .line 104
    :goto_a
    and-int/lit16 p2, p1, 0x800

    .line 105
    .line 106
    if-nez p2, :cond_b

    .line 107
    .line 108
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_b
    iput-object p13, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 112
    .line 113
    :goto_b
    and-int/lit16 p1, p1, 0x1000

    .line 114
    .line 115
    if-nez p1, :cond_c

    .line 116
    .line 117
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackText:Ljava/lang/String;

    .line 118
    .line 119
    return-void

    .line 120
    :cond_c
    move-object/from16 p1, p14

    .line 121
    .line 122
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackText:Ljava/lang/String;

    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->group:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->state:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->impact:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->games:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->donations:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeline:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->all:Ljava/lang/String;

    .line 133
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeSpent:Ljava/lang/String;

    .line 134
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->readingInsight:Ljava/lang/String;

    .line 135
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editingInsight:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editCount:Ljava/lang/Integer;

    .line 137
    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 138
    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackText:Ljava/lang/String;

    return-void
.end method
