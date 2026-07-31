.class public final Lkotlin/time/InstantParseResult$Success;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/time/InstantParseResult;


# instance fields
.field public epochSeconds:J

.field public nanosecondsOfSecond:I


# virtual methods
.method public toInstant()Lkotlin/time/Instant;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lkotlin/time/InstantParseResult$Success;->epochSeconds:J

    .line 4
    .line 5
    sget-object v3, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 6
    .line 7
    sget-object v3, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 8
    .line 9
    invoke-virtual {v3}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    cmp-long v4, v1, v4

    .line 14
    .line 15
    if-ltz v4, :cond_5

    .line 16
    .line 17
    sget-object v4, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    .line 18
    .line 19
    invoke-virtual {v4}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    cmp-long v5, v1, v5

    .line 24
    .line 25
    if-gtz v5, :cond_5

    .line 26
    .line 27
    iget v0, v0, Lkotlin/time/InstantParseResult$Success;->nanosecondsOfSecond:I

    .line 28
    .line 29
    int-to-long v5, v0

    .line 30
    const-wide/32 v7, 0x3b9aca00

    .line 31
    .line 32
    .line 33
    div-long v9, v5, v7

    .line 34
    .line 35
    xor-long v11, v5, v7

    .line 36
    .line 37
    const-wide/16 v13, 0x0

    .line 38
    .line 39
    cmp-long v0, v11, v13

    .line 40
    .line 41
    if-gez v0, :cond_0

    .line 42
    .line 43
    mul-long v11, v9, v7

    .line 44
    .line 45
    cmp-long v0, v11, v5

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-wide/16 v11, -0x1

    .line 50
    .line 51
    add-long/2addr v9, v11

    .line 52
    :cond_0
    add-long v11, v1, v9

    .line 53
    .line 54
    xor-long v15, v1, v11

    .line 55
    .line 56
    cmp-long v0, v15, v13

    .line 57
    .line 58
    if-gez v0, :cond_1

    .line 59
    .line 60
    xor-long/2addr v9, v1

    .line 61
    cmp-long v0, v9, v13

    .line 62
    .line 63
    if-ltz v0, :cond_1

    .line 64
    .line 65
    cmp-long v0, v1, v13

    .line 66
    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-wide v0, -0x701cefeb9bec00L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    cmp-long v0, v11, v0

    .line 76
    .line 77
    if-gez v0, :cond_3

    .line 78
    .line 79
    :cond_2
    return-object v3

    .line 80
    :cond_3
    const-wide v0, 0x701cd2fa9578ffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long v0, v11, v0

    .line 86
    .line 87
    if-lez v0, :cond_4

    .line 88
    .line 89
    :goto_0
    return-object v4

    .line 90
    :cond_4
    rem-long/2addr v5, v7

    .line 91
    xor-long v0, v5, v7

    .line 92
    .line 93
    neg-long v2, v5

    .line 94
    or-long/2addr v2, v5

    .line 95
    and-long/2addr v0, v2

    .line 96
    const/16 v2, 0x3f

    .line 97
    .line 98
    shr-long/2addr v0, v2

    .line 99
    and-long/2addr v0, v7

    .line 100
    add-long/2addr v5, v0

    .line 101
    long-to-int v0, v5

    .line 102
    new-instance v1, Lkotlin/time/Instant;

    .line 103
    .line 104
    invoke-direct {v1, v11, v12, v0}, Lkotlin/time/Instant;-><init>(JI)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_5
    new-instance v0, Lkotlin/time/InstantFormatException;

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "The parsed date is outside the range representable by Instant (Unix epoch second "

    .line 113
    .line 114
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x29

    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0
.end method
