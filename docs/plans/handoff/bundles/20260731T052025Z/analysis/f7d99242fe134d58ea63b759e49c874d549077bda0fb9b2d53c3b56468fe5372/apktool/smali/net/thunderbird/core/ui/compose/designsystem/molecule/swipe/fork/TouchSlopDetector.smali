.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public totalPositionChange:J


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-wide p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 7
    .line 8
    return-void
.end method

.method public static getPostSlopOffset-qto3Fdw$default(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;JF)J
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 4
    .line 5
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->mainAxis-k-4lQ0M(J)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    cmpl-float v1, v1, p3

    .line 27
    .line 28
    if-ltz v1, :cond_7

    .line 29
    .line 30
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 31
    .line 32
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    const/16 v1, 0x20

    .line 37
    .line 38
    shr-long v2, p1, v1

    .line 39
    .line 40
    long-to-int v2, v2

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-wide v3, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long/2addr p1, v3

    .line 55
    long-to-int p1, p1

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    float-to-double p1, p1

    .line 65
    float-to-double v5, v2

    .line 66
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    double-to-float p1, p1

    .line 71
    const/high16 p2, 0x43340000    # 180.0f

    .line 72
    .line 73
    mul-float/2addr p1, p2

    .line 74
    float-to-double p1, p1

    .line 75
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    div-double/2addr p1, v5

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    const/4 v2, -0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    aget v2, v2, v5

    .line 92
    .line 93
    :goto_1
    const/4 v5, 0x1

    .line 94
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 95
    .line 96
    if-eq v2, v5, :cond_3

    .line 97
    .line 98
    const/4 v5, 0x2

    .line 99
    if-eq v2, v5, :cond_2

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_2
    cmpl-double p1, p1, v6

    .line 103
    .line 104
    if-lez p1, :cond_7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    cmpg-double p1, p1, v6

    .line 108
    .line 109
    if-gez p1, :cond_7

    .line 110
    .line 111
    :goto_2
    iget-wide p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(FJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide p1

    .line 123
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    iget-wide v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 128
    .line 129
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 130
    .line 131
    .line 132
    move-result-wide p0

    .line 133
    return-wide p0

    .line 134
    :cond_4
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->mainAxis-k-4lQ0M(J)F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget-wide v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 139
    .line 140
    invoke-virtual {p0, v5, v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->mainAxis-k-4lQ0M(J)F

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    mul-float/2addr p2, p3

    .line 149
    sub-float/2addr p1, p2

    .line 150
    iget-wide p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 151
    .line 152
    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 153
    .line 154
    if-ne v0, p0, :cond_5

    .line 155
    .line 156
    and-long/2addr p2, v3

    .line 157
    :goto_3
    long-to-int p2, p2

    .line 158
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    goto :goto_4

    .line 163
    :cond_5
    shr-long/2addr p2, v1

    .line 164
    goto :goto_3

    .line 165
    :goto_4
    if-ne v0, p0, :cond_6

    .line 166
    .line 167
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    int-to-long p0, p0

    .line 172
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    int-to-long p2, p2

    .line 177
    shl-long/2addr p0, v1

    .line 178
    and-long/2addr p2, v3

    .line 179
    or-long/2addr p0, p2

    .line 180
    return-wide p0

    .line 181
    :cond_6
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    int-to-long p2, p0

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    int-to-long p0, p0

    .line 191
    shl-long/2addr p2, v1

    .line 192
    and-long/2addr p0, v3

    .line 193
    or-long/2addr p0, p2

    .line 194
    return-wide p0

    .line 195
    :cond_7
    :goto_5
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    return-wide p0
.end method


# virtual methods
.method public final mainAxis-k-4lQ0M(J)F
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x20

    .line 8
    .line 9
    shr-long p0, p1, p0

    .line 10
    .line 11
    long-to-int p0, p0

    .line 12
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const-wide v0, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p1, v0

    .line 23
    long-to-int p0, p1

    .line 24
    goto :goto_0
.end method
