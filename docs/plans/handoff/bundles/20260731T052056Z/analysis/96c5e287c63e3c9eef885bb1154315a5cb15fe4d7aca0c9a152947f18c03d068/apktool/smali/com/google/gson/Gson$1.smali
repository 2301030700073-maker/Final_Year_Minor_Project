.class public final Lcom/google/gson/Gson$1;
.super Lcom/google/gson/TypeAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/gson/Gson$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static readTerminal(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters$35;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "Unexpected token: "

    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 63
    .line 64
    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method

.method public static tryBeginNesting(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters$35;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lcom/google/gson/JsonObject;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/google/gson/JsonArray;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public static write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
    .locals 2

    if-eqz p1, :cond_8

    .line 531
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    return-void

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    return-void

    .line 538
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    return-void

    .line 539
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 540
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    .line 541
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 542
    invoke-static {p0, v0}, Lcom/google/gson/Gson$1;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 543
    :cond_4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    return-void

    .line 544
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 545
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    .line 546
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 547
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lcom/google/gson/Gson$1;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 549
    :cond_6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void

    .line 550
    :cond_7
    const-string p0, "Couldn\'t write "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 551
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget p0, p0, Lcom/google/gson/Gson$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "null"

    .line 4
    .line 5
    const-string v1, "Lossy conversion from "

    .line 6
    .line 7
    const-string v2, "Failed parsing \'"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-object v5

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 49
    .line 50
    if-ne p0, v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 57
    .line 58
    .line 59
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    const v0, 0xffff

    .line 61
    .line 62
    .line 63
    if-gt p0, v0, :cond_2

    .line 64
    .line 65
    const/16 v0, -0x8000

    .line 66
    .line 67
    if-lt p0, v0, :cond_2

    .line 68
    .line 69
    int-to-short p0, p0

    .line 70
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    :goto_1
    return-object v5

    .line 75
    :cond_2
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 76
    .line 77
    const-string v2, " to short; at path "

    .line 78
    .line 79
    invoke-static {p0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 111
    .line 112
    if-ne p0, v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 119
    .line 120
    .line 121
    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    const/16 v0, 0xff

    .line 123
    .line 124
    if-gt p0, v0, :cond_4

    .line 125
    .line 126
    const/16 v0, -0x80

    .line 127
    .line 128
    if-lt p0, v0, :cond_4

    .line 129
    .line 130
    int-to-byte p0, p0

    .line 131
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_2
    return-object v5

    .line 136
    :cond_4
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 137
    .line 138
    const-string v2, " to byte; at path "

    .line 139
    .line 140
    invoke-static {p0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :catch_2
    move-exception v0

    .line 160
    move-object p0, v0

    .line 161
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 172
    .line 173
    if-ne p0, v0, :cond_5

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    :goto_3
    return-object v5

    .line 188
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 193
    .line 194
    if-ne p0, v0, :cond_6

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 201
    .line 202
    if-ne p0, v0, :cond_7

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    goto :goto_4

    .line 217
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :goto_4
    return-object v5

    .line 226
    :pswitch_4
    new-instance p0, Ljava/util/BitSet;

    .line 227
    .line 228
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    move v1, v4

    .line 239
    :goto_5
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 240
    .line 241
    if-eq v0, v2, :cond_d

    .line 242
    .line 243
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters$35;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    aget v2, v2, v5

    .line 250
    .line 251
    if-eq v2, v3, :cond_9

    .line 252
    .line 253
    const/4 v5, 0x2

    .line 254
    if-eq v2, v5, :cond_9

    .line 255
    .line 256
    const/4 v5, 0x3

    .line 257
    if-ne v2, v5, :cond_8

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    goto :goto_6

    .line 264
    :cond_8
    new-instance p0, Lcom/google/gson/JsonIOException;

    .line 265
    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v2, "Invalid bitset value type: "

    .line 269
    .line 270
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const-string v0, "; at path "

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p0

    .line 296
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_a

    .line 301
    .line 302
    move v0, v4

    .line 303
    goto :goto_6

    .line 304
    :cond_a
    if-ne v0, v3, :cond_c

    .line 305
    .line 306
    move v0, v3

    .line 307
    :goto_6
    if-eqz v0, :cond_b

    .line 308
    .line 309
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 310
    .line 311
    .line 312
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    goto :goto_5

    .line 319
    :cond_c
    new-instance p0, Lcom/google/gson/JsonIOException;

    .line 320
    .line 321
    const-string v1, "Invalid bitset value "

    .line 322
    .line 323
    const-string v2, ", expected 0 or 1; at path "

    .line 324
    .line 325
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw p0

    .line 344
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 345
    .line 346
    .line 347
    return-object p0

    .line 348
    :pswitch_5
    instance-of p0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 349
    .line 350
    if-eqz p0, :cond_f

    .line 351
    .line 352
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 359
    .line 360
    if-eq p0, v0, :cond_e

    .line 361
    .line 362
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 363
    .line 364
    if-eq p0, v0, :cond_e

    .line 365
    .line 366
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 367
    .line 368
    if-eq p0, v0, :cond_e

    .line 369
    .line 370
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 371
    .line 372
    if-eq p0, v0, :cond_e

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    move-object v5, p0

    .line 379
    check-cast v5, Lcom/google/gson/JsonElement;

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->skipValue()V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_c

    .line 385
    .line 386
    :cond_e
    const-string p1, "Unexpected "

    .line 387
    .line 388
    const-string v0, " when reading a JsonElement."

    .line 389
    .line 390
    invoke-static {p0, v0, p1}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_c

    .line 394
    .line 395
    :cond_f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-static {p1, p0}, Lcom/google/gson/Gson$1;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    if-nez v0, :cond_10

    .line 404
    .line 405
    invoke-static {p1, p0}, Lcom/google/gson/Gson$1;->readTerminal(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    goto :goto_c

    .line 410
    :cond_10
    new-instance p0, Ljava/util/ArrayDeque;

    .line 411
    .line 412
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 413
    .line 414
    .line 415
    :cond_11
    :goto_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eqz v1, :cond_16

    .line 420
    .line 421
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    .line 422
    .line 423
    if-eqz v1, :cond_12

    .line 424
    .line 425
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    goto :goto_8

    .line 430
    :cond_12
    move-object v1, v5

    .line 431
    :goto_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-static {p1, v2}, Lcom/google/gson/Gson$1;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    if-eqz v6, :cond_13

    .line 440
    .line 441
    move v7, v3

    .line 442
    goto :goto_9

    .line 443
    :cond_13
    move v7, v4

    .line 444
    :goto_9
    if-nez v6, :cond_14

    .line 445
    .line 446
    invoke-static {p1, v2}, Lcom/google/gson/Gson$1;->readTerminal(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/JsonElement;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    :cond_14
    instance-of v2, v0, Lcom/google/gson/JsonArray;

    .line 451
    .line 452
    if-eqz v2, :cond_15

    .line 453
    .line 454
    move-object v1, v0

    .line 455
    check-cast v1, Lcom/google/gson/JsonArray;

    .line 456
    .line 457
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 458
    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_15
    move-object v2, v0

    .line 462
    check-cast v2, Lcom/google/gson/JsonObject;

    .line 463
    .line 464
    invoke-virtual {v2, v1, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 465
    .line 466
    .line 467
    :goto_a
    if-eqz v7, :cond_11

    .line 468
    .line 469
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    move-object v0, v6

    .line 473
    goto :goto_7

    .line 474
    :cond_16
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    .line 475
    .line 476
    if-eqz v1, :cond_17

    .line 477
    .line 478
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 479
    .line 480
    .line 481
    goto :goto_b

    .line 482
    :cond_17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 483
    .line 484
    .line 485
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_18

    .line 490
    .line 491
    move-object v5, v0

    .line 492
    :goto_c
    return-object v5

    .line 493
    :cond_18
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 498
    .line 499
    goto :goto_7

    .line 500
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 505
    .line 506
    if-ne p0, v0, :cond_19

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 509
    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_19
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    new-instance p1, Ljava/util/StringTokenizer;

    .line 517
    .line 518
    const-string v0, "_"

    .line 519
    .line 520
    invoke-direct {p1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 524
    .line 525
    .line 526
    move-result p0

    .line 527
    if-eqz p0, :cond_1a

    .line 528
    .line 529
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    goto :goto_d

    .line 534
    :cond_1a
    move-object p0, v5

    .line 535
    :goto_d
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_1b

    .line 540
    .line 541
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    goto :goto_e

    .line 546
    :cond_1b
    move-object v0, v5

    .line 547
    :goto_e
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_1c

    .line 552
    .line 553
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    :cond_1c
    if-nez v0, :cond_1d

    .line 558
    .line 559
    if-nez v5, :cond_1d

    .line 560
    .line 561
    new-instance v5, Ljava/util/Locale;

    .line 562
    .line 563
    invoke-direct {v5, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    goto :goto_f

    .line 567
    :cond_1d
    if-nez v5, :cond_1e

    .line 568
    .line 569
    new-instance v5, Ljava/util/Locale;

    .line 570
    .line 571
    invoke-direct {v5, p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_1e
    new-instance p1, Ljava/util/Locale;

    .line 576
    .line 577
    invoke-direct {p1, p0, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    move-object v5, p1

    .line 581
    :goto_f
    return-object v5

    .line 582
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 587
    .line 588
    if-ne p0, v0, :cond_1f

    .line 589
    .line 590
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_11

    .line 594
    .line 595
    :cond_1f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 596
    .line 597
    .line 598
    move v7, v4

    .line 599
    move v8, v7

    .line 600
    move v9, v8

    .line 601
    move v10, v9

    .line 602
    move v11, v10

    .line 603
    move v12, v11

    .line 604
    :cond_20
    :goto_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 609
    .line 610
    if-eq p0, v0, :cond_26

    .line 611
    .line 612
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object p0

    .line 616
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    const-string/jumbo v1, "year"

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_21

    .line 628
    .line 629
    move v7, v0

    .line 630
    goto :goto_10

    .line 631
    :cond_21
    const-string v1, "month"

    .line 632
    .line 633
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_22

    .line 638
    .line 639
    move v8, v0

    .line 640
    goto :goto_10

    .line 641
    :cond_22
    const-string v1, "dayOfMonth"

    .line 642
    .line 643
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-eqz v1, :cond_23

    .line 648
    .line 649
    move v9, v0

    .line 650
    goto :goto_10

    .line 651
    :cond_23
    const-string v1, "hourOfDay"

    .line 652
    .line 653
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-eqz v1, :cond_24

    .line 658
    .line 659
    move v10, v0

    .line 660
    goto :goto_10

    .line 661
    :cond_24
    const-string v1, "minute"

    .line 662
    .line 663
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_25

    .line 668
    .line 669
    move v11, v0

    .line 670
    goto :goto_10

    .line 671
    :cond_25
    const-string v1, "second"

    .line 672
    .line 673
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result p0

    .line 677
    if-eqz p0, :cond_20

    .line 678
    .line 679
    move v12, v0

    .line 680
    goto :goto_10

    .line 681
    :cond_26
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 682
    .line 683
    .line 684
    new-instance v6, Ljava/util/GregorianCalendar;

    .line 685
    .line 686
    invoke-direct/range {v6 .. v12}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 687
    .line 688
    .line 689
    move-object v5, v6

    .line 690
    :goto_11
    return-object v5

    .line 691
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object p0

    .line 695
    :try_start_3
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 696
    .line 697
    .line 698
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 699
    goto :goto_12

    .line 700
    :catch_3
    move-exception v0

    .line 701
    const-string v1, "\' as Currency; at path "

    .line 702
    .line 703
    invoke-static {v2, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    invoke-static {p0, p1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 712
    .line 713
    .line 714
    :goto_12
    return-object v5

    .line 715
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 720
    .line 721
    if-ne p0, v0, :cond_27

    .line 722
    .line 723
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 724
    .line 725
    .line 726
    goto :goto_13

    .line 727
    :cond_27
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object p0

    .line 731
    :try_start_4
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 732
    .line 733
    .line 734
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 735
    goto :goto_13

    .line 736
    :catch_4
    move-exception v0

    .line 737
    const-string v1, "\' as UUID; at path "

    .line 738
    .line 739
    invoke-static {v2, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    invoke-static {p0, p1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 748
    .line 749
    .line 750
    :goto_13
    return-object v5

    .line 751
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 752
    .line 753
    .line 754
    move-result-object p0

    .line 755
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 756
    .line 757
    if-ne p0, v0, :cond_28

    .line 758
    .line 759
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 760
    .line 761
    .line 762
    goto :goto_14

    .line 763
    :cond_28
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object p0

    .line 767
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    :goto_14
    return-object v5

    .line 772
    :pswitch_b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 773
    .line 774
    .line 775
    move-result-object p0

    .line 776
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 777
    .line 778
    if-ne p0, v1, :cond_29

    .line 779
    .line 780
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 781
    .line 782
    .line 783
    goto :goto_15

    .line 784
    :cond_29
    :try_start_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object p0

    .line 788
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result p1

    .line 792
    if-eqz p1, :cond_2a

    .line 793
    .line 794
    goto :goto_15

    .line 795
    :cond_2a
    new-instance v5, Ljava/net/URI;

    .line 796
    .line 797
    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_5

    .line 798
    .line 799
    .line 800
    :goto_15
    return-object v5

    .line 801
    :catch_5
    move-exception v0

    .line 802
    move-object p0, v0

    .line 803
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 804
    .line 805
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 806
    .line 807
    .line 808
    throw p1

    .line 809
    :pswitch_c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 810
    .line 811
    .line 812
    move-result-object p0

    .line 813
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 814
    .line 815
    if-ne p0, v1, :cond_2b

    .line 816
    .line 817
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 818
    .line 819
    .line 820
    goto :goto_16

    .line 821
    :cond_2b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object p0

    .line 825
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result p1

    .line 829
    if-eqz p1, :cond_2c

    .line 830
    .line 831
    goto :goto_16

    .line 832
    :cond_2c
    new-instance v5, Ljava/net/URL;

    .line 833
    .line 834
    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    :goto_16
    return-object v5

    .line 838
    :pswitch_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 839
    .line 840
    .line 841
    move-result-object p0

    .line 842
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 843
    .line 844
    if-ne p0, v0, :cond_2d

    .line 845
    .line 846
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 847
    .line 848
    .line 849
    goto :goto_17

    .line 850
    :cond_2d
    new-instance v5, Ljava/lang/StringBuffer;

    .line 851
    .line 852
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object p0

    .line 856
    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    :goto_17
    return-object v5

    .line 860
    :pswitch_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 861
    .line 862
    const-string p1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    .line 863
    .line 864
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    throw p0

    .line 868
    :pswitch_f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 869
    .line 870
    .line 871
    move-result-object p0

    .line 872
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 873
    .line 874
    if-ne p0, v0, :cond_2e

    .line 875
    .line 876
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 877
    .line 878
    .line 879
    goto :goto_18

    .line 880
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object p0

    .line 886
    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    :goto_18
    return-object v5

    .line 890
    :pswitch_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 891
    .line 892
    .line 893
    move-result-object p0

    .line 894
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 895
    .line 896
    if-ne p0, v0, :cond_2f

    .line 897
    .line 898
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 899
    .line 900
    .line 901
    goto :goto_19

    .line 902
    :cond_2f
    new-instance v5, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 903
    .line 904
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object p0

    .line 908
    invoke-direct {v5, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    :goto_19
    return-object v5

    .line 912
    :pswitch_11
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 913
    .line 914
    .line 915
    move-result-object p0

    .line 916
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 917
    .line 918
    if-ne p0, v0, :cond_30

    .line 919
    .line 920
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 921
    .line 922
    .line 923
    goto :goto_1a

    .line 924
    :cond_30
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object p0

    .line 928
    :try_start_6
    new-instance v0, Ljava/math/BigInteger;

    .line 929
    .line 930
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 931
    .line 932
    .line 933
    move-object v5, v0

    .line 934
    goto :goto_1a

    .line 935
    :catch_6
    move-exception v0

    .line 936
    const-string v1, "\' as BigInteger; at path "

    .line 937
    .line 938
    invoke-static {v2, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    move-result-object p0

    .line 942
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object p1

    .line 946
    invoke-static {p0, p1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 947
    .line 948
    .line 949
    :goto_1a
    return-object v5

    .line 950
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 951
    .line 952
    .line 953
    move-result-object p0

    .line 954
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 955
    .line 956
    if-ne p0, v0, :cond_31

    .line 957
    .line 958
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 959
    .line 960
    .line 961
    goto :goto_1b

    .line 962
    :cond_31
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object p0

    .line 966
    :try_start_7
    new-instance v0, Ljava/math/BigDecimal;

    .line 967
    .line 968
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 969
    .line 970
    .line 971
    move-object v5, v0

    .line 972
    goto :goto_1b

    .line 973
    :catch_7
    move-exception v0

    .line 974
    const-string v1, "\' as BigDecimal; at path "

    .line 975
    .line 976
    invoke-static {v2, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    move-result-object p0

    .line 980
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object p1

    .line 984
    invoke-static {p0, p1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 985
    .line 986
    .line 987
    :goto_1b
    return-object v5

    .line 988
    :pswitch_13
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 989
    .line 990
    .line 991
    move-result-object p0

    .line 992
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 993
    .line 994
    if-ne p0, v0, :cond_32

    .line 995
    .line 996
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 997
    .line 998
    .line 999
    goto :goto_1c

    .line 1000
    :cond_32
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 1001
    .line 1002
    if-ne p0, v0, :cond_33

    .line 1003
    .line 1004
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    .line 1005
    .line 1006
    .line 1007
    move-result p0

    .line 1008
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v5

    .line 1012
    goto :goto_1c

    .line 1013
    :cond_33
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    :goto_1c
    return-object v5

    .line 1018
    :pswitch_14
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p0

    .line 1022
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1023
    .line 1024
    if-ne p0, v0, :cond_34

    .line 1025
    .line 1026
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1027
    .line 1028
    .line 1029
    goto :goto_1d

    .line 1030
    :cond_34
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object p0

    .line 1034
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1035
    .line 1036
    .line 1037
    move-result v0

    .line 1038
    if-ne v0, v3, :cond_35

    .line 1039
    .line 1040
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 1041
    .line 1042
    .line 1043
    move-result p0

    .line 1044
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v5

    .line 1048
    :goto_1d
    return-object v5

    .line 1049
    :cond_35
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 1050
    .line 1051
    const-string v1, "Expecting character, got: "

    .line 1052
    .line 1053
    const-string v2, "; at "

    .line 1054
    .line 1055
    invoke-static {v1, p0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    move-result-object p0

    .line 1059
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object p1

    .line 1063
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p0

    .line 1070
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    throw v0

    .line 1074
    :pswitch_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p0

    .line 1078
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1079
    .line 1080
    if-ne p0, v0, :cond_36

    .line 1081
    .line 1082
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_1e

    .line 1086
    :cond_36
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    .line 1087
    .line 1088
    .line 1089
    move-result-wide p0

    .line 1090
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    :goto_1e
    return-object v5

    .line 1095
    :pswitch_16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1096
    .line 1097
    .line 1098
    move-result-object p0

    .line 1099
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1100
    .line 1101
    if-ne p0, v0, :cond_37

    .line 1102
    .line 1103
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_1f

    .line 1107
    :cond_37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    .line 1108
    .line 1109
    .line 1110
    move-result-wide p0

    .line 1111
    double-to-float p0, p0

    .line 1112
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v5

    .line 1116
    :goto_1f
    return-object v5

    .line 1117
    :pswitch_17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1118
    .line 1119
    .line 1120
    move-result-object p0

    .line 1121
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1122
    .line 1123
    if-ne p0, v0, :cond_38

    .line 1124
    .line 1125
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1126
    .line 1127
    .line 1128
    goto :goto_20

    .line 1129
    :cond_38
    :try_start_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    .line 1130
    .line 1131
    .line 1132
    move-result-wide p0

    .line 1133
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v5
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1137
    :goto_20
    return-object v5

    .line 1138
    :catch_8
    move-exception v0

    .line 1139
    move-object p0, v0

    .line 1140
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 1141
    .line 1142
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1143
    .line 1144
    .line 1145
    throw p1

    .line 1146
    :pswitch_18
    new-instance p0, Ljava/util/ArrayList;

    .line 1147
    .line 1148
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 1152
    .line 1153
    .line 1154
    :goto_21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v0

    .line 1158
    if-eqz v0, :cond_39

    .line 1159
    .line 1160
    :try_start_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1169
    .line 1170
    .line 1171
    goto :goto_21

    .line 1172
    :catch_9
    move-exception v0

    .line 1173
    move-object p0, v0

    .line 1174
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 1175
    .line 1176
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1177
    .line 1178
    .line 1179
    throw p1

    .line 1180
    :cond_39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 1184
    .line 1185
    .line 1186
    move-result p1

    .line 1187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 1188
    .line 1189
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 1190
    .line 1191
    .line 1192
    :goto_22
    if-ge v4, p1, :cond_3a

    .line 1193
    .line 1194
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    check-cast v1, Ljava/lang/Integer;

    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1201
    .line 1202
    .line 1203
    move-result v1

    .line 1204
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 1205
    .line 1206
    .line 1207
    add-int/lit8 v4, v4, 0x1

    .line 1208
    .line 1209
    goto :goto_22

    .line 1210
    :cond_3a
    return-object v0

    .line 1211
    :pswitch_19
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1212
    .line 1213
    .line 1214
    move-result-object p0

    .line 1215
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1216
    .line 1217
    if-ne p0, v0, :cond_3b

    .line 1218
    .line 1219
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_23

    .line 1223
    :cond_3b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    .line 1224
    .line 1225
    .line 1226
    move-result-wide p0

    .line 1227
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v5

    .line 1231
    :goto_23
    return-object v5

    .line 1232
    :pswitch_1a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1233
    .line 1234
    .line 1235
    move-result-object p0

    .line 1236
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1237
    .line 1238
    if-ne p0, v0, :cond_3c

    .line 1239
    .line 1240
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1241
    .line 1242
    .line 1243
    goto :goto_24

    .line 1244
    :cond_3c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    .line 1245
    .line 1246
    .line 1247
    move-result-wide p0

    .line 1248
    double-to-float p0, p0

    .line 1249
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v5

    .line 1253
    :goto_24
    return-object v5

    .line 1254
    :pswitch_1b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p0

    .line 1258
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 1259
    .line 1260
    if-ne p0, v0, :cond_3d

    .line 1261
    .line 1262
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_25

    .line 1266
    :cond_3d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    .line 1267
    .line 1268
    .line 1269
    move-result-wide p0

    .line 1270
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v5

    .line 1274
    :goto_25
    return-object v5

    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/google/gson/Gson$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long v0, p0

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    check-cast p2, Ljava/lang/Number;

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    int-to-long v0, p0

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    int-to-long v0, p0

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void

    .line 59
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .line 60
    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    const-string p0, "null"

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_4
    check-cast p2, Ljava/util/BitSet;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    :goto_4
    if-ge v0, p0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-long v1, v1

    .line 96
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_5
    check-cast p2, Lcom/google/gson/JsonElement;

    .line 107
    .line 108
    invoke-static {p1, p2}, Lcom/google/gson/Gson$1;->write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_6
    check-cast p2, Ljava/util/Locale;

    .line 113
    .line 114
    if-nez p2, :cond_5

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_5
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_5
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_7
    check-cast p2, Ljava/util/Calendar;

    .line 126
    .line 127
    if-nez p2, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    .line 134
    .line 135
    .line 136
    const-string/jumbo p0, "year"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 p0, 0x1

    .line 143
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    int-to-long v0, p0

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 149
    .line 150
    .line 151
    const-string p0, "month"

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 p0, 0x2

    .line 157
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    int-to-long v0, p0

    .line 162
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 163
    .line 164
    .line 165
    const-string p0, "dayOfMonth"

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 p0, 0x5

    .line 171
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    int-to-long v0, p0

    .line 176
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 177
    .line 178
    .line 179
    const-string p0, "hourOfDay"

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/16 p0, 0xb

    .line 185
    .line 186
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    int-to-long v0, p0

    .line 191
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 192
    .line 193
    .line 194
    const-string p0, "minute"

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const/16 p0, 0xc

    .line 200
    .line 201
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    int-to-long v0, p0

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 207
    .line 208
    .line 209
    const-string p0, "second"

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/16 p0, 0xd

    .line 215
    .line 216
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    int-to-long v0, p0

    .line 221
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    .line 225
    .line 226
    .line 227
    :goto_6
    return-void

    .line 228
    :pswitch_8
    check-cast p2, Ljava/util/Currency;

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_9
    check-cast p2, Ljava/util/UUID;

    .line 239
    .line 240
    if-nez p2, :cond_7

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_7
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :goto_7
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_a
    check-cast p2, Ljava/net/InetAddress;

    .line 252
    .line 253
    if-nez p2, :cond_8

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_8
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    :goto_8
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_b
    check-cast p2, Ljava/net/URI;

    .line 265
    .line 266
    if-nez p2, :cond_9

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_9
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :goto_9
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_c
    check-cast p2, Ljava/net/URL;

    .line 278
    .line 279
    if-nez p2, :cond_a

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_a
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :goto_a
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_d
    check-cast p2, Ljava/lang/StringBuffer;

    .line 291
    .line 292
    if-nez p2, :cond_b

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    :goto_b
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_e
    check-cast p2, Ljava/lang/Class;

    .line 304
    .line 305
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 306
    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v0, "Attempted to serialize java.lang.Class: "

    .line 310
    .line 311
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p2, ". Forgot to register a type adapter?"

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p0

    .line 334
    :pswitch_f
    check-cast p2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    if-nez p2, :cond_c

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    :goto_c
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_10
    check-cast p2, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 348
    .line 349
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_11
    check-cast p2, Ljava/math/BigInteger;

    .line 354
    .line 355
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_12
    check-cast p2, Ljava/math/BigDecimal;

    .line 360
    .line 361
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    .line 362
    .line 363
    .line 364
    return-void

    .line 365
    :pswitch_13
    check-cast p2, Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :pswitch_14
    check-cast p2, Ljava/lang/Character;

    .line 372
    .line 373
    if-nez p2, :cond_d

    .line 374
    .line 375
    goto :goto_d

    .line 376
    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    :goto_d
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_15
    check-cast p2, Ljava/lang/Number;

    .line 385
    .line 386
    if-nez p2, :cond_e

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 389
    .line 390
    .line 391
    goto :goto_e

    .line 392
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 393
    .line 394
    .line 395
    move-result-wide v0

    .line 396
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    .line 397
    .line 398
    .line 399
    :goto_e
    return-void

    .line 400
    :pswitch_16
    check-cast p2, Ljava/lang/Number;

    .line 401
    .line 402
    if-nez p2, :cond_f

    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 405
    .line 406
    .line 407
    goto :goto_10

    .line 408
    :cond_f
    instance-of p0, p2, Ljava/lang/Float;

    .line 409
    .line 410
    if-eqz p0, :cond_10

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 414
    .line 415
    .line 416
    move-result p0

    .line 417
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    :goto_f
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    .line 422
    .line 423
    .line 424
    :goto_10
    return-void

    .line 425
    :pswitch_17
    check-cast p2, Ljava/lang/Number;

    .line 426
    .line 427
    if-nez p2, :cond_11

    .line 428
    .line 429
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 430
    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 434
    .line 435
    .line 436
    move-result-wide v0

    .line 437
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 438
    .line 439
    .line 440
    :goto_11
    return-void

    .line 441
    :pswitch_18
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 442
    .line 443
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    :goto_12
    if-ge v0, p0, :cond_12

    .line 451
    .line 452
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    int-to-long v1, v1

    .line 457
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    .line 458
    .line 459
    .line 460
    add-int/lit8 v0, v0, 0x1

    .line 461
    .line 462
    goto :goto_12

    .line 463
    :cond_12
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_19
    check-cast p2, Ljava/lang/Number;

    .line 468
    .line 469
    if-nez p2, :cond_13

    .line 470
    .line 471
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 472
    .line 473
    .line 474
    goto :goto_13

    .line 475
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    :goto_13
    return-void

    .line 483
    :pswitch_1a
    check-cast p2, Ljava/lang/Number;

    .line 484
    .line 485
    if-nez p2, :cond_14

    .line 486
    .line 487
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 488
    .line 489
    .line 490
    goto :goto_15

    .line 491
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    float-to-double v0, p0

    .line 496
    invoke-static {v0, v1}, Lcom/google/gson/Gson;->checkValidFloatingPoint(D)V

    .line 497
    .line 498
    .line 499
    instance-of v0, p2, Ljava/lang/Float;

    .line 500
    .line 501
    if-eqz v0, :cond_15

    .line 502
    .line 503
    goto :goto_14

    .line 504
    :cond_15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    :goto_14
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    .line 509
    .line 510
    .line 511
    :goto_15
    return-void

    .line 512
    :pswitch_1b
    check-cast p2, Ljava/lang/Number;

    .line 513
    .line 514
    if-nez p2, :cond_16

    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 517
    .line 518
    .line 519
    goto :goto_16

    .line 520
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 521
    .line 522
    .line 523
    move-result-wide v0

    .line 524
    invoke-static {v0, v1}, Lcom/google/gson/Gson;->checkValidFloatingPoint(D)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    .line 528
    .line 529
    .line 530
    :goto_16
    return-void

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
