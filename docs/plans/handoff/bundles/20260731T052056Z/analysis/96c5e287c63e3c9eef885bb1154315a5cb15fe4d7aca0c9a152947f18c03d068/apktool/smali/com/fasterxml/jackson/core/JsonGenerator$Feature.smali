.class public final enum Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AUTO_CLOSE_TARGET"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 11
    .line 12
    new-instance v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 13
    .line 14
    const-string v4, "AUTO_CLOSE_JSON_CONTENT"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 20
    .line 21
    new-instance v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "FLUSH_PASSED_TO_STREAM"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 30
    .line 31
    new-instance v6, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "QUOTE_FIELD_NAMES"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 40
    .line 41
    new-instance v8, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "QUOTE_NON_NUMERIC_NUMBERS"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 50
    .line 51
    new-instance v10, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "ESCAPE_NON_ASCII"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 60
    .line 61
    new-instance v12, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "WRITE_NUMBERS_AS_STRINGS"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 70
    .line 71
    new-instance v14, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v3

    .line 75
    .line 76
    const-string v3, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 77
    .line 78
    invoke-direct {v14, v15, v3, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 82
    .line 83
    new-instance v3, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 84
    .line 85
    move/from16 v17, v5

    .line 86
    .line 87
    const/16 v5, 0x8

    .line 88
    .line 89
    move/from16 v18, v7

    .line 90
    .line 91
    const-string v7, "STRICT_DUPLICATE_DETECTION"

    .line 92
    .line 93
    invoke-direct {v3, v5, v7, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v3, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 97
    .line 98
    new-instance v7, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 99
    .line 100
    move/from16 v19, v5

    .line 101
    .line 102
    const/16 v5, 0x9

    .line 103
    .line 104
    move/from16 v20, v9

    .line 105
    .line 106
    const-string v9, "IGNORE_UNKNOWN"

    .line 107
    .line 108
    invoke-direct {v7, v5, v9, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v7, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 112
    .line 113
    const/16 v9, 0xa

    .line 114
    .line 115
    new-array v9, v9, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 116
    .line 117
    aput-object v0, v9, v1

    .line 118
    .line 119
    aput-object v2, v9, v16

    .line 120
    .line 121
    aput-object v4, v9, v17

    .line 122
    .line 123
    aput-object v6, v9, v18

    .line 124
    .line 125
    aput-object v8, v9, v20

    .line 126
    .line 127
    aput-object v10, v9, v11

    .line 128
    .line 129
    aput-object v12, v9, v13

    .line 130
    .line 131
    aput-object v14, v9, v15

    .line 132
    .line 133
    aput-object v3, v9, v19

    .line 134
    .line 135
    aput-object v7, v9, v5

    .line 136
    .line 137
    sput-object v9, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    shl-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 13
    .line 14
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    iget-boolean v5, v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    iget v4, v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 17
    .line 18
    or-int/2addr v3, v4

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final enabledIn(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final getMask()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 2
    .line 3
    return p0
.end method
