.class public final Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final FIELD_CHARS:Ljava/util/BitSet;

.field public static final _recyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field public final buf:Lde/cketti/changelog/XmlParser;

.field public final maxlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/util/BitSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    .line 14
    .line 15
    const/16 v0, 0x21

    .line 16
    .line 17
    :goto_0
    const/16 v1, 0x39

    .line 18
    .line 19
    if-gt v0, v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v0, 0x3b

    .line 30
    .line 31
    :goto_1
    const/16 v1, 0x7e

    .line 32
    .line 33
    if-gt v0, v1, :cond_1

    .line 34
    .line 35
    sget-object v1, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 5
    .line 6
    sget-object v1, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 23
    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 27
    .line 28
    invoke-direct {v2}, Lorg/apache/james/mime4j/util/BufferRecycler;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/lang/ref/SoftReference;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/16 v1, 0x1000

    .line 40
    .line 41
    invoke-direct {v0, v2, v1}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/apache/james/mime4j/util/BufferRecycler;I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lde/cketti/changelog/XmlParser;

    .line 45
    .line 46
    iput p1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->maxlen:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final build()Lorg/apache/james/mime4j/stream/RawField;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lde/cketti/changelog/XmlParser;

    .line 2
    .line 3
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lde/cketti/changelog/XmlParser;->byteAt(I)B

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lde/cketti/changelog/XmlParser;->byteAt(I)B

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 32
    .line 33
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, [B

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    if-ltz v0, :cond_4

    .line 44
    .line 45
    array-length v3, p0

    .line 46
    if-gt v0, v3, :cond_4

    .line 47
    .line 48
    new-array v2, v0, [B

    .line 49
    .line 50
    iput-object v2, v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    iput v0, v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 57
    .line 58
    sget-object p0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Lorg/apache/james/mime4j/stream/RawField;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ge v3, v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sget-object v2, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 93
    .line 94
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Ljava/lang/String;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "MIME field name contains illegal characters: "

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_3
    return-object p0

    .line 117
    :cond_4
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :cond_5
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 122
    .line 123
    .line 124
    return-object v2
.end method
