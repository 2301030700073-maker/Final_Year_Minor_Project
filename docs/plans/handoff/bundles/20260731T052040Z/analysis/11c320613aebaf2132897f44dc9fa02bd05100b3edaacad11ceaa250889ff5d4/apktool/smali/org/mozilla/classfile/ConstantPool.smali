.class public final Lorg/mozilla/classfile/ConstantPool;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field public final itsClassHash:Ljava/util/HashMap;

.field public final itsConstantData:Ljava/util/HashMap;

.field public final itsConstantHash:Ljava/util/HashMap;

.field public final itsFieldRefHash:Ljava/util/HashMap;

.field public final itsMethodRefHash:Ljava/util/HashMap;

.field public itsPool:[B

.field public final itsPoolTypes:Ljava/util/HashMap;

.field public final itsStringConstHash:Ljava/util/HashMap;

.field public itsTop:I

.field public itsTopIndex:I

.field public final itsUtf8Hash:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 59
    .line 60
    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 64
    .line 65
    const/16 p1, 0x100

    .line 66
    .line 67
    new-array p1, p1, [B

    .line 68
    .line 69
    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 73
    .line 74
    return-void
.end method

.method public static getUtfEncodingLimit(IILjava/lang/String;)I
    .locals 3

    .line 1
    sub-int v0, p1, p0

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    if-eq p0, p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x7f

    .line 20
    .line 21
    if-gt v0, v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v2, 0x7ff

    .line 27
    .line 28
    if-ge v0, v2, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v1, v1, -0x3

    .line 34
    .line 35
    :goto_1
    if-gez v1, :cond_3

    .line 36
    .line 37
    return p0

    .line 38
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_2
    return p1
.end method


# virtual methods
.method public final addClass(Ljava/lang/String;)S
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {v2, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x7

    .line 19
    if-ne v3, v0, :cond_2

    .line 20
    .line 21
    const/16 v5, 0x2e

    .line 22
    .line 23
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-lez v6, :cond_1

    .line 28
    .line 29
    sget v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 30
    .line 31
    const/16 v3, 0x2f

    .line 32
    .line 33
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eq v5, v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_0
    move-object v1, v3

    .line 53
    move v3, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v1, p1

    .line 56
    :goto_0
    if-ne v3, v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v3, 0x3

    .line 63
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 67
    .line 68
    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 69
    .line 70
    add-int/lit8 v6, v5, 0x1

    .line 71
    .line 72
    iput v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 73
    .line 74
    aput-byte v4, v3, v5

    .line 75
    .line 76
    invoke-static {v3, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 81
    .line 82
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 83
    .line 84
    add-int/lit8 v0, v3, 0x1

    .line 85
    .line 86
    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p0, v3, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    int-to-short p0, v3

    .line 125
    return p0
.end method

.method public final addConstant(D)I
    .locals 5

    const/16 v0, 0x9

    .line 93
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 94
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 96
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v3, v3

    .line 97
    invoke-static {v0, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    move-result v1

    long-to-int p1, p1

    .line 98
    invoke-static {v0, p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    move-result p1

    .line 99
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 100
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    .line 101
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public final addConstant(I)I
    .locals 4

    const/4 v0, 0x5

    .line 103
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 104
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    .line 105
    invoke-static {v0, p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 106
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p0, p1

    return p0
.end method

.method public final addConstant(J)I
    .locals 6

    const/16 v0, 0x9

    .line 85
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 86
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    ushr-long v4, p1, v1

    long-to-int v1, v4

    .line 87
    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    move-result v1

    long-to-int p1, p1

    .line 88
    invoke-static {v0, p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    move-result p1

    .line 89
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 90
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    .line 91
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public final addConstant(Ljava/lang/String;)I
    .locals 6

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    and-int/2addr p1, v0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-static {v3, v0, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 35
    .line 36
    add-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 45
    .line 46
    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 47
    .line 48
    add-int/lit8 v5, v4, 0x1

    .line 49
    .line 50
    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 51
    .line 52
    aput-byte v2, v1, v4

    .line 53
    .line 54
    invoke-static {v1, p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return v0
.end method

.method public final addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 5

    .line 1
    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {v3, v0, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    if-ne v2, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p3, 0x5

    .line 36
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 40
    .line 41
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x1

    .line 44
    .line 45
    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 46
    .line 47
    aput-byte v4, p3, v1

    .line 48
    .line 49
    invoke-static {p3, p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 54
    .line 55
    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 56
    .line 57
    invoke-static {p3, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 62
    .line 63
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 64
    .line 65
    add-int/lit8 p1, v2, 0x1

    .line 66
    .line 67
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    int-to-short p0, v2

    .line 93
    return p0
.end method

.method public final addInvokeDynamic(Ljava/lang/String;ILjava/lang/String;)S
    .locals 6

    .line 1
    new-instance v0, Lorg/mozilla/classfile/ConstantEntry;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    .line 7
    .line 8
    iput-object p1, v0, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, v0, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-int/2addr v2, v1

    .line 21
    add-int/2addr v2, p2

    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    xor-int/2addr v2, v1

    .line 25
    iput v2, v0, Lorg/mozilla/classfile/ConstantEntry;->hashcode:I

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-static {v4, v0, v3}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v3, v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v2, 0x5

    .line 51
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 55
    .line 56
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 57
    .line 58
    add-int/lit8 v5, v3, 0x1

    .line 59
    .line 60
    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 61
    .line 62
    aput-byte v1, v2, v3

    .line 63
    .line 64
    invoke-static {v2, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 69
    .line 70
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 71
    .line 72
    invoke-static {v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 77
    .line 78
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 79
    .line 80
    add-int/lit8 p1, v3, 0x1

    .line 81
    .line 82
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3, p3}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_0
    int-to-short p0, v3

    .line 108
    return p0
.end method

.method public final addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {v2, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "bootstrap"

    .line 24
    .line 25
    const-string v1, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;"

    .line 26
    .line 27
    const-string v3, "org.mozilla.javascript.optimizer.Bootstrapper"

    .line 28
    .line 29
    invoke-virtual {p0, v3, v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 38
    .line 39
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 40
    .line 41
    add-int/lit8 v4, v3, 0x1

    .line 42
    .line 43
    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 44
    .line 45
    const/16 v5, 0xf

    .line 46
    .line 47
    aput-byte v5, v1, v3

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x2

    .line 50
    .line 51
    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 52
    .line 53
    const/4 v6, 0x6

    .line 54
    aput-byte v6, v1, v4

    .line 55
    .line 56
    invoke-static {v1, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 61
    .line 62
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 63
    .line 64
    add-int/lit8 v0, v1, 0x1

    .line 65
    .line 66
    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_0
    int-to-short p0, v1

    .line 89
    return p0
.end method

.method public final addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 5

    .line 1
    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {v3, v0, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    if-ne v2, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p3, 0x5

    .line 36
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 40
    .line 41
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x1

    .line 44
    .line 45
    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 46
    .line 47
    aput-byte v4, p3, v1

    .line 48
    .line 49
    invoke-static {p3, p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 54
    .line 55
    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 56
    .line 57
    invoke-static {p3, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 62
    .line 63
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 64
    .line 65
    add-int/lit8 p1, v2, 0x1

    .line 66
    .line 67
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    int-to-short p0, v2

    .line 93
    return p0
.end method

.method public final addNameAndType(Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 14
    .line 15
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 20
    .line 21
    const/16 v3, 0xc

    .line 22
    .line 23
    aput-byte v3, v0, v1

    .line 24
    .line 25
    invoke-static {v0, p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 30
    .line 31
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 32
    .line 33
    invoke-static {v0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 38
    .line 39
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 55
    .line 56
    add-int/lit8 p2, p1, 0x1

    .line 57
    .line 58
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 59
    .line 60
    int-to-short p0, p1

    .line 61
    return p0
.end method

.method public final addUtf8(Ljava/lang/String;)S
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {v2, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v0, :cond_8

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const v4, 0xffff

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-le v0, v4, :cond_0

    .line 30
    .line 31
    :goto_0
    move v0, v3

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    mul-int/lit8 v6, v0, 0x3

    .line 35
    .line 36
    add-int/lit8 v6, v6, 0x3

    .line 37
    .line 38
    invoke-virtual {p0, v6}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 39
    .line 40
    .line 41
    iget v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 42
    .line 43
    iget-object v7, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 44
    .line 45
    aput-byte v3, v7, v6

    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x3

    .line 48
    .line 49
    iget-object v7, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 50
    .line 51
    iget-object v8, v7, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 52
    .line 53
    array-length v9, v8

    .line 54
    if-le v0, v9, :cond_2

    .line 55
    .line 56
    array-length v8, v8

    .line 57
    mul-int/lit8 v8, v8, 0x2

    .line 58
    .line 59
    if-le v0, v8, :cond_1

    .line 60
    .line 61
    move v8, v0

    .line 62
    :cond_1
    new-array v8, v8, [C

    .line 63
    .line 64
    iput-object v8, v7, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 65
    .line 66
    :cond_2
    iget-object v7, v7, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 67
    .line 68
    invoke-virtual {p1, v5, v0, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 69
    .line 70
    .line 71
    move v8, v5

    .line 72
    :goto_1
    if-eq v8, v0, :cond_5

    .line 73
    .line 74
    aget-char v9, v7, v8

    .line 75
    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    const/16 v10, 0x7f

    .line 79
    .line 80
    if-gt v9, v10, :cond_3

    .line 81
    .line 82
    iget-object v10, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 83
    .line 84
    add-int/lit8 v11, v6, 0x1

    .line 85
    .line 86
    int-to-byte v9, v9

    .line 87
    aput-byte v9, v10, v6

    .line 88
    .line 89
    move v6, v11

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    iget-object v10, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 92
    .line 93
    const/16 v11, 0x7ff

    .line 94
    .line 95
    if-le v9, v11, :cond_4

    .line 96
    .line 97
    add-int/lit8 v11, v6, 0x1

    .line 98
    .line 99
    shr-int/lit8 v12, v9, 0xc

    .line 100
    .line 101
    or-int/lit16 v12, v12, 0xe0

    .line 102
    .line 103
    int-to-byte v12, v12

    .line 104
    aput-byte v12, v10, v6

    .line 105
    .line 106
    add-int/lit8 v12, v6, 0x2

    .line 107
    .line 108
    shr-int/lit8 v13, v9, 0x6

    .line 109
    .line 110
    and-int/lit8 v13, v13, 0x3f

    .line 111
    .line 112
    or-int/lit16 v13, v13, 0x80

    .line 113
    .line 114
    int-to-byte v13, v13

    .line 115
    aput-byte v13, v10, v11

    .line 116
    .line 117
    add-int/lit8 v6, v6, 0x3

    .line 118
    .line 119
    and-int/lit8 v9, v9, 0x3f

    .line 120
    .line 121
    or-int/lit16 v9, v9, 0x80

    .line 122
    .line 123
    int-to-byte v9, v9

    .line 124
    aput-byte v9, v10, v12

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    add-int/lit8 v11, v6, 0x1

    .line 128
    .line 129
    shr-int/lit8 v12, v9, 0x6

    .line 130
    .line 131
    or-int/lit16 v12, v12, 0xc0

    .line 132
    .line 133
    int-to-byte v12, v12

    .line 134
    aput-byte v12, v10, v6

    .line 135
    .line 136
    add-int/lit8 v6, v6, 0x2

    .line 137
    .line 138
    and-int/lit8 v9, v9, 0x3f

    .line 139
    .line 140
    or-int/lit16 v9, v9, 0x80

    .line 141
    .line 142
    int-to-byte v9, v9

    .line 143
    aput-byte v9, v10, v11

    .line 144
    .line 145
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 149
    .line 150
    add-int/lit8 v7, v0, 0x3

    .line 151
    .line 152
    sub-int v7, v6, v7

    .line 153
    .line 154
    if-le v7, v4, :cond_6

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_6
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 158
    .line 159
    add-int/lit8 v4, v0, 0x1

    .line 160
    .line 161
    ushr-int/lit8 v8, v7, 0x8

    .line 162
    .line 163
    int-to-byte v8, v8

    .line 164
    aput-byte v8, v1, v4

    .line 165
    .line 166
    add-int/lit8 v0, v0, 0x2

    .line 167
    .line 168
    int-to-byte v4, v7

    .line 169
    aput-byte v4, v1, v0

    .line 170
    .line 171
    iput v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 172
    .line 173
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 174
    .line 175
    add-int/lit8 v0, v1, 0x1

    .line 176
    .line 177
    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move v0, v5

    .line 187
    :goto_3
    if-nez v0, :cond_7

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    const-string p0, "Too big string"

    .line 191
    .line 192
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return v5

    .line 196
    :cond_8
    :goto_4
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    int-to-short p0, v1

    .line 213
    return p0
.end method

.method public final ensure(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-le v1, v3, :cond_1

    .line 9
    .line 10
    array-length v1, v2

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    add-int v3, v0, p1

    .line 14
    .line 15
    if-le v3, v1, :cond_0

    .line 16
    .line 17
    add-int v1, v0, p1

    .line 18
    .line 19
    :cond_0
    new-array p1, v1, [B

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final getConstantData(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getConstantType(I)B
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Byte;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final setConstantData(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
