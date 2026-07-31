.class public final Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;
.super Lcom/android/tools/r8/RecordTag;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final seconds:I

.field public final timestampEnd:I

.field public final timestampStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 6
    .line 7
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 8
    .line 9
    iget v1, p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 14
    .line 15
    iget v1, p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 20
    .line 21
    iget p1, p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 22
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget p0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 11
    .line 12
    add-int/2addr v0, p0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    aput-object p0, v2, v1

    .line 30
    .line 31
    const-string p0, "timestampStart;timestampEnd;seconds"

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-array p0, v3, [Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v1, ";"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-class v4, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, "["

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :goto_1
    array-length v4, p0

    .line 68
    if-ge v3, v4, :cond_2

    .line 69
    .line 70
    aget-object v4, p0, v3

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, "="

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    aget-object v4, v2, v3

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    array-length v4, p0

    .line 86
    sub-int/2addr v4, v0

    .line 87
    if-eq v3, v4, :cond_1

    .line 88
    .line 89
    const-string v4, ", "

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string p0, "]"

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
