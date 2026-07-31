.class public final Lcom/google/protobuf/ByteString$LiteralByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$800(Lcom/google/protobuf/ByteString$LiteralByteString;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final copyToInternal(I[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 3
    .line 4
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final equalsInternal(Lcom/google/protobuf/ByteString;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 6
    .line 7
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 21
    .line 22
    array-length v0, v0

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gt v0, v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-gt v0, v1, :cond_2

    .line 34
    .line 35
    instance-of v1, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 45
    .line 46
    invoke-static {p0, v2, v2, p1, v0}, Lcom/google/protobuf/ByteString;->access$500([BII[BI)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    check-cast p1, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/protobuf/ByteString$BoundedByteString;->access$600(Lcom/google/protobuf/ByteString$BoundedByteString;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/google/protobuf/ByteString$BoundedByteString;->access$700(Lcom/google/protobuf/ByteString$BoundedByteString;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p0, v2, p1, v1, v0}, Lcom/google/protobuf/ByteString;->access$500([BII[BI)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Ran off end of other: 0, "

    .line 69
    .line 70
    const-string v2, ", "

    .line 71
    .line 72
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 94
    .line 95
    array-length p0, p0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Length too large: "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_4
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equalsInternal(Lcom/google/protobuf/ByteString;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0
.end method

.method public final internalByteAt(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public final partialHash(II)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 3
    .line 4
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public final substringNoCopy(II)Lcom/google/protobuf/ByteString$LeafByteString;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    .line 3
    array-length p1, p1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2, p1}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p2, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 17
    .line 18
    invoke-direct {p2, p0, v0, p1}, Lcom/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    array-length v1, p0

    .line 5
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
