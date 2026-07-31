.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public bytesReceived:J

.field public final size:J

.field public final truncate:Z


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->size:J

    .line 5
    .line 6
    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 5
    .line 6
    iget-wide v2, p0, Lokio/internal/FixedLengthSource;->size:J

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    const-wide/16 v5, -0x1

    .line 11
    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    move-wide p2, v7

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    sub-long v0, v2, v0

    .line 23
    .line 24
    cmp-long v4, v0, v7

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    return-wide v5

    .line 29
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p2

    .line 33
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p2

    .line 37
    cmp-long v0, p2, v5

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-wide v4, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 42
    .line 43
    add-long/2addr v4, p2

    .line 44
    iput-wide v4, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 45
    .line 46
    :cond_3
    iget-wide v4, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 47
    .line 48
    cmp-long v1, v4, v2

    .line 49
    .line 50
    if-gez v1, :cond_4

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    :cond_4
    if-lez v1, :cond_7

    .line 55
    .line 56
    :cond_5
    cmp-long p2, p2, v7

    .line 57
    .line 58
    if-lez p2, :cond_6

    .line 59
    .line 60
    if-lez v1, :cond_6

    .line 61
    .line 62
    iget-wide p2, p1, Lokio/Buffer;->size:J

    .line 63
    .line 64
    sub-long/2addr v4, v2

    .line 65
    sub-long/2addr p2, v4

    .line 66
    new-instance v0, Lokio/Buffer;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 78
    .line 79
    .line 80
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 81
    .line 82
    iget-wide p2, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "expected "

    .line 87
    .line 88
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " bytes but got "

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_7
    return-wide p2
.end method
