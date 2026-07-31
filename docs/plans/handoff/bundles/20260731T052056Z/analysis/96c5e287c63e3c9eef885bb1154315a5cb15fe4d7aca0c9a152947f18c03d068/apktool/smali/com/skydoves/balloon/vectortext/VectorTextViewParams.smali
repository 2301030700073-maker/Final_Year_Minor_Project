.class public final Lcom/skydoves/balloon/vectortext/VectorTextViewParams;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final compoundDrawablePadding:Ljava/lang/Integer;

.field public final compoundDrawablePaddingRes:Ljava/lang/Integer;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final drawableBottomRes:Ljava/lang/Integer;

.field public final drawableEndRes:Ljava/lang/Integer;

.field public final drawableStartRes:Ljava/lang/Integer;

.field public final drawableTopRes:Ljava/lang/Integer;

.field public final heightRes:Ljava/lang/Integer;

.field public final iconHeight:Ljava/lang/Integer;

.field public final iconWidth:Ljava/lang/Integer;

.field public isRtlLayout:Z

.field public final squareSizeRes:Ljava/lang/Integer;

.field public final tintColor:Ljava/lang/Integer;

.field public final widthRes:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 13

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object p1, v2

    .line 9
    :cond_0
    and-int/lit8 v1, v0, 0x2

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v1, p2

    .line 16
    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    move-object v3, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move-object/from16 v3, p3

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v4, v0, 0x8

    .line 25
    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    move-object v4, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    move-object/from16 v4, p4

    .line 31
    .line 32
    :goto_2
    and-int/lit16 v5, v0, 0x200

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    const-string v5, ""

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_4
    move-object/from16 v5, p5

    .line 40
    .line 41
    :goto_3
    and-int/lit16 v6, v0, 0x400

    .line 42
    .line 43
    if-eqz v6, :cond_5

    .line 44
    .line 45
    move-object v6, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    move-object/from16 v6, p6

    .line 48
    .line 49
    :goto_4
    and-int/lit16 v7, v0, 0x800

    .line 50
    .line 51
    if-eqz v7, :cond_6

    .line 52
    .line 53
    move-object v7, v2

    .line 54
    goto :goto_5

    .line 55
    :cond_6
    move-object/from16 v7, p7

    .line 56
    .line 57
    :goto_5
    and-int/lit16 v8, v0, 0x1000

    .line 58
    .line 59
    if-eqz v8, :cond_7

    .line 60
    .line 61
    move-object v8, v2

    .line 62
    goto :goto_6

    .line 63
    :cond_7
    move-object/from16 v8, p8

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v9, v0, 0x2000

    .line 66
    .line 67
    if-eqz v9, :cond_8

    .line 68
    .line 69
    move-object v9, v2

    .line 70
    goto :goto_7

    .line 71
    :cond_8
    move-object/from16 v9, p9

    .line 72
    .line 73
    :goto_7
    const v10, 0x8000

    .line 74
    .line 75
    .line 76
    and-int/2addr v10, v0

    .line 77
    if-eqz v10, :cond_9

    .line 78
    .line 79
    move-object v10, v2

    .line 80
    goto :goto_8

    .line 81
    :cond_9
    move-object/from16 v10, p11

    .line 82
    .line 83
    :goto_8
    const/high16 v11, 0x10000

    .line 84
    .line 85
    and-int/2addr v11, v0

    .line 86
    if-eqz v11, :cond_a

    .line 87
    .line 88
    move-object v11, v2

    .line 89
    goto :goto_9

    .line 90
    :cond_a
    move-object/from16 v11, p12

    .line 91
    .line 92
    :goto_9
    const/high16 v12, 0x20000

    .line 93
    .line 94
    and-int/2addr v0, v12

    .line 95
    if-eqz v0, :cond_b

    .line 96
    .line 97
    goto :goto_a

    .line 98
    :cond_b
    move-object/from16 v2, p13

    .line 99
    .line 100
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableStartRes:Ljava/lang/Integer;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableEndRes:Ljava/lang/Integer;

    .line 109
    .line 110
    iput-object v3, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    .line 111
    .line 112
    iput-object v4, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 116
    .line 117
    iput-object v5, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->contentDescription:Ljava/lang/CharSequence;

    .line 118
    .line 119
    iput-object v6, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    .line 120
    .line 121
    iput-object v7, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconWidth:Ljava/lang/Integer;

    .line 122
    .line 123
    iput-object v8, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconHeight:Ljava/lang/Integer;

    .line 124
    .line 125
    iput-object v9, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    .line 126
    .line 127
    move-object/from16 p1, p10

    .line 128
    .line 129
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColor:Ljava/lang/Integer;

    .line 130
    .line 131
    iput-object v10, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    .line 132
    .line 133
    iput-object v11, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    .line 134
    .line 135
    iput-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableStartRes:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableStartRes:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableEndRes:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableEndRes:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_5
    iget-boolean v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 62
    .line 63
    iget-boolean v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 64
    .line 65
    if-eq v0, v1, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->contentDescription:Ljava/lang/CharSequence;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->contentDescription:Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_7

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconWidth:Ljava/lang/Integer;

    .line 91
    .line 92
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconWidth:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconHeight:Ljava/lang/Integer;

    .line 102
    .line 103
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconHeight:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_a

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    .line 113
    .line 114
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_b

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColor:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColor:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_c

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    .line 135
    .line 136
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_d

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_d
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    .line 146
    .line 147
    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_e

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_e
    iget-object p0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_f

    .line 165
    .line 166
    :goto_0
    const/4 p0, 0x0

    .line 167
    return p0

    .line 168
    :cond_f
    :goto_1
    const/4 p0, 0x1

    .line 169
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableStartRes:Ljava/lang/Integer;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableEndRes:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v1, v2

    .line 51
    const v2, 0x1b4d89f

    .line 52
    .line 53
    .line 54
    mul-int/2addr v1, v2

    .line 55
    iget-boolean v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    const/16 v2, 0x4cf

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    const/16 v2, 0x4d5

    .line 63
    .line 64
    :goto_4
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->contentDescription:Ljava/lang/CharSequence;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/2addr v2, v1

    .line 74
    mul-int/lit8 v2, v2, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    .line 77
    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    move v1, v0

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_5
    add-int/2addr v2, v1

    .line 87
    mul-int/lit8 v2, v2, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconWidth:Ljava/lang/Integer;

    .line 90
    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    move v1, v0

    .line 94
    goto :goto_6

    .line 95
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_6
    add-int/2addr v2, v1

    .line 100
    mul-int/lit8 v2, v2, 0x1f

    .line 101
    .line 102
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconHeight:Ljava/lang/Integer;

    .line 103
    .line 104
    if-nez v1, :cond_7

    .line 105
    .line 106
    move v1, v0

    .line 107
    goto :goto_7

    .line 108
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_7
    add-int/2addr v2, v1

    .line 113
    mul-int/lit8 v2, v2, 0x1f

    .line 114
    .line 115
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    .line 116
    .line 117
    if-nez v1, :cond_8

    .line 118
    .line 119
    move v1, v0

    .line 120
    goto :goto_8

    .line 121
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    :goto_8
    add-int/2addr v2, v1

    .line 126
    mul-int/lit8 v2, v2, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColor:Ljava/lang/Integer;

    .line 129
    .line 130
    if-nez v1, :cond_9

    .line 131
    .line 132
    move v1, v0

    .line 133
    goto :goto_9

    .line 134
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_9
    add-int/2addr v2, v1

    .line 139
    mul-int/lit8 v2, v2, 0x1f

    .line 140
    .line 141
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    .line 142
    .line 143
    if-nez v1, :cond_a

    .line 144
    .line 145
    move v1, v0

    .line 146
    goto :goto_a

    .line 147
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    :goto_a
    add-int/2addr v2, v1

    .line 152
    mul-int/lit8 v2, v2, 0x1f

    .line 153
    .line 154
    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    .line 155
    .line 156
    if-nez v1, :cond_b

    .line 157
    .line 158
    move v1, v0

    .line 159
    goto :goto_b

    .line 160
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_b
    add-int/2addr v2, v1

    .line 165
    mul-int/lit8 v2, v2, 0x1f

    .line 166
    .line 167
    iget-object p0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    .line 168
    .line 169
    if-nez p0, :cond_c

    .line 170
    .line 171
    goto :goto_c

    .line 172
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    :goto_c
    add-int/2addr v2, v0

    .line 177
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "VectorTextViewParams(drawableStartRes="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableStartRes:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", drawableEndRes="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableEndRes:Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", drawableBottomRes="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", drawableTopRes="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", drawableStart=null, drawableEnd=null, drawableBottom=null, drawableTop=null, isRtlLayout="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", contentDescription="

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->contentDescription:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", compoundDrawablePadding="

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", iconWidth="

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconWidth:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, ", iconHeight="

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconHeight:Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, ", compoundDrawablePaddingRes="

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ", tintColor="

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColor:Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ", widthRes="

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", heightRes="

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, ", squareSizeRes="

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p0, ")"

    .line 144
    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method
