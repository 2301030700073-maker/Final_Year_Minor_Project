.class public final Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public charset:I

.field public hasOut:Z

.field public mIn:Ljava/io/InputStream;

.field public out:I


# virtual methods
.method public final read()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v2, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 9
    .line 10
    iget p0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->out:I

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    const/16 v3, 0x1b

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x2

    .line 21
    if-ne v1, v3, :cond_8

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v3, 0x28

    .line 28
    .line 29
    const/16 v6, 0x42

    .line 30
    .line 31
    if-ne v1, v3, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v1, v6, :cond_3

    .line 38
    .line 39
    const/16 v3, 0x4a

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v3, 0x49

    .line 45
    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    iput v5, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    new-instance p0, Ljava/nio/charset/MalformedInputException;

    .line 52
    .line 53
    invoke-direct {p0, v2}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_3
    :goto_1
    iput v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/16 v3, 0x24

    .line 61
    .line 62
    if-ne v1, v3, :cond_7

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v3, 0x40

    .line 69
    .line 70
    if-eq v1, v3, :cond_6

    .line 71
    .line 72
    if-ne v1, v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    new-instance p0, Ljava/nio/charset/MalformedInputException;

    .line 76
    .line 77
    invoke-direct {p0, v2}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_6
    :goto_2
    const/4 v1, 0x3

    .line 82
    iput v1, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 83
    .line 84
    :goto_3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_0

    .line 89
    :cond_7
    new-instance p0, Ljava/nio/charset/MalformedInputException;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_8
    const/16 v3, 0xa

    .line 96
    .line 97
    if-eq v1, v3, :cond_9

    .line 98
    .line 99
    const/16 v3, 0xd

    .line 100
    .line 101
    if-ne v1, v3, :cond_a

    .line 102
    .line 103
    :cond_9
    iput v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 104
    .line 105
    :cond_a
    const/16 v3, 0x21

    .line 106
    .line 107
    if-lt v1, v3, :cond_12

    .line 108
    .line 109
    const/16 v6, 0x7f

    .line 110
    .line 111
    if-lt v1, v6, :cond_b

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_b
    iget v7, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 115
    .line 116
    invoke-static {v7}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_12

    .line 121
    .line 122
    if-eq v7, v4, :cond_11

    .line 123
    .line 124
    if-ne v7, v5, :cond_10

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-lt v0, v3, :cond_f

    .line 131
    .line 132
    if-ge v0, v6, :cond_f

    .line 133
    .line 134
    add-int/lit8 v2, v1, 0x1

    .line 135
    .line 136
    div-int/2addr v2, v5

    .line 137
    const/16 v3, 0x5f

    .line 138
    .line 139
    if-ge v1, v3, :cond_c

    .line 140
    .line 141
    const/16 v3, 0x70

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_c
    const/16 v3, 0xb0

    .line 145
    .line 146
    :goto_4
    add-int/2addr v2, v3

    .line 147
    rem-int/2addr v1, v5

    .line 148
    if-nez v1, :cond_d

    .line 149
    .line 150
    const/16 v1, 0x7e

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_d
    const/16 v1, 0x60

    .line 154
    .line 155
    if-ge v0, v1, :cond_e

    .line 156
    .line 157
    const/16 v1, 0x1f

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_e
    const/16 v1, 0x20

    .line 161
    .line 162
    :goto_5
    add-int/2addr v0, v1

    .line 163
    iput v0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->out:I

    .line 164
    .line 165
    iput-boolean v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 166
    .line 167
    return v2

    .line 168
    :cond_f
    new-instance p0, Ljava/nio/charset/MalformedInputException;

    .line 169
    .line 170
    invoke-direct {p0, v2}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    .line 175
    .line 176
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_11
    add-int/lit16 v1, v1, 0x80

    .line 181
    .line 182
    :cond_12
    :goto_6
    return v1
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
