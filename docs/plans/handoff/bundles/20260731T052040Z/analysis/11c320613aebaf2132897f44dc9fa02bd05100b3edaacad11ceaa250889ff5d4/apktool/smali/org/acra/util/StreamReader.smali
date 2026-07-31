.class public final Lorg/acra/util/StreamReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final newline:Lkotlin/text/Regex;


# instance fields
.field public filter:Lkotlin/jvm/functions/Function1;

.field public final inputStream:Ljava/io/InputStream;

.field public limit:I

.field public timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "\\r?\\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/acra/util/StreamReader;->newline:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/acra/util/StreamReader;->limit:I

    .line 11
    .line 12
    iput p1, p0, Lorg/acra/util/StreamReader;->timeout:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lorg/acra/util/StreamReader;->filter:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final read()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lorg/acra/util/StreamReader;->timeout:I

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    iget-object v2, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    new-instance v4, Ljava/io/InputStreamReader;

    .line 13
    .line 14
    invoke-direct {v4, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/io/BufferedReader;

    .line 18
    .line 19
    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v2}, Lkotlin/math/MathKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    iget v0, p0, Lorg/acra/util/StreamReader;->timeout:I

    .line 43
    .line 44
    int-to-long v6, v0

    .line 45
    add-long/2addr v4, v6

    .line 46
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .line 50
    .line 51
    new-array v6, v1, [B

    .line 52
    .line 53
    :goto_0
    const/4 v7, 0x0

    .line 54
    move v8, v7

    .line 55
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v9

    .line 59
    cmp-long v9, v9, v4

    .line 60
    .line 61
    if-gez v9, :cond_1

    .line 62
    .line 63
    if-ge v8, v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    rsub-int v10, v8, 0x2000

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v2, v6, v8, v9}, Ljava/io/InputStream;->read([BII)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eq v9, v3, :cond_1

    .line 80
    .line 81
    add-int/2addr v8, v9

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-eq v8, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_2
    move-exception v0

    .line 90
    move-object p0, v0

    .line 91
    goto :goto_6

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    :goto_2
    iget-object v1, p0, Lorg/acra/util/StreamReader;->filter:Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    sget-object v2, Lorg/acra/util/StreamReader;->newline:Lkotlin/text/Regex;

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Lkotlin/text/Regex;->split(Ljava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    iget p0, p0, Lorg/acra/util/StreamReader;->limit:I

    .line 149
    .line 150
    if-ne p0, v3, :cond_5

    .line 151
    .line 152
    :goto_4
    move-object v3, v2

    .line 153
    goto :goto_5

    .line 154
    :cond_5
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->takeLast(ILjava/util/List;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    goto :goto_4

    .line 159
    :goto_5
    const/4 v7, 0x0

    .line 160
    const/16 v8, 0x3e

    .line 161
    .line 162
    const-string v4, "\n"

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_6
    iget v1, p0, Lorg/acra/util/StreamReader;->limit:I

    .line 172
    .line 173
    if-ne v1, v3, :cond_7

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_7
    invoke-virtual {v2, v0}, Lkotlin/text/Regex;->split(Ljava/lang/String;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget p0, p0, Lorg/acra/util/StreamReader;->limit:I

    .line 181
    .line 182
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->takeLast(ILjava/util/List;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/4 v5, 0x0

    .line 187
    const/16 v6, 0x3e

    .line 188
    .line 189
    const-string v2, "\n"

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    const/4 v4, 0x0

    .line 193
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :goto_6
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 199
    :catchall_3
    move-exception v0

    .line 200
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw v0
.end method
