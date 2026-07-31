.class public final Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/LogSink;


# static fields
.field public static final IGNORE_CLASSES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Ltimber/log/Timber;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ltimber/log/Timber$Forest;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Ltimber/log/Timber$Tree;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-class v3, Ltimber/log/Timber$DebugTree;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-class v4, Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;->IGNORE_CLASSES:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final bridge canLog(Lnet/thunderbird/core/logging/LogLevel;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$canLog(Lnet/thunderbird/core/logging/LogSink;Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getLevel()Lnet/thunderbird/core/logging/LogLevel;
    .locals 0

    .line 1
    sget-object p0, Lnet/thunderbird/core/logging/LogLevel;->VERBOSE:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final log(Lnet/thunderbird/core/logging/LogEvent;)V
    .locals 12

    .line 1
    iget-object p0, p1, Lnet/thunderbird/core/logging/LogEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p1, Lnet/thunderbird/core/logging/LogEvent;->throwable:Ljava/lang/Throwable;

    .line 4
    .line 5
    iget-object v1, p1, Lnet/thunderbird/core/logging/LogEvent;->tag:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v4, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    move v6, v2

    .line 19
    :goto_0
    if-ge v6, v5, :cond_9

    .line 20
    .line 21
    aget-object v7, v4, v6

    .line 22
    .line 23
    add-int/lit8 v6, v6, 0x1

    .line 24
    .line 25
    iget-object v7, v7, Ltimber/log/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    .line 26
    .line 27
    invoke-virtual {v7, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 32
    .line 33
    sget-object v4, Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;->IGNORE_CLASSES:Ljava/util/Set;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    const-class v1, Lnet/thunderbird/core/logging/Logger;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-class v6, Lnet/thunderbird/core/logging/DefaultLogger;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "net.thunderbird.core.logging.console.ComposeLogTagKt"

    .line 54
    .line 55
    const-string v8, "net.thunderbird.core.logging.composite.DefaultCompositeLogSink"

    .line 56
    .line 57
    const-string v9, "net.thunderbird.core.logging.legacy.Log"

    .line 58
    .line 59
    filled-new-array {v7, v8, v9, v1, v6}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-static {v4, v1}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v4, Ljava/lang/Throwable;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    array-length v6, v4

    .line 86
    move v7, v2

    .line 87
    :goto_1
    if-ge v7, v6, :cond_3

    .line 88
    .line 89
    aget-object v8, v4, v7

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_4

    .line 107
    .line 108
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    check-cast v10, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {v11, v10, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_2

    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    move-object v8, v5

    .line 134
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const/16 v4, 0x2e

    .line 144
    .line 145
    invoke-static {v4, v1, v1}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v4, "(\\$\\d+)+$"

    .line 150
    .line 151
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_6

    .line 167
    .line 168
    const-string v6, ""

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    move-object v1, v5

    .line 183
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 184
    .line 185
    move-object v5, v1

    .line 186
    :cond_7
    if-nez v5, :cond_8

    .line 187
    .line 188
    const-class v1, Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    sget-object v1, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;

    .line 198
    .line 199
    array-length v4, v1

    .line 200
    move v6, v2

    .line 201
    :goto_4
    if-ge v6, v4, :cond_9

    .line 202
    .line 203
    aget-object v7, v1, v6

    .line 204
    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    .line 207
    iget-object v7, v7, Ltimber/log/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    .line 208
    .line 209
    invoke-virtual {v7, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    iget-object p1, p1, Lnet/thunderbird/core/logging/LogEvent;->level:Lnet/thunderbird/core/logging/LogLevel;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_e

    .line 220
    .line 221
    const/4 v1, 0x1

    .line 222
    if-eq p1, v1, :cond_d

    .line 223
    .line 224
    const/4 v1, 0x2

    .line 225
    if-eq p1, v1, :cond_c

    .line 226
    .line 227
    const/4 v1, 0x3

    .line 228
    if-eq p1, v1, :cond_b

    .line 229
    .line 230
    const/4 v1, 0x4

    .line 231
    if-ne p1, v1, :cond_a

    .line 232
    .line 233
    new-array p1, v2, [Ljava/lang/Object;

    .line 234
    .line 235
    invoke-virtual {v3, v0, p0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_b
    new-array p1, v2, [Ljava/lang/Object;

    .line 244
    .line 245
    invoke-virtual {v3, v0, p0, p1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_c
    new-array p1, v2, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-virtual {v3, v0, p0, p1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_d
    new-array p1, v2, [Ljava/lang/Object;

    .line 256
    .line 257
    invoke-virtual {v3, v0, p0, p1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_e
    new-array p1, v2, [Ljava/lang/Object;

    .line 262
    .line 263
    invoke-virtual {v3, v0, p0, p1}, Ltimber/log/Timber$Forest;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method
