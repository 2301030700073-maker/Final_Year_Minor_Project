.class public final Lorg/apache/james/mime4j/stream/RawFieldParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final COLON:Ljava/util/BitSet;

.field public static final DECODE_BUFFER:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

.field public static final DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

.field public static final EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

.field public static final SEMICOLON:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    .line 10
    .line 11
    .line 12
    sput-object v2, Lorg/apache/james/mime4j/stream/RawFieldParser;->DECODE_BUFFER:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 13
    .line 14
    const/16 v0, 0x3a

    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->COLON:Ljava/util/BitSet;

    .line 25
    .line 26
    const/16 v0, 0x3d

    .line 27
    .line 28
    const/16 v1, 0x3b

    .line 29
    .line 30
    filled-new-array {v0, v1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

    .line 39
    .line 40
    filled-new-array {v1}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->SEMICOLON:Ljava/util/BitSet;

    .line 49
    .line 50
    new-instance v0, Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 56
    .line 57
    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget v3, p0, v2

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static parseField(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Lorg/apache/james/mime4j/stream/RawField;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget v3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 9
    .line 10
    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(II)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lorg/apache/james/mime4j/stream/RawFieldParser;->COLON:Ljava/util/BitSet;

    .line 14
    .line 15
    invoke-static {p0, v1, v2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;Ljava/util/BitSet;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    new-instance v3, Lorg/apache/james/mime4j/stream/RawField;

    .line 26
    .line 27
    iget v1, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 28
    .line 29
    invoke-direct {v3, p0, v1, v2, v0}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "Invalid MIME field: no name/value separator found: "

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    move v2, v1

    .line 8
    :goto_1
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_c

    .line 13
    .line 14
    iget v3, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 15
    .line 16
    invoke-interface {p0, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    int-to-char v3, v3

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_0
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x28

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_3

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    const/16 v2, 0x20

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_3
    iget v2, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 66
    .line 67
    iget v3, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    move v6, v2

    .line 74
    move v7, v6

    .line 75
    :goto_2
    if-ge v6, v3, :cond_b

    .line 76
    .line 77
    invoke-interface {p0, v6}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    and-int/lit16 v9, v8, 0xff

    .line 82
    .line 83
    int-to-char v9, v9

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_b

    .line 91
    .line 92
    :cond_4
    invoke-static {v9}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-nez v10, :cond_b

    .line 97
    .line 98
    if-ne v9, v4, :cond_5

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    if-gez v8, :cond_a

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    .line 107
    .line 108
    sget-object v5, Lorg/apache/james/mime4j/stream/RawFieldParser;->DECODE_BUFFER:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 115
    .line 116
    iput v1, v5, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 117
    .line 118
    :goto_3
    if-gt v2, v6, :cond_6

    .line 119
    .line 120
    invoke-interface {p0, v2}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual {v5, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    if-ge v6, v3, :cond_9

    .line 133
    .line 134
    invoke-interface {p0, v6}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    and-int/lit16 v8, v2, 0xff

    .line 139
    .line 140
    int-to-char v8, v8

    .line 141
    if-eqz p2, :cond_7

    .line 142
    .line 143
    invoke-virtual {p2, v8}, Ljava/util/BitSet;->get(I)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_9

    .line 148
    .line 149
    :cond_7
    invoke-static {v8}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-nez v9, :cond_9

    .line 154
    .line 155
    if-ne v8, v4, :cond_8

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 159
    .line 160
    invoke-virtual {v5, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    :goto_5
    invoke-virtual {p1, v7}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 165
    .line 166
    .line 167
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    sget v2, Lorg/apache/james/mime4j/util/ContentUtil;->$r8$clinit:I

    .line 170
    .line 171
    iget v2, v5, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 172
    .line 173
    invoke-static {v5, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_b
    :goto_6
    invoke-virtual {p1, v7}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_c
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0
.end method

.method public static skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 9
    .line 10
    iget v1, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    .line 18
    int-to-char v2, v2

    .line 19
    const/16 v3, 0x28

    .line 20
    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 25
    add-int/2addr v0, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v0

    .line 28
    move v7, v2

    .line 29
    move v6, v4

    .line 30
    :goto_1
    if-ge v0, v1, :cond_7

    .line 31
    .line 32
    invoke-interface {p0, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    and-int/lit16 v8, v8, 0xff

    .line 37
    .line 38
    int-to-char v8, v8

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v9, 0x5c

    .line 44
    .line 45
    if-ne v8, v9, :cond_3

    .line 46
    .line 47
    move v6, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    if-ne v8, v3, :cond_4

    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const/16 v9, 0x29

    .line 55
    .line 56
    if-ne v8, v9, :cond_5

    .line 57
    .line 58
    add-int/lit8 v7, v7, -0x1

    .line 59
    .line 60
    :cond_5
    :goto_2
    if-gtz v7, :cond_6

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    :goto_3
    invoke-virtual {p1, v5}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 4

    .line 1
    iget v0, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 2
    .line 3
    iget v1, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 4
    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-char v3, v3

    .line 15
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
