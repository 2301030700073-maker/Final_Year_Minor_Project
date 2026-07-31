.class public final enum Landroidx/glance/appwidget/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum BOOLEAN:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum BYTE_STRING:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum DOUBLE:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum ENUM:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum FLOAT:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum INT:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum LONG:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum MESSAGE:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum STRING:Landroidx/glance/appwidget/protobuf/JavaType;

.field public static final enum VOID:Landroidx/glance/appwidget/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 2
    .line 3
    const-class v3, Ljava/lang/Void;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v1, "VOID"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move-object v4, v3

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/glance/appwidget/protobuf/JavaType;->VOID:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 14
    .line 15
    new-instance v1, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v2, "INT"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    const-class v5, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-direct/range {v1 .. v6}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Landroidx/glance/appwidget/protobuf/JavaType;->INT:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 33
    .line 34
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    const-string v9, "LONG"

    .line 43
    .line 44
    const/4 v10, 0x2

    .line 45
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    const-class v12, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 50
    .line 51
    .line 52
    move-object v2, v8

    .line 53
    sput-object v2, Landroidx/glance/appwidget/protobuf/JavaType;->LONG:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 54
    .line 55
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const-string v9, "FLOAT"

    .line 63
    .line 64
    const/4 v10, 0x3

    .line 65
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    const-class v12, Ljava/lang/Float;

    .line 68
    .line 69
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 70
    .line 71
    .line 72
    move-object v3, v8

    .line 73
    sput-object v3, Landroidx/glance/appwidget/protobuf/JavaType;->FLOAT:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 74
    .line 75
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 76
    .line 77
    const-wide/16 v9, 0x0

    .line 78
    .line 79
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    const-string v9, "DOUBLE"

    .line 84
    .line 85
    const/4 v10, 0x4

    .line 86
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    const-class v12, Ljava/lang/Double;

    .line 89
    .line 90
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 91
    .line 92
    .line 93
    move-object v6, v8

    .line 94
    sput-object v6, Landroidx/glance/appwidget/protobuf/JavaType;->DOUBLE:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 95
    .line 96
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 97
    .line 98
    const-class v12, Ljava/lang/Boolean;

    .line 99
    .line 100
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    const-string v9, "BOOLEAN"

    .line 103
    .line 104
    const/4 v10, 0x5

    .line 105
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 106
    .line 107
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 108
    .line 109
    .line 110
    move-object v14, v8

    .line 111
    sput-object v14, Landroidx/glance/appwidget/protobuf/JavaType;->BOOLEAN:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 112
    .line 113
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 114
    .line 115
    const-class v11, Ljava/lang/String;

    .line 116
    .line 117
    const-string v13, ""

    .line 118
    .line 119
    const-string v9, "STRING"

    .line 120
    .line 121
    const/4 v10, 0x6

    .line 122
    move-object v12, v11

    .line 123
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 124
    .line 125
    .line 126
    move-object v15, v8

    .line 127
    sput-object v15, Landroidx/glance/appwidget/protobuf/JavaType;->STRING:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 128
    .line 129
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 130
    .line 131
    const-class v11, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 132
    .line 133
    sget-object v13, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 134
    .line 135
    const-string v9, "BYTE_STRING"

    .line 136
    .line 137
    const/4 v10, 0x7

    .line 138
    move-object v12, v11

    .line 139
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 140
    .line 141
    .line 142
    move-object/from16 v16, v8

    .line 143
    .line 144
    sput-object v16, Landroidx/glance/appwidget/protobuf/JavaType;->BYTE_STRING:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 145
    .line 146
    new-instance v8, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 147
    .line 148
    const/16 v10, 0x8

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    const-string v9, "ENUM"

    .line 152
    .line 153
    move-object v11, v4

    .line 154
    move-object v12, v5

    .line 155
    invoke-direct/range {v8 .. v13}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 156
    .line 157
    .line 158
    sput-object v8, Landroidx/glance/appwidget/protobuf/JavaType;->ENUM:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 159
    .line 160
    new-instance v17, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 161
    .line 162
    const-class v20, Ljava/lang/Object;

    .line 163
    .line 164
    const/16 v22, 0x0

    .line 165
    .line 166
    const-string v18, "MESSAGE"

    .line 167
    .line 168
    const/16 v19, 0x9

    .line 169
    .line 170
    move-object/from16 v21, v20

    .line 171
    .line 172
    invoke-direct/range {v17 .. v22}, Landroidx/glance/appwidget/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 173
    .line 174
    .line 175
    sput-object v17, Landroidx/glance/appwidget/protobuf/JavaType;->MESSAGE:Landroidx/glance/appwidget/protobuf/JavaType;

    .line 176
    .line 177
    const/16 v4, 0xa

    .line 178
    .line 179
    new-array v4, v4, [Landroidx/glance/appwidget/protobuf/JavaType;

    .line 180
    .line 181
    aput-object v0, v4, v7

    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    aput-object v1, v4, v0

    .line 185
    .line 186
    const/4 v0, 0x2

    .line 187
    aput-object v2, v4, v0

    .line 188
    .line 189
    const/4 v0, 0x3

    .line 190
    aput-object v3, v4, v0

    .line 191
    .line 192
    const/4 v0, 0x4

    .line 193
    aput-object v6, v4, v0

    .line 194
    .line 195
    const/4 v0, 0x5

    .line 196
    aput-object v14, v4, v0

    .line 197
    .line 198
    const/4 v0, 0x6

    .line 199
    aput-object v15, v4, v0

    .line 200
    .line 201
    const/4 v0, 0x7

    .line 202
    aput-object v16, v4, v0

    .line 203
    .line 204
    const/16 v0, 0x8

    .line 205
    .line 206
    aput-object v8, v4, v0

    .line 207
    .line 208
    const/16 v0, 0x9

    .line 209
    .line 210
    aput-object v17, v4, v0

    .line 211
    .line 212
    sput-object v4, Landroidx/glance/appwidget/protobuf/JavaType;->$VALUES:[Landroidx/glance/appwidget/protobuf/JavaType;

    .line 213
    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/glance/appwidget/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/glance/appwidget/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/glance/appwidget/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/protobuf/JavaType;
    .locals 1

    .line 1
    const-class v0, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/glance/appwidget/protobuf/JavaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/protobuf/JavaType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/protobuf/JavaType;->$VALUES:[Landroidx/glance/appwidget/protobuf/JavaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/glance/appwidget/protobuf/JavaType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/glance/appwidget/protobuf/JavaType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBoxedType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method
