.class public final Lcom/google/protobuf/ByteString$BoundedByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 2
    .line 3
    .line 4
    add-int v0, p2, p3

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 11
    .line 12
    iput p2, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 13
    .line 14
    iput p3, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$600(Lcom/google/protobuf/ByteString$BoundedByteString;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/protobuf/ByteString$BoundedByteString;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 2
    .line 3
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string p1, "BoundedByteStream instances are not to be serialized directly"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method


# virtual methods
.method public final copyToInternal(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 2
    .line 3
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final equalsInternal(Lcom/google/protobuf/ByteString;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equalsInternal(Lcom/google/protobuf/ByteString;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_5

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gt v0, v1, :cond_4

    .line 28
    .line 29
    instance-of v1, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 37
    .line 38
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->access$800(Lcom/google/protobuf/ByteString$LiteralByteString;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p0, v2, p1, v0}, Lcom/google/protobuf/ByteString;->access$500([BII[BI)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    instance-of v1, p1, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast p1, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 56
    .line 57
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 58
    .line 59
    iget-object v2, p1, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 60
    .line 61
    iget p1, p1, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 62
    .line 63
    invoke-static {v1, p0, p1, v2, v0}, Lcom/google/protobuf/ByteString;->access$500([BII[BI)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_3
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/ByteString;->substringNoCopy(II)Lcom/google/protobuf/ByteString$LeafByteString;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget v1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/ByteString$BoundedByteString;->substringNoCopy(II)Lcom/google/protobuf/ByteString$LeafByteString;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Ran off end of other: 0, "

    .line 87
    .line 88
    const-string v2, ", "

    .line 89
    .line 90
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Length too large: "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public final internalByteAt(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 2
    .line 3
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 4
    .line 5
    add-int/2addr p0, p1

    .line 6
    aget-byte p0, v0, p0

    .line 7
    .line 8
    return p0
.end method

.method public final partialHash(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 2
    .line 3
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 4
    .line 5
    invoke-static {p1, v0, p0, p2}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 2
    .line 3
    return p0
.end method

.method public final substringNoCopy(II)Lcom/google/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 15
    .line 16
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 17
    .line 18
    add-int/2addr p0, p1

    .line 19
    invoke-direct {v0, v1, p0, p2}, Lcom/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->offset:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->length:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
