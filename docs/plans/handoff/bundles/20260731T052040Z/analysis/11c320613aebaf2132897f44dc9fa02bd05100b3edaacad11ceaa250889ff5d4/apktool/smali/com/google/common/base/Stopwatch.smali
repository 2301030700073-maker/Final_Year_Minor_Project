.class public final Lcom/google/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public elapsedNanos:J

.field public isRunning:Z

.field public startTick:J


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 17
    .line 18
    :goto_0
    const-wide v2, 0x4e94914f0000L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v2, v0, v2

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p0, v2, v4

    .line 28
    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    if-lez p0, :cond_1

    .line 32
    .line 33
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-wide v6, 0x34630b8a000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    div-long v6, v0, v6

    .line 42
    .line 43
    cmp-long p0, v6, v4

    .line 44
    .line 45
    if-lez p0, :cond_2

    .line 46
    .line 47
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-wide v6, 0xdf8475800L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-long v6, v0, v6

    .line 56
    .line 57
    cmp-long p0, v6, v4

    .line 58
    .line 59
    if-lez p0, :cond_3

    .line 60
    .line 61
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-wide/32 v6, 0x3b9aca00

    .line 65
    .line 66
    .line 67
    div-long v6, v0, v6

    .line 68
    .line 69
    cmp-long p0, v6, v4

    .line 70
    .line 71
    if-lez p0, :cond_4

    .line 72
    .line 73
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const-wide/32 v6, 0xf4240

    .line 77
    .line 78
    .line 79
    div-long v6, v0, v6

    .line 80
    .line 81
    cmp-long p0, v6, v4

    .line 82
    .line 83
    if-lez p0, :cond_5

    .line 84
    .line 85
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const-wide/16 v6, 0x3e8

    .line 89
    .line 90
    div-long v6, v0, v6

    .line 91
    .line 92
    cmp-long p0, v6, v4

    .line 93
    .line 94
    if-lez p0, :cond_6

    .line 95
    .line 96
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    move-object p0, v2

    .line 100
    :goto_1
    long-to-double v0, v0

    .line 101
    const-wide/16 v3, 0x1

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    long-to-double v2, v2

    .line 108
    div-double/2addr v0, v2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    sget v3, Lcom/google/common/base/Platform;->$r8$clinit:I

    .line 115
    .line 116
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/4 v1, 0x1

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    aput-object v0, v1, v4

    .line 127
    .line 128
    const-string v0, "%.4g"

    .line 129
    .line 130
    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, " "

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    sget-object v0, Lcom/google/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    aget p0, v0, p0

    .line 149
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 154
    .line 155
    .line 156
    const/4 p0, 0x0

    .line 157
    return-object p0

    .line 158
    :pswitch_0
    const-string p0, "d"

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_1
    const-string p0, "h"

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_2
    const-string p0, "min"

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :pswitch_3
    const-string p0, "s"

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :pswitch_4
    const-string p0, "ms"

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :pswitch_5
    const-string/jumbo p0, "\u03bcs"

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_6
    const-string p0, "ns"

    .line 178
    .line 179
    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
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
