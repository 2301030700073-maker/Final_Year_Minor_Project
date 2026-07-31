.class public Lorg/mozilla/javascript/NativeConsole;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;,
        Lorg/mozilla/javascript/NativeConsole$Level;
    }
.end annotation


# static fields
.field private static final CONSOLE_TAG:Ljava/lang/Object;

.field private static final DEFAULT_LABEL:Ljava/lang/String; = "default"

.field private static final FMT_REG:Ljava/util/regex/Pattern;

.field private static final Id_assert:I = 0x8

.field private static final Id_count:I = 0x9

.field private static final Id_countReset:I = 0xa

.field private static final Id_debug:I = 0x3

.field private static final Id_error:I = 0x7

.field private static final Id_info:I = 0x5

.field private static final Id_log:I = 0x4

.field private static final Id_time:I = 0xb

.field private static final Id_timeEnd:I = 0xc

.field private static final Id_timeLog:I = 0xd

.field private static final Id_toSource:I = 0x1

.field private static final Id_trace:I = 0x2

.field private static final Id_warn:I = 0x6

.field private static final LAST_METHOD_ID:I = 0xd

.field private static final MAX_ID:I = 0xd

.field private static final serialVersionUID:J = 0x4f07548b9dd24921L


# instance fields
.field private final counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

.field private final timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JL9EyIKnGTZ_XAV8zny145F30FY(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/NativeConsole;->lambda$count$0(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Console"

    .line 2
    .line 3
    sput-object v0, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    .line 4
    .line 5
    const-string v0, "%[sfdioOc%]"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/mozilla/javascript/NativeConsole;->FMT_REG:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 19
    .line 20
    return-void
.end method

.method private count(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p3, p3, v0

    .line 6
    .line 7
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p3, "default"

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v1, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda5;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p3, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p3, ": "

    .line 43
    .line 44
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private countReset(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p3, p3, v0

    .line 6
    .line 7
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p3, "default"

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 25
    .line 26
    const-string v1, "Count for \'"

    .line 27
    .line 28
    const-string v2, "\' does not exist."

    .line 29
    .line 30
    invoke-static {v1, p3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static format(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p2, :cond_f

    .line 4
    .line 5
    array-length v1, p2

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-object v3, p2, v2

    .line 17
    .line 18
    instance-of v4, v3, Ljava/lang/String;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    instance-of v4, v3, Lorg/mozilla/javascript/ConsString;

    .line 23
    .line 24
    if-eqz v4, :cond_b

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Lorg/mozilla/javascript/NativeConsole;->FMT_REG:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    move v5, v4

    .line 38
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_a

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "%%"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    const-string v6, "%"

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_2
    array-length v7, p2

    .line 61
    if-lt v5, v7, :cond_3

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_3
    aget-object v7, p2, v5

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    const/4 v9, -0x1

    .line 74
    sparse-switch v8, :sswitch_data_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :sswitch_0
    const-string v8, "%s"

    .line 79
    .line 80
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    const/4 v9, 0x5

    .line 88
    goto :goto_2

    .line 89
    :sswitch_1
    const-string v8, "%o"

    .line 90
    .line 91
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/4 v9, 0x4

    .line 99
    goto :goto_2

    .line 100
    :sswitch_2
    const-string v8, "%i"

    .line 101
    .line 102
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const/4 v9, 0x3

    .line 110
    goto :goto_2

    .line 111
    :sswitch_3
    const-string v8, "%f"

    .line 112
    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    const/4 v9, 0x2

    .line 121
    goto :goto_2

    .line 122
    :sswitch_4
    const-string v8, "%d"

    .line 123
    .line 124
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_8

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move v9, v4

    .line 132
    goto :goto_2

    .line 133
    :sswitch_5
    const-string v8, "%O"

    .line 134
    .line 135
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_9

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    move v9, v2

    .line 143
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 144
    .line 145
    .line 146
    move-object v6, v0

    .line 147
    goto :goto_1

    .line 148
    :pswitch_0
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatString(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    goto :goto_1

    .line 153
    :pswitch_1
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatFloat(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    goto :goto_1

    .line 158
    :pswitch_2
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatInt(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    goto :goto_1

    .line 163
    :pswitch_3
    invoke-static {p0, p1, v7}, Lorg/mozilla/javascript/NativeConsole;->formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    goto :goto_1

    .line 168
    :goto_3
    invoke-static {v6}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v3, v1, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_a
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    .line 179
    .line 180
    move v2, v5

    .line 181
    :cond_b
    :goto_4
    array-length v0, p2

    .line 182
    if-ge v2, v0, :cond_e

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-lez v0, :cond_c

    .line 189
    .line 190
    const/16 v0, 0x20

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    .line 194
    .line 195
    :cond_c
    aget-object v0, p2, v2

    .line 196
    .line 197
    instance-of v3, v0, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v3, :cond_d

    .line 200
    .line 201
    invoke-static {v0}, Lorg/mozilla/javascript/NativeConsole;->formatString(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_d
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/NativeConsole;->formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    .line 215
    .line 216
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :cond_f
    :goto_6
    return-object v0

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x4ca -> :sswitch_5
        0x4df -> :sswitch_4
        0x4e1 -> :sswitch_3
        0x4e4 -> :sswitch_2
        0x4ea -> :sswitch_1
        0x4ee -> :sswitch_0
    .end sparse-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static formatFloat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const/16 p0, 0xa

    .line 17
    .line 18
    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private static formatInt(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/math/BigInteger;

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bigIntToString(Ljava/math/BigInteger;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "n"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    double-to-long v0, v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method private static formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    instance-of v0, p2, Lorg/mozilla/javascript/NativeError;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p2, Lorg/mozilla/javascript/NativeError;

    .line 24
    .line 25
    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeError;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "\n"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo p1, "stack"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    :try_start_0
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$1;

    .line 52
    .line 53
    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeConsole$1;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string p1, "TypeError"

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_3
    throw p0
.end method

.method private static formatString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "n"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;ZLorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeConsole;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeConsole;-><init>(Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V

    .line 4
    .line 5
    .line 6
    const/16 p2, 0xd

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string p1, "console"

    .line 27
    .line 28
    const/4 p2, 0x2

    .line 29
    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private jsAssert(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v3, v1

    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz v1, :cond_3

    .line 21
    .line 22
    array-length v3, v1

    .line 23
    const/4 v4, 0x2

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v3, 0x1

    .line 28
    aget-object v4, v1, v3

    .line 29
    .line 30
    instance-of v5, v4, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "Assertion failed: "

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    aput-object v4, v1, v3

    .line 45
    .line 46
    array-length v4, v1

    .line 47
    sub-int/2addr v4, v3

    .line 48
    new-array v5, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v1, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    move-object v8, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v3, "Assertion failed:"

    .line 56
    .line 57
    aput-object v3, v1, v2

    .line 58
    .line 59
    move-object v8, v1

    .line 60
    :goto_0
    iget-object v4, v0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 61
    .line 62
    sget-object v7, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    move-object/from16 v5, p1

    .line 66
    .line 67
    move-object/from16 v6, p2

    .line 68
    .line 69
    invoke-interface/range {v4 .. v9}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    :goto_1
    iget-object v10, v0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 74
    .line 75
    sget-object v13, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 76
    .line 77
    const-string v0, "Assertion failed: console.assert"

    .line 78
    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const/4 v15, 0x0

    .line 84
    move-object/from16 v11, p1

    .line 85
    .line 86
    move-object/from16 v12, p2

    .line 87
    .line 88
    invoke-interface/range {v10 .. v15}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private static synthetic lambda$count$0(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method private nano2Milli(Ljava/lang/Long;)D
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    long-to-double p0, p0

    .line 6
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-double/2addr p0, v0

    .line 12
    return-wide p0
.end method

.method private print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 2
    .line 3
    filled-new-array {p4}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private time(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p3, p3, v0

    .line 6
    .line 7
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p3, "default"

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 25
    .line 26
    const-string v1, "Timer \'"

    .line 27
    .line 28
    const-string v2, "\' already exists."

    .line 29
    .line 30
    invoke-static {v1, p3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private timeEnd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p3, p3, v0

    .line 6
    .line 7
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p3, "default"

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 25
    .line 26
    const-string v1, "Timer \'"

    .line 27
    .line 28
    const-string v2, "\' does not exist."

    .line 29
    .line 30
    invoke-static {v1, p3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    sub-long/2addr v2, v4

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeConsole;->nano2Milli(Ljava/lang/Long;)D

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, ": "

    .line 66
    .line 67
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p3, "ms"

    .line 74
    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private timeLog(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    .line 6
    .line 7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "default"

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 25
    .line 26
    const-string v1, "Timer \'"

    .line 27
    .line 28
    const-string v2, "\' does not exist."

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    sub-long/2addr v3, v5

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeConsole;->nano2Milli(Ljava/lang/Long;)D

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ": "

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "ms"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    array-length v0, p3

    .line 86
    const/4 v1, 0x1

    .line 87
    if-le v0, v1, :cond_2

    .line 88
    .line 89
    :goto_1
    array-length v0, p3

    .line 90
    if-ge v1, v0, :cond_2

    .line 91
    .line 92
    const-string v0, " "

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    aget-object v0, p3, v1

    .line 98
    .line 99
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    move-object p4, p5

    .line 15
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->timeLog(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->timeEnd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->time(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->countReset(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->count(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/javascript/NativeConsole;->jsAssert(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_6
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 56
    .line 57
    move-object p1, p2

    .line 58
    move-object p2, p3

    .line 59
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 60
    .line 61
    const/4 p5, 0x0

    .line 62
    invoke-interface/range {p0 .. p5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_7
    move-object p1, p2

    .line 67
    move-object p2, p3

    .line 68
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 69
    .line 70
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 71
    .line 72
    const/4 p5, 0x0

    .line 73
    invoke-interface/range {p0 .. p5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_8
    move-object p1, p2

    .line 78
    move-object p2, p3

    .line 79
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 80
    .line 81
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 82
    .line 83
    const/4 p5, 0x0

    .line 84
    invoke-interface/range {p0 .. p5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_9
    move-object p1, p2

    .line 89
    move-object p2, p3

    .line 90
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 91
    .line 92
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 93
    .line 94
    const/4 p5, 0x0

    .line 95
    invoke-interface/range {p0 .. p5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_a
    move-object p1, p2

    .line 100
    move-object p2, p3

    .line 101
    new-instance p3, Lorg/mozilla/javascript/EvaluatorException;

    .line 102
    .line 103
    const-string p5, "[object Object]"

    .line 104
    .line 105
    invoke-direct {p3, p5}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Lorg/mozilla/javascript/RhinoException;->getScriptStack()[Lorg/mozilla/javascript/ScriptStackElement;

    .line 109
    .line 110
    .line 111
    move-result-object p5

    .line 112
    iget-object p0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    .line 113
    .line 114
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 115
    .line 116
    invoke-interface/range {p0 .. p5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_b
    const-string p0, "Console"

    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    const/4 v5, 0x7

    .line 19
    const/4 v6, 0x6

    .line 20
    const/4 v7, 0x5

    .line 21
    const/4 v8, 0x4

    .line 22
    const/4 v9, 0x3

    .line 23
    const/4 v10, 0x2

    .line 24
    const/4 v11, 0x1

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, -0x1

    .line 27
    sparse-switch p0, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string/jumbo p0, "trace"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    move v13, v0

    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string p0, "error"

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_1
    move v13, v1

    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :sswitch_2
    const-string p0, "debug"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    move v13, v2

    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_3
    const-string p0, "count"

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_3

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_3
    move v13, v3

    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :sswitch_4
    const-string/jumbo p0, "warn"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_4

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_4
    move v13, v4

    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :sswitch_5
    const-string/jumbo p0, "time"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_5

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_5
    move v13, v5

    .line 111
    goto :goto_0

    .line 112
    :sswitch_6
    const-string p0, "info"

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_6

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    move v13, v6

    .line 122
    goto :goto_0

    .line 123
    :sswitch_7
    const-string p0, "log"

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_7

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    move v13, v7

    .line 133
    goto :goto_0

    .line 134
    :sswitch_8
    const-string p0, "countReset"

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-nez p0, :cond_8

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    move v13, v8

    .line 144
    goto :goto_0

    .line 145
    :sswitch_9
    const-string/jumbo p0, "timeLog"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_9

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_9
    move v13, v9

    .line 156
    goto :goto_0

    .line 157
    :sswitch_a
    const-string/jumbo p0, "timeEnd"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_a

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_a
    move v13, v10

    .line 168
    goto :goto_0

    .line 169
    :sswitch_b
    const-string p0, "assert"

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-nez p0, :cond_b

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_b
    move v13, v11

    .line 179
    goto :goto_0

    .line 180
    :sswitch_c
    const-string/jumbo p0, "toSource"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_c

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_c
    move v13, v12

    .line 191
    :goto_0
    packed-switch v13, :pswitch_data_0

    .line 192
    .line 193
    .line 194
    return v12

    .line 195
    :pswitch_0
    return v10

    .line 196
    :pswitch_1
    return v5

    .line 197
    :pswitch_2
    return v9

    .line 198
    :pswitch_3
    return v3

    .line 199
    :pswitch_4
    return v6

    .line 200
    :pswitch_5
    return v1

    .line 201
    :pswitch_6
    return v7

    .line 202
    :pswitch_7
    return v8

    .line 203
    :pswitch_8
    return v2

    .line 204
    :pswitch_9
    const/16 p0, 0xd

    .line 205
    .line 206
    return p0

    .line 207
    :pswitch_a
    return v0

    .line 208
    :pswitch_b
    return v4

    .line 209
    :pswitch_c
    return v11

    .line 210
    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_c
        -0x53ef8cba -> :sswitch_b
        -0x4e515132 -> :sswitch_a
        -0x4e5136c9 -> :sswitch_9
        -0x3e70d280 -> :sswitch_8
        0x1a344 -> :sswitch_7
        0x3164ae -> :sswitch_6
        0x3652cd -> :sswitch_5
        0x379286 -> :sswitch_4
        0x5a7510f -> :sswitch_3
        0x5b09653 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x697f145 -> :sswitch_0
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :pswitch_data_0
    .packed-switch 0x0
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

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Console"

    .line 2
    .line 3
    return-object p0
.end method

.method public initPrototypeId(I)V
    .locals 4

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const-string/jumbo v1, "timeLog"

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :pswitch_1
    const-string/jumbo v0, "timeEnd"

    .line 23
    .line 24
    .line 25
    :goto_0
    move v3, v1

    .line 26
    move-object v1, v0

    .line 27
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :pswitch_2
    const-string/jumbo v0, "time"

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    const-string v0, "countReset"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_4
    const-string v0, "count"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_5
    const-string v1, "assert"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_6
    const-string v0, "error"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_7
    const-string/jumbo v0, "warn"

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_8
    const-string v0, "info"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_9
    const-string v0, "log"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_a
    const-string v0, "debug"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_b
    const-string/jumbo v0, "trace"

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_c
    const/4 v0, 0x0

    .line 63
    const-string/jumbo v1, "toSource"

    .line 64
    .line 65
    .line 66
    :goto_1
    sget-object v2, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
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
