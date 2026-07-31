.class public final Lcom/jcraft/jzlib/Deflate$Config;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public func:I

.field public good_length:I

.field public max_chain:I

.field public max_lazy:I

.field public nice_length:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/jcraft/jzlib/Deflate$Config;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jzlib/Deflate$Config;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 8
    .line 9
    iput p2, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 10
    .line 11
    iput p3, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 12
    .line 13
    iput p4, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 14
    .line 15
    iput p5, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public boundsMatch()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate$Config;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x7

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 16
    .line 17
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 18
    .line 19
    if-le v1, v5, :cond_0

    .line 20
    .line 21
    move v1, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ne v1, v5, :cond_1

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v3

    .line 28
    :goto_0
    and-int/2addr v1, v0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_2
    and-int/lit8 v1, v0, 0x70

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 37
    .line 38
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 39
    .line 40
    if-le v1, v5, :cond_3

    .line 41
    .line 42
    move v1, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-ne v1, v5, :cond_4

    .line 45
    .line 46
    move v1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    move v1, v3

    .line 49
    :goto_1
    shl-int/2addr v1, v3

    .line 50
    and-int/2addr v1, v0

    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_5
    and-int/lit16 v1, v0, 0x700

    .line 55
    .line 56
    if-eqz v1, :cond_8

    .line 57
    .line 58
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 59
    .line 60
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 61
    .line 62
    if-le v1, v5, :cond_6

    .line 63
    .line 64
    move v1, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_6
    if-ne v1, v5, :cond_7

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_7
    move v1, v3

    .line 71
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    .line 72
    .line 73
    and-int/2addr v1, v0

    .line 74
    if-nez v1, :cond_8

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_8
    and-int/lit16 v1, v0, 0x7000

    .line 78
    .line 79
    if-eqz v1, :cond_b

    .line 80
    .line 81
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 82
    .line 83
    iget p0, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 84
    .line 85
    if-le v1, p0, :cond_9

    .line 86
    .line 87
    move v2, v4

    .line 88
    goto :goto_3

    .line 89
    :cond_9
    if-ne v1, p0, :cond_a

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_a
    move v2, v3

    .line 93
    :goto_3
    shl-int/lit8 p0, v2, 0xc

    .line 94
    .line 95
    and-int/2addr p0, v0

    .line 96
    if-nez p0, :cond_b

    .line 97
    .line 98
    :goto_4
    const/4 v4, 0x0

    .line 99
    :cond_b
    return v4

    .line 100
    :pswitch_0
    iget v0, p0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 101
    .line 102
    and-int/lit8 v1, v0, 0x7

    .line 103
    .line 104
    const/4 v2, 0x2

    .line 105
    const/4 v3, 0x4

    .line 106
    const/4 v4, 0x1

    .line 107
    if-eqz v1, :cond_e

    .line 108
    .line 109
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 110
    .line 111
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 112
    .line 113
    if-le v1, v5, :cond_c

    .line 114
    .line 115
    move v1, v4

    .line 116
    goto :goto_5

    .line 117
    :cond_c
    if-ne v1, v5, :cond_d

    .line 118
    .line 119
    move v1, v2

    .line 120
    goto :goto_5

    .line 121
    :cond_d
    move v1, v3

    .line 122
    :goto_5
    and-int/2addr v1, v0

    .line 123
    if-nez v1, :cond_e

    .line 124
    .line 125
    goto :goto_9

    .line 126
    :cond_e
    and-int/lit8 v1, v0, 0x70

    .line 127
    .line 128
    if-eqz v1, :cond_11

    .line 129
    .line 130
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 131
    .line 132
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 133
    .line 134
    if-le v1, v5, :cond_f

    .line 135
    .line 136
    move v1, v4

    .line 137
    goto :goto_6

    .line 138
    :cond_f
    if-ne v1, v5, :cond_10

    .line 139
    .line 140
    move v1, v2

    .line 141
    goto :goto_6

    .line 142
    :cond_10
    move v1, v3

    .line 143
    :goto_6
    shl-int/2addr v1, v3

    .line 144
    and-int/2addr v1, v0

    .line 145
    if-nez v1, :cond_11

    .line 146
    .line 147
    goto :goto_9

    .line 148
    :cond_11
    and-int/lit16 v1, v0, 0x700

    .line 149
    .line 150
    if-eqz v1, :cond_14

    .line 151
    .line 152
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 153
    .line 154
    iget v5, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 155
    .line 156
    if-le v1, v5, :cond_12

    .line 157
    .line 158
    move v1, v4

    .line 159
    goto :goto_7

    .line 160
    :cond_12
    if-ne v1, v5, :cond_13

    .line 161
    .line 162
    move v1, v2

    .line 163
    goto :goto_7

    .line 164
    :cond_13
    move v1, v3

    .line 165
    :goto_7
    shl-int/lit8 v1, v1, 0x8

    .line 166
    .line 167
    and-int/2addr v1, v0

    .line 168
    if-nez v1, :cond_14

    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_14
    and-int/lit16 v1, v0, 0x7000

    .line 172
    .line 173
    if-eqz v1, :cond_17

    .line 174
    .line 175
    iget v1, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 176
    .line 177
    iget p0, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 178
    .line 179
    if-le v1, p0, :cond_15

    .line 180
    .line 181
    move v2, v4

    .line 182
    goto :goto_8

    .line 183
    :cond_15
    if-ne v1, p0, :cond_16

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_16
    move v2, v3

    .line 187
    :goto_8
    shl-int/lit8 p0, v2, 0xc

    .line 188
    .line 189
    and-int/2addr p0, v0

    .line 190
    if-nez p0, :cond_17

    .line 191
    .line 192
    :goto_9
    const/4 v4, 0x0

    .line 193
    :cond_17
    return v4

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
