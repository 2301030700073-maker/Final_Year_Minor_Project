.class public final Landroidx/compose/material3/SegmentedButtonColors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activeBorderColor:J

.field public final activeContainerColor:J

.field public final activeContentColor:J

.field public final disabledActiveBorderColor:J

.field public final disabledActiveContainerColor:J

.field public final disabledActiveContentColor:J

.field public final disabledInactiveBorderColor:J

.field public final disabledInactiveContainerColor:J

.field public final disabledInactiveContentColor:J

.field public final inactiveBorderColor:J

.field public final inactiveContainerColor:J

.field public final inactiveContentColor:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContainerColor:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContentColor:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeBorderColor:J

    .line 9
    .line 10
    iput-wide p7, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContainerColor:J

    .line 11
    .line 12
    iput-wide p9, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContentColor:J

    .line 13
    .line 14
    iput-wide p11, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveBorderColor:J

    .line 15
    .line 16
    iput-wide p13, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContainerColor:J

    .line 17
    .line 18
    move-wide p1, p15

    .line 19
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContentColor:J

    .line 20
    .line 21
    move-wide/from16 p1, p17

    .line 22
    .line 23
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveBorderColor:J

    .line 24
    .line 25
    move-wide/from16 p1, p19

    .line 26
    .line 27
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContainerColor:J

    .line 28
    .line 29
    move-wide/from16 p1, p21

    .line 30
    .line 31
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContentColor:J

    .line 32
    .line 33
    move-wide/from16 p1, p23

    .line 34
    .line 35
    iput-wide p1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveBorderColor:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Landroidx/compose/material3/SegmentedButtonColors;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroidx/compose/material3/SegmentedButtonColors;

    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeBorderColor:J

    .line 21
    .line 22
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->activeBorderColor:J

    .line 23
    .line 24
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContentColor:J

    .line 32
    .line 33
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->activeContentColor:J

    .line 34
    .line 35
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContainerColor:J

    .line 43
    .line 44
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->activeContainerColor:J

    .line 45
    .line 46
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveBorderColor:J

    .line 54
    .line 55
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->inactiveBorderColor:J

    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    return v1

    .line 64
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContentColor:J

    .line 65
    .line 66
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContentColor:J

    .line 67
    .line 68
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    return v1

    .line 75
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContainerColor:J

    .line 76
    .line 77
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContainerColor:J

    .line 78
    .line 79
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_8

    .line 84
    .line 85
    return v1

    .line 86
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveBorderColor:J

    .line 87
    .line 88
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveBorderColor:J

    .line 89
    .line 90
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_9

    .line 95
    .line 96
    return v1

    .line 97
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContentColor:J

    .line 98
    .line 99
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContentColor:J

    .line 100
    .line 101
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_a

    .line 106
    .line 107
    return v1

    .line 108
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContainerColor:J

    .line 109
    .line 110
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContainerColor:J

    .line 111
    .line 112
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_b

    .line 117
    .line 118
    return v1

    .line 119
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveBorderColor:J

    .line 120
    .line 121
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveBorderColor:J

    .line 122
    .line 123
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_c

    .line 128
    .line 129
    return v1

    .line 130
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContentColor:J

    .line 131
    .line 132
    iget-wide v4, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContentColor:J

    .line 133
    .line 134
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_d

    .line 139
    .line 140
    return v1

    .line 141
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContainerColor:J

    .line 142
    .line 143
    iget-wide p0, p1, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContainerColor:J

    .line 144
    .line 145
    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_e

    .line 150
    .line 151
    return v1

    .line 152
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeBorderColor:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContentColor:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->activeContainerColor:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveBorderColor:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContentColor:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContainerColor:J

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveBorderColor:J

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContentColor:J

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContainerColor:J

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveBorderColor:J

    .line 61
    .line 62
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-wide v2, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContentColor:J

    .line 67
    .line 68
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-wide v1, p0, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContainerColor:J

    .line 73
    .line 74
    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    add-int/2addr p0, v0

    .line 79
    return p0
.end method
