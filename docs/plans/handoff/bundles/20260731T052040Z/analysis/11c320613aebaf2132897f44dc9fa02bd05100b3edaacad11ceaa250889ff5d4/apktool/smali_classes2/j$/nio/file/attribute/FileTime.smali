.class public final Lj$/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Lj$/time/Instant;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 8
    .line 9
    return-void
.end method

.method public static k(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 1
    :goto_0
    if-lez p1, :cond_0

    .line 2
    .line 3
    div-int v0, p2, p1

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x30

    .line 6
    .line 7
    int-to-char v0, v0

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    rem-int/2addr p2, p1

    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public static o(JJJ)J
    .locals 1

    .line 1
    cmp-long v0, p0, p4

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const-wide p0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_0
    neg-long p4, p4

    .line 12
    cmp-long p4, p0, p4

    .line 13
    .line 14
    if-gez p4, :cond_1

    .line 15
    .line 16
    const-wide/high16 p0, -0x8000000000000000L

    .line 17
    .line 18
    return-wide p0

    .line 19
    :cond_1
    mul-long/2addr p0, p2

    .line 20
    return-wide p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lj$/nio/file/attribute/FileTime;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj$/nio/file/attribute/FileTime;->n(Lj$/nio/file/attribute/FileTime;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lj$/nio/file/attribute/FileTime;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lj$/nio/file/attribute/FileTime;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lj$/nio/file/attribute/FileTime;->n(Lj$/nio/file/attribute/FileTime;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lj$/time/Instant;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final n(Lj$/nio/file/attribute/FileTime;)I
    .locals 7

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 9
    .line 10
    iget-wide p0, p1, Lj$/nio/file/attribute/FileTime;->a:J

    .line 11
    .line 12
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-wide v1, v1, Lj$/time/Instant;->a:J

    .line 22
    .line 23
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-wide v3, v3, Lj$/time/Instant;->a:J

    .line 28
    .line 29
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v3, v3, Lj$/time/Instant;->b:I

    .line 41
    .line 42
    int-to-long v3, v3

    .line 43
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget v5, v5, Lj$/time/Instant;->b:I

    .line 48
    .line 49
    int-to-long v5, v5

    .line 50
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    const-wide v3, 0x701cd2fa9578ffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v3, v1, v3

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const-wide v3, -0x701cefeb9bec00L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    cmp-long v1, v1, v3

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_3
    const-wide/32 v1, 0x15180

    .line 78
    .line 79
    .line 80
    const-wide/32 v3, 0x5265c00

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-wide v5, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 86
    .line 87
    div-long/2addr v5, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-wide v5, v5, Lj$/time/Instant;->a:J

    .line 94
    .line 95
    div-long/2addr v5, v1

    .line 96
    :goto_0
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iget-wide v0, p1, Lj$/nio/file/attribute/FileTime;->a:J

    .line 99
    .line 100
    div-long/2addr v0, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-wide v3, v0, Lj$/time/Instant;->a:J

    .line 107
    .line 108
    div-long v0, v3, v1

    .line 109
    .line 110
    :goto_1
    cmp-long v2, v5, v0

    .line 111
    .line 112
    if-nez v2, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0, v5, v6}, Lj$/nio/file/attribute/FileTime;->u(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-virtual {p1, v0, v1}, Lj$/nio/file/attribute/FileTime;->u(J)J

    .line 119
    .line 120
    .line 121
    move-result-wide p0

    .line 122
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0

    .line 127
    :cond_6
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    return p0
.end method

.method public final toInstant()Lj$/time/Instant;
    .locals 12

    .line 1
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lj$/nio/file/attribute/r;->a:[I

    .line 6
    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/AssertionError;

    .line 20
    .line 21
    const-string v0, "Unit not handled"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :pswitch_0
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 28
    .line 29
    const-wide/32 v2, 0x3b9aca00

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 37
    .line 38
    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    long-to-int v2, v2

    .line 43
    goto :goto_1

    .line 44
    :pswitch_1
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 45
    .line 46
    const-wide/32 v2, 0xf4240

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 54
    .line 55
    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    long-to-int v2, v2

    .line 60
    mul-int/lit16 v2, v2, 0x3e8

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_2
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 64
    .line 65
    const-wide/16 v2, 0x3e8

    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 72
    .line 73
    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    long-to-int v2, v2

    .line 78
    const v3, 0xf4240

    .line 79
    .line 80
    .line 81
    mul-int/2addr v2, v3

    .line 82
    goto :goto_1

    .line 83
    :pswitch_3
    iget-wide v2, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 84
    .line 85
    :goto_0
    move-wide v10, v2

    .line 86
    move v2, v1

    .line 87
    move-wide v0, v10

    .line 88
    goto :goto_1

    .line 89
    :pswitch_4
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 90
    .line 91
    const-wide/16 v6, 0x3c

    .line 92
    .line 93
    const-wide v8, 0x222222222222222L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 104
    .line 105
    const-wide/16 v6, 0xe10

    .line 106
    .line 107
    const-wide v8, 0x91a2b3c4d5e6fL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    goto :goto_0

    .line 117
    :pswitch_6
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 118
    .line 119
    const-wide/32 v6, 0x15180

    .line 120
    .line 121
    .line 122
    const-wide v8, 0x611722833944L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    goto :goto_0

    .line 132
    :goto_1
    const-wide v3, -0x701cefeb9bec00L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    cmp-long v3, v0, v3

    .line 138
    .line 139
    if-gtz v3, :cond_0

    .line 140
    .line 141
    sget-object v0, Lj$/time/Instant;->d:Lj$/time/Instant;

    .line 142
    .line 143
    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_0
    const-wide v3, 0x701cd2fa9578ffL

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    cmp-long v3, v0, v3

    .line 152
    .line 153
    if-ltz v3, :cond_1

    .line 154
    .line 155
    sget-object v0, Lj$/time/Instant;->e:Lj$/time/Instant;

    .line 156
    .line 157
    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_1
    int-to-long v2, v2

    .line 161
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->b0(JJ)Lj$/time/Instant;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 166
    .line 167
    :cond_2
    :goto_2
    iget-object p0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 168
    .line 169
    return-object p0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toMillis()J
    .locals 10

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object p0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 9
    .line 10
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    .line 11
    .line 12
    iget p0, p0, Lj$/time/Instant;->b:I

    .line 13
    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    mul-long v4, v0, v2

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    or-long/2addr v6, v2

    .line 23
    const/16 v8, 0x1f

    .line 24
    .line 25
    ushr-long/2addr v6, v8

    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    cmp-long v6, v6, v8

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    div-long v2, v4, v2

    .line 33
    .line 34
    cmp-long v2, v2, v0

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    cmp-long p0, v0, v8

    .line 39
    .line 40
    if-gez p0, :cond_1

    .line 41
    .line 42
    const-wide/high16 v0, -0x8000000000000000L

    .line 43
    .line 44
    return-wide v0

    .line 45
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    return-wide v0

    .line 51
    :cond_2
    const v0, 0xf4240

    .line 52
    .line 53
    .line 54
    div-int/2addr p0, v0

    .line 55
    int-to-long v0, p0

    .line 56
    add-long/2addr v4, v0

    .line 57
    return-wide v4
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 20
    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    .line 23
    div-long/2addr v0, v2

    .line 24
    const/4 v2, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-wide v0, v0, Lj$/time/Instant;->a:J

    .line 31
    .line 32
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v2, v2, Lj$/time/Instant;->b:I

    .line 37
    .line 38
    :goto_0
    const-wide v3, -0xe79747c00L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v3, v0, v3

    .line 44
    .line 45
    const/16 v4, 0x2710

    .line 46
    .line 47
    const-wide v5, 0xe79747c00L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v7, 0x497968bd80L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    if-ltz v3, :cond_1

    .line 58
    .line 59
    const-wide v9, 0x3afff44180L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    sub-long/2addr v0, v9

    .line 65
    invoke-static {v0, v1, v7, v8}, Lj$/com/android/tools/r8/a;->E(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    const-wide/16 v11, 0x1

    .line 70
    .line 71
    add-long/2addr v9, v11

    .line 72
    invoke-static {v0, v1, v7, v8}, Lj$/com/android/tools/r8/a;->R(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    sub-long/2addr v0, v5

    .line 77
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 78
    .line 79
    invoke-static {v0, v1, v2, v3}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 84
    .line 85
    iget v1, v1, Lj$/time/LocalDate;->a:I

    .line 86
    .line 87
    :goto_1
    long-to-int v2, v9

    .line 88
    mul-int/2addr v2, v4

    .line 89
    add-int/2addr v2, v1

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    add-long/2addr v0, v5

    .line 92
    div-long v9, v0, v7

    .line 93
    .line 94
    rem-long/2addr v0, v7

    .line 95
    sub-long/2addr v0, v5

    .line 96
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 97
    .line 98
    invoke-static {v0, v1, v2, v3}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 103
    .line 104
    iget v1, v1, Lj$/time/LocalDate;->a:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    if-gtz v2, :cond_2

    .line 108
    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    .line 111
    :cond_2
    iget-object v1, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 112
    .line 113
    iget v1, v1, Lj$/time/i;->d:I

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const/16 v5, 0x40

    .line 118
    .line 119
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .line 121
    .line 122
    if-gez v2, :cond_3

    .line 123
    .line 124
    const-string v5, "-"

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    const-string v5, ""

    .line 128
    .line 129
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ge v2, v4, :cond_4

    .line 137
    .line 138
    const/16 v4, 0x3e8

    .line 139
    .line 140
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v3, v4, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :goto_4
    const/16 v2, 0x2d

    .line 156
    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v4, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 161
    .line 162
    iget-short v4, v4, Lj$/time/LocalDate;->b:S

    .line 163
    .line 164
    const/16 v5, 0xa

    .line 165
    .line 166
    invoke-static {v3, v5, v4}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v2, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 173
    .line 174
    iget-short v2, v2, Lj$/time/LocalDate;->c:S

    .line 175
    .line 176
    invoke-static {v3, v5, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 177
    .line 178
    .line 179
    const/16 v2, 0x54

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 185
    .line 186
    iget-byte v2, v2, Lj$/time/i;->a:B

    .line 187
    .line 188
    invoke-static {v3, v5, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 189
    .line 190
    .line 191
    const/16 v2, 0x3a

    .line 192
    .line 193
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v4, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 197
    .line 198
    iget-byte v4, v4, Lj$/time/i;->b:B

    .line 199
    .line 200
    invoke-static {v3, v5, v4}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 207
    .line 208
    iget-byte v0, v0, Lj$/time/i;->c:B

    .line 209
    .line 210
    invoke-static {v3, v5, v0}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 211
    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    const/16 v0, 0x2e

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const v0, 0x5f5e100

    .line 221
    .line 222
    .line 223
    :goto_5
    rem-int/lit8 v2, v1, 0xa

    .line 224
    .line 225
    if-nez v2, :cond_5

    .line 226
    .line 227
    div-int/lit8 v1, v1, 0xa

    .line 228
    .line 229
    div-int/lit8 v0, v0, 0xa

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_5
    invoke-static {v3, v0, v1}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 233
    .line 234
    .line 235
    :cond_6
    const/16 v0, 0x5a

    .line 236
    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    .line 245
    .line 246
    :cond_7
    iget-object p0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    .line 247
    .line 248
    return-object p0
.end method

.method public final u(J)J
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lj$/nio/file/attribute/FileTime;->a:J

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    sub-long/2addr v2, p0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-wide v1, p0, Lj$/time/Instant;->a:J

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    sub-long/2addr v1, p0

    .line 30
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0
.end method
