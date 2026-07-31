.class public final synthetic Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFavoriteFolderIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedFavoriteFolderIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance p0, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v1, 0x43fc0000    # 504.0f

    .line 38
    .line 39
    const/high16 v3, 0x44270000    # 668.0f

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v1, -0x3d740000    # -70.0f

    .line 45
    .line 46
    const/high16 v3, 0x42b80000    # 92.0f

    .line 47
    .line 48
    invoke-virtual {p0, v3, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 49
    .line 50
    .line 51
    const/high16 v1, 0x428c0000    # 70.0f

    .line 52
    .line 53
    invoke-virtual {p0, v3, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 54
    .line 55
    .line 56
    const/high16 v1, -0x3d1c0000    # -114.0f

    .line 57
    .line 58
    const/high16 v4, -0x3df80000    # -34.0f

    .line 59
    .line 60
    invoke-virtual {p0, v4, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 61
    .line 62
    .line 63
    const/high16 v1, -0x3d6c0000    # -74.0f

    .line 64
    .line 65
    invoke-virtual {p0, v3, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 66
    .line 67
    .line 68
    const/high16 v1, 0x441e0000    # 632.0f

    .line 69
    .line 70
    const/high16 v5, 0x43f00000    # 480.0f

    .line 71
    .line 72
    invoke-virtual {p0, v1, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 73
    .line 74
    .line 75
    const/high16 v1, -0x3d200000    # -112.0f

    .line 76
    .line 77
    const/high16 v6, -0x3df00000    # -36.0f

    .line 78
    .line 79
    invoke-virtual {p0, v6, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x42e00000    # 112.0f

    .line 83
    .line 84
    invoke-virtual {p0, v6, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 85
    .line 86
    .line 87
    const/high16 v1, 0x43df0000    # 446.0f

    .line 88
    .line 89
    invoke-virtual {p0, v1, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 90
    .line 91
    .line 92
    const/high16 v1, 0x42940000    # 74.0f

    .line 93
    .line 94
    const/high16 v6, 0x42e40000    # 114.0f

    .line 95
    .line 96
    invoke-static {p0, v3, v1, v4, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 97
    .line 98
    .line 99
    const/high16 v1, 0x43200000    # 160.0f

    .line 100
    .line 101
    const/high16 v3, 0x44480000    # 800.0f

    .line 102
    .line 103
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 104
    .line 105
    .line 106
    const/high16 v4, -0x3dfc0000    # -33.0f

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/high16 v7, -0x3d9e0000    # -56.5f

    .line 110
    .line 111
    const/high16 v8, -0x3e440000    # -23.5f

    .line 112
    .line 113
    invoke-virtual {p0, v4, v6, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 114
    .line 115
    .line 116
    const/high16 v9, 0x44340000    # 720.0f

    .line 117
    .line 118
    const/high16 v10, 0x42a00000    # 80.0f

    .line 119
    .line 120
    invoke-virtual {p0, v10, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 121
    .line 122
    .line 123
    const/high16 v9, -0x3c100000    # -480.0f

    .line 124
    .line 125
    invoke-virtual {p0, v6, v9}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 126
    .line 127
    .line 128
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 129
    .line 130
    invoke-virtual {p0, v6, v4, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 134
    .line 135
    .line 136
    const/high16 v4, 0x43700000    # 240.0f

    .line 137
    .line 138
    invoke-virtual {p0, v4, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v10, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 142
    .line 143
    .line 144
    const/high16 v7, 0x43a00000    # 320.0f

    .line 145
    .line 146
    invoke-virtual {p0, v7, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 147
    .line 148
    .line 149
    const/high16 v10, 0x42040000    # 33.0f

    .line 150
    .line 151
    const/high16 v12, 0x42620000    # 56.5f

    .line 152
    .line 153
    invoke-virtual {p0, v10, v6, v12, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 154
    .line 155
    .line 156
    const/high16 v11, 0x445c0000    # 880.0f

    .line 157
    .line 158
    invoke-virtual {p0, v11, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 159
    .line 160
    .line 161
    const/high16 v11, 0x43c80000    # 400.0f

    .line 162
    .line 163
    invoke-virtual {p0, v6, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v6, v10, v8, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v3, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 176
    .line 177
    .line 178
    const/high16 v3, -0x3d600000    # -80.0f

    .line 179
    .line 180
    invoke-virtual {p0, v6, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 181
    .line 182
    .line 183
    const/high16 v8, 0x44200000    # 640.0f

    .line 184
    .line 185
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 186
    .line 187
    .line 188
    const/high16 v8, -0x3c380000    # -400.0f

    .line 189
    .line 190
    invoke-virtual {p0, v6, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 191
    .line 192
    .line 193
    const v8, 0x43df8000    # 447.0f

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v8, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v3, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v1, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v6, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 212
    .line 213
    .line 214
    invoke-static {p0, v6, v9, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 218
    .line 219
    const/high16 v3, 0x3f800000    # 1.0f

    .line 220
    .line 221
    const/high16 v4, 0x3f800000    # 1.0f

    .line 222
    .line 223
    const/high16 v5, 0x3f800000    # 1.0f

    .line 224
    .line 225
    const/4 v6, 0x2

    .line 226
    const/high16 v7, 0x3f800000    # 1.0f

    .line 227
    .line 228
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFingerprintIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedFingerprintIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const v1, 0x43f08000    # 481.0f

    .line 32
    .line 33
    .line 34
    const/high16 v3, 0x43330000    # 179.0f

    .line 35
    .line 36
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/high16 v5, 0x43480000    # 200.0f

    .line 41
    .line 42
    const/high16 v6, 0x42360000    # 45.5f

    .line 43
    .line 44
    const/high16 v7, 0x42d40000    # 106.0f

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-virtual {v4, v7, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 48
    .line 49
    .line 50
    const v5, 0x44518000    # 838.0f

    .line 51
    .line 52
    .line 53
    const/high16 v6, 0x43b20000    # 356.0f

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 56
    .line 57
    .line 58
    const/high16 v5, 0x40e00000    # 7.0f

    .line 59
    .line 60
    const/high16 v6, 0x41100000    # 9.0f

    .line 61
    .line 62
    const/high16 v7, 0x40900000    # 4.5f

    .line 63
    .line 64
    const/high16 v9, 0x41800000    # 16.0f

    .line 65
    .line 66
    invoke-virtual {v4, v5, v6, v7, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 67
    .line 68
    .line 69
    const/high16 v10, -0x3ef80000    # -8.5f

    .line 70
    .line 71
    const/high16 v11, 0x41400000    # 12.0f

    .line 72
    .line 73
    invoke-virtual {v4, v10, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 74
    .line 75
    .line 76
    const/high16 v12, -0x3f400000    # -6.0f

    .line 77
    .line 78
    const/high16 v13, 0x40a00000    # 5.0f

    .line 79
    .line 80
    const/high16 v14, -0x3ea00000    # -14.0f

    .line 81
    .line 82
    invoke-virtual {v4, v12, v13, v14, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v14, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 86
    .line 87
    .line 88
    const v15, -0x3cf28000    # -141.5f

    .line 89
    .line 90
    .line 91
    const/high16 v13, -0x3d110000    # -119.5f

    .line 92
    .line 93
    const/high16 v9, -0x3da40000    # -55.0f

    .line 94
    .line 95
    const/high16 v7, -0x3d640000    # -78.0f

    .line 96
    .line 97
    invoke-virtual {v4, v9, v7, v15, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 98
    .line 99
    .line 100
    const/high16 v7, 0x435b0000    # 219.0f

    .line 101
    .line 102
    invoke-virtual {v4, v1, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 103
    .line 104
    .line 105
    const/high16 v7, -0x3cca0000    # -182.0f

    .line 106
    .line 107
    const/high16 v9, 0x42260000    # 41.5f

    .line 108
    .line 109
    const/high16 v13, -0x3d3e0000    # -97.0f

    .line 110
    .line 111
    invoke-virtual {v4, v13, v8, v7, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 112
    .line 113
    .line 114
    const/high16 v7, 0x431e0000    # 158.0f

    .line 115
    .line 116
    const/high16 v9, 0x43be0000    # 380.0f

    .line 117
    .line 118
    invoke-virtual {v4, v7, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 119
    .line 120
    .line 121
    const/high16 v7, 0x41200000    # 10.0f

    .line 122
    .line 123
    invoke-virtual {v4, v12, v6, v14, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 124
    .line 125
    .line 126
    const/high16 v9, -0x3f800000    # -4.0f

    .line 127
    .line 128
    invoke-virtual {v4, v14, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 129
    .line 130
    .line 131
    const/high16 v13, -0x3f600000    # -5.0f

    .line 132
    .line 133
    const/high16 v15, -0x3eb80000    # -12.5f

    .line 134
    .line 135
    const/high16 v12, -0x3f200000    # -7.0f

    .line 136
    .line 137
    invoke-virtual {v4, v12, v13, v10, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 138
    .line 139
    .line 140
    const/high16 v10, 0x42fc0000    # 126.0f

    .line 141
    .line 142
    const/high16 v12, 0x43b30000    # 358.0f

    .line 143
    .line 144
    invoke-virtual {v4, v10, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 145
    .line 146
    .line 147
    const v13, 0x431b8000    # 155.5f

    .line 148
    .line 149
    .line 150
    const/high16 v15, -0x3cfc0000    # -132.0f

    .line 151
    .line 152
    const/high16 v10, 0x42780000    # 62.0f

    .line 153
    .line 154
    const/high16 v14, -0x3d560000    # -85.0f

    .line 155
    .line 156
    invoke-virtual {v4, v10, v14, v13, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 163
    .line 164
    .line 165
    const/high16 v3, 0x42bc0000    # 94.0f

    .line 166
    .line 167
    invoke-virtual {v4, v8, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 168
    .line 169
    .line 170
    const/high16 v3, 0x42b40000    # 90.0f

    .line 171
    .line 172
    const/high16 v10, 0x43070000    # 135.0f

    .line 173
    .line 174
    const/high16 v13, 0x43680000    # 232.0f

    .line 175
    .line 176
    invoke-virtual {v4, v10, v8, v13, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 177
    .line 178
    .line 179
    const/high16 v3, 0x435f0000    # 223.0f

    .line 180
    .line 181
    const/high16 v10, 0x42c20000    # 97.0f

    .line 182
    .line 183
    invoke-virtual {v4, v10, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 184
    .line 185
    .line 186
    const/high16 v3, -0x3df20000    # -35.5f

    .line 187
    .line 188
    const/high16 v15, 0x42a70000    # 83.5f

    .line 189
    .line 190
    const/high16 v9, 0x42480000    # 50.0f

    .line 191
    .line 192
    invoke-virtual {v4, v8, v9, v3, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 193
    .line 194
    .line 195
    const v3, 0x442fc000    # 703.0f

    .line 196
    .line 197
    .line 198
    const/high16 v9, 0x442c0000    # 688.0f

    .line 199
    .line 200
    invoke-virtual {v4, v9, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 201
    .line 202
    .line 203
    const/high16 v3, -0x3d510000    # -87.5f

    .line 204
    .line 205
    const/high16 v15, -0x3dfa0000    # -33.5f

    .line 206
    .line 207
    const/high16 v9, -0x3db40000    # -51.0f

    .line 208
    .line 209
    invoke-virtual {v4, v9, v8, v3, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 210
    .line 211
    .line 212
    const/high16 v3, 0x440d0000    # 564.0f

    .line 213
    .line 214
    const v9, 0x44128000    # 586.0f

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v3, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 218
    .line 219
    .line 220
    const/high16 v3, -0x3dfc0000    # -33.0f

    .line 221
    .line 222
    const/high16 v15, -0x3e3c0000    # -24.5f

    .line 223
    .line 224
    const/high16 v13, -0x3da20000    # -55.5f

    .line 225
    .line 226
    invoke-virtual {v4, v8, v3, v15, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 227
    .line 228
    .line 229
    const/high16 v3, 0x43fe0000    # 508.0f

    .line 230
    .line 231
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 232
    .line 233
    .line 234
    const/high16 v3, -0x3df80000    # -34.0f

    .line 235
    .line 236
    const/high16 v15, -0x3d960000    # -58.5f

    .line 237
    .line 238
    const/high16 v1, 0x41b40000    # 22.5f

    .line 239
    .line 240
    invoke-virtual {v4, v3, v8, v15, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 241
    .line 242
    .line 243
    const/high16 v15, 0x43c70000    # 398.0f

    .line 244
    .line 245
    invoke-virtual {v4, v15, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 246
    .line 247
    .line 248
    const/high16 v15, 0x42660000    # 57.5f

    .line 249
    .line 250
    const/high16 v14, 0x43220000    # 162.0f

    .line 251
    .line 252
    invoke-virtual {v4, v8, v10, v15, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 253
    .line 254
    .line 255
    const/high16 v10, 0x44170000    # 604.0f

    .line 256
    .line 257
    const v14, 0x4451c000    # 839.0f

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v10, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 261
    .line 262
    .line 263
    const/high16 v10, 0x40400000    # 3.0f

    .line 264
    .line 265
    invoke-virtual {v4, v6, v10, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 266
    .line 267
    .line 268
    const/high16 v14, 0x3f800000    # 1.0f

    .line 269
    .line 270
    const/high16 v15, 0x41700000    # 15.0f

    .line 271
    .line 272
    invoke-virtual {v4, v14, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 273
    .line 274
    .line 275
    const/high16 v14, -0x40000000    # -2.0f

    .line 276
    .line 277
    const/high16 v15, -0x3f000000    # -8.0f

    .line 278
    .line 279
    invoke-virtual {v4, v14, v5, v15, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 280
    .line 281
    .line 282
    const/high16 v7, -0x3e900000    # -15.0f

    .line 283
    .line 284
    invoke-virtual {v4, v7, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 285
    .line 286
    .line 287
    const/high16 v14, -0x3cd60000    # -170.0f

    .line 288
    .line 289
    const/high16 v5, -0x3d310000    # -103.5f

    .line 290
    .line 291
    const/high16 v11, -0x3d300000    # -104.0f

    .line 292
    .line 293
    const/high16 v7, -0x3e300000    # -26.0f

    .line 294
    .line 295
    invoke-virtual {v4, v11, v7, v14, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v12, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 299
    .line 300
    .line 301
    const/high16 v5, -0x3d580000    # -84.0f

    .line 302
    .line 303
    const/high16 v7, -0x3db80000    # -50.0f

    .line 304
    .line 305
    const/high16 v11, 0x42100000    # 36.0f

    .line 306
    .line 307
    invoke-virtual {v4, v8, v7, v11, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 308
    .line 309
    .line 310
    const/high16 v5, 0x42ae0000    # 87.0f

    .line 311
    .line 312
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 313
    .line 314
    .line 315
    const/high16 v3, 0x424c0000    # 51.0f

    .line 316
    .line 317
    const/high16 v7, 0x42080000    # 34.0f

    .line 318
    .line 319
    invoke-virtual {v4, v3, v8, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 320
    .line 321
    .line 322
    const/high16 v3, 0x42a80000    # 84.0f

    .line 323
    .line 324
    invoke-virtual {v4, v11, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 325
    .line 326
    .line 327
    const/high16 v5, 0x41c80000    # 25.0f

    .line 328
    .line 329
    const/high16 v11, 0x425e0000    # 55.5f

    .line 330
    .line 331
    const/high16 v12, 0x42040000    # 33.0f

    .line 332
    .line 333
    invoke-virtual {v4, v8, v12, v5, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 334
    .line 335
    .line 336
    const/high16 v5, 0x426c0000    # 59.0f

    .line 337
    .line 338
    invoke-virtual {v4, v5, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 339
    .line 340
    .line 341
    const/high16 v1, 0x42680000    # 58.0f

    .line 342
    .line 343
    const/high16 v5, -0x3e4c0000    # -22.5f

    .line 344
    .line 345
    invoke-virtual {v4, v7, v8, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 346
    .line 347
    .line 348
    const/high16 v1, 0x41c00000    # 24.0f

    .line 349
    .line 350
    invoke-virtual {v4, v1, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 351
    .line 352
    .line 353
    const/high16 v5, -0x3d180000    # -116.0f

    .line 354
    .line 355
    const/high16 v7, -0x3cbd0000    # -195.0f

    .line 356
    .line 357
    const/high16 v11, -0x3d560000    # -85.0f

    .line 358
    .line 359
    invoke-virtual {v4, v8, v5, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 360
    .line 361
    .line 362
    const/high16 v5, -0x3d620000    # -79.0f

    .line 363
    .line 364
    const/high16 v7, -0x3cb50000    # -203.0f

    .line 365
    .line 366
    invoke-virtual {v4, v7, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 367
    .line 368
    .line 369
    const/high16 v5, -0x3d140000    # -118.0f

    .line 370
    .line 371
    const/high16 v12, 0x429e0000    # 79.0f

    .line 372
    .line 373
    invoke-virtual {v4, v5, v8, v7, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 374
    .line 375
    .line 376
    const/high16 v5, 0x43420000    # 194.0f

    .line 377
    .line 378
    invoke-virtual {v4, v11, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 379
    .line 380
    .line 381
    const/high16 v5, 0x42700000    # 60.0f

    .line 382
    .line 383
    const/high16 v7, 0x40900000    # 4.5f

    .line 384
    .line 385
    invoke-virtual {v4, v8, v1, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 386
    .line 387
    .line 388
    const/high16 v1, 0x41ac0000    # 21.5f

    .line 389
    .line 390
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 391
    .line 392
    .line 393
    const/high16 v1, -0x41000000    # -0.5f

    .line 394
    .line 395
    const/high16 v3, 0x41800000    # 16.0f

    .line 396
    .line 397
    invoke-virtual {v4, v10, v6, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 398
    .line 399
    .line 400
    const/high16 v3, 0x43500000    # 208.0f

    .line 401
    .line 402
    const v5, 0x443cc000    # 755.0f

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 406
    .line 407
    .line 408
    const/high16 v3, -0x3e880000    # -15.5f

    .line 409
    .line 410
    invoke-virtual {v4, v15, v10, v3, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 411
    .line 412
    .line 413
    const/high16 v1, 0x43360000    # 182.0f

    .line 414
    .line 415
    const v3, 0x4439c000    # 743.0f

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 419
    .line 420
    .line 421
    const/high16 v1, -0x3e540000    # -21.5f

    .line 422
    .line 423
    const/high16 v3, -0x3d650000    # -77.5f

    .line 424
    .line 425
    const/high16 v5, -0x3de40000    # -39.0f

    .line 426
    .line 427
    const/high16 v7, -0x3e900000    # -15.0f

    .line 428
    .line 429
    invoke-virtual {v4, v7, v5, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 430
    .line 431
    .line 432
    const/high16 v1, 0x431a0000    # 154.0f

    .line 433
    .line 434
    invoke-virtual {v4, v1, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 435
    .line 436
    .line 437
    const/high16 v1, 0x42c10000    # 96.5f

    .line 438
    .line 439
    const/high16 v3, -0x3ca10000    # -223.0f

    .line 440
    .line 441
    const/high16 v5, -0x3cfb0000    # -133.0f

    .line 442
    .line 443
    invoke-virtual {v4, v8, v5, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 444
    .line 445
    .line 446
    const v1, 0x43888000    # 273.0f

    .line 447
    .line 448
    .line 449
    const v3, 0x43f08000    # 481.0f

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v3, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 456
    .line 457
    .line 458
    const/high16 v1, -0x3cc00000    # -192.0f

    .line 459
    .line 460
    invoke-virtual {v4, v8, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 461
    .line 462
    .line 463
    const/high16 v1, 0x42800000    # 64.0f

    .line 464
    .line 465
    const/high16 v3, 0x42fa0000    # 125.0f

    .line 466
    .line 467
    const/high16 v5, 0x41780000    # 15.5f

    .line 468
    .line 469
    invoke-virtual {v4, v1, v8, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 470
    .line 471
    .line 472
    const/high16 v1, 0x44350000    # 724.0f

    .line 473
    .line 474
    const/high16 v3, 0x430d0000    # 141.0f

    .line 475
    .line 476
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 477
    .line 478
    .line 479
    const/high16 v1, 0x41280000    # 10.5f

    .line 480
    .line 481
    const/high16 v3, 0x41400000    # 12.0f

    .line 482
    .line 483
    const/high16 v7, 0x40a00000    # 5.0f

    .line 484
    .line 485
    invoke-virtual {v4, v6, v7, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 486
    .line 487
    .line 488
    const/high16 v1, -0x40400000    # -1.5f

    .line 489
    .line 490
    const/high16 v3, 0x41600000    # 14.0f

    .line 491
    .line 492
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 493
    .line 494
    .line 495
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 496
    .line 497
    const/high16 v7, 0x41300000    # 11.0f

    .line 498
    .line 499
    const/high16 v10, -0x3fc00000    # -3.0f

    .line 500
    .line 501
    const/high16 v11, 0x40e00000    # 7.0f

    .line 502
    .line 503
    invoke-virtual {v4, v10, v11, v1, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 504
    .line 505
    .line 506
    const/high16 v1, -0x3e780000    # -17.0f

    .line 507
    .line 508
    const/high16 v7, -0x40800000    # -1.0f

    .line 509
    .line 510
    invoke-virtual {v4, v1, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 511
    .line 512
    .line 513
    const/high16 v1, -0x3d250000    # -109.5f

    .line 514
    .line 515
    const/high16 v11, -0x3dda0000    # -41.5f

    .line 516
    .line 517
    const/high16 v12, -0x3dac0000    # -53.0f

    .line 518
    .line 519
    const/high16 v14, -0x3e280000    # -27.0f

    .line 520
    .line 521
    invoke-virtual {v4, v12, v14, v1, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 522
    .line 523
    .line 524
    const/high16 v1, 0x42f20000    # 121.0f

    .line 525
    .line 526
    const v11, 0x43f08000    # 481.0f

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4, v11, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 530
    .line 531
    .line 532
    const/high16 v1, -0x3d1c0000    # -114.0f

    .line 533
    .line 534
    const/high16 v11, 0x41580000    # 13.5f

    .line 535
    .line 536
    const/high16 v12, -0x3d980000    # -58.0f

    .line 537
    .line 538
    invoke-virtual {v4, v12, v8, v1, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 539
    .line 540
    .line 541
    const/high16 v1, 0x43820000    # 260.0f

    .line 542
    .line 543
    const/high16 v11, 0x43310000    # 177.0f

    .line 544
    .line 545
    invoke-virtual {v4, v1, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 546
    .line 547
    .line 548
    const/high16 v1, -0x3e800000    # -16.0f

    .line 549
    .line 550
    const/high16 v11, 0x40200000    # 2.5f

    .line 551
    .line 552
    const/high16 v12, 0x40a00000    # 5.0f

    .line 553
    .line 554
    invoke-virtual {v4, v15, v12, v1, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 555
    .line 556
    .line 557
    const/high16 v12, 0x43290000    # 169.0f

    .line 558
    .line 559
    const/high16 v14, 0x43680000    # 232.0f

    .line 560
    .line 561
    invoke-virtual {v4, v14, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 562
    .line 563
    .line 564
    const/high16 v12, -0x3e980000    # -14.5f

    .line 565
    .line 566
    const/high16 v5, -0x40000000    # -2.0f

    .line 567
    .line 568
    const/high16 v14, -0x3f800000    # -4.0f

    .line 569
    .line 570
    invoke-virtual {v4, v14, v15, v5, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 571
    .line 572
    .line 573
    const/high16 v5, -0x3ec80000    # -11.5f

    .line 574
    .line 575
    const/high16 v14, 0x41200000    # 10.0f

    .line 576
    .line 577
    invoke-virtual {v4, v14, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 578
    .line 579
    .line 580
    const/high16 v5, 0x42ea0000    # 117.0f

    .line 581
    .line 582
    const/high16 v14, -0x3dc80000    # -46.0f

    .line 583
    .line 584
    const/high16 v11, 0x42600000    # 56.0f

    .line 585
    .line 586
    const/high16 v10, -0x3e100000    # -30.0f

    .line 587
    .line 588
    invoke-virtual {v4, v11, v10, v5, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 589
    .line 590
    .line 591
    const/high16 v5, 0x42f80000    # 124.0f

    .line 592
    .line 593
    invoke-virtual {v4, v5, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 597
    .line 598
    .line 599
    const v1, 0x43908000    # 289.0f

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4, v8, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 603
    .line 604
    .line 605
    const/high16 v1, 0x43200000    # 160.0f

    .line 606
    .line 607
    const/high16 v5, 0x427a0000    # 62.5f

    .line 608
    .line 609
    const/high16 v10, 0x42ba0000    # 93.0f

    .line 610
    .line 611
    invoke-virtual {v4, v10, v8, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 612
    .line 613
    .line 614
    const/high16 v1, 0x44310000    # 708.0f

    .line 615
    .line 616
    invoke-virtual {v4, v1, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 617
    .line 618
    .line 619
    const/high16 v1, -0x3f500000    # -5.5f

    .line 620
    .line 621
    const/high16 v5, 0x41680000    # 14.5f

    .line 622
    .line 623
    invoke-virtual {v4, v8, v6, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 624
    .line 625
    .line 626
    const v10, 0x44178000    # 606.0f

    .line 627
    .line 628
    .line 629
    const/high16 v11, 0x442c0000    # 688.0f

    .line 630
    .line 631
    invoke-virtual {v4, v11, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 632
    .line 633
    .line 634
    const/high16 v10, -0x3ea00000    # -14.0f

    .line 635
    .line 636
    invoke-virtual {v4, v15, v8, v10, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 637
    .line 638
    .line 639
    const/high16 v1, -0x3f400000    # -6.0f

    .line 640
    .line 641
    invoke-virtual {v4, v1, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 642
    .line 643
    .line 644
    const/high16 v1, -0x3d6a0000    # -75.0f

    .line 645
    .line 646
    const/high16 v10, -0x3d050000    # -125.5f

    .line 647
    .line 648
    invoke-virtual {v4, v8, v1, v13, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 649
    .line 650
    .line 651
    const/high16 v1, 0x43cd0000    # 410.0f

    .line 652
    .line 653
    const v11, 0x43f08000    # 481.0f

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4, v11, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 657
    .line 658
    .line 659
    const v1, -0x3cfd8000    # -130.5f

    .line 660
    .line 661
    .line 662
    const/high16 v10, 0x424a0000    # 50.5f

    .line 663
    .line 664
    const/high16 v11, -0x3d680000    # -76.0f

    .line 665
    .line 666
    invoke-virtual {v4, v11, v8, v1, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 667
    .line 668
    .line 669
    const/high16 v1, 0x43940000    # 296.0f

    .line 670
    .line 671
    invoke-virtual {v4, v1, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 672
    .line 673
    .line 674
    const/high16 v1, 0x41e00000    # 28.0f

    .line 675
    .line 676
    const v10, 0x43098000    # 137.5f

    .line 677
    .line 678
    .line 679
    const/high16 v11, 0x42a20000    # 81.0f

    .line 680
    .line 681
    invoke-virtual {v4, v8, v11, v1, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 682
    .line 683
    .line 684
    const/high16 v1, 0x43cb0000    # 406.0f

    .line 685
    .line 686
    const v10, 0x44514000    # 837.0f

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4, v1, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 690
    .line 691
    .line 692
    const/high16 v1, 0x40c00000    # 6.0f

    .line 693
    .line 694
    invoke-virtual {v4, v1, v1, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 695
    .line 696
    .line 697
    const/high16 v10, -0x3f400000    # -6.0f

    .line 698
    .line 699
    invoke-virtual {v4, v10, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 700
    .line 701
    .line 702
    const/high16 v11, -0x3ea00000    # -14.0f

    .line 703
    .line 704
    invoke-virtual {v4, v10, v1, v11, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v4, v11, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 708
    .line 709
    .line 710
    const/high16 v10, -0x3d4b0000    # -90.5f

    .line 711
    .line 712
    const/high16 v11, -0x3d030000    # -126.5f

    .line 713
    .line 714
    const/high16 v12, -0x3d940000    # -59.0f

    .line 715
    .line 716
    const/high16 v13, -0x3d880000    # -62.0f

    .line 717
    .line 718
    invoke-virtual {v4, v12, v13, v10, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 719
    .line 720
    .line 721
    const/high16 v10, 0x43800000    # 256.0f

    .line 722
    .line 723
    invoke-virtual {v4, v10, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 724
    .line 725
    .line 726
    const/high16 v10, 0x42840000    # 66.0f

    .line 727
    .line 728
    const v11, -0x3ce68000    # -153.5f

    .line 729
    .line 730
    .line 731
    const/high16 v12, -0x3d4a0000    # -91.0f

    .line 732
    .line 733
    invoke-virtual {v4, v8, v12, v10, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 734
    .line 735
    .line 736
    const/high16 v10, 0x43b90000    # 370.0f

    .line 737
    .line 738
    const v11, 0x43f08000    # 481.0f

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4, v11, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 745
    .line 746
    .line 747
    const/high16 v10, 0x43440000    # 196.0f

    .line 748
    .line 749
    invoke-virtual {v4, v7, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, v6, v8, v5, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 753
    .line 754
    .line 755
    const/high16 v10, 0x40b00000    # 5.5f

    .line 756
    .line 757
    invoke-virtual {v4, v10, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 758
    .line 759
    .line 760
    const/high16 v11, 0x42580000    # 54.0f

    .line 761
    .line 762
    const/high16 v12, 0x42f60000    # 123.0f

    .line 763
    .line 764
    const/high16 v13, 0x42960000    # 75.0f

    .line 765
    .line 766
    invoke-virtual {v4, v8, v13, v11, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 767
    .line 768
    .line 769
    const/high16 v11, 0x42400000    # 48.0f

    .line 770
    .line 771
    const/high16 v12, 0x42fc0000    # 126.0f

    .line 772
    .line 773
    invoke-virtual {v4, v12, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 774
    .line 775
    .line 776
    const/high16 v11, 0x41880000    # 17.0f

    .line 777
    .line 778
    invoke-virtual {v4, v1, v8, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 779
    .line 780
    .line 781
    const/high16 v1, 0x41b80000    # 23.0f

    .line 782
    .line 783
    const/high16 v7, -0x3fc00000    # -3.0f

    .line 784
    .line 785
    invoke-virtual {v4, v1, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 786
    .line 787
    .line 788
    const/high16 v1, -0x40000000    # -2.0f

    .line 789
    .line 790
    const/high16 v11, 0x41780000    # 15.5f

    .line 791
    .line 792
    const/high16 v12, 0x40200000    # 2.5f

    .line 793
    .line 794
    invoke-virtual {v4, v6, v1, v11, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 795
    .line 796
    .line 797
    const/high16 v1, 0x443a0000    # 744.0f

    .line 798
    .line 799
    const v6, 0x44404000    # 769.0f

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4, v1, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 803
    .line 804
    .line 805
    const/high16 v1, 0x40000000    # 2.0f

    .line 806
    .line 807
    const/high16 v6, 0x41000000    # 8.0f

    .line 808
    .line 809
    invoke-virtual {v4, v1, v6, v7, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 810
    .line 811
    .line 812
    const/high16 v1, -0x3eb00000    # -13.0f

    .line 813
    .line 814
    invoke-virtual {v4, v1, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 815
    .line 816
    .line 817
    const/high16 v1, -0x3e700000    # -18.0f

    .line 818
    .line 819
    const/high16 v3, -0x3e040000    # -31.5f

    .line 820
    .line 821
    const/high16 v7, 0x40a00000    # 5.0f

    .line 822
    .line 823
    invoke-virtual {v4, v1, v7, v3, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 824
    .line 825
    .line 826
    const/high16 v1, -0x3e7c0000    # -16.5f

    .line 827
    .line 828
    const/high16 v3, 0x3f000000    # 0.5f

    .line 829
    .line 830
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 831
    .line 832
    .line 833
    const v1, -0x3ce58000    # -154.5f

    .line 834
    .line 835
    .line 836
    const/high16 v3, -0x3d900000    # -60.0f

    .line 837
    .line 838
    const/high16 v6, -0x3d4e0000    # -89.0f

    .line 839
    .line 840
    invoke-virtual {v4, v6, v8, v1, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 841
    .line 842
    .line 843
    const/high16 v1, 0x43e60000    # 460.0f

    .line 844
    .line 845
    invoke-virtual {v4, v1, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 846
    .line 847
    .line 848
    const/high16 v11, -0x3ea00000    # -14.0f

    .line 849
    .line 850
    invoke-virtual {v4, v8, v15, v10, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 851
    .line 852
    .line 853
    const/high16 v1, -0x3f400000    # -6.0f

    .line 854
    .line 855
    invoke-virtual {v4, v5, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 859
    .line 860
    .line 861
    iget-object v1, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 862
    .line 863
    const/high16 v3, 0x3f800000    # 1.0f

    .line 864
    .line 865
    const/high16 v4, 0x3f800000    # 1.0f

    .line 866
    .line 867
    const/high16 v5, 0x3f800000    # 1.0f

    .line 868
    .line 869
    const/4 v6, 0x2

    .line 870
    const/high16 v7, 0x3f800000    # 1.0f

    .line 871
    .line 872
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFlowerIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedFlowerIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 v1, 0x43f00000    # 480.0f

    .line 32
    .line 33
    const/high16 v3, 0x43b40000    # 360.0f

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/high16 v5, 0x41880000    # 17.0f

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/high16 v7, 0x41e40000    # 28.5f

    .line 43
    .line 44
    const/high16 v8, -0x3ec80000    # -11.5f

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 47
    .line 48
    .line 49
    const/high16 v9, 0x44020000    # 520.0f

    .line 50
    .line 51
    const/high16 v10, 0x43a00000    # 320.0f

    .line 52
    .line 53
    invoke-virtual {v4, v9, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 54
    .line 55
    .line 56
    const/high16 v11, -0x3e780000    # -17.0f

    .line 57
    .line 58
    const/high16 v12, -0x3e1c0000    # -28.5f

    .line 59
    .line 60
    invoke-virtual {v4, v6, v11, v8, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 61
    .line 62
    .line 63
    const/high16 v13, 0x438c0000    # 280.0f

    .line 64
    .line 65
    invoke-virtual {v4, v1, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 66
    .line 67
    .line 68
    const/high16 v14, 0x41380000    # 11.5f

    .line 69
    .line 70
    invoke-virtual {v4, v11, v6, v12, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 71
    .line 72
    .line 73
    const/high16 v15, 0x43dc0000    # 440.0f

    .line 74
    .line 75
    invoke-virtual {v4, v15, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6, v5, v14, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 85
    .line 86
    .line 87
    const/high16 v3, 0x43700000    # 240.0f

    .line 88
    .line 89
    invoke-virtual {v4, v6, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 90
    .line 91
    .line 92
    const/high16 v15, -0x3de40000    # -39.0f

    .line 93
    .line 94
    const/high16 v3, -0x3d730000    # -70.5f

    .line 95
    .line 96
    const/high16 v8, -0x3e540000    # -21.5f

    .line 97
    .line 98
    invoke-virtual {v4, v15, v6, v3, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 99
    .line 100
    .line 101
    const/high16 v3, 0x43b60000    # 364.0f

    .line 102
    .line 103
    const v15, 0x44028000    # 522.0f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 107
    .line 108
    .line 109
    const/high16 v3, -0x3f600000    # -5.0f

    .line 110
    .line 111
    const/high16 v15, -0x3ef00000    # -9.0f

    .line 112
    .line 113
    const/high16 v8, 0x3f000000    # 0.5f

    .line 114
    .line 115
    invoke-virtual {v4, v3, v6, v15, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v15, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 119
    .line 120
    .line 121
    const/high16 v14, -0x3db00000    # -52.0f

    .line 122
    .line 123
    const/high16 v12, -0x3d4e0000    # -89.0f

    .line 124
    .line 125
    const/high16 v9, -0x3dec0000    # -37.0f

    .line 126
    .line 127
    invoke-virtual {v4, v14, v6, v12, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v9, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 131
    .line 132
    .line 133
    const/high16 v7, -0x3e580000    # -21.0f

    .line 134
    .line 135
    const/high16 v13, 0x40e00000    # 7.0f

    .line 136
    .line 137
    const/high16 v3, -0x3dde0000    # -40.5f

    .line 138
    .line 139
    invoke-virtual {v4, v6, v7, v13, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 140
    .line 141
    .line 142
    const/high16 v7, 0x41a80000    # 21.0f

    .line 143
    .line 144
    const/high16 v15, -0x3dee0000    # -36.5f

    .line 145
    .line 146
    invoke-virtual {v4, v7, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 147
    .line 148
    .line 149
    const/high16 v13, -0x3eb00000    # -13.0f

    .line 150
    .line 151
    const/high16 v5, -0x3e600000    # -20.0f

    .line 152
    .line 153
    invoke-virtual {v4, v13, v11, v5, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 154
    .line 155
    .line 156
    const/high16 v5, -0x3f200000    # -7.0f

    .line 157
    .line 158
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 159
    .line 160
    .line 161
    const/high16 v3, 0x42120000    # 36.5f

    .line 162
    .line 163
    invoke-virtual {v4, v6, v14, v3, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 164
    .line 165
    .line 166
    const/high16 v12, 0x42b10000    # 88.5f

    .line 167
    .line 168
    invoke-virtual {v4, v12, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 169
    .line 170
    .line 171
    const/high16 v9, 0x40a00000    # 5.0f

    .line 172
    .line 173
    const/high16 v14, 0x41100000    # 9.0f

    .line 174
    .line 175
    invoke-virtual {v4, v9, v6, v14, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v14, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 179
    .line 180
    .line 181
    const/high16 v8, 0x42360000    # 45.5f

    .line 182
    .line 183
    const/high16 v5, -0x3d9e0000    # -56.5f

    .line 184
    .line 185
    const/high16 v13, 0x41600000    # 14.0f

    .line 186
    .line 187
    const/high16 v11, -0x3df40000    # -35.0f

    .line 188
    .line 189
    invoke-virtual {v4, v13, v11, v8, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 190
    .line 191
    .line 192
    const/high16 v5, 0x42200000    # 40.0f

    .line 193
    .line 194
    invoke-virtual {v4, v1, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 195
    .line 196
    .line 197
    const/high16 v5, 0x421c0000    # 39.0f

    .line 198
    .line 199
    const/high16 v8, 0x428d0000    # 70.5f

    .line 200
    .line 201
    const/high16 v13, 0x41ac0000    # 21.5f

    .line 202
    .line 203
    invoke-virtual {v4, v5, v6, v8, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 204
    .line 205
    .line 206
    const/high16 v5, 0x44150000    # 596.0f

    .line 207
    .line 208
    const/high16 v8, 0x42ec0000    # 118.0f

    .line 209
    .line 210
    invoke-virtual {v4, v5, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 211
    .line 212
    .line 213
    const/high16 v5, -0x41000000    # -0.5f

    .line 214
    .line 215
    invoke-virtual {v4, v9, v6, v14, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v14, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 219
    .line 220
    .line 221
    const/high16 v8, 0x42140000    # 37.0f

    .line 222
    .line 223
    const/high16 v9, 0x42500000    # 52.0f

    .line 224
    .line 225
    invoke-virtual {v4, v9, v6, v12, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 226
    .line 227
    .line 228
    const/high16 v8, 0x42b20000    # 89.0f

    .line 229
    .line 230
    invoke-virtual {v4, v3, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 231
    .line 232
    .line 233
    const/high16 v12, -0x3f300000    # -6.5f

    .line 234
    .line 235
    const/high16 v14, 0x42220000    # 40.5f

    .line 236
    .line 237
    invoke-virtual {v4, v6, v7, v12, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 238
    .line 239
    .line 240
    const/high16 v12, 0x44320000    # 712.0f

    .line 241
    .line 242
    invoke-virtual {v4, v12, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 243
    .line 244
    .line 245
    const/high16 v10, 0x41500000    # 13.0f

    .line 246
    .line 247
    const/high16 v12, 0x41a00000    # 20.0f

    .line 248
    .line 249
    const/high16 v13, 0x41880000    # 17.0f

    .line 250
    .line 251
    invoke-virtual {v4, v10, v13, v12, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 252
    .line 253
    .line 254
    const/high16 v3, 0x40e00000    # 7.0f

    .line 255
    .line 256
    invoke-virtual {v4, v3, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v6, v9, v15, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 260
    .line 261
    .line 262
    const v3, 0x4402c000    # 523.0f

    .line 263
    .line 264
    .line 265
    const v8, 0x44198000    # 614.0f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v8, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 269
    .line 270
    .line 271
    const/high16 v3, -0x3f600000    # -5.0f

    .line 272
    .line 273
    const/high16 v9, -0x3ef00000    # -9.0f

    .line 274
    .line 275
    invoke-virtual {v4, v3, v6, v9, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v9, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 279
    .line 280
    .line 281
    const/high16 v3, -0x3dca0000    # -45.5f

    .line 282
    .line 283
    const/high16 v5, 0x42620000    # 56.5f

    .line 284
    .line 285
    const/high16 v9, -0x3ea00000    # -14.0f

    .line 286
    .line 287
    const/high16 v13, 0x420c0000    # 35.0f

    .line 288
    .line 289
    invoke-virtual {v4, v9, v13, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 290
    .line 291
    .line 292
    const/high16 v3, 0x44160000    # 600.0f

    .line 293
    .line 294
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 298
    .line 299
    .line 300
    const/high16 v3, 0x438c0000    # 280.0f

    .line 301
    .line 302
    invoke-virtual {v4, v6, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 303
    .line 304
    .line 305
    const/high16 v3, -0x3d6c0000    # -74.0f

    .line 306
    .line 307
    const v5, -0x3cf48000    # -139.5f

    .line 308
    .line 309
    .line 310
    const/high16 v14, 0x41e40000    # 28.5f

    .line 311
    .line 312
    invoke-virtual {v4, v6, v3, v14, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 313
    .line 314
    .line 315
    const v14, 0x44128000    # 586.0f

    .line 316
    .line 317
    .line 318
    const v15, 0x441c8000    # 626.0f

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v14, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 322
    .line 323
    .line 324
    const/high16 v14, 0x42440000    # 49.0f

    .line 325
    .line 326
    const/high16 v10, -0x3dbc0000    # -49.0f

    .line 327
    .line 328
    const/high16 v12, 0x42e50000    # 114.5f

    .line 329
    .line 330
    const/high16 v8, -0x3d650000    # -77.5f

    .line 331
    .line 332
    invoke-virtual {v4, v14, v10, v12, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 333
    .line 334
    .line 335
    const/high16 v13, 0x44520000    # 840.0f

    .line 336
    .line 337
    const/high16 v11, 0x44020000    # 520.0f

    .line 338
    .line 339
    invoke-virtual {v4, v13, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 340
    .line 341
    .line 342
    const/high16 v11, 0x42940000    # 74.0f

    .line 343
    .line 344
    const v13, 0x430b8000    # 139.5f

    .line 345
    .line 346
    .line 347
    const/high16 v9, -0x3e1c0000    # -28.5f

    .line 348
    .line 349
    invoke-virtual {v4, v6, v11, v9, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 350
    .line 351
    .line 352
    const v9, 0x44378000    # 734.0f

    .line 353
    .line 354
    .line 355
    const v12, 0x44418000    # 774.0f

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v9, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 359
    .line 360
    .line 361
    const/high16 v9, -0x3d1b0000    # -114.5f

    .line 362
    .line 363
    const/high16 v12, 0x429b0000    # 77.5f

    .line 364
    .line 365
    invoke-virtual {v4, v10, v14, v9, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 366
    .line 367
    .line 368
    const/high16 v12, 0x445c0000    # 880.0f

    .line 369
    .line 370
    invoke-virtual {v4, v1, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 374
    .line 375
    .line 376
    const/high16 v1, 0x42c40000    # 98.0f

    .line 377
    .line 378
    const/high16 v12, -0x3d3c0000    # -98.0f

    .line 379
    .line 380
    invoke-virtual {v4, v1, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 381
    .line 382
    .line 383
    const/high16 v14, 0x42640000    # 57.0f

    .line 384
    .line 385
    const/high16 v11, 0x42c80000    # 100.0f

    .line 386
    .line 387
    const/high16 v13, -0x3d800000    # -64.0f

    .line 388
    .line 389
    const/high16 v8, -0x3e580000    # -21.0f

    .line 390
    .line 391
    invoke-virtual {v4, v14, v8, v11, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 392
    .line 393
    .line 394
    const/high16 v8, 0x42800000    # 64.0f

    .line 395
    .line 396
    const/high16 v14, -0x3d380000    # -100.0f

    .line 397
    .line 398
    invoke-virtual {v4, v8, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 399
    .line 400
    .line 401
    const/high16 v9, -0x3d9c0000    # -57.0f

    .line 402
    .line 403
    invoke-virtual {v4, v9, v7, v14, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v13, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v12, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 413
    .line 414
    .line 415
    const/high16 v1, -0x3e1c0000    # -28.5f

    .line 416
    .line 417
    invoke-virtual {v4, v6, v3, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 418
    .line 419
    .line 420
    const/high16 v1, 0x43bb0000    # 374.0f

    .line 421
    .line 422
    invoke-virtual {v4, v1, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 423
    .line 424
    .line 425
    const/high16 v1, -0x3d650000    # -77.5f

    .line 426
    .line 427
    const/high16 v3, -0x3d1b0000    # -114.5f

    .line 428
    .line 429
    invoke-virtual {v4, v10, v10, v3, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 430
    .line 431
    .line 432
    const/high16 v1, 0x42f00000    # 120.0f

    .line 433
    .line 434
    const/high16 v3, 0x44020000    # 520.0f

    .line 435
    .line 436
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 437
    .line 438
    .line 439
    const/high16 v3, 0x41e40000    # 28.5f

    .line 440
    .line 441
    const/high16 v5, 0x42940000    # 74.0f

    .line 442
    .line 443
    const v10, 0x430b8000    # 139.5f

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4, v6, v5, v3, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 447
    .line 448
    .line 449
    const/high16 v3, 0x43620000    # 226.0f

    .line 450
    .line 451
    const v5, 0x44418000    # 774.0f

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 455
    .line 456
    .line 457
    const/high16 v3, 0x42440000    # 49.0f

    .line 458
    .line 459
    const/high16 v5, 0x42e50000    # 114.5f

    .line 460
    .line 461
    const/high16 v10, 0x429b0000    # 77.5f

    .line 462
    .line 463
    invoke-virtual {v4, v3, v3, v5, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 464
    .line 465
    .line 466
    const/high16 v3, 0x43f00000    # 480.0f

    .line 467
    .line 468
    const/high16 v5, 0x445c0000    # 880.0f

    .line 469
    .line 470
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4, v12, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 477
    .line 478
    .line 479
    const/high16 v3, -0x3e580000    # -21.0f

    .line 480
    .line 481
    invoke-virtual {v4, v9, v3, v14, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v13, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 485
    .line 486
    .line 487
    const/high16 v3, 0x42640000    # 57.0f

    .line 488
    .line 489
    invoke-virtual {v4, v3, v7, v11, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v4, v8, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 496
    .line 497
    .line 498
    const/high16 v3, 0x43440000    # 196.0f

    .line 499
    .line 500
    invoke-virtual {v4, v3, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 504
    .line 505
    .line 506
    const/high16 v3, -0x3cbc0000    # -196.0f

    .line 507
    .line 508
    invoke-virtual {v4, v3, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 512
    .line 513
    .line 514
    const/high16 v3, 0x43680000    # 232.0f

    .line 515
    .line 516
    const v5, -0x3c568000    # -339.0f

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 520
    .line 521
    .line 522
    const/high16 v3, 0x42020000    # 32.5f

    .line 523
    .line 524
    const/high16 v5, -0x3ea80000    # -13.5f

    .line 525
    .line 526
    const/high16 v8, 0x41980000    # 19.0f

    .line 527
    .line 528
    invoke-virtual {v4, v8, v6, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 529
    .line 530
    .line 531
    const/high16 v3, 0x44250000    # 660.0f

    .line 532
    .line 533
    const v5, 0x43c68000    # 397.0f

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 537
    .line 538
    .line 539
    const/high16 v3, -0x3f100000    # -7.5f

    .line 540
    .line 541
    const/high16 v5, -0x3e3c0000    # -24.5f

    .line 542
    .line 543
    const/high16 v9, -0x3ea00000    # -14.0f

    .line 544
    .line 545
    invoke-virtual {v4, v6, v9, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 546
    .line 547
    .line 548
    const v3, 0x441e4000    # 633.0f

    .line 549
    .line 550
    .line 551
    const/high16 v5, 0x43b20000    # 356.0f

    .line 552
    .line 553
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 554
    .line 555
    .line 556
    const/high16 v3, -0x3e780000    # -17.0f

    .line 557
    .line 558
    const/high16 v5, -0x3df40000    # -35.0f

    .line 559
    .line 560
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 561
    .line 562
    .line 563
    const/high16 v3, -0x40000000    # -2.0f

    .line 564
    .line 565
    const/high16 v5, 0x41300000    # 11.0f

    .line 566
    .line 567
    const/high16 v9, -0x3f400000    # -6.0f

    .line 568
    .line 569
    const/high16 v10, 0x41ac0000    # 21.5f

    .line 570
    .line 571
    invoke-virtual {v4, v3, v5, v9, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 572
    .line 573
    .line 574
    const/high16 v10, 0x419c0000    # 19.5f

    .line 575
    .line 576
    const/high16 v11, -0x3ef00000    # -9.0f

    .line 577
    .line 578
    invoke-virtual {v4, v11, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 579
    .line 580
    .line 581
    const/high16 v11, -0x3ec00000    # -12.0f

    .line 582
    .line 583
    const/high16 v12, -0x3f600000    # -5.0f

    .line 584
    .line 585
    const/high16 v13, 0x41880000    # 17.0f

    .line 586
    .line 587
    const/high16 v14, 0x41100000    # 9.0f

    .line 588
    .line 589
    invoke-virtual {v4, v12, v14, v11, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 590
    .line 591
    .line 592
    const/high16 v12, -0x3e900000    # -15.0f

    .line 593
    .line 594
    const/high16 v13, 0x41700000    # 15.0f

    .line 595
    .line 596
    invoke-virtual {v4, v12, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 597
    .line 598
    .line 599
    const/high16 v14, 0x42000000    # 32.0f

    .line 600
    .line 601
    const/high16 v15, 0x41b80000    # 23.0f

    .line 602
    .line 603
    invoke-virtual {v4, v14, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 604
    .line 605
    .line 606
    const/high16 v14, 0x40800000    # 4.0f

    .line 607
    .line 608
    const/high16 v12, 0x40c00000    # 6.0f

    .line 609
    .line 610
    const/high16 v1, 0x41380000    # 11.5f

    .line 611
    .line 612
    const/high16 v5, 0x40a00000    # 5.0f

    .line 613
    .line 614
    invoke-virtual {v4, v5, v14, v1, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 615
    .line 616
    .line 617
    const/high16 v1, 0x41680000    # 14.5f

    .line 618
    .line 619
    const/high16 v5, 0x40000000    # 2.0f

    .line 620
    .line 621
    invoke-virtual {v4, v1, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 625
    .line 626
    .line 627
    const/high16 v1, -0x3cf20000    # -142.0f

    .line 628
    .line 629
    const/high16 v14, -0x3e800000    # -16.0f

    .line 630
    .line 631
    invoke-virtual {v4, v14, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 632
    .line 633
    .line 634
    const/high16 v1, -0x3e780000    # -17.0f

    .line 635
    .line 636
    const/high16 v14, 0x420c0000    # 35.0f

    .line 637
    .line 638
    invoke-virtual {v4, v14, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 639
    .line 640
    .line 641
    const/high16 v14, 0x41400000    # 12.0f

    .line 642
    .line 643
    invoke-virtual {v4, v14, v9, v8, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 644
    .line 645
    .line 646
    const/high16 v1, -0x3e400000    # -24.0f

    .line 647
    .line 648
    const/high16 v14, 0x40e00000    # 7.0f

    .line 649
    .line 650
    invoke-virtual {v4, v14, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 651
    .line 652
    .line 653
    const/high16 v1, -0x3e680000    # -19.0f

    .line 654
    .line 655
    const/high16 v14, -0x3dfe0000    # -32.5f

    .line 656
    .line 657
    const/high16 v8, -0x3eb00000    # -13.0f

    .line 658
    .line 659
    invoke-virtual {v4, v6, v1, v8, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 660
    .line 661
    .line 662
    const/high16 v8, 0x43450000    # 197.0f

    .line 663
    .line 664
    const v14, 0x44198000    # 614.0f

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v14, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 668
    .line 669
    .line 670
    const/high16 v8, -0x3f000000    # -8.0f

    .line 671
    .line 672
    const/high16 v14, -0x3ea00000    # -14.0f

    .line 673
    .line 674
    invoke-virtual {v4, v8, v6, v14, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v4, v11, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 678
    .line 679
    .line 680
    const/high16 v14, -0x3dfc0000    # -33.0f

    .line 681
    .line 682
    invoke-virtual {v4, v14, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 683
    .line 684
    .line 685
    const/high16 v14, 0x41780000    # 15.5f

    .line 686
    .line 687
    const/high16 v15, 0x41000000    # 8.0f

    .line 688
    .line 689
    const/high16 v11, 0x40e00000    # 7.0f

    .line 690
    .line 691
    invoke-virtual {v4, v15, v11, v14, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 692
    .line 693
    .line 694
    const/high16 v11, 0x41480000    # 12.5f

    .line 695
    .line 696
    const/high16 v14, 0x41880000    # 17.0f

    .line 697
    .line 698
    invoke-virtual {v4, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 699
    .line 700
    .line 701
    const/high16 v8, 0x41100000    # 9.0f

    .line 702
    .line 703
    const/high16 v14, 0x40a00000    # 5.0f

    .line 704
    .line 705
    invoke-virtual {v4, v14, v8, v8, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 706
    .line 707
    .line 708
    const/high16 v8, 0x41ac0000    # 21.5f

    .line 709
    .line 710
    invoke-virtual {v4, v12, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 714
    .line 715
    .line 716
    const/high16 v8, -0x3ce10000    # -159.0f

    .line 717
    .line 718
    const/high16 v14, -0x3d460000    # -93.0f

    .line 719
    .line 720
    invoke-virtual {v4, v8, v14}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 721
    .line 722
    .line 723
    const/high16 v8, 0x41200000    # 10.0f

    .line 724
    .line 725
    const/high16 v14, -0x3f800000    # -4.0f

    .line 726
    .line 727
    const/high16 v15, 0x41a00000    # 20.0f

    .line 728
    .line 729
    invoke-virtual {v4, v8, v14, v15, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v4, v7, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 733
    .line 734
    .line 735
    const/high16 v8, 0x41300000    # 11.0f

    .line 736
    .line 737
    invoke-virtual {v4, v8, v6, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4, v15, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 741
    .line 742
    .line 743
    const/high16 v7, -0x3dd00000    # -44.0f

    .line 744
    .line 745
    const/high16 v8, 0x40a00000    # 5.0f

    .line 746
    .line 747
    invoke-virtual {v4, v8, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 748
    .line 749
    .line 750
    const/high16 v8, -0x3e700000    # -18.0f

    .line 751
    .line 752
    const/high16 v15, -0x3eb80000    # -12.5f

    .line 753
    .line 754
    const/high16 v10, -0x3e080000    # -31.0f

    .line 755
    .line 756
    invoke-virtual {v4, v5, v8, v15, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 757
    .line 758
    .line 759
    const/high16 v8, 0x43f00000    # 480.0f

    .line 760
    .line 761
    const/high16 v15, 0x42f00000    # 120.0f

    .line 762
    .line 763
    invoke-virtual {v4, v8, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 764
    .line 765
    .line 766
    const/high16 v8, -0x3dfa0000    # -33.5f

    .line 767
    .line 768
    const/high16 v15, 0x41500000    # 13.0f

    .line 769
    .line 770
    invoke-virtual {v4, v1, v6, v8, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 771
    .line 772
    .line 773
    const/high16 v8, 0x43d90000    # 434.0f

    .line 774
    .line 775
    const/high16 v15, 0x43240000    # 164.0f

    .line 776
    .line 777
    invoke-virtual {v4, v8, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 778
    .line 779
    .line 780
    const/high16 v8, 0x42300000    # 44.0f

    .line 781
    .line 782
    const/high16 v15, 0x40a00000    # 5.0f

    .line 783
    .line 784
    invoke-virtual {v4, v15, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 788
    .line 789
    .line 790
    const/high16 v15, 0x42240000    # 41.0f

    .line 791
    .line 792
    const/high16 v1, 0x439c0000    # 312.0f

    .line 793
    .line 794
    invoke-virtual {v4, v15, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 795
    .line 796
    .line 797
    const/high16 v1, 0x42060000    # 33.5f

    .line 798
    .line 799
    const/high16 v14, 0x41980000    # 19.0f

    .line 800
    .line 801
    const/high16 v15, -0x3eb00000    # -13.0f

    .line 802
    .line 803
    invoke-virtual {v4, v14, v6, v1, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4, v11, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 807
    .line 808
    .line 809
    const/high16 v10, -0x3f600000    # -5.0f

    .line 810
    .line 811
    invoke-virtual {v4, v10, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 812
    .line 813
    .line 814
    const/high16 v7, -0x3ee00000    # -10.0f

    .line 815
    .line 816
    const/high16 v14, -0x3e600000    # -20.0f

    .line 817
    .line 818
    const/high16 v15, 0x40800000    # 4.0f

    .line 819
    .line 820
    invoke-virtual {v4, v7, v15, v14, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 821
    .line 822
    .line 823
    const/high16 v7, -0x3e580000    # -21.0f

    .line 824
    .line 825
    invoke-virtual {v4, v7, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 826
    .line 827
    .line 828
    const/high16 v15, -0x3ed00000    # -11.0f

    .line 829
    .line 830
    invoke-virtual {v4, v15, v6, v7, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v4, v14, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v4, v10, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 837
    .line 838
    .line 839
    const/high16 v7, 0x41900000    # 18.0f

    .line 840
    .line 841
    const/high16 v8, 0x41f80000    # 31.0f

    .line 842
    .line 843
    invoke-virtual {v4, v3, v7, v11, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 844
    .line 845
    .line 846
    const/high16 v7, 0x41500000    # 13.0f

    .line 847
    .line 848
    invoke-virtual {v4, v1, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 852
    .line 853
    .line 854
    const/high16 v1, 0x43b50000    # 362.0f

    .line 855
    .line 856
    const v7, 0x43968000    # 301.0f

    .line 857
    .line 858
    .line 859
    invoke-virtual {v4, v1, v7}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 860
    .line 861
    .line 862
    const/high16 v1, -0x3e540000    # -21.5f

    .line 863
    .line 864
    invoke-virtual {v4, v5, v15, v12, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 865
    .line 866
    .line 867
    const/high16 v1, -0x3e640000    # -19.5f

    .line 868
    .line 869
    const/high16 v8, 0x41100000    # 9.0f

    .line 870
    .line 871
    invoke-virtual {v4, v8, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 872
    .line 873
    .line 874
    const/high16 v5, -0x3e780000    # -17.0f

    .line 875
    .line 876
    const/high16 v7, 0x41400000    # 12.0f

    .line 877
    .line 878
    const/high16 v11, -0x3ef00000    # -9.0f

    .line 879
    .line 880
    const/high16 v15, 0x40a00000    # 5.0f

    .line 881
    .line 882
    invoke-virtual {v4, v15, v11, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 883
    .line 884
    .line 885
    const/high16 v5, -0x3e900000    # -15.0f

    .line 886
    .line 887
    invoke-virtual {v4, v13, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 888
    .line 889
    .line 890
    const/high16 v5, -0x3e000000    # -32.0f

    .line 891
    .line 892
    const/high16 v7, -0x3e480000    # -23.0f

    .line 893
    .line 894
    invoke-virtual {v4, v5, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 895
    .line 896
    .line 897
    const/high16 v5, -0x3ec80000    # -11.5f

    .line 898
    .line 899
    const/high16 v7, -0x3f800000    # -4.0f

    .line 900
    .line 901
    const/high16 v10, -0x3f600000    # -5.0f

    .line 902
    .line 903
    invoke-virtual {v4, v10, v7, v5, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 904
    .line 905
    .line 906
    const/high16 v5, -0x3e980000    # -14.5f

    .line 907
    .line 908
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 909
    .line 910
    .line 911
    const/high16 v3, 0x41580000    # 13.5f

    .line 912
    .line 913
    const/high16 v5, -0x3e680000    # -19.0f

    .line 914
    .line 915
    const/high16 v7, -0x3dfe0000    # -32.5f

    .line 916
    .line 917
    invoke-virtual {v4, v5, v6, v7, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 918
    .line 919
    .line 920
    const/high16 v5, 0x43960000    # 300.0f

    .line 921
    .line 922
    const/high16 v7, 0x43730000    # 243.0f

    .line 923
    .line 924
    invoke-virtual {v4, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 925
    .line 926
    .line 927
    const/high16 v5, 0x40f00000    # 7.5f

    .line 928
    .line 929
    const/high16 v7, 0x41c00000    # 24.0f

    .line 930
    .line 931
    const/high16 v15, 0x41500000    # 13.0f

    .line 932
    .line 933
    invoke-virtual {v4, v6, v15, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 934
    .line 935
    .line 936
    const/high16 v5, 0x419c0000    # 19.5f

    .line 937
    .line 938
    const/high16 v13, 0x41880000    # 17.0f

    .line 939
    .line 940
    invoke-virtual {v4, v5, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 941
    .line 942
    .line 943
    const/high16 v14, 0x420c0000    # 35.0f

    .line 944
    .line 945
    invoke-virtual {v4, v14, v13}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 949
    .line 950
    .line 951
    const/high16 v5, 0x430d0000    # 141.0f

    .line 952
    .line 953
    const/high16 v8, -0x3e800000    # -16.0f

    .line 954
    .line 955
    invoke-virtual {v4, v8, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 956
    .line 957
    .line 958
    const/high16 v5, -0x40400000    # -1.5f

    .line 959
    .line 960
    const/high16 v8, 0x41600000    # 14.0f

    .line 961
    .line 962
    const/high16 v10, 0x41000000    # 8.0f

    .line 963
    .line 964
    invoke-virtual {v4, v10, v6, v8, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 965
    .line 966
    .line 967
    const/high16 v5, -0x3f300000    # -6.5f

    .line 968
    .line 969
    const/high16 v8, 0x41400000    # 12.0f

    .line 970
    .line 971
    invoke-virtual {v4, v8, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 972
    .line 973
    .line 974
    const/high16 v5, 0x42040000    # 33.0f

    .line 975
    .line 976
    const/high16 v8, -0x3e500000    # -22.0f

    .line 977
    .line 978
    invoke-virtual {v4, v5, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 979
    .line 980
    .line 981
    const/high16 v5, -0x3e880000    # -15.5f

    .line 982
    .line 983
    const/high16 v8, -0x3f200000    # -7.0f

    .line 984
    .line 985
    const/high16 v10, -0x3e900000    # -15.0f

    .line 986
    .line 987
    const/high16 v11, -0x3f000000    # -8.0f

    .line 988
    .line 989
    invoke-virtual {v4, v11, v8, v5, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 990
    .line 991
    .line 992
    const/high16 v5, 0x43be0000    # 380.0f

    .line 993
    .line 994
    const v10, 0x43bc8000    # 377.0f

    .line 995
    .line 996
    .line 997
    invoke-virtual {v4, v10, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 998
    .line 999
    .line 1000
    const/high16 v5, -0x3f600000    # -5.0f

    .line 1001
    .line 1002
    const/high16 v11, -0x3ef00000    # -9.0f

    .line 1003
    .line 1004
    invoke-virtual {v4, v5, v11, v11, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1005
    .line 1006
    .line 1007
    const/high16 v1, -0x3e540000    # -21.5f

    .line 1008
    .line 1009
    invoke-virtual {v4, v9, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 1010
    .line 1011
    .line 1012
    const/high16 v5, -0x3df40000    # -35.0f

    .line 1013
    .line 1014
    const/high16 v13, 0x41880000    # 17.0f

    .line 1015
    .line 1016
    invoke-virtual {v4, v5, v13}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1017
    .line 1018
    .line 1019
    const/high16 v1, -0x3ec00000    # -12.0f

    .line 1020
    .line 1021
    const/high16 v5, -0x3e680000    # -19.0f

    .line 1022
    .line 1023
    invoke-virtual {v4, v1, v12, v5, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v4, v8, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 1027
    .line 1028
    .line 1029
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1030
    .line 1031
    const/high16 v5, 0x42000000    # 32.0f

    .line 1032
    .line 1033
    const/high16 v14, 0x41980000    # 19.0f

    .line 1034
    .line 1035
    invoke-virtual {v4, v1, v14, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1036
    .line 1037
    .line 1038
    const/high16 v1, 0x41fc0000    # 31.5f

    .line 1039
    .line 1040
    const/high16 v15, 0x41500000    # 13.0f

    .line 1041
    .line 1042
    invoke-virtual {v4, v1, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1046
    .line 1047
    .line 1048
    const/high16 v1, 0x436d0000    # 237.0f

    .line 1049
    .line 1050
    const/high16 v3, -0x3d880000    # -62.0f

    .line 1051
    .line 1052
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1056
    .line 1057
    .line 1058
    const/high16 v1, -0x3d100000    # -120.0f

    .line 1059
    .line 1060
    invoke-virtual {v4, v6, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1064
    .line 1065
    .line 1066
    const/high16 v1, -0x3d320000    # -103.0f

    .line 1067
    .line 1068
    const/high16 v3, -0x3d900000    # -60.0f

    .line 1069
    .line 1070
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1074
    .line 1075
    .line 1076
    const/high16 v1, 0x43700000    # 240.0f

    .line 1077
    .line 1078
    invoke-virtual {v4, v6, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1082
    .line 1083
    .line 1084
    const/high16 v1, 0x43820000    # 260.0f

    .line 1085
    .line 1086
    invoke-virtual {v4, v10, v1}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1090
    .line 1091
    .line 1092
    const/high16 v15, 0x42f00000    # 120.0f

    .line 1093
    .line 1094
    invoke-virtual {v4, v6, v15}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1098
    .line 1099
    .line 1100
    iget-object v1, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1101
    .line 1102
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1103
    .line 1104
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1105
    .line 1106
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1107
    .line 1108
    const/4 v6, 0x2

    .line 1109
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1110
    .line 1111
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFolderManagedIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedFolderManagedIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v3, 0x442a0000    # 680.0f

    .line 38
    .line 39
    const/high16 v4, 0x445c0000    # 880.0f

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v5, 0x44270000    # 668.0f

    .line 45
    .line 46
    const/high16 v6, 0x444d0000    # 820.0f

    .line 47
    .line 48
    invoke-virtual {v1, v5, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 49
    .line 50
    .line 51
    const/high16 v7, 0x44240000    # 656.0f

    .line 52
    .line 53
    const v8, 0x444bc000    # 815.0f

    .line 54
    .line 55
    .line 56
    const v9, 0x44216000    # 645.5f

    .line 57
    .line 58
    .line 59
    const v10, 0x444a6000    # 809.5f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v7, v8, v9, v10}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 63
    .line 64
    .line 65
    const v11, 0x441ec000    # 635.0f

    .line 66
    .line 67
    .line 68
    const/high16 v12, 0x44490000    # 804.0f

    .line 69
    .line 70
    const/high16 v13, 0x441c0000    # 624.0f

    .line 71
    .line 72
    const/high16 v14, 0x44470000    # 796.0f

    .line 73
    .line 74
    invoke-virtual {v1, v11, v12, v13, v14}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 75
    .line 76
    .line 77
    const v15, 0x440d8000    # 566.0f

    .line 78
    .line 79
    .line 80
    const v4, 0x444b8000    # 814.0f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v15, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 84
    .line 85
    .line 86
    const v6, 0x44038000    # 526.0f

    .line 87
    .line 88
    .line 89
    const v8, 0x443a8000    # 746.0f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v6, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 93
    .line 94
    .line 95
    const/high16 v10, 0x440f0000    # 572.0f

    .line 96
    .line 97
    const v12, 0x44308000    # 706.0f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v10, v12}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 101
    .line 102
    .line 103
    const v14, 0x440e8000    # 570.0f

    .line 104
    .line 105
    .line 106
    const v4, 0x442d8000    # 694.0f

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v14, v4, v14, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 110
    .line 111
    .line 112
    const v8, 0x44268000    # 666.0f

    .line 113
    .line 114
    .line 115
    const v4, 0x44238000    # 654.0f

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v14, v8, v10, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 119
    .line 120
    .line 121
    const v10, 0x44198000    # 614.0f

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v6, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 125
    .line 126
    .line 127
    const v6, 0x44088000    # 546.0f

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v15, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 131
    .line 132
    .line 133
    const/high16 v14, 0x440d0000    # 564.0f

    .line 134
    .line 135
    invoke-virtual {v1, v13, v14}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 136
    .line 137
    .line 138
    const/high16 v13, 0x440b0000    # 556.0f

    .line 139
    .line 140
    const v15, 0x4409a000    # 550.5f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v11, v13, v9, v15}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 144
    .line 145
    .line 146
    const v9, 0x44084000    # 545.0f

    .line 147
    .line 148
    .line 149
    const/high16 v11, 0x44070000    # 540.0f

    .line 150
    .line 151
    invoke-virtual {v1, v7, v9, v5, v11}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 152
    .line 153
    .line 154
    const/high16 v5, 0x43f00000    # 480.0f

    .line 155
    .line 156
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 157
    .line 158
    .line 159
    const/high16 v7, 0x443e0000    # 760.0f

    .line 160
    .line 161
    invoke-virtual {v1, v7, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 162
    .line 163
    .line 164
    const/high16 v5, 0x44410000    # 772.0f

    .line 165
    .line 166
    invoke-virtual {v1, v5, v11}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 167
    .line 168
    .line 169
    const/high16 v11, 0x44440000    # 784.0f

    .line 170
    .line 171
    const v7, 0x4446a000    # 794.5f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v11, v9, v7, v15}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 175
    .line 176
    .line 177
    const v9, 0x44494000    # 805.0f

    .line 178
    .line 179
    .line 180
    const/high16 v15, 0x444c0000    # 816.0f

    .line 181
    .line 182
    invoke-virtual {v1, v9, v13, v15, v14}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 183
    .line 184
    .line 185
    const v13, 0x445a8000    # 874.0f

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v13, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 189
    .line 190
    .line 191
    const v6, 0x44648000    # 914.0f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v6, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 195
    .line 196
    .line 197
    const/high16 v10, 0x44590000    # 868.0f

    .line 198
    .line 199
    invoke-virtual {v1, v10, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 200
    .line 201
    .line 202
    const v4, 0x44598000    # 870.0f

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4, v8, v4, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 206
    .line 207
    .line 208
    const v8, 0x442d8000    # 694.0f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v4, v8, v10, v12}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 212
    .line 213
    .line 214
    const v4, 0x443a8000    # 746.0f

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v6, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 218
    .line 219
    .line 220
    const v4, 0x444b8000    # 814.0f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v13, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 224
    .line 225
    .line 226
    const/high16 v4, 0x44470000    # 796.0f

    .line 227
    .line 228
    invoke-virtual {v1, v15, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 229
    .line 230
    .line 231
    const v4, 0x444a6000    # 809.5f

    .line 232
    .line 233
    .line 234
    const/high16 v6, 0x44490000    # 804.0f

    .line 235
    .line 236
    invoke-virtual {v1, v9, v6, v7, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 237
    .line 238
    .line 239
    const/high16 v4, 0x444d0000    # 820.0f

    .line 240
    .line 241
    const v6, 0x444bc000    # 815.0f

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v11, v6, v5, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 245
    .line 246
    .line 247
    const/high16 v4, 0x445c0000    # 880.0f

    .line 248
    .line 249
    const/high16 v5, 0x443e0000    # 760.0f

    .line 250
    .line 251
    invoke-virtual {v1, v5, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 258
    .line 259
    .line 260
    const/high16 v4, 0x44340000    # 720.0f

    .line 261
    .line 262
    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 263
    .line 264
    .line 265
    const v6, 0x443c4000    # 753.0f

    .line 266
    .line 267
    .line 268
    const v7, 0x44422000    # 776.5f

    .line 269
    .line 270
    .line 271
    const v8, 0x44382000    # 736.5f

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v6, v5, v7, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 275
    .line 276
    .line 277
    const/high16 v5, 0x44480000    # 800.0f

    .line 278
    .line 279
    const v9, 0x44324000    # 713.0f

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v5, v9, v5, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 283
    .line 284
    .line 285
    const v10, 0x4421c000    # 647.0f

    .line 286
    .line 287
    .line 288
    const v11, 0x441be000    # 623.5f

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v5, v10, v7, v11}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 292
    .line 293
    .line 294
    const/high16 v12, 0x44160000    # 600.0f

    .line 295
    .line 296
    invoke-virtual {v1, v6, v12, v4, v12}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 297
    .line 298
    .line 299
    const v13, 0x442bc000    # 687.0f

    .line 300
    .line 301
    .line 302
    const v14, 0x4425e000    # 663.5f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v13, v12, v14, v11}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 306
    .line 307
    .line 308
    const/high16 v11, 0x44200000    # 640.0f

    .line 309
    .line 310
    invoke-virtual {v1, v11, v10, v11, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v11, v9, v14, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 314
    .line 315
    .line 316
    const/high16 v3, 0x443e0000    # 760.0f

    .line 317
    .line 318
    invoke-virtual {v1, v13, v3, v4, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 322
    .line 323
    .line 324
    const/high16 v3, 0x43200000    # 160.0f

    .line 325
    .line 326
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v3, v4, v3, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v3, v4, v3, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 336
    .line 337
    .line 338
    const/high16 v8, 0x43700000    # 240.0f

    .line 339
    .line 340
    invoke-virtual {v1, v3, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v3, v8, v3, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v3, v8, v3, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v3, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 350
    .line 351
    .line 352
    const/high16 v9, 0x43a00000    # 320.0f

    .line 353
    .line 354
    invoke-virtual {v1, v3, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v3, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v3, v9, v3, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v3, v9, v3, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 364
    .line 365
    .line 366
    const/high16 v10, 0x43ce0000    # 412.0f

    .line 367
    .line 368
    invoke-virtual {v1, v3, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 369
    .line 370
    .line 371
    const/high16 v11, 0x43cb0000    # 406.0f

    .line 372
    .line 373
    const v12, 0x43c98000    # 403.0f

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v3, v11, v3, v12}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 377
    .line 378
    .line 379
    const/high16 v11, 0x43c80000    # 400.0f

    .line 380
    .line 381
    invoke-virtual {v1, v3, v11, v3, v11}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 382
    .line 383
    .line 384
    const v12, 0x43f14000    # 482.5f

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v3, v11, v3, v12}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 388
    .line 389
    .line 390
    const v12, 0x440d4000    # 565.0f

    .line 391
    .line 392
    .line 393
    const v13, 0x4429c000    # 679.0f

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v3, v12, v3, v13}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 397
    .line 398
    .line 399
    const v12, 0x442c8000    # 690.0f

    .line 400
    .line 401
    .line 402
    const v13, 0x442ee000    # 699.5f

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v3, v12, v3, v13}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 406
    .line 407
    .line 408
    const v12, 0x44314000    # 709.0f

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v3, v12, v3, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 418
    .line 419
    .line 420
    const/high16 v12, 0x42fe0000    # 127.0f

    .line 421
    .line 422
    const/high16 v13, 0x42cf0000    # 103.5f

    .line 423
    .line 424
    invoke-virtual {v1, v12, v5, v13, v7}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 425
    .line 426
    .line 427
    const/high16 v7, 0x42a00000    # 80.0f

    .line 428
    .line 429
    invoke-virtual {v1, v7, v6, v7, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v7, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 433
    .line 434
    .line 435
    const/high16 v6, 0x434f0000    # 207.0f

    .line 436
    .line 437
    const v14, 0x43378000    # 183.5f

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v7, v6, v13, v14}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v12, v3, v3, v3}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v11, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 447
    .line 448
    .line 449
    const/high16 v6, 0x43f00000    # 480.0f

    .line 450
    .line 451
    invoke-virtual {v1, v6, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v5, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 455
    .line 456
    .line 457
    const v6, 0x44562000    # 856.5f

    .line 458
    .line 459
    .line 460
    const v7, 0x4383c000    # 263.5f

    .line 461
    .line 462
    .line 463
    const v11, 0x44504000    # 833.0f

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v11, v8, v6, v7}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 467
    .line 468
    .line 469
    const v6, 0x438f8000    # 287.0f

    .line 470
    .line 471
    .line 472
    const/high16 v7, 0x445c0000    # 880.0f

    .line 473
    .line 474
    invoke-virtual {v1, v7, v6, v7, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 475
    .line 476
    .line 477
    const v6, 0x43e18000    # 451.0f

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v7, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 481
    .line 482
    .line 483
    const v6, 0x44528000    # 842.0f

    .line 484
    .line 485
    .line 486
    const v7, 0x43d64000    # 428.5f

    .line 487
    .line 488
    .line 489
    const v11, 0x44578000    # 862.0f

    .line 490
    .line 491
    .line 492
    const/high16 v12, 0x43db0000    # 438.0f

    .line 493
    .line 494
    invoke-virtual {v1, v11, v12, v6, v7}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 495
    .line 496
    .line 497
    const v6, 0x444d8000    # 822.0f

    .line 498
    .line 499
    .line 500
    const v7, 0x43d18000    # 419.0f

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v6, v7, v5, v10}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v5, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v5, v9, v5, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v5, v9, v5, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 513
    .line 514
    .line 515
    const v6, 0x43df8000    # 447.0f

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v6, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 519
    .line 520
    .line 521
    const v6, 0x43b78000    # 367.0f

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v6, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v3, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v3, v8, v3, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v3, v8, v3, v8}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v3, v4, v3, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v3, v4, v3, v4}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 543
    .line 544
    .line 545
    const v6, 0x43dd8000    # 443.0f

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v6, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 549
    .line 550
    .line 551
    const v4, 0x43e24000    # 452.5f

    .line 552
    .line 553
    .line 554
    const v6, 0x443e4000    # 761.0f

    .line 555
    .line 556
    .line 557
    const/high16 v7, 0x43df0000    # 446.0f

    .line 558
    .line 559
    const v8, 0x44394000    # 741.0f

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v7, v8, v4, v6}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 563
    .line 564
    .line 565
    const v4, 0x44434000    # 781.0f

    .line 566
    .line 567
    .line 568
    const/high16 v6, 0x43ea0000    # 468.0f

    .line 569
    .line 570
    const v7, 0x43e58000    # 459.0f

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v7, v4, v6, v5}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 580
    .line 581
    .line 582
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 583
    .line 584
    const/high16 v3, 0x3f800000    # 1.0f

    .line 585
    .line 586
    const/high16 v4, 0x3f800000    # 1.0f

    .line 587
    .line 588
    const/high16 v5, 0x3f800000    # 1.0f

    .line 589
    .line 590
    const/4 v6, 0x2

    .line 591
    const/high16 v7, 0x3f800000    # 1.0f

    .line 592
    .line 593
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedGameIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedGameIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 v1, 0x43360000    # 182.0f

    .line 32
    .line 33
    const/high16 v3, 0x443e0000    # 760.0f

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/high16 v5, -0x3d620000    # -79.0f

    .line 40
    .line 41
    const/high16 v6, -0x3df20000    # -35.5f

    .line 42
    .line 43
    const/high16 v7, -0x3db40000    # -51.0f

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual {v4, v7, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 47
    .line 48
    .line 49
    const/high16 v5, 0x42a40000    # 82.0f

    .line 50
    .line 51
    const v6, 0x441f8000    # 638.0f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 55
    .line 56
    .line 57
    const/high16 v5, -0x3c6a0000    # -300.0f

    .line 58
    .line 59
    const/high16 v6, 0x42280000    # 42.0f

    .line 60
    .line 61
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 62
    .line 63
    .line 64
    const/high16 v5, -0x3d3a0000    # -99.0f

    .line 65
    .line 66
    const/high16 v7, 0x41100000    # 9.0f

    .line 67
    .line 68
    const/high16 v9, -0x3d900000    # -60.0f

    .line 69
    .line 70
    const/high16 v10, 0x42560000    # 53.5f

    .line 71
    .line 72
    invoke-virtual {v4, v7, v9, v10, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 73
    .line 74
    .line 75
    const/high16 v5, 0x43480000    # 200.0f

    .line 76
    .line 77
    const/high16 v7, 0x438d0000    # 282.0f

    .line 78
    .line 79
    invoke-virtual {v4, v7, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 80
    .line 81
    .line 82
    const/high16 v5, 0x43c60000    # 396.0f

    .line 83
    .line 84
    invoke-virtual {v4, v5, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 85
    .line 86
    .line 87
    const/high16 v5, 0x42d10000    # 104.5f

    .line 88
    .line 89
    const/high16 v11, 0x421c0000    # 39.0f

    .line 90
    .line 91
    const/high16 v12, 0x42700000    # 60.0f

    .line 92
    .line 93
    invoke-virtual {v4, v12, v8, v5, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 94
    .line 95
    .line 96
    const/high16 v5, 0x42c60000    # 99.0f

    .line 97
    .line 98
    invoke-virtual {v4, v10, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 99
    .line 100
    .line 101
    const/high16 v5, 0x43960000    # 300.0f

    .line 102
    .line 103
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 104
    .line 105
    .line 106
    const/high16 v5, 0x42ad0000    # 86.5f

    .line 107
    .line 108
    const/high16 v6, 0x40e00000    # 7.0f

    .line 109
    .line 110
    const/high16 v10, 0x424c0000    # 51.0f

    .line 111
    .line 112
    const/high16 v11, -0x3e580000    # -21.0f

    .line 113
    .line 114
    invoke-virtual {v4, v6, v10, v11, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 115
    .line 116
    .line 117
    const v5, 0x44428000    # 778.0f

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 121
    .line 122
    .line 123
    const/high16 v3, -0x3f100000    # -7.5f

    .line 124
    .line 125
    const/high16 v5, -0x3de40000    # -39.0f

    .line 126
    .line 127
    invoke-virtual {v4, v11, v8, v5, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 128
    .line 129
    .line 130
    const v3, 0x44308000    # 706.0f

    .line 131
    .line 132
    .line 133
    const v6, 0x44368000    # 730.0f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 137
    .line 138
    .line 139
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 140
    .line 141
    invoke-virtual {v4, v3, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 142
    .line 143
    .line 144
    const/high16 v6, 0x43ac0000    # 344.0f

    .line 145
    .line 146
    const/high16 v10, 0x44200000    # 640.0f

    .line 147
    .line 148
    invoke-virtual {v4, v6, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 149
    .line 150
    .line 151
    const/high16 v6, 0x42b40000    # 90.0f

    .line 152
    .line 153
    invoke-virtual {v4, v3, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 154
    .line 155
    .line 156
    const/high16 v3, -0x3dfc0000    # -33.0f

    .line 157
    .line 158
    const/high16 v6, 0x41b40000    # 22.5f

    .line 159
    .line 160
    const/high16 v11, -0x3e900000    # -15.0f

    .line 161
    .line 162
    const/high16 v13, 0x41700000    # 15.0f

    .line 163
    .line 164
    invoke-virtual {v4, v11, v13, v3, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 165
    .line 166
    .line 167
    const/high16 v3, 0x40f00000    # 7.5f

    .line 168
    .line 169
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 173
    .line 174
    .line 175
    const/high16 v3, -0x3d540000    # -86.0f

    .line 176
    .line 177
    const/high16 v5, 0x41800000    # 16.0f

    .line 178
    .line 179
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 180
    .line 181
    .line 182
    const/high16 v3, -0x3d1c0000    # -114.0f

    .line 183
    .line 184
    const/high16 v6, 0x42e40000    # 114.0f

    .line 185
    .line 186
    invoke-virtual {v4, v6, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 187
    .line 188
    .line 189
    const/high16 v3, 0x43a80000    # 336.0f

    .line 190
    .line 191
    invoke-virtual {v4, v3, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v6, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 195
    .line 196
    .line 197
    const/high16 v3, 0x40c00000    # 6.0f

    .line 198
    .line 199
    const/high16 v6, 0x40000000    # 2.0f

    .line 200
    .line 201
    invoke-virtual {v4, v6, v6, v5, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 202
    .line 203
    .line 204
    const/high16 v3, -0x3f300000    # -6.5f

    .line 205
    .line 206
    const/high16 v11, 0x41300000    # 11.0f

    .line 207
    .line 208
    const/high16 v13, 0x418c0000    # 17.5f

    .line 209
    .line 210
    invoke-virtual {v4, v11, v8, v13, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 211
    .line 212
    .line 213
    const/high16 v3, 0x44480000    # 800.0f

    .line 214
    .line 215
    const/high16 v14, 0x44240000    # 656.0f

    .line 216
    .line 217
    invoke-virtual {v4, v3, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 218
    .line 219
    .line 220
    const/high16 v3, -0x3c660000    # -308.0f

    .line 221
    .line 222
    const/high16 v14, -0x3dd00000    # -44.0f

    .line 223
    .line 224
    invoke-virtual {v4, v14, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 225
    .line 226
    .line 227
    const/high16 v3, -0x3e300000    # -26.0f

    .line 228
    .line 229
    const/high16 v15, -0x3dbe0000    # -48.5f

    .line 230
    .line 231
    const/high16 v9, -0x3f800000    # -4.0f

    .line 232
    .line 233
    const/high16 v12, -0x3e180000    # -29.0f

    .line 234
    .line 235
    invoke-virtual {v4, v9, v12, v3, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 236
    .line 237
    .line 238
    const v3, 0x44298000    # 678.0f

    .line 239
    .line 240
    .line 241
    const/high16 v9, 0x438c0000    # 280.0f

    .line 242
    .line 243
    invoke-virtual {v4, v3, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v7, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 247
    .line 248
    .line 249
    const/high16 v3, -0x3db00000    # -52.0f

    .line 250
    .line 251
    const/high16 v7, 0x419c0000    # 19.5f

    .line 252
    .line 253
    const/high16 v9, -0x3e100000    # -30.0f

    .line 254
    .line 255
    invoke-virtual {v4, v9, v8, v3, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 256
    .line 257
    .line 258
    const/high16 v3, 0x434c0000    # 204.0f

    .line 259
    .line 260
    const/high16 v7, 0x43ae0000    # 348.0f

    .line 261
    .line 262
    invoke-virtual {v4, v3, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 263
    .line 264
    .line 265
    const/high16 v3, 0x439a0000    # 308.0f

    .line 266
    .line 267
    invoke-virtual {v4, v14, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 268
    .line 269
    .line 270
    const/high16 v3, -0x40000000    # -2.0f

    .line 271
    .line 272
    const/high16 v7, 0x40900000    # 4.5f

    .line 273
    .line 274
    invoke-virtual {v4, v3, v11, v7, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 275
    .line 276
    .line 277
    const/high16 v3, 0x442a0000    # 680.0f

    .line 278
    .line 279
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 280
    .line 281
    .line 282
    const/high16 v1, -0x3f400000    # -6.0f

    .line 283
    .line 284
    invoke-virtual {v4, v6, v8, v5, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 288
    .line 289
    .line 290
    const/high16 v1, 0x43f10000    # 482.0f

    .line 291
    .line 292
    const/high16 v5, -0x3ce60000    # -154.0f

    .line 293
    .line 294
    invoke-virtual {v4, v1, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 295
    .line 296
    .line 297
    const/high16 v1, 0x41880000    # 17.0f

    .line 298
    .line 299
    const/high16 v5, 0x41e40000    # 28.5f

    .line 300
    .line 301
    const/high16 v6, -0x3ec80000    # -11.5f

    .line 302
    .line 303
    invoke-virtual {v4, v1, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 304
    .line 305
    .line 306
    const/high16 v7, 0x44340000    # 720.0f

    .line 307
    .line 308
    const/high16 v9, 0x43f00000    # 480.0f

    .line 309
    .line 310
    invoke-virtual {v4, v7, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 311
    .line 312
    .line 313
    const/high16 v7, -0x3e780000    # -17.0f

    .line 314
    .line 315
    const/high16 v11, -0x3e1c0000    # -28.5f

    .line 316
    .line 317
    invoke-virtual {v4, v8, v7, v6, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 318
    .line 319
    .line 320
    const/high16 v12, 0x43dc0000    # 440.0f

    .line 321
    .line 322
    invoke-virtual {v4, v3, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 323
    .line 324
    .line 325
    const/high16 v12, 0x41380000    # 11.5f

    .line 326
    .line 327
    invoke-virtual {v4, v7, v8, v11, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v10, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v8, v1, v12, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 334
    .line 335
    .line 336
    const/high16 v9, 0x44020000    # 520.0f

    .line 337
    .line 338
    invoke-virtual {v4, v3, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 342
    .line 343
    .line 344
    const/high16 v3, -0x3d600000    # -80.0f

    .line 345
    .line 346
    const/high16 v13, -0x3d100000    # -120.0f

    .line 347
    .line 348
    invoke-virtual {v4, v3, v13}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v1, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 352
    .line 353
    .line 354
    const/high16 v3, 0x43b40000    # 360.0f

    .line 355
    .line 356
    invoke-virtual {v4, v10, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v8, v7, v6, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 360
    .line 361
    .line 362
    const/high16 v6, 0x43a00000    # 320.0f

    .line 363
    .line 364
    const/high16 v10, 0x44160000    # 600.0f

    .line 365
    .line 366
    invoke-virtual {v4, v10, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v7, v8, v11, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 370
    .line 371
    .line 372
    const/high16 v6, 0x440c0000    # 560.0f

    .line 373
    .line 374
    invoke-virtual {v4, v6, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v8, v1, v12, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 378
    .line 379
    .line 380
    const/high16 v1, 0x43c80000    # 400.0f

    .line 381
    .line 382
    invoke-virtual {v4, v10, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 386
    .line 387
    .line 388
    const/high16 v1, 0x439b0000    # 310.0f

    .line 389
    .line 390
    invoke-virtual {v4, v1, v9}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 391
    .line 392
    .line 393
    const/high16 v1, 0x42700000    # 60.0f

    .line 394
    .line 395
    invoke-virtual {v4, v1, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 396
    .line 397
    .line 398
    const/high16 v3, -0x3d740000    # -70.0f

    .line 399
    .line 400
    invoke-virtual {v4, v8, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 401
    .line 402
    .line 403
    const/high16 v5, 0x428c0000    # 70.0f

    .line 404
    .line 405
    invoke-virtual {v4, v5, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 406
    .line 407
    .line 408
    const/high16 v6, -0x3d900000    # -60.0f

    .line 409
    .line 410
    invoke-virtual {v4, v8, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v3, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v8, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v6, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v4, v8, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4, v3, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v8, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 429
    .line 430
    .line 431
    invoke-static {v4, v5, v8, v8, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 432
    .line 433
    .line 434
    const/high16 v1, 0x432a0000    # 170.0f

    .line 435
    .line 436
    const/high16 v3, -0x3de00000    # -40.0f

    .line 437
    .line 438
    invoke-virtual {v4, v1, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 442
    .line 443
    .line 444
    iget-object v1, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 445
    .line 446
    const/high16 v3, 0x3f800000    # 1.0f

    .line 447
    .line 448
    const/high16 v4, 0x3f800000    # 1.0f

    .line 449
    .line 450
    const/high16 v5, 0x3f800000    # 1.0f

    .line 451
    .line 452
    const/4 v6, 0x2

    .line 453
    const/high16 v7, 0x3f800000    # 1.0f

    .line 454
    .line 455
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedGroupIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedGroupIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v3, 0x42200000    # 40.0f

    .line 38
    .line 39
    const/high16 v4, 0x44480000    # 800.0f

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v5, -0x3d200000    # -112.0f

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 48
    .line 49
    .line 50
    const/high16 v5, 0x418c0000    # 17.5f

    .line 51
    .line 52
    const/high16 v7, -0x3d860000    # -62.5f

    .line 53
    .line 54
    const/high16 v8, -0x3df80000    # -34.0f

    .line 55
    .line 56
    invoke-virtual {v1, v6, v8, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 57
    .line 58
    .line 59
    const/high16 v5, 0x42d00000    # 104.0f

    .line 60
    .line 61
    const v7, 0x44118000    # 582.0f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 65
    .line 66
    .line 67
    const/high16 v5, 0x42fc0000    # 126.0f

    .line 68
    .line 69
    const/high16 v8, -0x3dc60000    # -46.5f

    .line 70
    .line 71
    const/high16 v9, 0x42780000    # 62.0f

    .line 72
    .line 73
    const/high16 v10, -0x3e080000    # -31.0f

    .line 74
    .line 75
    invoke-virtual {v1, v9, v10, v5, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 76
    .line 77
    .line 78
    const/high16 v5, 0x44020000    # 520.0f

    .line 79
    .line 80
    const/high16 v8, 0x43b40000    # 360.0f

    .line 81
    .line 82
    invoke-virtual {v1, v8, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 83
    .line 84
    .line 85
    const/high16 v5, 0x43020000    # 130.0f

    .line 86
    .line 87
    const/high16 v9, 0x41780000    # 15.5f

    .line 88
    .line 89
    const/high16 v10, 0x42840000    # 66.0f

    .line 90
    .line 91
    invoke-virtual {v1, v10, v6, v5, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 92
    .line 93
    .line 94
    const/high16 v5, 0x441a0000    # 616.0f

    .line 95
    .line 96
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 97
    .line 98
    .line 99
    const/high16 v5, 0x423a0000    # 46.5f

    .line 100
    .line 101
    const/high16 v7, 0x422e0000    # 43.5f

    .line 102
    .line 103
    const/high16 v9, 0x41e80000    # 29.0f

    .line 104
    .line 105
    const/high16 v11, 0x41700000    # 15.0f

    .line 106
    .line 107
    invoke-virtual {v1, v9, v11, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 108
    .line 109
    .line 110
    const/high16 v5, 0x442a0000    # 680.0f

    .line 111
    .line 112
    const/high16 v7, 0x442c0000    # 688.0f

    .line 113
    .line 114
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 115
    .line 116
    .line 117
    const/high16 v5, 0x42e00000    # 112.0f

    .line 118
    .line 119
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 126
    .line 127
    .line 128
    const/high16 v3, 0x44340000    # 720.0f

    .line 129
    .line 130
    invoke-virtual {v1, v3, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 131
    .line 132
    .line 133
    const/high16 v5, -0x3d100000    # -120.0f

    .line 134
    .line 135
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 136
    .line 137
    .line 138
    const/high16 v5, -0x3e3c0000    # -24.5f

    .line 139
    .line 140
    const/high16 v7, -0x3d570000    # -84.5f

    .line 141
    .line 142
    const/high16 v9, -0x3dd00000    # -44.0f

    .line 143
    .line 144
    invoke-virtual {v1, v6, v9, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 145
    .line 146
    .line 147
    const v5, 0x44268000    # 666.0f

    .line 148
    .line 149
    .line 150
    const v7, 0x44038000    # 526.0f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 154
    .line 155
    .line 156
    const/high16 v5, 0x42c00000    # 96.0f

    .line 157
    .line 158
    const/high16 v7, 0x41a40000    # 20.5f

    .line 159
    .line 160
    const/high16 v9, 0x424c0000    # 51.0f

    .line 161
    .line 162
    const/high16 v11, 0x40c00000    # 6.0f

    .line 163
    .line 164
    invoke-virtual {v1, v9, v11, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 165
    .line 166
    .line 167
    const/high16 v5, 0x42a80000    # 84.0f

    .line 168
    .line 169
    const/high16 v7, 0x420e0000    # 35.5f

    .line 170
    .line 171
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 172
    .line 173
    .line 174
    const/high16 v5, 0x425c0000    # 55.0f

    .line 175
    .line 176
    const/high16 v7, 0x42320000    # 44.5f

    .line 177
    .line 178
    const/high16 v9, 0x42100000    # 36.0f

    .line 179
    .line 180
    const/high16 v11, 0x41a00000    # 20.0f

    .line 181
    .line 182
    invoke-virtual {v1, v9, v11, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 183
    .line 184
    .line 185
    const/high16 v5, 0x41980000    # 19.0f

    .line 186
    .line 187
    const/high16 v7, 0x42560000    # 53.5f

    .line 188
    .line 189
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 190
    .line 191
    .line 192
    const/high16 v5, 0x42f00000    # 120.0f

    .line 193
    .line 194
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 195
    .line 196
    .line 197
    const/high16 v7, 0x443e0000    # 760.0f

    .line 198
    .line 199
    invoke-virtual {v1, v7, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 203
    .line 204
    .line 205
    const/high16 v4, 0x43f00000    # 480.0f

    .line 206
    .line 207
    invoke-virtual {v1, v8, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 208
    .line 209
    .line 210
    const/high16 v7, -0x3d7c0000    # -66.0f

    .line 211
    .line 212
    const/high16 v9, -0x3d1e0000    # -113.0f

    .line 213
    .line 214
    const/high16 v12, -0x3dc40000    # -47.0f

    .line 215
    .line 216
    invoke-virtual {v1, v7, v6, v9, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v12, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 220
    .line 221
    .line 222
    const/high16 v13, 0x423c0000    # 47.0f

    .line 223
    .line 224
    invoke-virtual {v1, v6, v7, v13, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 225
    .line 226
    .line 227
    const/high16 v7, 0x42e20000    # 113.0f

    .line 228
    .line 229
    invoke-virtual {v1, v7, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v10, v6, v7, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v13, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v6, v10, v12, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v9, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 245
    .line 246
    .line 247
    const/high16 v14, -0x3ce00000    # -160.0f

    .line 248
    .line 249
    const/high16 v15, 0x43c80000    # 400.0f

    .line 250
    .line 251
    invoke-virtual {v1, v15, v14}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v6, v10, v12, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v9, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 258
    .line 259
    .line 260
    const/high16 v9, -0x3fe00000    # -2.5f

    .line 261
    .line 262
    const/high16 v12, -0x3ed00000    # -11.0f

    .line 263
    .line 264
    const/high16 v14, -0x3e200000    # -28.0f

    .line 265
    .line 266
    invoke-virtual {v1, v12, v6, v14, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 267
    .line 268
    .line 269
    const/high16 v9, -0x3f500000    # -5.5f

    .line 270
    .line 271
    invoke-virtual {v1, v14, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 272
    .line 273
    .line 274
    const/high16 v14, 0x42260000    # 41.5f

    .line 275
    .line 276
    const/high16 v15, -0x3d720000    # -71.0f

    .line 277
    .line 278
    const/high16 v11, 0x41d80000    # 27.0f

    .line 279
    .line 280
    const/high16 v8, -0x3e000000    # -32.0f

    .line 281
    .line 282
    invoke-virtual {v1, v11, v8, v14, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 283
    .line 284
    .line 285
    const/high16 v11, 0x41680000    # 14.5f

    .line 286
    .line 287
    const/high16 v14, -0x3d5e0000    # -81.0f

    .line 288
    .line 289
    invoke-virtual {v1, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 290
    .line 291
    .line 292
    const/high16 v11, -0x3dd80000    # -42.0f

    .line 293
    .line 294
    const/high16 v15, -0x3e980000    # -14.5f

    .line 295
    .line 296
    invoke-virtual {v1, v6, v11, v15, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 297
    .line 298
    .line 299
    const/high16 v11, 0x44080000    # 544.0f

    .line 300
    .line 301
    const/high16 v14, 0x43280000    # 168.0f

    .line 302
    .line 303
    invoke-virtual {v1, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 304
    .line 305
    .line 306
    const/high16 v11, -0x3f300000    # -6.5f

    .line 307
    .line 308
    const/high16 v14, 0x41600000    # 14.0f

    .line 309
    .line 310
    const/high16 v15, -0x3f600000    # -5.0f

    .line 311
    .line 312
    const/high16 v9, 0x41e00000    # 28.0f

    .line 313
    .line 314
    invoke-virtual {v1, v14, v15, v9, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 315
    .line 316
    .line 317
    const/high16 v11, -0x40400000    # -1.5f

    .line 318
    .line 319
    invoke-virtual {v1, v9, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v10, v6, v7, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v13, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v5, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v4, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v6, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 338
    .line 339
    .line 340
    const/high16 v3, -0x3e600000    # -20.0f

    .line 341
    .line 342
    const/high16 v4, -0x3f500000    # -5.5f

    .line 343
    .line 344
    invoke-virtual {v1, v6, v12, v4, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 345
    .line 346
    .line 347
    const/high16 v3, 0x44110000    # 580.0f

    .line 348
    .line 349
    const v4, 0x44238000    # 654.0f

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 353
    .line 354
    .line 355
    const/high16 v3, -0x3d260000    # -109.0f

    .line 356
    .line 357
    const/high16 v5, -0x3dde0000    # -40.5f

    .line 358
    .line 359
    const/high16 v7, -0x3da80000    # -54.0f

    .line 360
    .line 361
    const/high16 v8, -0x3e280000    # -27.0f

    .line 362
    .line 363
    invoke-virtual {v1, v7, v8, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 364
    .line 365
    .line 366
    const/high16 v3, 0x44160000    # 600.0f

    .line 367
    .line 368
    const/high16 v5, 0x43b40000    # 360.0f

    .line 369
    .line 370
    invoke-virtual {v1, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 371
    .line 372
    .line 373
    const/high16 v3, -0x3d220000    # -111.0f

    .line 374
    .line 375
    const/high16 v5, 0x41580000    # 13.5f

    .line 376
    .line 377
    const/high16 v7, -0x3da00000    # -56.0f

    .line 378
    .line 379
    invoke-virtual {v1, v7, v6, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 380
    .line 381
    .line 382
    const/high16 v3, 0x430c0000    # 140.0f

    .line 383
    .line 384
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 385
    .line 386
    .line 387
    const/high16 v3, -0x3ef00000    # -9.0f

    .line 388
    .line 389
    const/high16 v4, 0x40a00000    # 5.0f

    .line 390
    .line 391
    const/high16 v5, -0x3e980000    # -14.5f

    .line 392
    .line 393
    invoke-virtual {v1, v3, v4, v5, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 394
    .line 395
    .line 396
    const/high16 v3, 0x41a00000    # 20.0f

    .line 397
    .line 398
    const/high16 v4, -0x3f500000    # -5.5f

    .line 399
    .line 400
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 401
    .line 402
    .line 403
    const/high16 v3, 0x42000000    # 32.0f

    .line 404
    .line 405
    invoke-virtual {v1, v6, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 409
    .line 410
    .line 411
    const/high16 v3, -0x3c600000    # -320.0f

    .line 412
    .line 413
    const/high16 v4, 0x43700000    # 240.0f

    .line 414
    .line 415
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 416
    .line 417
    .line 418
    const/high16 v3, 0x42040000    # 33.0f

    .line 419
    .line 420
    const/high16 v5, 0x42620000    # 56.5f

    .line 421
    .line 422
    const/high16 v7, -0x3e440000    # -23.5f

    .line 423
    .line 424
    invoke-virtual {v1, v3, v6, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 425
    .line 426
    .line 427
    const/high16 v8, 0x43dc0000    # 440.0f

    .line 428
    .line 429
    const/high16 v9, 0x43a00000    # 320.0f

    .line 430
    .line 431
    invoke-virtual {v1, v8, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 432
    .line 433
    .line 434
    const/high16 v8, -0x3dfc0000    # -33.0f

    .line 435
    .line 436
    const/high16 v10, -0x3d9e0000    # -56.5f

    .line 437
    .line 438
    invoke-virtual {v1, v6, v8, v7, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 439
    .line 440
    .line 441
    const/high16 v7, 0x43b40000    # 360.0f

    .line 442
    .line 443
    invoke-virtual {v1, v7, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 444
    .line 445
    .line 446
    const/high16 v4, 0x41bc0000    # 23.5f

    .line 447
    .line 448
    invoke-virtual {v1, v8, v6, v10, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 449
    .line 450
    .line 451
    const/high16 v8, 0x438c0000    # 280.0f

    .line 452
    .line 453
    invoke-virtual {v1, v8, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v6, v3, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 457
    .line 458
    .line 459
    const/high16 v3, 0x43c80000    # 400.0f

    .line 460
    .line 461
    invoke-virtual {v1, v7, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v6, v9}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 471
    .line 472
    .line 473
    const/high16 v3, -0x3c380000    # -400.0f

    .line 474
    .line 475
    invoke-virtual {v1, v6, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 479
    .line 480
    .line 481
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 482
    .line 483
    const/high16 v3, 0x3f800000    # 1.0f

    .line 484
    .line 485
    const/high16 v4, 0x3f800000    # 1.0f

    .line 486
    .line 487
    const/high16 v5, 0x3f800000    # 1.0f

    .line 488
    .line 489
    const/4 v6, 0x2

    .line 490
    const/high16 v7, 0x3f800000    # 1.0f

    .line 491
    .line 492
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedHearthIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedHearthIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v3, 0x44520000    # 840.0f

    .line 38
    .line 39
    const/high16 v4, 0x43f00000    # 480.0f

    .line 40
    .line 41
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v3, -0x3db00000    # -52.0f

    .line 45
    .line 46
    const/high16 v5, -0x3d980000    # -58.0f

    .line 47
    .line 48
    invoke-virtual {v1, v5, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 49
    .line 50
    .line 51
    const/high16 v3, -0x3d360000    # -101.0f

    .line 52
    .line 53
    const/high16 v6, -0x3d4a0000    # -91.0f

    .line 54
    .line 55
    const/high16 v7, -0x3cd90000    # -167.0f

    .line 56
    .line 57
    const/high16 v8, -0x3ce30000    # -157.0f

    .line 58
    .line 59
    invoke-virtual {v1, v3, v6, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 60
    .line 61
    .line 62
    const/high16 v3, 0x43160000    # 150.0f

    .line 63
    .line 64
    const v6, 0x44002000    # 512.5f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 68
    .line 69
    .line 70
    const/high16 v3, 0x42bf0000    # 95.5f

    .line 71
    .line 72
    const/high16 v7, 0x43d00000    # 416.0f

    .line 73
    .line 74
    const/high16 v9, 0x42de0000    # 111.0f

    .line 75
    .line 76
    const/high16 v10, 0x43e60000    # 460.0f

    .line 77
    .line 78
    invoke-virtual {v1, v9, v10, v3, v7}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 79
    .line 80
    .line 81
    const/high16 v3, 0x42a00000    # 80.0f

    .line 82
    .line 83
    const/high16 v7, 0x43a30000    # 326.0f

    .line 84
    .line 85
    invoke-virtual {v1, v3, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    const/high16 v7, -0x3d440000    # -94.0f

    .line 90
    .line 91
    const/high16 v9, 0x427c0000    # 63.0f

    .line 92
    .line 93
    invoke-virtual {v1, v3, v7, v9, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 94
    .line 95
    .line 96
    const/high16 v7, -0x3d840000    # -63.0f

    .line 97
    .line 98
    const/high16 v8, 0x431d0000    # 157.0f

    .line 99
    .line 100
    invoke-virtual {v1, v8, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 101
    .line 102
    .line 103
    const/high16 v7, 0x41b00000    # 22.0f

    .line 104
    .line 105
    const/high16 v10, 0x42500000    # 52.0f

    .line 106
    .line 107
    const/high16 v11, 0x42c60000    # 99.0f

    .line 108
    .line 109
    invoke-virtual {v1, v10, v3, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 110
    .line 111
    .line 112
    const/high16 v7, 0x42780000    # 62.0f

    .line 113
    .line 114
    const/high16 v12, 0x42a20000    # 81.0f

    .line 115
    .line 116
    invoke-virtual {v1, v12, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 117
    .line 118
    .line 119
    const/high16 v7, -0x3d880000    # -62.0f

    .line 120
    .line 121
    const/high16 v13, 0x42080000    # 34.0f

    .line 122
    .line 123
    const/high16 v14, -0x3de00000    # -40.0f

    .line 124
    .line 125
    invoke-virtual {v1, v13, v14, v12, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 126
    .line 127
    .line 128
    const/high16 v7, -0x3e500000    # -22.0f

    .line 129
    .line 130
    invoke-virtual {v1, v11, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 131
    .line 132
    .line 133
    const/high16 v7, 0x42bc0000    # 94.0f

    .line 134
    .line 135
    invoke-virtual {v1, v7, v3, v8, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v9, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 139
    .line 140
    .line 141
    const/high16 v7, -0x3e880000    # -15.5f

    .line 142
    .line 143
    const/high16 v8, 0x42b40000    # 90.0f

    .line 144
    .line 145
    const/high16 v9, 0x42380000    # 46.0f

    .line 146
    .line 147
    invoke-virtual {v1, v3, v9, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 148
    .line 149
    .line 150
    const v7, 0x444a8000    # 810.0f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v7, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 154
    .line 155
    .line 156
    const v6, 0x44304000    # 705.0f

    .line 157
    .line 158
    .line 159
    const v7, 0x441dc000    # 631.0f

    .line 160
    .line 161
    .line 162
    const v8, 0x4440c000    # 771.0f

    .line 163
    .line 164
    .line 165
    const v9, 0x440d4000    # 565.0f

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v8, v9, v6, v7}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 169
    .line 170
    .line 171
    const v6, 0x44068000    # 538.0f

    .line 172
    .line 173
    .line 174
    const/high16 v7, 0x44450000    # 788.0f

    .line 175
    .line 176
    invoke-virtual {v1, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v5, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 183
    .line 184
    .line 185
    const/high16 v5, -0x3d280000    # -108.0f

    .line 186
    .line 187
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 188
    .line 189
    .line 190
    const/high16 v5, 0x431e0000    # 158.0f

    .line 191
    .line 192
    const v6, -0x3cec8000    # -147.5f

    .line 193
    .line 194
    .line 195
    const/high16 v7, 0x42c00000    # 96.0f

    .line 196
    .line 197
    const/high16 v8, -0x3d540000    # -86.0f

    .line 198
    .line 199
    invoke-virtual {v1, v7, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 200
    .line 201
    .line 202
    const/high16 v5, -0x3d2a0000    # -107.0f

    .line 203
    .line 204
    const/high16 v6, 0x42c40000    # 98.0f

    .line 205
    .line 206
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 207
    .line 208
    .line 209
    const/high16 v5, -0x3d5e0000    # -81.0f

    .line 210
    .line 211
    const/high16 v7, 0x42100000    # 36.0f

    .line 212
    .line 213
    const/high16 v8, -0x3dca0000    # -45.5f

    .line 214
    .line 215
    const/high16 v9, 0x42480000    # 50.0f

    .line 216
    .line 217
    invoke-virtual {v1, v7, v8, v9, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 218
    .line 219
    .line 220
    const/high16 v5, -0x3d730000    # -70.5f

    .line 221
    .line 222
    const/high16 v8, 0x41600000    # 14.0f

    .line 223
    .line 224
    invoke-virtual {v1, v8, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 225
    .line 226
    .line 227
    const/high16 v5, -0x3d900000    # -60.0f

    .line 228
    .line 229
    const/high16 v10, -0x3d380000    # -100.0f

    .line 230
    .line 231
    invoke-virtual {v1, v3, v5, v14, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v10, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 235
    .line 236
    .line 237
    const/high16 v11, -0x3d520000    # -87.0f

    .line 238
    .line 239
    const/high16 v13, 0x41d40000    # 26.5f

    .line 240
    .line 241
    const/high16 v15, -0x3dc40000    # -47.0f

    .line 242
    .line 243
    invoke-virtual {v1, v15, v3, v11, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 244
    .line 245
    .line 246
    const v11, 0x44018000    # 518.0f

    .line 247
    .line 248
    .line 249
    const/high16 v13, 0x438c0000    # 280.0f

    .line 250
    .line 251
    invoke-virtual {v1, v11, v13}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 252
    .line 253
    .line 254
    const/high16 v11, -0x3d680000    # -76.0f

    .line 255
    .line 256
    invoke-virtual {v1, v11, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 257
    .line 258
    .line 259
    const/high16 v11, -0x3da40000    # -55.0f

    .line 260
    .line 261
    const/high16 v13, -0x3d790000    # -67.5f

    .line 262
    .line 263
    const/high16 v15, -0x3e900000    # -15.0f

    .line 264
    .line 265
    const/high16 v4, -0x3ddc0000    # -41.0f

    .line 266
    .line 267
    invoke-virtual {v1, v15, v4, v11, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 268
    .line 269
    .line 270
    const/high16 v4, 0x43960000    # 300.0f

    .line 271
    .line 272
    const/high16 v11, 0x433a0000    # 186.0f

    .line 273
    .line 274
    invoke-virtual {v1, v4, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 275
    .line 276
    .line 277
    const/high16 v4, 0x42200000    # 40.0f

    .line 278
    .line 279
    invoke-virtual {v1, v5, v3, v10, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 280
    .line 281
    .line 282
    const/high16 v4, 0x42c80000    # 100.0f

    .line 283
    .line 284
    invoke-virtual {v1, v14, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 285
    .line 286
    .line 287
    const/high16 v4, 0x420c0000    # 35.0f

    .line 288
    .line 289
    const/high16 v5, 0x428d0000    # 70.5f

    .line 290
    .line 291
    invoke-virtual {v1, v3, v4, v8, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v9, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 295
    .line 296
    .line 297
    const/high16 v4, 0x42360000    # 45.5f

    .line 298
    .line 299
    const/high16 v5, 0x42d60000    # 107.0f

    .line 300
    .line 301
    invoke-virtual {v1, v7, v4, v6, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 302
    .line 303
    .line 304
    const/high16 v4, 0x44370000    # 732.0f

    .line 305
    .line 306
    const/high16 v5, 0x43f00000    # 480.0f

    .line 307
    .line 308
    invoke-virtual {v1, v5, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 312
    .line 313
    .line 314
    const v4, -0x3c778000    # -273.0f

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 321
    .line 322
    .line 323
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 324
    .line 325
    const/high16 v3, 0x3f800000    # 1.0f

    .line 326
    .line 327
    const/high16 v4, 0x3f800000    # 1.0f

    .line 328
    .line 329
    const/high16 v5, 0x3f800000    # 1.0f

    .line 330
    .line 331
    const/4 v6, 0x2

    .line 332
    const/high16 v7, 0x3f800000    # 1.0f

    .line 333
    .line 334
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedImageIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedImageIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 p0, 0x43480000    # 200.0f

    .line 32
    .line 33
    const/high16 v1, 0x44520000    # 840.0f

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/high16 v4, -0x3dfc0000    # -33.0f

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/high16 v6, -0x3d9e0000    # -56.5f

    .line 43
    .line 44
    const/high16 v7, -0x3e440000    # -23.5f

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 47
    .line 48
    .line 49
    const/high16 v8, 0x42f00000    # 120.0f

    .line 50
    .line 51
    const/high16 v9, 0x443e0000    # 760.0f

    .line 52
    .line 53
    invoke-virtual {v3, v8, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 54
    .line 55
    .line 56
    const/high16 v10, -0x3bf40000    # -560.0f

    .line 57
    .line 58
    invoke-virtual {v3, v5, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 59
    .line 60
    .line 61
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 62
    .line 63
    invoke-virtual {v3, v5, v4, v11, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p0, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 67
    .line 68
    .line 69
    const/high16 v4, 0x440c0000    # 560.0f

    .line 70
    .line 71
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 72
    .line 73
    .line 74
    const/high16 v6, 0x42040000    # 33.0f

    .line 75
    .line 76
    const/high16 v8, 0x42620000    # 56.5f

    .line 77
    .line 78
    invoke-virtual {v3, v6, v5, v8, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1, p0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v5, v6, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v9, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p0, v1}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 97
    .line 98
    .line 99
    const/high16 v1, -0x3d600000    # -80.0f

    .line 100
    .line 101
    invoke-virtual {v3, v5, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p0, p0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v5, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 117
    .line 118
    .line 119
    const/high16 p0, 0x42200000    # 40.0f

    .line 120
    .line 121
    invoke-virtual {v3, p0, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 122
    .line 123
    .line 124
    const/high16 p0, 0x43f00000    # 480.0f

    .line 125
    .line 126
    invoke-virtual {v3, p0, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 127
    .line 128
    .line 129
    const v1, 0x440e8000    # 570.0f

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1, p0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 133
    .line 134
    .line 135
    const/high16 p0, 0x43e10000    # 450.0f

    .line 136
    .line 137
    const/high16 v1, 0x44200000    # 640.0f

    .line 138
    .line 139
    invoke-virtual {v3, p0, v1}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    const/high16 p0, -0x3d100000    # -120.0f

    .line 143
    .line 144
    const/high16 v1, 0x43200000    # 160.0f

    .line 145
    .line 146
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 147
    .line 148
    invoke-static {v3, v6, p0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 149
    .line 150
    .line 151
    const/high16 p0, -0x3de00000    # -40.0f

    .line 152
    .line 153
    const/high16 v1, 0x42a00000    # 80.0f

    .line 154
    .line 155
    invoke-virtual {v3, p0, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v5, v10, v5, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 162
    .line 163
    const/high16 v3, 0x3f800000    # 1.0f

    .line 164
    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    .line 167
    const/high16 v5, 0x3f800000    # 1.0f

    .line 168
    .line 169
    const/4 v6, 0x2

    .line 170
    const/high16 v7, 0x3f800000    # 1.0f

    .line 171
    .line 172
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedLockIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedLockIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 v1, 0x43700000    # 240.0f

    .line 32
    .line 33
    const/high16 v3, 0x445c0000    # 880.0f

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/high16 v5, -0x3dfc0000    # -33.0f

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/high16 v7, -0x3d9e0000    # -56.5f

    .line 43
    .line 44
    const/high16 v8, -0x3e440000    # -23.5f

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 47
    .line 48
    .line 49
    const/high16 v9, 0x43200000    # 160.0f

    .line 50
    .line 51
    const/high16 v10, 0x44480000    # 800.0f

    .line 52
    .line 53
    invoke-virtual {v4, v9, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 54
    .line 55
    .line 56
    const/high16 v9, -0x3c380000    # -400.0f

    .line 57
    .line 58
    invoke-virtual {v4, v6, v9}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 59
    .line 60
    .line 61
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 62
    .line 63
    invoke-virtual {v4, v6, v5, v11, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 64
    .line 65
    .line 66
    const/high16 v5, 0x43a00000    # 320.0f

    .line 67
    .line 68
    invoke-virtual {v4, v1, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 69
    .line 70
    .line 71
    const/high16 v12, 0x42200000    # 40.0f

    .line 72
    .line 73
    invoke-virtual {v4, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 74
    .line 75
    .line 76
    const/high16 v13, -0x3d600000    # -80.0f

    .line 77
    .line 78
    invoke-virtual {v4, v6, v13}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 79
    .line 80
    .line 81
    const v14, -0x3cf28000    # -141.5f

    .line 82
    .line 83
    .line 84
    const/high16 v15, -0x3d5a0000    # -83.0f

    .line 85
    .line 86
    const/high16 v5, 0x426a0000    # 58.5f

    .line 87
    .line 88
    invoke-virtual {v4, v6, v15, v5, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 89
    .line 90
    .line 91
    const/high16 v14, 0x43f00000    # 480.0f

    .line 92
    .line 93
    invoke-virtual {v4, v14, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 94
    .line 95
    .line 96
    const v15, 0x430d8000    # 141.5f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v15, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 100
    .line 101
    .line 102
    const/high16 v5, 0x442a0000    # 680.0f

    .line 103
    .line 104
    invoke-virtual {v4, v5, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 105
    .line 106
    .line 107
    const/high16 v15, 0x42a00000    # 80.0f

    .line 108
    .line 109
    invoke-virtual {v4, v6, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 113
    .line 114
    .line 115
    const/high16 v12, 0x42040000    # 33.0f

    .line 116
    .line 117
    const/high16 v15, 0x42620000    # 56.5f

    .line 118
    .line 119
    invoke-virtual {v4, v12, v6, v15, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 120
    .line 121
    .line 122
    const/high16 v5, 0x43c80000    # 400.0f

    .line 123
    .line 124
    invoke-virtual {v4, v10, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v6, v12, v8, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 131
    .line 132
    .line 133
    const/high16 v12, 0x44340000    # 720.0f

    .line 134
    .line 135
    invoke-virtual {v4, v12, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v6, v13}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v14, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v6, v9}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v1, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 154
    .line 155
    .line 156
    const v3, 0x43944000    # 296.5f

    .line 157
    .line 158
    .line 159
    const v12, -0x3cf08000    # -143.5f

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 163
    .line 164
    .line 165
    const/high16 v3, 0x440c0000    # 560.0f

    .line 166
    .line 167
    const v12, 0x441e4000    # 633.0f

    .line 168
    .line 169
    .line 170
    const/high16 v9, 0x44160000    # 600.0f

    .line 171
    .line 172
    invoke-virtual {v4, v3, v12, v3, v9}, Lokhttp3/Headers$Builder;->quadTo(FFFF)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v8, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 176
    .line 177
    .line 178
    const/high16 v3, 0x44020000    # 520.0f

    .line 179
    .line 180
    invoke-virtual {v4, v14, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v7, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v11, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 190
    .line 191
    .line 192
    const/high16 v3, 0x442a0000    # 680.0f

    .line 193
    .line 194
    invoke-virtual {v4, v14, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v15, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 198
    .line 199
    .line 200
    const/high16 v3, 0x43b40000    # 360.0f

    .line 201
    .line 202
    const/high16 v5, 0x43a00000    # 320.0f

    .line 203
    .line 204
    invoke-virtual {v4, v3, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v1, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v6, v13}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 211
    .line 212
    .line 213
    const/high16 v3, -0x3db80000    # -50.0f

    .line 214
    .line 215
    const/high16 v5, -0x3df40000    # -35.0f

    .line 216
    .line 217
    const/high16 v7, -0x3d560000    # -85.0f

    .line 218
    .line 219
    invoke-virtual {v4, v6, v3, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v7, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 223
    .line 224
    .line 225
    const/high16 v3, 0x420c0000    # 35.0f

    .line 226
    .line 227
    invoke-virtual {v4, v7, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 228
    .line 229
    .line 230
    const/high16 v3, 0x42aa0000    # 85.0f

    .line 231
    .line 232
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v1, v10}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 239
    .line 240
    .line 241
    const/high16 v1, -0x3c380000    # -400.0f

    .line 242
    .line 243
    invoke-virtual {v4, v6, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 247
    .line 248
    .line 249
    iget-object v1, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 250
    .line 251
    const/high16 v3, 0x3f800000    # 1.0f

    .line 252
    .line 253
    const/high16 v4, 0x3f800000    # 1.0f

    .line 254
    .line 255
    const/high16 v5, 0x3f800000    # 1.0f

    .line 256
    .line 257
    const/4 v6, 0x2

    .line 258
    const/high16 v7, 0x3f800000    # 1.0f

    .line 259
    .line 260
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    return-object v0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedMarkEmailReadKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedMarkEmailRead"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    const-wide v3, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 37
    .line 38
    new-instance p0, Lokhttp3/Headers$Builder;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const v1, 0x441f8000    # 638.0f

    .line 45
    .line 46
    .line 47
    const/high16 v3, 0x445c0000    # 880.0f

    .line 48
    .line 49
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 50
    .line 51
    .line 52
    const/high16 v1, 0x43ea0000    # 468.0f

    .line 53
    .line 54
    const v4, 0x44318000    # 710.0f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 58
    .line 59
    .line 60
    const/high16 v1, -0x3da00000    # -56.0f

    .line 61
    .line 62
    const/high16 v4, 0x42600000    # 56.0f

    .line 63
    .line 64
    invoke-virtual {p0, v4, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 65
    .line 66
    .line 67
    const/high16 v1, 0x42e40000    # 114.0f

    .line 68
    .line 69
    invoke-virtual {p0, v1, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 70
    .line 71
    .line 72
    const/high16 v1, 0x43620000    # 226.0f

    .line 73
    .line 74
    const/high16 v5, -0x3c9e0000    # -226.0f

    .line 75
    .line 76
    invoke-virtual {p0, v1, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 77
    .line 78
    .line 79
    const/high16 v1, -0x3c730000    # -282.0f

    .line 80
    .line 81
    const/high16 v5, 0x438d0000    # 282.0f

    .line 82
    .line 83
    invoke-static {p0, v4, v4, v1, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 84
    .line 85
    .line 86
    const/high16 v1, 0x43dc0000    # 440.0f

    .line 87
    .line 88
    const/high16 v4, 0x43f00000    # 480.0f

    .line 89
    .line 90
    invoke-virtual {p0, v4, v1}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 91
    .line 92
    .line 93
    const/high16 v1, -0x3cb80000    # -200.0f

    .line 94
    .line 95
    const/high16 v5, 0x43a00000    # 320.0f

    .line 96
    .line 97
    invoke-virtual {p0, v5, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 98
    .line 99
    .line 100
    const/high16 v1, 0x43200000    # 160.0f

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 103
    .line 104
    .line 105
    const/high16 v6, 0x43480000    # 200.0f

    .line 106
    .line 107
    invoke-virtual {p0, v5, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 111
    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/high16 v7, 0x42a00000    # 80.0f

    .line 115
    .line 116
    invoke-virtual {p0, v6, v7}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 120
    .line 121
    .line 122
    const/high16 v8, 0x43c80000    # 400.0f

    .line 123
    .line 124
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 125
    .line 126
    .line 127
    const/high16 v8, 0x434e0000    # 206.0f

    .line 128
    .line 129
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v7, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 136
    .line 137
    .line 138
    const/high16 v8, -0x3e440000    # -23.5f

    .line 139
    .line 140
    const/high16 v9, -0x3dfc0000    # -33.0f

    .line 141
    .line 142
    const/high16 v10, -0x3d9e0000    # -56.5f

    .line 143
    .line 144
    invoke-virtual {p0, v9, v6, v10, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 145
    .line 146
    .line 147
    const/high16 v8, 0x44340000    # 720.0f

    .line 148
    .line 149
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 150
    .line 151
    .line 152
    const/high16 v8, 0x43700000    # 240.0f

    .line 153
    .line 154
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 155
    .line 156
    .line 157
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 158
    .line 159
    invoke-virtual {p0, v6, v9, v11, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 163
    .line 164
    .line 165
    const/high16 v1, 0x44200000    # 640.0f

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 168
    .line 169
    .line 170
    const/high16 v1, 0x42040000    # 33.0f

    .line 171
    .line 172
    const/high16 v9, 0x42620000    # 56.5f

    .line 173
    .line 174
    invoke-virtual {p0, v1, v6, v9, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v3, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 178
    .line 179
    .line 180
    const/high16 v1, 0x432e0000    # 174.0f

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 183
    .line 184
    .line 185
    const/high16 v1, -0x3d600000    # -80.0f

    .line 186
    .line 187
    invoke-virtual {p0, v1, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v5}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 191
    .line 192
    .line 193
    const/high16 v3, 0x44020000    # 520.0f

    .line 194
    .line 195
    invoke-virtual {p0, v4, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v6, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v6, v1}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v6, v7}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 220
    .line 221
    const/high16 v3, 0x3f800000    # 1.0f

    .line 222
    .line 223
    const/high16 v4, 0x3f800000    # 1.0f

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    const/4 v6, 0x0

    .line 227
    const/high16 v7, 0x40800000    # 4.0f

    .line 228
    .line 229
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedMarkEmailUnreadKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedMarkEmailUnread"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    const-wide v3, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 37
    .line 38
    const/high16 p0, 0x43200000    # 160.0f

    .line 39
    .line 40
    const/high16 v1, 0x44480000    # 800.0f

    .line 41
    .line 42
    invoke-static {p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/high16 v4, -0x3dfc0000    # -33.0f

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/high16 v6, -0x3d9e0000    # -56.5f

    .line 50
    .line 51
    const/high16 v7, -0x3e440000    # -23.5f

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 54
    .line 55
    .line 56
    const/high16 v8, 0x44340000    # 720.0f

    .line 57
    .line 58
    const/high16 v9, 0x42a00000    # 80.0f

    .line 59
    .line 60
    invoke-virtual {v3, v9, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 61
    .line 62
    .line 63
    const/high16 v8, 0x43700000    # 240.0f

    .line 64
    .line 65
    invoke-virtual {v3, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 66
    .line 67
    .line 68
    const/high16 v8, 0x41bc0000    # 23.5f

    .line 69
    .line 70
    invoke-virtual {v3, v5, v4, v8, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0, p0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 74
    .line 75
    .line 76
    const/high16 v4, 0x43ca0000    # 404.0f

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 79
    .line 80
    .line 81
    const/high16 v4, -0x3f800000    # -4.0f

    .line 82
    .line 83
    const/high16 v6, 0x41a00000    # 20.0f

    .line 84
    .line 85
    const/high16 v8, 0x42200000    # 40.0f

    .line 86
    .line 87
    invoke-virtual {v3, v4, v6, v4, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 88
    .line 89
    .line 90
    const/high16 v4, 0x40800000    # 4.0f

    .line 91
    .line 92
    invoke-virtual {v3, v4, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 96
    .line 97
    .line 98
    const/high16 v4, 0x43480000    # 200.0f

    .line 99
    .line 100
    const/high16 v6, 0x43a00000    # 320.0f

    .line 101
    .line 102
    invoke-virtual {v3, v6, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 103
    .line 104
    .line 105
    const/high16 v4, 0x43120000    # 146.0f

    .line 106
    .line 107
    const/high16 v8, -0x3d4a0000    # -91.0f

    .line 108
    .line 109
    invoke-virtual {v3, v4, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 110
    .line 111
    .line 112
    const/high16 v4, 0x41f40000    # 30.5f

    .line 113
    .line 114
    const/high16 v8, 0x41b40000    # 22.5f

    .line 115
    .line 116
    const/high16 v10, 0x41600000    # 14.0f

    .line 117
    .line 118
    const/high16 v11, 0x41500000    # 13.0f

    .line 119
    .line 120
    invoke-virtual {v3, v10, v11, v4, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 121
    .line 122
    .line 123
    const v4, 0x442cc000    # 691.0f

    .line 124
    .line 125
    .line 126
    const/high16 v8, 0x43c20000    # 388.0f

    .line 127
    .line 128
    invoke-virtual {v3, v4, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 129
    .line 130
    .line 131
    const/high16 v4, 0x44020000    # 520.0f

    .line 132
    .line 133
    const/high16 v8, 0x43f00000    # 480.0f

    .line 134
    .line 135
    invoke-virtual {v3, v8, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p0, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 139
    .line 140
    .line 141
    const/high16 v4, 0x43c80000    # 400.0f

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 144
    .line 145
    .line 146
    const/high16 v4, 0x44200000    # 640.0f

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 149
    .line 150
    .line 151
    const/high16 v4, 0x43c60000    # 396.0f

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 154
    .line 155
    .line 156
    const/high16 v4, 0x422c0000    # 43.0f

    .line 157
    .line 158
    const/high16 v6, -0x3ea00000    # -14.0f

    .line 159
    .line 160
    const/high16 v10, 0x41b80000    # 23.0f

    .line 161
    .line 162
    const/high16 v11, -0x3f600000    # -5.0f

    .line 163
    .line 164
    invoke-virtual {v3, v10, v11, v4, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 165
    .line 166
    .line 167
    const/high16 v4, 0x42140000    # 37.0f

    .line 168
    .line 169
    const/high16 v6, -0x3e500000    # -22.0f

    .line 170
    .line 171
    invoke-virtual {v3, v4, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 172
    .line 173
    .line 174
    const/high16 v4, 0x43b40000    # 360.0f

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 177
    .line 178
    .line 179
    const/high16 v4, 0x42040000    # 33.0f

    .line 180
    .line 181
    const/high16 v6, 0x42620000    # 56.5f

    .line 182
    .line 183
    invoke-virtual {v3, v5, v4, v7, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v1, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 193
    .line 194
    .line 195
    const/high16 p0, -0x3bf40000    # -560.0f

    .line 196
    .line 197
    invoke-virtual {v3, v5, p0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v8}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 201
    .line 202
    .line 203
    const/high16 p0, -0x3c100000    # -480.0f

    .line 204
    .line 205
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 209
    .line 210
    .line 211
    const/high16 p0, 0x44160000    # 600.0f

    .line 212
    .line 213
    invoke-virtual {v3, p0, v9}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 214
    .line 215
    .line 216
    const/high16 p0, -0x3db80000    # -50.0f

    .line 217
    .line 218
    const/high16 v1, -0x3d560000    # -85.0f

    .line 219
    .line 220
    const/high16 v4, -0x3df40000    # -35.0f

    .line 221
    .line 222
    invoke-virtual {v3, p0, v5, v1, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v4, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 226
    .line 227
    .line 228
    const/high16 v6, 0x420c0000    # 35.0f

    .line 229
    .line 230
    invoke-virtual {v3, v5, p0, v6, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 231
    .line 232
    .line 233
    const/high16 p0, 0x42aa0000    # 85.0f

    .line 234
    .line 235
    invoke-virtual {v3, p0, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 236
    .line 237
    .line 238
    const/high16 v7, 0x42480000    # 50.0f

    .line 239
    .line 240
    invoke-virtual {v3, v7, v5, p0, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v6, p0}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v5, v7, v4, p0}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v1, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 253
    .line 254
    .line 255
    iget-object v1, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 256
    .line 257
    const/high16 v3, 0x3f800000    # 1.0f

    .line 258
    .line 259
    const/high16 v4, 0x3f800000    # 1.0f

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    const/high16 v7, 0x40800000    # 4.0f

    .line 263
    .line 264
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedOpenInNewIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedOpenInNewIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x41c00000    # 24.0f

    .line 13
    .line 14
    const/high16 v5, 0x41c00000    # 24.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 p0, 0x40a00000    # 5.0f

    .line 32
    .line 33
    const/high16 v1, 0x41a80000    # 21.0f

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const v8, 0x4065999a    # 3.5875f

    .line 40
    .line 41
    .line 42
    const v9, 0x41a34ccd

    .line 43
    .line 44
    .line 45
    const v4, 0x408e6666    # 4.45f

    .line 46
    .line 47
    .line 48
    const/high16 v5, 0x41a80000    # 21.0f

    .line 49
    .line 50
    const v6, 0x407eaab9

    .line 51
    .line 52
    .line 53
    const v7, 0x41a66f00

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 57
    .line 58
    .line 59
    const/high16 v8, 0x40400000    # 3.0f

    .line 60
    .line 61
    const/high16 v9, 0x41980000    # 19.0f

    .line 62
    .line 63
    const v4, 0x404c887b

    .line 64
    .line 65
    .line 66
    const v5, 0x41a02a99

    .line 67
    .line 68
    .line 69
    const/high16 v6, 0x40400000    # 3.0f

    .line 70
    .line 71
    const v7, 0x419c6666    # 19.55f

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 78
    .line 79
    .line 80
    const v8, 0x4065999a    # 3.5875f

    .line 81
    .line 82
    .line 83
    const v9, 0x4065999a    # 3.5875f

    .line 84
    .line 85
    .line 86
    const/high16 v4, 0x40400000    # 3.0f

    .line 87
    .line 88
    const v5, 0x408e6666    # 4.45f

    .line 89
    .line 90
    .line 91
    const v6, 0x404c887b

    .line 92
    .line 93
    .line 94
    const v7, 0x407eaab9

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 98
    .line 99
    .line 100
    const/high16 v8, 0x40a00000    # 5.0f

    .line 101
    .line 102
    const/high16 v9, 0x40400000    # 3.0f

    .line 103
    .line 104
    const v4, 0x407eaab9

    .line 105
    .line 106
    .line 107
    const v5, 0x404c887b

    .line 108
    .line 109
    .line 110
    const v6, 0x408e6666    # 4.45f

    .line 111
    .line 112
    .line 113
    const/high16 v7, 0x40400000    # 3.0f

    .line 114
    .line 115
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 116
    .line 117
    .line 118
    const/high16 v4, 0x41400000    # 12.0f

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 127
    .line 128
    .line 129
    const/high16 v10, 0x41980000    # 19.0f

    .line 130
    .line 131
    invoke-virtual {v3, v10}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v10}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v10}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 144
    .line 145
    .line 146
    const v8, 0x41a34ccd

    .line 147
    .line 148
    .line 149
    const v9, 0x41a34ccd

    .line 150
    .line 151
    .line 152
    const/high16 v4, 0x41a80000    # 21.0f

    .line 153
    .line 154
    const v5, 0x419c6666    # 19.55f

    .line 155
    .line 156
    .line 157
    const v6, 0x41a66f00

    .line 158
    .line 159
    .line 160
    const v7, 0x41a02a99

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 164
    .line 165
    .line 166
    const/high16 v8, 0x41980000    # 19.0f

    .line 167
    .line 168
    const/high16 v9, 0x41a80000    # 21.0f

    .line 169
    .line 170
    const v4, 0x41a02a99

    .line 171
    .line 172
    .line 173
    const v5, 0x41a66f00

    .line 174
    .line 175
    .line 176
    const v6, 0x419c6666    # 19.55f

    .line 177
    .line 178
    .line 179
    const/high16 v7, 0x41a80000    # 21.0f

    .line 180
    .line 181
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 188
    .line 189
    .line 190
    const v4, 0x411b3333    # 9.7f

    .line 191
    .line 192
    .line 193
    const v5, 0x417b3333    # 15.7f

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 197
    .line 198
    .line 199
    const v6, 0x4104cccd    # 8.3f

    .line 200
    .line 201
    .line 202
    const v7, 0x4164cccd    # 14.3f

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v6, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 206
    .line 207
    .line 208
    const v6, 0x418ccccd    # 17.6f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v6, p0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 212
    .line 213
    .line 214
    const/high16 p0, 0x41600000    # 14.0f

    .line 215
    .line 216
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 217
    .line 218
    .line 219
    const/high16 p0, 0x40400000    # 3.0f

    .line 220
    .line 221
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 225
    .line 226
    .line 227
    const/high16 p0, 0x41200000    # 10.0f

    .line 228
    .line 229
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v10}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 233
    .line 234
    .line 235
    const p0, 0x40cccccd    # 6.4f

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, p0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->close()V

    .line 245
    .line 246
    .line 247
    iget-object v1, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 248
    .line 249
    const/high16 v3, 0x3f800000    # 1.0f

    .line 250
    .line 251
    const/high16 v4, 0x3f800000    # 1.0f

    .line 252
    .line 253
    const/high16 v5, 0x3f800000    # 1.0f

    .line 254
    .line 255
    const/4 v6, 0x2

    .line 256
    const/high16 v7, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedPersonIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedPersonIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const/high16 p0, 0x43f00000    # 480.0f

    .line 32
    .line 33
    invoke-static {p0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/high16 v3, -0x3d7c0000    # -66.0f

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/high16 v5, -0x3d1e0000    # -113.0f

    .line 41
    .line 42
    const/high16 v6, -0x3dc40000    # -47.0f

    .line 43
    .line 44
    invoke-virtual {v1, v3, v4, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 48
    .line 49
    .line 50
    const/high16 v7, 0x423c0000    # 47.0f

    .line 51
    .line 52
    invoke-virtual {v1, v4, v3, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 53
    .line 54
    .line 55
    const/high16 v3, 0x42e20000    # 113.0f

    .line 56
    .line 57
    invoke-virtual {v1, v3, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 58
    .line 59
    .line 60
    const/high16 v8, 0x42840000    # 66.0f

    .line 61
    .line 62
    invoke-virtual {v1, v8, v4, v3, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v7, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4, v8, v6, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 75
    .line 76
    .line 77
    const/high16 v3, 0x43200000    # 160.0f

    .line 78
    .line 79
    const/high16 v5, 0x44480000    # 800.0f

    .line 80
    .line 81
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 82
    .line 83
    .line 84
    const/high16 v6, -0x3d200000    # -112.0f

    .line 85
    .line 86
    invoke-virtual {v1, v4, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 87
    .line 88
    .line 89
    const/high16 v6, 0x418c0000    # 17.5f

    .line 90
    .line 91
    const/high16 v7, -0x3d860000    # -62.5f

    .line 92
    .line 93
    const/high16 v9, -0x3df80000    # -34.0f

    .line 94
    .line 95
    invoke-virtual {v1, v4, v9, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 96
    .line 97
    .line 98
    const/high16 v6, 0x43600000    # 224.0f

    .line 99
    .line 100
    const v7, 0x44118000    # 582.0f

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 104
    .line 105
    .line 106
    const/high16 v6, 0x42fc0000    # 126.0f

    .line 107
    .line 108
    const/high16 v9, -0x3dc60000    # -46.5f

    .line 109
    .line 110
    const/high16 v10, 0x42780000    # 62.0f

    .line 111
    .line 112
    const/high16 v11, -0x3e080000    # -31.0f

    .line 113
    .line 114
    invoke-virtual {v1, v10, v11, v6, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 115
    .line 116
    .line 117
    const/high16 v6, 0x44020000    # 520.0f

    .line 118
    .line 119
    invoke-virtual {v1, p0, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 120
    .line 121
    .line 122
    const/high16 v6, 0x43020000    # 130.0f

    .line 123
    .line 124
    const/high16 v9, 0x41780000    # 15.5f

    .line 125
    .line 126
    invoke-virtual {v1, v8, v4, v6, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 127
    .line 128
    .line 129
    const/high16 v6, 0x44380000    # 736.0f

    .line 130
    .line 131
    invoke-virtual {v1, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 132
    .line 133
    .line 134
    const/high16 v6, 0x423a0000    # 46.5f

    .line 135
    .line 136
    const/high16 v7, 0x422e0000    # 43.5f

    .line 137
    .line 138
    const/high16 v8, 0x41e80000    # 29.0f

    .line 139
    .line 140
    const/high16 v9, 0x41700000    # 15.0f

    .line 141
    .line 142
    invoke-virtual {v1, v8, v9, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 143
    .line 144
    .line 145
    const/high16 v6, 0x442c0000    # 688.0f

    .line 146
    .line 147
    invoke-virtual {v1, v5, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 148
    .line 149
    .line 150
    const/high16 v6, 0x42e00000    # 112.0f

    .line 151
    .line 152
    invoke-virtual {v1, v4, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 159
    .line 160
    .line 161
    const/high16 v3, 0x42a00000    # 80.0f

    .line 162
    .line 163
    const/high16 v5, -0x3d600000    # -80.0f

    .line 164
    .line 165
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p0, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 169
    .line 170
    .line 171
    const/high16 v3, -0x3e000000    # -32.0f

    .line 172
    .line 173
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 174
    .line 175
    .line 176
    const/high16 v3, -0x3e600000    # -20.0f

    .line 177
    .line 178
    const/high16 v6, -0x3ed00000    # -11.0f

    .line 179
    .line 180
    const/high16 v7, -0x3f500000    # -5.5f

    .line 181
    .line 182
    invoke-virtual {v1, v4, v6, v7, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 183
    .line 184
    .line 185
    const/high16 v3, 0x442f0000    # 700.0f

    .line 186
    .line 187
    const v6, 0x44238000    # 654.0f

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 191
    .line 192
    .line 193
    const/high16 v3, -0x3d260000    # -109.0f

    .line 194
    .line 195
    const/high16 v8, -0x3dde0000    # -40.5f

    .line 196
    .line 197
    const/high16 v9, -0x3da80000    # -54.0f

    .line 198
    .line 199
    const/high16 v10, -0x3e280000    # -27.0f

    .line 200
    .line 201
    invoke-virtual {v1, v9, v10, v3, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 202
    .line 203
    .line 204
    const/high16 v3, 0x44160000    # 600.0f

    .line 205
    .line 206
    invoke-virtual {v1, p0, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 207
    .line 208
    .line 209
    const/high16 v3, -0x3d220000    # -111.0f

    .line 210
    .line 211
    const/high16 v8, 0x41580000    # 13.5f

    .line 212
    .line 213
    const/high16 v9, -0x3da00000    # -56.0f

    .line 214
    .line 215
    invoke-virtual {v1, v9, v4, v3, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 216
    .line 217
    .line 218
    const/high16 v3, 0x43820000    # 260.0f

    .line 219
    .line 220
    invoke-virtual {v1, v3, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 221
    .line 222
    .line 223
    const/high16 v3, -0x3e980000    # -14.5f

    .line 224
    .line 225
    const/high16 v6, 0x41600000    # 14.0f

    .line 226
    .line 227
    const/high16 v8, -0x3ef00000    # -9.0f

    .line 228
    .line 229
    const/high16 v9, 0x40a00000    # 5.0f

    .line 230
    .line 231
    invoke-virtual {v1, v8, v9, v3, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 232
    .line 233
    .line 234
    const/high16 v3, 0x41a00000    # 20.0f

    .line 235
    .line 236
    invoke-virtual {v1, v7, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 237
    .line 238
    .line 239
    const/high16 v3, 0x42000000    # 32.0f

    .line 240
    .line 241
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 245
    .line 246
    .line 247
    const/high16 v3, -0x3c600000    # -320.0f

    .line 248
    .line 249
    const/high16 v6, 0x43700000    # 240.0f

    .line 250
    .line 251
    invoke-virtual {v1, v6, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 252
    .line 253
    .line 254
    const/high16 v3, 0x42040000    # 33.0f

    .line 255
    .line 256
    const/high16 v7, 0x42620000    # 56.5f

    .line 257
    .line 258
    const/high16 v8, -0x3e440000    # -23.5f

    .line 259
    .line 260
    invoke-virtual {v1, v3, v4, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 261
    .line 262
    .line 263
    const/high16 v9, 0x440c0000    # 560.0f

    .line 264
    .line 265
    const/high16 v10, 0x43a00000    # 320.0f

    .line 266
    .line 267
    invoke-virtual {v1, v9, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 268
    .line 269
    .line 270
    const/high16 v9, -0x3dfc0000    # -33.0f

    .line 271
    .line 272
    const/high16 v11, -0x3d9e0000    # -56.5f

    .line 273
    .line 274
    invoke-virtual {v1, v4, v9, v8, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, p0, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 278
    .line 279
    .line 280
    const/high16 v6, 0x41bc0000    # 23.5f

    .line 281
    .line 282
    invoke-virtual {v1, v9, v4, v11, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 283
    .line 284
    .line 285
    const/high16 v8, 0x43c80000    # 400.0f

    .line 286
    .line 287
    invoke-virtual {v1, v8, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v4, v3, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p0, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v4, v8}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 309
    .line 310
    .line 311
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 312
    .line 313
    const/high16 v3, 0x3f800000    # 1.0f

    .line 314
    .line 315
    const/high16 v4, 0x3f800000    # 1.0f

    .line 316
    .line 317
    const/high16 v5, 0x3f800000    # 1.0f

    .line 318
    .line 319
    const/4 v6, 0x2

    .line 320
    const/high16 v7, 0x3f800000    # 1.0f

    .line 321
    .line 322
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedPetsIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedPetsIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    const p0, 0x43f28000    # 485.0f

    .line 32
    .line 33
    .line 34
    const/high16 v1, 0x43340000    # 180.0f

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/high16 v3, -0x3dd80000    # -42.0f

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/high16 v5, -0x3d720000    # -71.0f

    .line 44
    .line 45
    const/high16 v6, -0x3e180000    # -29.0f

    .line 46
    .line 47
    invoke-virtual {p0, v3, v4, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 51
    .line 52
    .line 53
    const/high16 v7, 0x41e80000    # 29.0f

    .line 54
    .line 55
    invoke-virtual {p0, v4, v3, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 56
    .line 57
    .line 58
    const/high16 v8, 0x428e0000    # 71.0f

    .line 59
    .line 60
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 61
    .line 62
    .line 63
    const/high16 v9, 0x42280000    # 42.0f

    .line 64
    .line 65
    invoke-virtual {p0, v9, v4, v8, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v4, v9, v6, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 78
    .line 79
    .line 80
    const/high16 v10, -0x3ce00000    # -160.0f

    .line 81
    .line 82
    invoke-virtual {p0, v1, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3, v4, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4, v3, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v9, v4, v8, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v4, v9, v6, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 110
    .line 111
    .line 112
    const/high16 v10, 0x43700000    # 240.0f

    .line 113
    .line 114
    invoke-virtual {p0, v10, v4}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3, v4, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v4, v3, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v9, v4, v8, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v4, v9, v6, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 142
    .line 143
    .line 144
    const/high16 v10, 0x43200000    # 160.0f

    .line 145
    .line 146
    invoke-virtual {p0, v1, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v3, v4, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v4, v3, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v9, v4, v8, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v4, v9, v6, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 174
    .line 175
    .line 176
    const/high16 v1, 0x43850000    # 266.0f

    .line 177
    .line 178
    const v3, 0x445d4000    # 885.0f

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 182
    .line 183
    .line 184
    const/high16 v1, -0x3d690000    # -75.5f

    .line 185
    .line 186
    const/high16 v5, -0x3df60000    # -34.5f

    .line 187
    .line 188
    const/high16 v6, -0x3dcc0000    # -45.0f

    .line 189
    .line 190
    invoke-virtual {p0, v6, v4, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 191
    .line 192
    .line 193
    const v1, 0x44404000    # 769.0f

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v10, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 197
    .line 198
    .line 199
    const/high16 v1, -0x3d4a0000    # -91.0f

    .line 200
    .line 201
    const/high16 v5, -0x3db00000    # -52.0f

    .line 202
    .line 203
    const/high16 v6, 0x420e0000    # 35.5f

    .line 204
    .line 205
    invoke-virtual {p0, v4, v5, v6, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 206
    .line 207
    .line 208
    const/high16 v1, -0x3d660000    # -77.0f

    .line 209
    .line 210
    const/high16 v5, 0x428d0000    # 70.5f

    .line 211
    .line 212
    invoke-virtual {p0, v5, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 213
    .line 214
    .line 215
    const/high16 v1, -0x3d790000    # -67.5f

    .line 216
    .line 217
    const/high16 v8, -0x3e080000    # -31.0f

    .line 218
    .line 219
    const/high16 v10, 0x42480000    # 50.0f

    .line 220
    .line 221
    invoke-virtual {p0, v7, v8, v10, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 222
    .line 223
    .line 224
    const/high16 v1, -0x3d770000    # -68.5f

    .line 225
    .line 226
    invoke-virtual {p0, v10, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 227
    .line 228
    .line 229
    const/high16 v1, -0x3dd40000    # -43.0f

    .line 230
    .line 231
    const/high16 v7, 0x41b00000    # 22.0f

    .line 232
    .line 233
    const/high16 v8, -0x3e300000    # -26.0f

    .line 234
    .line 235
    const/high16 v10, 0x424c0000    # 51.0f

    .line 236
    .line 237
    invoke-virtual {p0, v7, v8, v10, v1}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 238
    .line 239
    .line 240
    const/high16 v1, -0x3e780000    # -17.0f

    .line 241
    .line 242
    const/high16 v7, 0x427c0000    # 63.0f

    .line 243
    .line 244
    invoke-virtual {p0, v7, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 245
    .line 246
    .line 247
    const/high16 v1, 0x42080000    # 34.0f

    .line 248
    .line 249
    const/high16 v8, 0x41800000    # 16.0f

    .line 250
    .line 251
    invoke-virtual {p0, v1, v4, v7, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v10, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 255
    .line 256
    .line 257
    const/high16 v1, 0x41e00000    # 28.0f

    .line 258
    .line 259
    const/high16 v7, 0x42000000    # 32.0f

    .line 260
    .line 261
    const/high16 v8, 0x42460000    # 49.5f

    .line 262
    .line 263
    const/high16 v9, 0x428a0000    # 69.0f

    .line 264
    .line 265
    invoke-virtual {p0, v1, v7, v8, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 266
    .line 267
    .line 268
    const/high16 v1, 0x424a0000    # 50.5f

    .line 269
    .line 270
    invoke-virtual {p0, v1, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 271
    .line 272
    .line 273
    const/high16 v1, 0x42180000    # 38.0f

    .line 274
    .line 275
    const/high16 v7, 0x429a0000    # 77.0f

    .line 276
    .line 277
    const/high16 v8, 0x420c0000    # 35.0f

    .line 278
    .line 279
    invoke-virtual {p0, v8, v1, v5, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 280
    .line 281
    .line 282
    const/high16 v1, 0x42b60000    # 91.0f

    .line 283
    .line 284
    invoke-virtual {p0, v6, v1}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 285
    .line 286
    .line 287
    const/high16 v1, -0x3e0c0000    # -30.5f

    .line 288
    .line 289
    const/high16 v5, 0x42a30000    # 81.5f

    .line 290
    .line 291
    const/high16 v6, 0x423c0000    # 47.0f

    .line 292
    .line 293
    invoke-virtual {p0, v4, v6, v1, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 294
    .line 295
    .line 296
    const v1, 0x442d8000    # 694.0f

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 300
    .line 301
    .line 302
    const/high16 v1, -0x3da80000    # -54.0f

    .line 303
    .line 304
    const/high16 v3, -0x3d2a0000    # -107.0f

    .line 305
    .line 306
    const/high16 v5, -0x3ef00000    # -9.0f

    .line 307
    .line 308
    invoke-virtual {p0, v1, v4, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 312
    .line 313
    .line 314
    const/high16 v5, 0x41100000    # 9.0f

    .line 315
    .line 316
    invoke-virtual {p0, v1, v4, v3, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v3, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 326
    .line 327
    const/high16 v3, 0x3f800000    # 1.0f

    .line 328
    .line 329
    const/high16 v4, 0x3f800000    # 1.0f

    .line 330
    .line 331
    const/high16 v5, 0x3f800000    # 1.0f

    .line 332
    .line 333
    const/4 v6, 0x2

    .line 334
    const/high16 v7, 0x3f800000    # 1.0f

    .line 335
    .line 336
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedQrCodeKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedQrCode"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x41900000    # 18.0f

    .line 13
    .line 14
    const/high16 v5, 0x41900000    # 18.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget p0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance p0, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v1, 0x40100000    # 2.25f

    .line 38
    .line 39
    const/high16 v3, 0x41040000    # 8.25f

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 57
    .line 58
    .line 59
    const/high16 v4, 0x40700000    # 3.75f

    .line 60
    .line 61
    const/high16 v5, 0x40d80000    # 6.75f

    .line 62
    .line 63
    invoke-virtual {p0, v4, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v5}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v4}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 79
    .line 80
    .line 81
    const/high16 v6, 0x417c0000    # 15.75f

    .line 82
    .line 83
    invoke-virtual {p0, v1, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 84
    .line 85
    .line 86
    const/high16 v7, 0x411c0000    # 9.75f

    .line 87
    .line 88
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 101
    .line 102
    .line 103
    const/high16 v8, 0x41640000    # 14.25f

    .line 104
    .line 105
    invoke-virtual {p0, v4, v8}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v5}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 109
    .line 110
    .line 111
    const/high16 v9, 0x41340000    # 11.25f

    .line 112
    .line 113
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v7, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v3}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v9, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v5}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v8, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v7, v9}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 195
    .line 196
    .line 197
    const/high16 v1, 0x414c0000    # 12.75f

    .line 198
    .line 199
    invoke-virtual {p0, v9, v1}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v7, v8}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v9, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1, v8}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v1, v9}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v7}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v8, v1}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v9}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v6}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v1}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->close()V

    .line 305
    .line 306
    .line 307
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 308
    .line 309
    const/high16 v3, 0x3f800000    # 1.0f

    .line 310
    .line 311
    const/high16 v4, 0x3f800000    # 1.0f

    .line 312
    .line 313
    const/high16 v5, 0x3f800000    # 1.0f

    .line 314
    .line 315
    const/4 v6, 0x2

    .line 316
    const/high16 v7, 0x3f800000    # 1.0f

    .line 317
    .line 318
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    return-object p0
.end method

.method private final invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedRocketIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 16

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v10, 0x60

    .line 5
    .line 6
    const-string v1, "OutlinedRocketIcon"

    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const/high16 v3, 0x41c00000    # 24.0f

    .line 11
    .line 12
    const/high16 v4, 0x44700000    # 960.0f

    .line 13
    .line 14
    const/high16 v5, 0x44700000    # 960.0f

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const v3, 0x443e8000    # 762.0f

    .line 38
    .line 39
    .line 40
    const/high16 v4, 0x43700000    # 240.0f

    .line 41
    .line 42
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 43
    .line 44
    .line 45
    const/high16 v3, 0x429e0000    # 79.0f

    .line 46
    .line 47
    const/high16 v5, -0x3e000000    # -32.0f

    .line 48
    .line 49
    invoke-virtual {v1, v3, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 50
    .line 51
    .line 52
    const/high16 v6, -0x3e6c0000    # -18.5f

    .line 53
    .line 54
    const/high16 v7, -0x3d940000    # -59.0f

    .line 55
    .line 56
    const/high16 v8, -0x3ee00000    # -10.0f

    .line 57
    .line 58
    const/high16 v9, -0x3e180000    # -29.0f

    .line 59
    .line 60
    invoke-virtual {v1, v8, v9, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 61
    .line 62
    .line 63
    const v6, 0x438f8000    # 287.0f

    .line 64
    .line 65
    .line 66
    const v7, 0x4418c000    # 611.0f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 70
    .line 71
    .line 72
    const/high16 v6, 0x42ee0000    # 119.0f

    .line 73
    .line 74
    const/high16 v7, -0x3dc40000    # -47.0f

    .line 75
    .line 76
    const/high16 v8, 0x42000000    # 32.0f

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    invoke-static {v1, v7, v8, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 80
    .line 81
    .line 82
    const/high16 v6, -0x3dd80000    # -42.0f

    .line 83
    .line 84
    const/high16 v11, 0x43200000    # 160.0f

    .line 85
    .line 86
    invoke-virtual {v1, v11, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v11, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 90
    .line 91
    .line 92
    const/high16 v6, -0x3d3d0000    # -97.5f

    .line 93
    .line 94
    const/high16 v12, 0x41900000    # 18.0f

    .line 95
    .line 96
    const/high16 v13, -0x3de00000    # -40.0f

    .line 97
    .line 98
    const/high16 v14, 0x41e80000    # 29.0f

    .line 99
    .line 100
    invoke-virtual {v1, v12, v13, v14, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 101
    .line 102
    .line 103
    const/high16 v6, 0x44160000    # 600.0f

    .line 104
    .line 105
    const v12, 0x43fc8000    # 505.0f

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v6, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 109
    .line 110
    .line 111
    const v6, -0x3cc48000    # -187.5f

    .line 112
    .line 113
    .line 114
    const/high16 v13, -0x3d3a0000    # -99.0f

    .line 115
    .line 116
    const/high16 v15, -0x3dfc0000    # -33.0f

    .line 117
    .line 118
    invoke-virtual {v1, v10, v13, v15, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 119
    .line 120
    .line 121
    const/high16 v6, 0x43350000    # 181.0f

    .line 122
    .line 123
    const/high16 v13, 0x43f00000    # 480.0f

    .line 124
    .line 125
    invoke-virtual {v1, v13, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 126
    .line 127
    .line 128
    const/high16 v6, -0x3d520000    # -87.0f

    .line 129
    .line 130
    const v9, 0x43088000    # 136.5f

    .line 131
    .line 132
    .line 133
    const/high16 v11, -0x3da80000    # -54.0f

    .line 134
    .line 135
    const/high16 v3, 0x42400000    # 48.0f

    .line 136
    .line 137
    invoke-virtual {v1, v11, v3, v6, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 138
    .line 139
    .line 140
    const/high16 v3, 0x43b40000    # 360.0f

    .line 141
    .line 142
    invoke-virtual {v1, v3, v12}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 143
    .line 144
    .line 145
    const/high16 v6, 0x42eb0000    # 117.5f

    .line 146
    .line 147
    const/high16 v9, 0x42700000    # 60.0f

    .line 148
    .line 149
    const/high16 v11, 0x41300000    # 11.0f

    .line 150
    .line 151
    invoke-virtual {v1, v10, v9, v11, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 152
    .line 153
    .line 154
    const/high16 v6, 0x42c30000    # 97.5f

    .line 155
    .line 156
    invoke-virtual {v1, v14, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 160
    .line 161
    .line 162
    const/high16 v6, 0x42a00000    # 80.0f

    .line 163
    .line 164
    const/high16 v12, -0x3cb80000    # -200.0f

    .line 165
    .line 166
    invoke-virtual {v1, v6, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 167
    .line 168
    .line 169
    const/high16 v6, -0x3d9e0000    # -56.5f

    .line 170
    .line 171
    const/high16 v12, -0x3e440000    # -23.5f

    .line 172
    .line 173
    invoke-virtual {v1, v15, v10, v6, v12}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 174
    .line 175
    .line 176
    const/high16 v11, 0x43c80000    # 400.0f

    .line 177
    .line 178
    const/high16 v14, 0x43dc0000    # 440.0f

    .line 179
    .line 180
    invoke-virtual {v1, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 181
    .line 182
    .line 183
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 184
    .line 185
    invoke-virtual {v1, v10, v15, v11, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v13, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 189
    .line 190
    .line 191
    const/high16 v3, 0x42040000    # 33.0f

    .line 192
    .line 193
    const/high16 v6, 0x42620000    # 56.5f

    .line 194
    .line 195
    invoke-virtual {v1, v3, v10, v6, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 196
    .line 197
    .line 198
    const/high16 v11, 0x440c0000    # 560.0f

    .line 199
    .line 200
    invoke-virtual {v1, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v10, v3, v12, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 204
    .line 205
    .line 206
    const/high16 v3, 0x44020000    # 520.0f

    .line 207
    .line 208
    invoke-virtual {v1, v13, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 212
    .line 213
    .line 214
    const/high16 v6, 0x43720000    # 242.0f

    .line 215
    .line 216
    invoke-virtual {v1, v4, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 217
    .line 218
    .line 219
    const/high16 v4, -0x3d120000    # -119.0f

    .line 220
    .line 221
    invoke-virtual {v1, v10, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 225
    .line 226
    .line 227
    const/high16 v4, 0x41f00000    # 30.0f

    .line 228
    .line 229
    const/high16 v5, -0x3ea80000    # -13.5f

    .line 230
    .line 231
    const/high16 v6, -0x3f600000    # -5.0f

    .line 232
    .line 233
    invoke-virtual {v1, v6, v4, v5, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 234
    .line 235
    .line 236
    const v4, 0x44204000    # 641.0f

    .line 237
    .line 238
    .line 239
    const v5, 0x44368000    # 730.0f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 243
    .line 244
    .line 245
    const/high16 v4, 0x429e0000    # 79.0f

    .line 246
    .line 247
    invoke-virtual {v1, v4, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v13, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 254
    .line 255
    .line 256
    const v4, 0x43158000    # 149.5f

    .line 257
    .line 258
    .line 259
    const/high16 v5, 0x43370000    # 183.0f

    .line 260
    .line 261
    const/high16 v6, 0x42c60000    # 99.0f

    .line 262
    .line 263
    const/high16 v7, 0x42900000    # 72.0f

    .line 264
    .line 265
    invoke-virtual {v1, v6, v7, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 266
    .line 267
    .line 268
    const/high16 v4, 0x442a0000    # 680.0f

    .line 269
    .line 270
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 271
    .line 272
    .line 273
    const/high16 v3, 0x42600000    # 56.0f

    .line 274
    .line 275
    const/high16 v4, 0x42a80000    # 84.0f

    .line 276
    .line 277
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 278
    .line 279
    .line 280
    const/high16 v3, 0x41880000    # 17.0f

    .line 281
    .line 282
    const/high16 v5, 0x41d40000    # 26.5f

    .line 283
    .line 284
    const/high16 v6, 0x41e80000    # 29.0f

    .line 285
    .line 286
    const/high16 v7, 0x41300000    # 11.0f

    .line 287
    .line 288
    invoke-virtual {v1, v3, v7, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 289
    .line 290
    .line 291
    const/high16 v3, 0x42180000    # 38.0f

    .line 292
    .line 293
    const/high16 v6, 0x41180000    # 9.5f

    .line 294
    .line 295
    invoke-virtual {v1, v6, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 296
    .line 297
    .line 298
    const/high16 v3, 0x436d0000    # 237.0f

    .line 299
    .line 300
    invoke-virtual {v1, v10, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 301
    .line 302
    .line 303
    const/high16 v3, -0x3cb90000    # -199.0f

    .line 304
    .line 305
    const/high16 v7, -0x3d600000    # -80.0f

    .line 306
    .line 307
    invoke-virtual {v1, v3, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 308
    .line 309
    .line 310
    const v3, 0x43b38000    # 359.0f

    .line 311
    .line 312
    .line 313
    const/high16 v7, 0x44480000    # 800.0f

    .line 314
    .line 315
    invoke-virtual {v1, v3, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 316
    .line 317
    .line 318
    const/high16 v3, 0x445c0000    # 880.0f

    .line 319
    .line 320
    const/high16 v7, 0x43200000    # 160.0f

    .line 321
    .line 322
    invoke-virtual {v1, v7, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 323
    .line 324
    .line 325
    const/high16 v3, -0x3c930000    # -237.0f

    .line 326
    .line 327
    invoke-virtual {v1, v10, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 328
    .line 329
    .line 330
    const/high16 v3, -0x3e600000    # -20.0f

    .line 331
    .line 332
    const/high16 v7, -0x3de80000    # -38.0f

    .line 333
    .line 334
    invoke-virtual {v1, v10, v3, v6, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 335
    .line 336
    .line 337
    const/high16 v3, -0x3e180000    # -29.0f

    .line 338
    .line 339
    invoke-virtual {v1, v5, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 340
    .line 341
    .line 342
    const/high16 v3, -0x3da00000    # -56.0f

    .line 343
    .line 344
    invoke-virtual {v1, v4, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 345
    .line 346
    .line 347
    const/high16 v3, 0x424a0000    # 50.5f

    .line 348
    .line 349
    const/high16 v4, -0x3c7f0000    # -258.0f

    .line 350
    .line 351
    const/high16 v5, -0x3ced0000    # -147.0f

    .line 352
    .line 353
    invoke-virtual {v1, v10, v5, v3, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 354
    .line 355
    .line 356
    const/high16 v4, 0x429e0000    # 79.0f

    .line 357
    .line 358
    invoke-virtual {v1, v13, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 362
    .line 363
    .line 364
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 365
    .line 366
    const/high16 v3, 0x3f800000    # 1.0f

    .line 367
    .line 368
    const/high16 v4, 0x3f800000    # 1.0f

    .line 369
    .line 370
    const/high16 v5, 0x3f800000    # 1.0f

    .line 371
    .line 372
    const/4 v6, 0x2

    .line 373
    const/high16 v7, 0x3f800000    # 1.0f

    .line 374
    .line 375
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v4, 0x44160000    # 600.0f

    .line 6
    .line 7
    const/high16 v5, 0x43dc0000    # 440.0f

    .line 8
    .line 9
    const/high16 v8, 0x43200000    # 160.0f

    .line 10
    .line 11
    const/high16 v13, -0x3dfc0000    # -33.0f

    .line 12
    .line 13
    const/high16 v14, 0x44480000    # 800.0f

    .line 14
    .line 15
    const/high16 v15, 0x42a00000    # 80.0f

    .line 16
    .line 17
    const/high16 v6, 0x43a00000    # 320.0f

    .line 18
    .line 19
    const/high16 v2, 0x43480000    # 200.0f

    .line 20
    .line 21
    const/high16 v9, 0x438c0000    # 280.0f

    .line 22
    .line 23
    const/high16 v10, -0x3d600000    # -80.0f

    .line 24
    .line 25
    const/high16 v7, 0x43700000    # 240.0f

    .line 26
    .line 27
    const/high16 v3, 0x43f00000    # 480.0f

    .line 28
    .line 29
    const/4 v11, 0x1

    .line 30
    const/4 v12, 0x0

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    new-instance v24, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 35
    .line 36
    const/16 v32, 0x0

    .line 37
    .line 38
    const/16 v34, 0x60

    .line 39
    .line 40
    const-string v25, "OutlinedSchoolIcon"

    .line 41
    .line 42
    const/high16 v26, 0x41c00000    # 24.0f

    .line 43
    .line 44
    const/high16 v27, 0x41c00000    # 24.0f

    .line 45
    .line 46
    const/high16 v28, 0x44700000    # 960.0f

    .line 47
    .line 48
    const/high16 v29, 0x44700000    # 960.0f

    .line 49
    .line 50
    const-wide/16 v30, 0x0

    .line 51
    .line 52
    const/16 v33, 0x0

    .line 53
    .line 54
    invoke-direct/range {v24 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 58
    .line 59
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 60
    .line 61
    invoke-direct {v0, v13, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 62
    .line 63
    .line 64
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 65
    .line 66
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 67
    .line 68
    invoke-direct {v1, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const/high16 v8, 0x44520000    # 840.0f

    .line 72
    .line 73
    invoke-virtual {v1, v3, v8}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 74
    .line 75
    .line 76
    const/high16 v11, 0x442c0000    # 688.0f

    .line 77
    .line 78
    invoke-virtual {v1, v2, v11}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 79
    .line 80
    .line 81
    const/high16 v11, -0x3c900000    # -240.0f

    .line 82
    .line 83
    invoke-virtual {v1, v12, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 84
    .line 85
    .line 86
    const/high16 v13, 0x42200000    # 40.0f

    .line 87
    .line 88
    const/high16 v14, 0x43b40000    # 360.0f

    .line 89
    .line 90
    invoke-virtual {v1, v13, v14}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v5, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v10, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 103
    .line 104
    .line 105
    const/high16 v5, -0x3c760000    # -276.0f

    .line 106
    .line 107
    invoke-virtual {v1, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 108
    .line 109
    .line 110
    const/high16 v5, 0x42300000    # 44.0f

    .line 111
    .line 112
    invoke-virtual {v1, v10, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v12, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 122
    .line 123
    .line 124
    const/high16 v5, -0x3c5a0000    # -332.0f

    .line 125
    .line 126
    invoke-virtual {v1, v12, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 127
    .line 128
    .line 129
    const/high16 v5, 0x43890000    # 274.0f

    .line 130
    .line 131
    const/high16 v6, -0x3cec0000    # -148.0f

    .line 132
    .line 133
    invoke-virtual {v1, v5, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 134
    .line 135
    .line 136
    const/high16 v7, -0x3c770000    # -274.0f

    .line 137
    .line 138
    invoke-virtual {v1, v7, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 139
    .line 140
    .line 141
    const/high16 v6, 0x43140000    # 148.0f

    .line 142
    .line 143
    invoke-static {v1, v7, v6, v5, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 144
    .line 145
    .line 146
    const/high16 v5, 0x43710000    # 241.0f

    .line 147
    .line 148
    invoke-virtual {v1, v12, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 149
    .line 150
    .line 151
    const/high16 v5, -0x3d280000    # -108.0f

    .line 152
    .line 153
    invoke-virtual {v1, v2, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 154
    .line 155
    .line 156
    const/high16 v5, -0x3ce90000    # -151.0f

    .line 157
    .line 158
    invoke-virtual {v1, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 162
    .line 163
    .line 164
    const/high16 v3, 0x43f50000    # 490.0f

    .line 165
    .line 166
    invoke-virtual {v1, v9, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 167
    .line 168
    .line 169
    const/high16 v3, 0x43170000    # 151.0f

    .line 170
    .line 171
    const/high16 v4, 0x42d80000    # 108.0f

    .line 172
    .line 173
    invoke-static {v1, v12, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 174
    .line 175
    .line 176
    const/high16 v2, -0x3c8f0000    # -241.0f

    .line 177
    .line 178
    invoke-virtual {v1, v12, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 182
    .line 183
    .line 184
    const/high16 v2, 0x42b40000    # 90.0f

    .line 185
    .line 186
    invoke-virtual {v1, v12, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v12, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->close()V

    .line 196
    .line 197
    .line 198
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 199
    .line 200
    const/high16 v27, 0x3f800000    # 1.0f

    .line 201
    .line 202
    const/high16 v28, 0x3f800000    # 1.0f

    .line 203
    .line 204
    const/high16 v29, 0x3f800000    # 1.0f

    .line 205
    .line 206
    const/16 v30, 0x2

    .line 207
    .line 208
    const/high16 v31, 0x3f800000    # 1.0f

    .line 209
    .line 210
    move-object/from16 v26, v0

    .line 211
    .line 212
    move-object/from16 v25, v1

    .line 213
    .line 214
    invoke-static/range {v24 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :pswitch_0
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedRocketIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0

    .line 227
    :pswitch_1
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedQrCodeKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0

    .line 232
    :pswitch_2
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedPetsIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0

    .line 237
    :pswitch_3
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedPersonIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0

    .line 242
    :pswitch_4
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedOpenInNewIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    :pswitch_5
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedMarkEmailUnreadKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    :pswitch_6
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedMarkEmailReadKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0

    .line 257
    :pswitch_7
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedLockIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    return-object v0

    .line 262
    :pswitch_8
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedImageIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    return-object v0

    .line 267
    :pswitch_9
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedHearthIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :pswitch_a
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedGroupIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :pswitch_b
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedGameIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    return-object v0

    .line 282
    :pswitch_c
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFolderManagedIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    return-object v0

    .line 287
    :pswitch_d
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFlowerIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    return-object v0

    .line 292
    :pswitch_e
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFingerprintIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0

    .line 297
    :pswitch_f
    invoke-direct {v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;->invoke$net$thunderbird$core$ui$compose$designsystem$atom$icon$outlined$OutlinedFavoriteFolderIconKt$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    return-object v0

    .line 302
    :pswitch_10
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 303
    .line 304
    const/16 v21, 0x0

    .line 305
    .line 306
    const/16 v23, 0x60

    .line 307
    .line 308
    const/16 v22, 0x0

    .line 309
    .line 310
    const/high16 v17, 0x41c00000    # 24.0f

    .line 311
    .line 312
    const/high16 v18, 0x41c00000    # 24.0f

    .line 313
    .line 314
    const/high16 v15, 0x41c00000    # 24.0f

    .line 315
    .line 316
    const/high16 v16, 0x41c00000    # 24.0f

    .line 317
    .line 318
    const-wide/16 v19, 0x0

    .line 319
    .line 320
    const-string v14, "OutlinedEncrypted"

    .line 321
    .line 322
    move-object v13, v1

    .line 323
    invoke-direct/range {v13 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 324
    .line 325
    .line 326
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 327
    .line 328
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 329
    .line 330
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 331
    .line 332
    .line 333
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 334
    .line 335
    new-instance v4, Lokhttp3/Headers$Builder;

    .line 336
    .line 337
    invoke-direct {v4, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 338
    .line 339
    .line 340
    const v0, 0x412ccccd    # 10.8f

    .line 341
    .line 342
    .line 343
    const/high16 v2, 0x41680000    # 14.5f

    .line 344
    .line 345
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 346
    .line 347
    .line 348
    const v0, 0x4019999a    # 2.4f

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 352
    .line 353
    .line 354
    const v0, -0x4119999a    # -0.45f

    .line 355
    .line 356
    .line 357
    const v2, -0x3fd3d70a    # -2.69f

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 361
    .line 362
    .line 363
    const v9, 0x3f0ccccd    # 0.55f

    .line 364
    .line 365
    .line 366
    const v10, -0x40f5c28f    # -0.54f

    .line 367
    .line 368
    .line 369
    const v5, 0x3fb33333    # 1.4f

    .line 370
    .line 371
    .line 372
    const v6, 0x3fb33333    # 1.4f

    .line 373
    .line 374
    .line 375
    const/4 v7, 0x0

    .line 376
    const/4 v8, 0x0

    .line 377
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 378
    .line 379
    .line 380
    const v9, 0x3e4ccccd    # 0.2f

    .line 381
    .line 382
    .line 383
    const v10, -0x40b851ec    # -0.78f

    .line 384
    .line 385
    .line 386
    const v5, 0x3fcccccd    # 1.6f

    .line 387
    .line 388
    .line 389
    const v6, 0x3fcccccd    # 1.6f

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 393
    .line 394
    .line 395
    const v9, -0x411eb852    # -0.44f

    .line 396
    .line 397
    .line 398
    const v10, -0x4079999a    # -1.05f

    .line 399
    .line 400
    .line 401
    const v5, 0x3fb33333    # 1.4f

    .line 402
    .line 403
    .line 404
    const v6, 0x3fb33333    # 1.4f

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 408
    .line 409
    .line 410
    const/high16 v7, 0x41400000    # 12.0f

    .line 411
    .line 412
    const/high16 v8, 0x41100000    # 9.0f

    .line 413
    .line 414
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 415
    .line 416
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 417
    .line 418
    const/4 v9, 0x0

    .line 419
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 420
    .line 421
    .line 422
    const v9, -0x407851ec    # -1.06f

    .line 423
    .line 424
    .line 425
    const v10, 0x3ee147ae    # 0.44f

    .line 426
    .line 427
    .line 428
    const v5, 0x3fb33333    # 1.4f

    .line 429
    .line 430
    .line 431
    const v6, 0x3fb33333    # 1.4f

    .line 432
    .line 433
    .line 434
    const/4 v7, 0x0

    .line 435
    const/4 v8, 0x0

    .line 436
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 437
    .line 438
    .line 439
    const v9, -0x411eb852    # -0.44f

    .line 440
    .line 441
    .line 442
    const v10, 0x3f87ae14    # 1.06f

    .line 443
    .line 444
    .line 445
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 446
    .line 447
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 448
    .line 449
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 450
    .line 451
    .line 452
    const v9, 0x3e4ccccd    # 0.2f

    .line 453
    .line 454
    .line 455
    const v10, 0x3f47ae14    # 0.78f

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 459
    .line 460
    .line 461
    const v9, 0x3f0ccccd    # 0.55f

    .line 462
    .line 463
    .line 464
    const v10, 0x3f07ae14    # 0.53f

    .line 465
    .line 466
    .line 467
    const v5, 0x3fb33333    # 1.4f

    .line 468
    .line 469
    .line 470
    const v6, 0x3fb33333    # 1.4f

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 477
    .line 478
    .line 479
    const/high16 v0, 0x41a00000    # 20.0f

    .line 480
    .line 481
    const/high16 v2, 0x41400000    # 12.0f

    .line 482
    .line 483
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 484
    .line 485
    .line 486
    const v9, -0x3f6ae148    # -4.66f

    .line 487
    .line 488
    .line 489
    const v10, -0x3fb47ae1    # -3.18f

    .line 490
    .line 491
    .line 492
    const/high16 v5, 0x41000000    # 8.0f

    .line 493
    .line 494
    const/high16 v6, 0x41000000    # 8.0f

    .line 495
    .line 496
    const/4 v8, 0x1

    .line 497
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 498
    .line 499
    .line 500
    const v9, -0x40147ae1    # -1.84f

    .line 501
    .line 502
    .line 503
    const v10, -0x3f4e6666    # -5.55f

    .line 504
    .line 505
    .line 506
    const/high16 v5, 0x41100000    # 9.0f

    .line 507
    .line 508
    const/high16 v6, 0x41100000    # 9.0f

    .line 509
    .line 510
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 511
    .line 512
    .line 513
    const/high16 v0, 0x40d00000    # 6.5f

    .line 514
    .line 515
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 516
    .line 517
    .line 518
    const/high16 v0, 0x40800000    # 4.0f

    .line 519
    .line 520
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 521
    .line 522
    .line 523
    const/high16 v0, 0x40200000    # 2.5f

    .line 524
    .line 525
    const/high16 v2, 0x40d00000    # 6.5f

    .line 526
    .line 527
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 528
    .line 529
    .line 530
    const v0, 0x4098a3d7    # 4.77f

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 534
    .line 535
    .line 536
    const v10, 0x40b1999a    # 5.55f

    .line 537
    .line 538
    .line 539
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 540
    .line 541
    .line 542
    const/high16 v7, 0x41400000    # 12.0f

    .line 543
    .line 544
    const/high16 v8, 0x41a00000    # 20.0f

    .line 545
    .line 546
    const/high16 v5, 0x41000000    # 8.0f

    .line 547
    .line 548
    const/high16 v6, 0x41000000    # 8.0f

    .line 549
    .line 550
    const/4 v9, 0x1

    .line 551
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 552
    .line 553
    .line 554
    const v0, -0x403851ec    # -1.56f

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v12, v0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 558
    .line 559
    .line 560
    const v9, 0x40651eb8    # 3.58f

    .line 561
    .line 562
    .line 563
    const v10, -0x3fd3d70a    # -2.69f

    .line 564
    .line 565
    .line 566
    const v5, 0x40d9999a    # 6.8f

    .line 567
    .line 568
    .line 569
    const v6, 0x40d9999a    # 6.8f

    .line 570
    .line 571
    .line 572
    const/4 v7, 0x0

    .line 573
    const/4 v8, 0x0

    .line 574
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 575
    .line 576
    .line 577
    const/high16 v7, 0x41880000    # 17.0f

    .line 578
    .line 579
    const v8, 0x413451ec    # 11.27f

    .line 580
    .line 581
    .line 582
    const v5, 0x40f33333    # 7.6f

    .line 583
    .line 584
    .line 585
    const v6, 0x40f33333    # 7.6f

    .line 586
    .line 587
    .line 588
    const/4 v9, 0x0

    .line 589
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 590
    .line 591
    .line 592
    const v0, 0x40f0a3d7    # 7.52f

    .line 593
    .line 594
    .line 595
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 596
    .line 597
    .line 598
    const v0, 0x40b33333    # 5.6f

    .line 599
    .line 600
    .line 601
    const/high16 v2, 0x41400000    # 12.0f

    .line 602
    .line 603
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 604
    .line 605
    .line 606
    const/high16 v0, 0x40e00000    # 7.0f

    .line 607
    .line 608
    const v2, 0x40f0a3d7    # 7.52f

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 612
    .line 613
    .line 614
    const/high16 v0, 0x40700000    # 3.75f

    .line 615
    .line 616
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 617
    .line 618
    .line 619
    const v9, 0x3fb5c28f    # 1.42f

    .line 620
    .line 621
    .line 622
    const v10, 0x408f5c29    # 4.48f

    .line 623
    .line 624
    .line 625
    const/4 v7, 0x0

    .line 626
    const/4 v8, 0x0

    .line 627
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 628
    .line 629
    .line 630
    const/high16 v7, 0x41400000    # 12.0f

    .line 631
    .line 632
    const v8, 0x4193851f    # 18.44f

    .line 633
    .line 634
    .line 635
    const v5, 0x40d9999a    # 6.8f

    .line 636
    .line 637
    .line 638
    const v6, 0x40d9999a    # 6.8f

    .line 639
    .line 640
    .line 641
    const/4 v9, 0x0

    .line 642
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 643
    .line 644
    .line 645
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 646
    .line 647
    const/high16 v4, 0x3f800000    # 1.0f

    .line 648
    .line 649
    const/high16 v5, 0x3f800000    # 1.0f

    .line 650
    .line 651
    const/high16 v6, 0x3f800000    # 1.0f

    .line 652
    .line 653
    const/4 v7, 0x2

    .line 654
    const/high16 v8, 0x3f800000    # 1.0f

    .line 655
    .line 656
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    return-object v0

    .line 664
    :pswitch_11
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 665
    .line 666
    const/16 v32, 0x0

    .line 667
    .line 668
    const/16 v34, 0x60

    .line 669
    .line 670
    const-string v25, "OutlinedDriveFileMove"

    .line 671
    .line 672
    const/high16 v26, 0x41c00000    # 24.0f

    .line 673
    .line 674
    const/high16 v27, 0x41c00000    # 24.0f

    .line 675
    .line 676
    const/high16 v28, 0x44700000    # 960.0f

    .line 677
    .line 678
    const/high16 v29, 0x44700000    # 960.0f

    .line 679
    .line 680
    const-wide/16 v30, 0x0

    .line 681
    .line 682
    const/16 v33, 0x0

    .line 683
    .line 684
    move-object/from16 v24, v1

    .line 685
    .line 686
    invoke-direct/range {v24 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 687
    .line 688
    .line 689
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 690
    .line 691
    const-wide v4, 0xffffffffL

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 697
    .line 698
    .line 699
    move-result-wide v4

    .line 700
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 701
    .line 702
    .line 703
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 704
    .line 705
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 706
    .line 707
    invoke-direct {v2, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 708
    .line 709
    .line 710
    const/high16 v4, 0x43f40000    # 488.0f

    .line 711
    .line 712
    const/high16 v5, 0x440c0000    # 560.0f

    .line 713
    .line 714
    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 715
    .line 716
    .line 717
    const/high16 v4, -0x3d7e0000    # -65.0f

    .line 718
    .line 719
    const/high16 v5, 0x42820000    # 65.0f

    .line 720
    .line 721
    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 722
    .line 723
    .line 724
    const/high16 v4, 0x42600000    # 56.0f

    .line 725
    .line 726
    invoke-virtual {v2, v4, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 727
    .line 728
    .line 729
    const/high16 v9, 0x43210000    # 161.0f

    .line 730
    .line 731
    const/high16 v11, -0x3cdf0000    # -161.0f

    .line 732
    .line 733
    invoke-virtual {v2, v9, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v11, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 737
    .line 738
    .line 739
    const/high16 v9, -0x3da00000    # -56.0f

    .line 740
    .line 741
    invoke-virtual {v2, v9, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v5, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v6}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2, v15}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 751
    .line 752
    .line 753
    const/high16 v4, 0x43280000    # 168.0f

    .line 754
    .line 755
    invoke-virtual {v2, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v2, v8, v14}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 762
    .line 763
    .line 764
    const/high16 v4, -0x3e440000    # -23.5f

    .line 765
    .line 766
    const/high16 v5, -0x3d9e0000    # -56.5f

    .line 767
    .line 768
    invoke-virtual {v2, v13, v12, v5, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 769
    .line 770
    .line 771
    const/high16 v4, 0x44340000    # 720.0f

    .line 772
    .line 773
    invoke-virtual {v2, v15, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v2, v7}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 777
    .line 778
    .line 779
    const/high16 v4, 0x41bc0000    # 23.5f

    .line 780
    .line 781
    invoke-virtual {v2, v12, v13, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v2, v8, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2, v7}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2, v15, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2, v6}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 794
    .line 795
    .line 796
    const/high16 v5, 0x42620000    # 56.5f

    .line 797
    .line 798
    const/high16 v9, 0x42040000    # 33.0f

    .line 799
    .line 800
    invoke-virtual {v2, v9, v12, v5, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 801
    .line 802
    .line 803
    const/high16 v4, 0x445c0000    # 880.0f

    .line 804
    .line 805
    invoke-virtual {v2, v4, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 806
    .line 807
    .line 808
    const/high16 v4, 0x43c80000    # 400.0f

    .line 809
    .line 810
    invoke-virtual {v2, v4}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 811
    .line 812
    .line 813
    const/high16 v4, -0x3e440000    # -23.5f

    .line 814
    .line 815
    invoke-virtual {v2, v12, v9, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v14, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v2, v12, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 828
    .line 829
    .line 830
    const/high16 v4, 0x44200000    # 640.0f

    .line 831
    .line 832
    invoke-virtual {v2, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v6}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 836
    .line 837
    .line 838
    const v4, 0x43df8000    # 447.0f

    .line 839
    .line 840
    .line 841
    invoke-virtual {v2, v4}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v2, v10, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v8}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v2, v12, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2, v7}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 866
    .line 867
    .line 868
    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 869
    .line 870
    const/high16 v4, 0x3f800000    # 1.0f

    .line 871
    .line 872
    const/high16 v5, 0x3f800000    # 1.0f

    .line 873
    .line 874
    const/4 v6, 0x0

    .line 875
    const/4 v7, 0x0

    .line 876
    const/high16 v8, 0x40800000    # 4.0f

    .line 877
    .line 878
    move-object v3, v0

    .line 879
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    return-object v0

    .line 887
    :pswitch_12
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 888
    .line 889
    const/16 v32, 0x0

    .line 890
    .line 891
    const/16 v34, 0x60

    .line 892
    .line 893
    const-string v25, "OutlinedDownloadIcon"

    .line 894
    .line 895
    const/high16 v26, 0x41c00000    # 24.0f

    .line 896
    .line 897
    const/high16 v27, 0x41c00000    # 24.0f

    .line 898
    .line 899
    const/high16 v28, 0x44700000    # 960.0f

    .line 900
    .line 901
    const/high16 v29, 0x44700000    # 960.0f

    .line 902
    .line 903
    const-wide/16 v30, 0x0

    .line 904
    .line 905
    const/16 v33, 0x0

    .line 906
    .line 907
    move-object/from16 v24, v1

    .line 908
    .line 909
    invoke-direct/range {v24 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 910
    .line 911
    .line 912
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 913
    .line 914
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 915
    .line 916
    invoke-direct {v0, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 917
    .line 918
    .line 919
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 920
    .line 921
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 922
    .line 923
    invoke-direct {v2, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 924
    .line 925
    .line 926
    const/high16 v4, 0x44200000    # 640.0f

    .line 927
    .line 928
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2, v9, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 932
    .line 933
    .line 934
    const/high16 v4, -0x3d980000    # -58.0f

    .line 935
    .line 936
    const/high16 v5, 0x42600000    # 56.0f

    .line 937
    .line 938
    invoke-virtual {v2, v5, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 939
    .line 940
    .line 941
    const/high16 v4, 0x42d00000    # 104.0f

    .line 942
    .line 943
    invoke-virtual {v2, v4, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 944
    .line 945
    .line 946
    const/high16 v6, -0x3c5d0000    # -326.0f

    .line 947
    .line 948
    invoke-virtual {v2, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 952
    .line 953
    .line 954
    const/high16 v6, 0x43a30000    # 326.0f

    .line 955
    .line 956
    invoke-virtual {v2, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 957
    .line 958
    .line 959
    const/high16 v6, -0x3d300000    # -104.0f

    .line 960
    .line 961
    const/high16 v7, 0x42680000    # 58.0f

    .line 962
    .line 963
    invoke-static {v2, v4, v6, v5, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 964
    .line 965
    .line 966
    const/high16 v4, 0x43700000    # 240.0f

    .line 967
    .line 968
    invoke-virtual {v2, v4, v14}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 969
    .line 970
    .line 971
    const/high16 v4, -0x3e440000    # -23.5f

    .line 972
    .line 973
    const/high16 v5, -0x3d9e0000    # -56.5f

    .line 974
    .line 975
    invoke-virtual {v2, v13, v12, v5, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 976
    .line 977
    .line 978
    const/high16 v5, 0x44340000    # 720.0f

    .line 979
    .line 980
    const/high16 v6, 0x43200000    # 160.0f

    .line 981
    .line 982
    invoke-virtual {v2, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 983
    .line 984
    .line 985
    const/high16 v6, -0x3d100000    # -120.0f

    .line 986
    .line 987
    invoke-virtual {v2, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 991
    .line 992
    .line 993
    const/high16 v7, 0x42f00000    # 120.0f

    .line 994
    .line 995
    invoke-virtual {v2, v12, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v2, v3, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2, v12, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1008
    .line 1009
    .line 1010
    const/high16 v3, 0x42620000    # 56.5f

    .line 1011
    .line 1012
    const/high16 v9, 0x42040000    # 33.0f

    .line 1013
    .line 1014
    invoke-virtual {v2, v12, v9, v4, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v2, v5, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 1021
    .line 1022
    .line 1023
    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1024
    .line 1025
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1026
    .line 1027
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1028
    .line 1029
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1030
    .line 1031
    const/4 v7, 0x2

    .line 1032
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1033
    .line 1034
    move-object v3, v0

    .line 1035
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    return-object v0

    .line 1043
    :pswitch_13
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1044
    .line 1045
    const/16 v34, 0x0

    .line 1046
    .line 1047
    const/16 v36, 0x60

    .line 1048
    .line 1049
    const-string v27, "OutlinedDescriptionIcon"

    .line 1050
    .line 1051
    const/high16 v28, 0x41c00000    # 24.0f

    .line 1052
    .line 1053
    const/high16 v29, 0x41c00000    # 24.0f

    .line 1054
    .line 1055
    const/high16 v30, 0x44700000    # 960.0f

    .line 1056
    .line 1057
    const/high16 v31, 0x44700000    # 960.0f

    .line 1058
    .line 1059
    const-wide/16 v32, 0x0

    .line 1060
    .line 1061
    const/16 v35, 0x0

    .line 1062
    .line 1063
    move-object/from16 v26, v1

    .line 1064
    .line 1065
    invoke-direct/range {v26 .. v36}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1066
    .line 1067
    .line 1068
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1069
    .line 1070
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1071
    .line 1072
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1073
    .line 1074
    .line 1075
    sget v4, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1076
    .line 1077
    new-instance v4, Lokhttp3/Headers$Builder;

    .line 1078
    .line 1079
    invoke-direct {v4, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 1080
    .line 1081
    .line 1082
    const/high16 v5, 0x44340000    # 720.0f

    .line 1083
    .line 1084
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v4, v6, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4, v12, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1091
    .line 1092
    .line 1093
    const/high16 v5, 0x44200000    # 640.0f

    .line 1094
    .line 1095
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1099
    .line 1100
    .line 1101
    const/high16 v5, -0x3ce00000    # -160.0f

    .line 1102
    .line 1103
    invoke-virtual {v4, v12, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v4, v6, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v4, v12, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1110
    .line 1111
    .line 1112
    const/high16 v5, 0x43c80000    # 400.0f

    .line 1113
    .line 1114
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1118
    .line 1119
    .line 1120
    const/high16 v5, 0x445c0000    # 880.0f

    .line 1121
    .line 1122
    const/high16 v7, 0x43700000    # 240.0f

    .line 1123
    .line 1124
    invoke-virtual {v4, v7, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1125
    .line 1126
    .line 1127
    const/high16 v8, -0x3e440000    # -23.5f

    .line 1128
    .line 1129
    const/high16 v10, -0x3d9e0000    # -56.5f

    .line 1130
    .line 1131
    invoke-virtual {v4, v13, v12, v10, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1132
    .line 1133
    .line 1134
    const/high16 v11, 0x43200000    # 160.0f

    .line 1135
    .line 1136
    invoke-virtual {v4, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1137
    .line 1138
    .line 1139
    const/high16 v11, -0x3be00000    # -640.0f

    .line 1140
    .line 1141
    invoke-virtual {v4, v12, v11}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1142
    .line 1143
    .line 1144
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 1145
    .line 1146
    invoke-virtual {v4, v12, v13, v11, v10}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v4, v7, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v4, v6, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v4, v7, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v4, v12, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1159
    .line 1160
    .line 1161
    const/high16 v6, 0x42620000    # 56.5f

    .line 1162
    .line 1163
    const/high16 v10, 0x42040000    # 33.0f

    .line 1164
    .line 1165
    invoke-virtual {v4, v12, v10, v8, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1166
    .line 1167
    .line 1168
    const/high16 v6, 0x44340000    # 720.0f

    .line 1169
    .line 1170
    invoke-virtual {v4, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1174
    .line 1175
    .line 1176
    const/high16 v5, -0x3bfe0000    # -520.0f

    .line 1177
    .line 1178
    invoke-virtual {v4, v9, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1179
    .line 1180
    .line 1181
    const/high16 v5, -0x3cb80000    # -200.0f

    .line 1182
    .line 1183
    invoke-virtual {v4, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1184
    .line 1185
    .line 1186
    const/high16 v6, 0x43200000    # 160.0f

    .line 1187
    .line 1188
    invoke-virtual {v4, v7, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1189
    .line 1190
    .line 1191
    const/high16 v5, 0x44200000    # 640.0f

    .line 1192
    .line 1193
    invoke-virtual {v4, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1194
    .line 1195
    .line 1196
    const/high16 v8, -0x3c240000    # -440.0f

    .line 1197
    .line 1198
    invoke-static {v4, v3, v12, v12, v8}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v4, v7, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v4, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v4, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1214
    .line 1215
    .line 1216
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1217
    .line 1218
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1219
    .line 1220
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1221
    .line 1222
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1223
    .line 1224
    const/4 v7, 0x2

    .line 1225
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1226
    .line 1227
    move-object v3, v0

    .line 1228
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    return-object v0

    .line 1236
    :pswitch_14
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1237
    .line 1238
    const/16 v34, 0x0

    .line 1239
    .line 1240
    const/16 v36, 0x60

    .line 1241
    .line 1242
    const-string v27, "OutlinedBookIcon"

    .line 1243
    .line 1244
    const/high16 v28, 0x41c00000    # 24.0f

    .line 1245
    .line 1246
    const/high16 v29, 0x41c00000    # 24.0f

    .line 1247
    .line 1248
    const/high16 v30, 0x44700000    # 960.0f

    .line 1249
    .line 1250
    const/high16 v31, 0x44700000    # 960.0f

    .line 1251
    .line 1252
    const-wide/16 v32, 0x0

    .line 1253
    .line 1254
    const/16 v35, 0x0

    .line 1255
    .line 1256
    move-object/from16 v26, v1

    .line 1257
    .line 1258
    invoke-direct/range {v26 .. v36}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1259
    .line 1260
    .line 1261
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1262
    .line 1263
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1264
    .line 1265
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1266
    .line 1267
    .line 1268
    sget v4, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1269
    .line 1270
    const/high16 v4, 0x445c0000    # 880.0f

    .line 1271
    .line 1272
    const/high16 v7, 0x43700000    # 240.0f

    .line 1273
    .line 1274
    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v5

    .line 1278
    const/high16 v4, -0x3e440000    # -23.5f

    .line 1279
    .line 1280
    const/high16 v6, -0x3d9e0000    # -56.5f

    .line 1281
    .line 1282
    invoke-virtual {v5, v13, v12, v6, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1283
    .line 1284
    .line 1285
    const/high16 v11, 0x43200000    # 160.0f

    .line 1286
    .line 1287
    invoke-virtual {v5, v11, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1288
    .line 1289
    .line 1290
    const/high16 v8, -0x3be00000    # -640.0f

    .line 1291
    .line 1292
    invoke-virtual {v5, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1293
    .line 1294
    .line 1295
    const/high16 v2, 0x41bc0000    # 23.5f

    .line 1296
    .line 1297
    invoke-virtual {v5, v12, v13, v2, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v5, v7, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v5, v3, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1304
    .line 1305
    .line 1306
    const/high16 v6, 0x42620000    # 56.5f

    .line 1307
    .line 1308
    const/high16 v13, 0x42040000    # 33.0f

    .line 1309
    .line 1310
    invoke-virtual {v5, v13, v12, v6, v2}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v5, v14, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1314
    .line 1315
    .line 1316
    const/high16 v2, 0x44200000    # 640.0f

    .line 1317
    .line 1318
    invoke-virtual {v5, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v5, v12, v13, v4, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1322
    .line 1323
    .line 1324
    const/high16 v4, 0x445c0000    # 880.0f

    .line 1325
    .line 1326
    const/high16 v6, 0x44340000    # 720.0f

    .line 1327
    .line 1328
    invoke-virtual {v5, v6, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v5, v7, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->close()V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v5, v12, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v5, v3, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v5, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v5, v10, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v5, v12, v9}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1350
    .line 1351
    .line 1352
    const/high16 v2, -0x3d380000    # -100.0f

    .line 1353
    .line 1354
    const/high16 v3, -0x3d900000    # -60.0f

    .line 1355
    .line 1356
    invoke-virtual {v5, v2, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1357
    .line 1358
    .line 1359
    const/high16 v4, 0x42700000    # 60.0f

    .line 1360
    .line 1361
    invoke-virtual {v5, v2, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1362
    .line 1363
    .line 1364
    const/high16 v6, -0x3c740000    # -280.0f

    .line 1365
    .line 1366
    invoke-virtual {v5, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1367
    .line 1368
    .line 1369
    const/high16 v6, 0x43200000    # 160.0f

    .line 1370
    .line 1371
    const/high16 v7, 0x43700000    # 240.0f

    .line 1372
    .line 1373
    invoke-virtual {v5, v7, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1374
    .line 1375
    .line 1376
    const/high16 v6, 0x44200000    # 640.0f

    .line 1377
    .line 1378
    invoke-virtual {v5, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->close()V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v5, v12, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1385
    .line 1386
    .line 1387
    invoke-static {v5, v12, v8, v12, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1388
    .line 1389
    .line 1390
    const/high16 v6, -0x3c4c0000    # -360.0f

    .line 1391
    .line 1392
    const/high16 v7, 0x43480000    # 200.0f

    .line 1393
    .line 1394
    invoke-virtual {v5, v7, v6}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1395
    .line 1396
    .line 1397
    const/high16 v6, 0x42c80000    # 100.0f

    .line 1398
    .line 1399
    invoke-virtual {v5, v6, v3}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v5, v6, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1403
    .line 1404
    .line 1405
    invoke-static {v5, v2, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v2, v5, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1409
    .line 1410
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1411
    .line 1412
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1413
    .line 1414
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1415
    .line 1416
    const/4 v7, 0x2

    .line 1417
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1418
    .line 1419
    move-object v3, v0

    .line 1420
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    return-object v0

    .line 1428
    :pswitch_15
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1429
    .line 1430
    const/16 v35, 0x0

    .line 1431
    .line 1432
    const/16 v37, 0x60

    .line 1433
    .line 1434
    const-string v28, "OutlinedBankIcon"

    .line 1435
    .line 1436
    const/high16 v29, 0x41c00000    # 24.0f

    .line 1437
    .line 1438
    const/high16 v30, 0x41c00000    # 24.0f

    .line 1439
    .line 1440
    const/high16 v31, 0x44700000    # 960.0f

    .line 1441
    .line 1442
    const/high16 v32, 0x44700000    # 960.0f

    .line 1443
    .line 1444
    const-wide/16 v33, 0x0

    .line 1445
    .line 1446
    const/16 v36, 0x0

    .line 1447
    .line 1448
    move-object/from16 v27, v1

    .line 1449
    .line 1450
    invoke-direct/range {v27 .. v37}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1451
    .line 1452
    .line 1453
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1454
    .line 1455
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1456
    .line 1457
    invoke-direct {v0, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1458
    .line 1459
    .line 1460
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1461
    .line 1462
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 1463
    .line 1464
    invoke-direct {v2, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 1465
    .line 1466
    .line 1467
    const/high16 v5, 0x442a0000    # 680.0f

    .line 1468
    .line 1469
    const/high16 v7, 0x43480000    # 200.0f

    .line 1470
    .line 1471
    invoke-virtual {v2, v7, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1472
    .line 1473
    .line 1474
    const/high16 v5, -0x3c740000    # -280.0f

    .line 1475
    .line 1476
    invoke-virtual {v2, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v2, v12, v9, v10, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1483
    .line 1484
    .line 1485
    const/high16 v7, 0x43700000    # 240.0f

    .line 1486
    .line 1487
    invoke-virtual {v2, v7, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v2, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1494
    .line 1495
    .line 1496
    invoke-static {v2, v12, v9, v10, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1497
    .line 1498
    .line 1499
    const/high16 v7, 0x44520000    # 840.0f

    .line 1500
    .line 1501
    invoke-virtual {v2, v15, v7}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v2, v12, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v2, v14, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v2, v12, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v2, v15, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 1517
    .line 1518
    .line 1519
    const/high16 v7, -0x3ce00000    # -160.0f

    .line 1520
    .line 1521
    invoke-virtual {v2, v4, v7}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v2, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v2, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1528
    .line 1529
    .line 1530
    invoke-static {v2, v12, v9, v10, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v2, v15, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v2, v12, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1537
    .line 1538
    .line 1539
    const/high16 v4, -0x3cb80000    # -200.0f

    .line 1540
    .line 1541
    const/high16 v5, 0x43c80000    # 400.0f

    .line 1542
    .line 1543
    invoke-virtual {v2, v5, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1544
    .line 1545
    .line 1546
    const/high16 v7, 0x43480000    # 200.0f

    .line 1547
    .line 1548
    invoke-virtual {v2, v5, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v2, v12, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v2, v15, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 1558
    .line 1559
    .line 1560
    const/high16 v4, 0x43320000    # 178.0f

    .line 1561
    .line 1562
    invoke-virtual {v2, v4, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1563
    .line 1564
    .line 1565
    const/high16 v4, -0x3c220000    # -444.0f

    .line 1566
    .line 1567
    const/high16 v5, 0x43de0000    # 444.0f

    .line 1568
    .line 1569
    invoke-static {v2, v5, v12, v4, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v2, v12, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v2, v5, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1576
    .line 1577
    .line 1578
    const/high16 v4, 0x43020000    # 130.0f

    .line 1579
    .line 1580
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1581
    .line 1582
    .line 1583
    const/high16 v3, 0x43810000    # 258.0f

    .line 1584
    .line 1585
    const/high16 v7, 0x43700000    # 240.0f

    .line 1586
    .line 1587
    invoke-virtual {v2, v3, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 1591
    .line 1592
    .line 1593
    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1594
    .line 1595
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1596
    .line 1597
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1598
    .line 1599
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1600
    .line 1601
    const/4 v7, 0x2

    .line 1602
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1603
    .line 1604
    move-object v3, v0

    .line 1605
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    return-object v0

    .line 1613
    :pswitch_16
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1614
    .line 1615
    const/16 v35, 0x0

    .line 1616
    .line 1617
    const/16 v37, 0x60

    .line 1618
    .line 1619
    const-string v28, "OutlinedBadgeIcon"

    .line 1620
    .line 1621
    const/high16 v29, 0x41c00000    # 24.0f

    .line 1622
    .line 1623
    const/high16 v30, 0x41c00000    # 24.0f

    .line 1624
    .line 1625
    const/high16 v31, 0x44700000    # 960.0f

    .line 1626
    .line 1627
    const/high16 v32, 0x44700000    # 960.0f

    .line 1628
    .line 1629
    const-wide/16 v33, 0x0

    .line 1630
    .line 1631
    const/16 v36, 0x0

    .line 1632
    .line 1633
    move-object/from16 v27, v1

    .line 1634
    .line 1635
    invoke-direct/range {v27 .. v37}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1636
    .line 1637
    .line 1638
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1639
    .line 1640
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1641
    .line 1642
    invoke-direct {v0, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1643
    .line 1644
    .line 1645
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1646
    .line 1647
    const/high16 v2, 0x445c0000    # 880.0f

    .line 1648
    .line 1649
    const/high16 v11, 0x43200000    # 160.0f

    .line 1650
    .line 1651
    invoke-static {v11, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v7

    .line 1655
    const/high16 v2, -0x3d9e0000    # -56.5f

    .line 1656
    .line 1657
    const/high16 v8, -0x3e440000    # -23.5f

    .line 1658
    .line 1659
    invoke-virtual {v7, v13, v12, v2, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1660
    .line 1661
    .line 1662
    invoke-virtual {v7, v15, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1663
    .line 1664
    .line 1665
    const/high16 v8, -0x3c240000    # -440.0f

    .line 1666
    .line 1667
    invoke-virtual {v7, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1668
    .line 1669
    .line 1670
    const/high16 v3, 0x41bc0000    # 23.5f

    .line 1671
    .line 1672
    invoke-virtual {v7, v12, v13, v3, v2}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v7, v11, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1676
    .line 1677
    .line 1678
    const/high16 v9, 0x43480000    # 200.0f

    .line 1679
    .line 1680
    invoke-virtual {v7, v9, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1681
    .line 1682
    .line 1683
    const/high16 v6, -0x3d100000    # -120.0f

    .line 1684
    .line 1685
    invoke-virtual {v7, v12, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v7, v12, v13, v3, v2}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v7, v5, v15}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v7, v15, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1695
    .line 1696
    .line 1697
    const/high16 v2, 0x42040000    # 33.0f

    .line 1698
    .line 1699
    const/high16 v6, 0x42620000    # 56.5f

    .line 1700
    .line 1701
    invoke-virtual {v7, v2, v12, v6, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v7, v4, v11}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1705
    .line 1706
    .line 1707
    const/high16 v15, 0x42f00000    # 120.0f

    .line 1708
    .line 1709
    invoke-virtual {v7, v12, v15}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v7, v9, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v7, v2, v12, v6, v3}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1716
    .line 1717
    .line 1718
    const/high16 v3, 0x43b40000    # 360.0f

    .line 1719
    .line 1720
    const/high16 v9, 0x445c0000    # 880.0f

    .line 1721
    .line 1722
    invoke-virtual {v7, v9, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v7, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1726
    .line 1727
    .line 1728
    const/high16 v15, -0x3e440000    # -23.5f

    .line 1729
    .line 1730
    invoke-virtual {v7, v12, v2, v15, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v7, v14, v9}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v7, v11, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v7, v12, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1743
    .line 1744
    .line 1745
    const/high16 v9, 0x44200000    # 640.0f

    .line 1746
    .line 1747
    invoke-virtual {v7, v9, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v7, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v7, v4, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v7, v12, v2, v15, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1757
    .line 1758
    .line 1759
    const/high16 v2, 0x44020000    # 520.0f

    .line 1760
    .line 1761
    invoke-virtual {v7, v2, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v7, v10, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1765
    .line 1766
    .line 1767
    const/high16 v2, -0x3d9e0000    # -56.5f

    .line 1768
    .line 1769
    invoke-virtual {v7, v13, v12, v2, v15}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v7, v3, v3}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1773
    .line 1774
    .line 1775
    const/high16 v6, 0x43200000    # 160.0f

    .line 1776
    .line 1777
    invoke-virtual {v7, v6, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual {v7, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1784
    .line 1785
    .line 1786
    const/high16 v2, 0x42a00000    # 80.0f

    .line 1787
    .line 1788
    invoke-virtual {v7, v2, v10}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1789
    .line 1790
    .line 1791
    const/high16 v2, 0x43700000    # 240.0f

    .line 1792
    .line 1793
    invoke-virtual {v7, v2, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1794
    .line 1795
    .line 1796
    const/high16 v2, -0x3e700000    # -18.0f

    .line 1797
    .line 1798
    invoke-virtual {v7, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1799
    .line 1800
    .line 1801
    const/high16 v2, -0x3ee80000    # -9.5f

    .line 1802
    .line 1803
    const/high16 v6, -0x3e040000    # -31.5f

    .line 1804
    .line 1805
    const/high16 v8, -0x3e780000    # -17.0f

    .line 1806
    .line 1807
    invoke-virtual {v7, v12, v8, v2, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1808
    .line 1809
    .line 1810
    const/high16 v2, 0x43de0000    # 444.0f

    .line 1811
    .line 1812
    const/high16 v6, 0x44220000    # 648.0f

    .line 1813
    .line 1814
    invoke-virtual {v7, v2, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1815
    .line 1816
    .line 1817
    const/high16 v2, -0x3dde0000    # -40.5f

    .line 1818
    .line 1819
    const/high16 v9, -0x3ea80000    # -13.5f

    .line 1820
    .line 1821
    const/high16 v11, -0x3e600000    # -20.0f

    .line 1822
    .line 1823
    const/high16 v13, -0x3ef00000    # -9.0f

    .line 1824
    .line 1825
    invoke-virtual {v7, v11, v13, v2, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1826
    .line 1827
    .line 1828
    const v2, 0x441d8000    # 630.0f

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v7, v3, v2}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1832
    .line 1833
    .line 1834
    const/high16 v2, -0x3dd20000    # -43.5f

    .line 1835
    .line 1836
    const/high16 v9, 0x40900000    # 4.5f

    .line 1837
    .line 1838
    const/high16 v11, -0x3e480000    # -23.0f

    .line 1839
    .line 1840
    invoke-virtual {v7, v11, v12, v2, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1841
    .line 1842
    .line 1843
    const/high16 v2, 0x438a0000    # 276.0f

    .line 1844
    .line 1845
    invoke-virtual {v7, v2, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1846
    .line 1847
    .line 1848
    const/high16 v2, -0x3e2c0000    # -26.5f

    .line 1849
    .line 1850
    const/high16 v6, 0x41b40000    # 22.5f

    .line 1851
    .line 1852
    const/high16 v9, 0x41000000    # 8.0f

    .line 1853
    .line 1854
    invoke-virtual {v7, v8, v9, v2, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1855
    .line 1856
    .line 1857
    const v2, 0x442f8000    # 702.0f

    .line 1858
    .line 1859
    .line 1860
    const/high16 v6, 0x43700000    # 240.0f

    .line 1861
    .line 1862
    invoke-virtual {v7, v6, v2}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1863
    .line 1864
    .line 1865
    const/high16 v2, 0x41900000    # 18.0f

    .line 1866
    .line 1867
    invoke-virtual {v7, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1871
    .line 1872
    .line 1873
    const/high16 v2, -0x3d900000    # -60.0f

    .line 1874
    .line 1875
    const/high16 v6, 0x43a00000    # 320.0f

    .line 1876
    .line 1877
    invoke-virtual {v7, v6, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1878
    .line 1879
    .line 1880
    const/high16 v6, 0x43200000    # 160.0f

    .line 1881
    .line 1882
    invoke-virtual {v7, v6, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1883
    .line 1884
    .line 1885
    invoke-virtual {v7, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1886
    .line 1887
    .line 1888
    const/high16 v6, 0x440c0000    # 560.0f

    .line 1889
    .line 1890
    invoke-virtual {v7, v6, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1891
    .line 1892
    .line 1893
    const/high16 v8, 0x42700000    # 60.0f

    .line 1894
    .line 1895
    invoke-virtual {v7, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1899
    .line 1900
    .line 1901
    const/high16 v9, -0x3cb80000    # -200.0f

    .line 1902
    .line 1903
    invoke-virtual {v7, v9, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1904
    .line 1905
    .line 1906
    const/high16 v11, 0x41c80000    # 25.0f

    .line 1907
    .line 1908
    const/high16 v13, 0x422a0000    # 42.5f

    .line 1909
    .line 1910
    const/high16 v14, -0x3e740000    # -17.5f

    .line 1911
    .line 1912
    invoke-virtual {v7, v11, v12, v13, v14}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1913
    .line 1914
    .line 1915
    const/high16 v15, 0x43d20000    # 420.0f

    .line 1916
    .line 1917
    const/high16 v10, 0x44070000    # 540.0f

    .line 1918
    .line 1919
    invoke-virtual {v7, v15, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1920
    .line 1921
    .line 1922
    const/high16 v15, -0x3e380000    # -25.0f

    .line 1923
    .line 1924
    const/high16 v9, -0x3dd60000    # -42.5f

    .line 1925
    .line 1926
    invoke-virtual {v7, v12, v15, v14, v9}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1927
    .line 1928
    .line 1929
    const/high16 v14, 0x43f00000    # 480.0f

    .line 1930
    .line 1931
    invoke-virtual {v7, v3, v14}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1932
    .line 1933
    .line 1934
    const/high16 v5, 0x418c0000    # 17.5f

    .line 1935
    .line 1936
    invoke-virtual {v7, v15, v12, v9, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1937
    .line 1938
    .line 1939
    const/high16 v9, 0x43960000    # 300.0f

    .line 1940
    .line 1941
    invoke-virtual {v7, v9, v10}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v7, v12, v11, v5, v13}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual {v7, v3, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1951
    .line 1952
    .line 1953
    const/high16 v9, 0x43480000    # 200.0f

    .line 1954
    .line 1955
    invoke-virtual {v7, v9, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 1956
    .line 1957
    .line 1958
    const/high16 v11, 0x43200000    # 160.0f

    .line 1959
    .line 1960
    invoke-virtual {v7, v11, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v7, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v7, v6, v14}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v7, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 1973
    .line 1974
    .line 1975
    const/high16 v2, 0x43dc0000    # 440.0f

    .line 1976
    .line 1977
    invoke-virtual {v7, v2, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1978
    .line 1979
    .line 1980
    const/high16 v2, 0x42a00000    # 80.0f

    .line 1981
    .line 1982
    invoke-virtual {v7, v2, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1983
    .line 1984
    .line 1985
    const/high16 v2, -0x3cb80000    # -200.0f

    .line 1986
    .line 1987
    invoke-virtual {v7, v12, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1988
    .line 1989
    .line 1990
    const/high16 v2, -0x3d600000    # -80.0f

    .line 1991
    .line 1992
    invoke-static {v7, v2, v12, v12, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1993
    .line 1994
    .line 1995
    const/high16 v2, 0x42200000    # 40.0f

    .line 1996
    .line 1997
    const/high16 v3, 0x435c0000    # 220.0f

    .line 1998
    .line 1999
    invoke-virtual {v7, v2, v3}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->close()V

    .line 2003
    .line 2004
    .line 2005
    iget-object v2, v7, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2006
    .line 2007
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2008
    .line 2009
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2010
    .line 2011
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2012
    .line 2013
    const/4 v7, 0x2

    .line 2014
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2015
    .line 2016
    move-object v3, v0

    .line 2017
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v0

    .line 2024
    return-object v0

    .line 2025
    :pswitch_17
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2026
    .line 2027
    const/16 v36, 0x0

    .line 2028
    .line 2029
    const/16 v38, 0x60

    .line 2030
    .line 2031
    const-string v29, "OutlinedAccountIcon"

    .line 2032
    .line 2033
    const/high16 v30, 0x41c00000    # 24.0f

    .line 2034
    .line 2035
    const/high16 v31, 0x41c00000    # 24.0f

    .line 2036
    .line 2037
    const/high16 v32, 0x44700000    # 960.0f

    .line 2038
    .line 2039
    const/high16 v33, 0x44700000    # 960.0f

    .line 2040
    .line 2041
    const-wide/16 v34, 0x0

    .line 2042
    .line 2043
    const/16 v37, 0x0

    .line 2044
    .line 2045
    move-object/from16 v28, v1

    .line 2046
    .line 2047
    invoke-direct/range {v28 .. v38}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2048
    .line 2049
    .line 2050
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2051
    .line 2052
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2053
    .line 2054
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2055
    .line 2056
    .line 2057
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 2058
    .line 2059
    const v0, 0x44328000    # 714.0f

    .line 2060
    .line 2061
    .line 2062
    const/high16 v7, 0x43480000    # 200.0f

    .line 2063
    .line 2064
    invoke-static {v7, v0}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v2

    .line 2068
    const/high16 v5, 0x42fb0000    # 125.5f

    .line 2069
    .line 2070
    const/high16 v6, -0x3d590000    # -83.5f

    .line 2071
    .line 2072
    const/high16 v7, 0x42580000    # 54.0f

    .line 2073
    .line 2074
    const/high16 v8, -0x3dac0000    # -53.0f

    .line 2075
    .line 2076
    invoke-virtual {v2, v7, v8, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2077
    .line 2078
    .line 2079
    const/high16 v14, 0x43f00000    # 480.0f

    .line 2080
    .line 2081
    invoke-virtual {v2, v14, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2082
    .line 2083
    .line 2084
    const v4, 0x431a8000    # 154.5f

    .line 2085
    .line 2086
    .line 2087
    const/high16 v5, 0x41f40000    # 30.5f

    .line 2088
    .line 2089
    const/high16 v6, 0x42a60000    # 83.0f

    .line 2090
    .line 2091
    invoke-virtual {v2, v6, v12, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2092
    .line 2093
    .line 2094
    const/high16 v4, 0x443e0000    # 760.0f

    .line 2095
    .line 2096
    invoke-virtual {v2, v4, v0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2097
    .line 2098
    .line 2099
    const v0, -0x3bff8000    # -514.0f

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v2, v12, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2103
    .line 2104
    .line 2105
    const/high16 v7, 0x43480000    # 200.0f

    .line 2106
    .line 2107
    invoke-virtual {v2, v7, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2108
    .line 2109
    .line 2110
    const v0, 0x44008000    # 514.0f

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual {v2, v12, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2114
    .line 2115
    .line 2116
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2117
    .line 2118
    .line 2119
    const/high16 v0, -0x3cbe0000    # -194.0f

    .line 2120
    .line 2121
    invoke-virtual {v2, v9, v0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2122
    .line 2123
    .line 2124
    const/high16 v0, 0x42680000    # 58.0f

    .line 2125
    .line 2126
    const/high16 v5, 0x42c60000    # 99.0f

    .line 2127
    .line 2128
    const/high16 v6, -0x3ddc0000    # -41.0f

    .line 2129
    .line 2130
    invoke-virtual {v2, v0, v12, v5, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2131
    .line 2132
    .line 2133
    const/high16 v7, 0x42240000    # 41.0f

    .line 2134
    .line 2135
    const/high16 v8, -0x3d3a0000    # -99.0f

    .line 2136
    .line 2137
    invoke-virtual {v2, v7, v8}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 2138
    .line 2139
    .line 2140
    const/high16 v9, -0x3d980000    # -58.0f

    .line 2141
    .line 2142
    invoke-virtual {v2, v12, v9, v6, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2143
    .line 2144
    .line 2145
    invoke-virtual {v2, v8, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 2146
    .line 2147
    .line 2148
    invoke-virtual {v2, v9, v12, v8, v7}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v2, v6, v5}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 2152
    .line 2153
    .line 2154
    invoke-virtual {v2, v12, v0, v7, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v2, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadToRelative(FF)V

    .line 2158
    .line 2159
    .line 2160
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2161
    .line 2162
    .line 2163
    const/high16 v0, 0x44520000    # 840.0f

    .line 2164
    .line 2165
    const/high16 v7, 0x43480000    # 200.0f

    .line 2166
    .line 2167
    invoke-virtual {v2, v7, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 2168
    .line 2169
    .line 2170
    const/high16 v5, -0x3d9e0000    # -56.5f

    .line 2171
    .line 2172
    const/high16 v8, -0x3e440000    # -23.5f

    .line 2173
    .line 2174
    invoke-virtual {v2, v13, v12, v5, v8}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2175
    .line 2176
    .line 2177
    const/high16 v6, 0x42f00000    # 120.0f

    .line 2178
    .line 2179
    invoke-virtual {v2, v6, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2180
    .line 2181
    .line 2182
    const/high16 v8, -0x3bf40000    # -560.0f

    .line 2183
    .line 2184
    invoke-virtual {v2, v12, v8}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2185
    .line 2186
    .line 2187
    const/high16 v11, 0x41bc0000    # 23.5f

    .line 2188
    .line 2189
    invoke-virtual {v2, v12, v13, v11, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v2, v7, v6}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2193
    .line 2194
    .line 2195
    const/high16 v5, 0x440c0000    # 560.0f

    .line 2196
    .line 2197
    invoke-virtual {v2, v5, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2198
    .line 2199
    .line 2200
    const/high16 v6, 0x42620000    # 56.5f

    .line 2201
    .line 2202
    const/high16 v9, 0x42040000    # 33.0f

    .line 2203
    .line 2204
    invoke-virtual {v2, v9, v12, v6, v11}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v2, v0, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v2, v12, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2211
    .line 2212
    .line 2213
    const/high16 v8, -0x3e440000    # -23.5f

    .line 2214
    .line 2215
    invoke-virtual {v2, v12, v9, v8, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2216
    .line 2217
    .line 2218
    invoke-virtual {v2, v4, v0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2219
    .line 2220
    .line 2221
    invoke-virtual {v2, v7, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2225
    .line 2226
    .line 2227
    const/high16 v0, 0x428a0000    # 69.0f

    .line 2228
    .line 2229
    const/high16 v5, -0x3d600000    # -80.0f

    .line 2230
    .line 2231
    invoke-virtual {v2, v0, v5}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2232
    .line 2233
    .line 2234
    const/high16 v0, 0x43d30000    # 422.0f

    .line 2235
    .line 2236
    invoke-virtual {v2, v0, v12}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2237
    .line 2238
    .line 2239
    const/high16 v0, -0x3d390000    # -99.5f

    .line 2240
    .line 2241
    const/high16 v5, -0x3d920000    # -59.5f

    .line 2242
    .line 2243
    const/high16 v6, -0x3dd00000    # -44.0f

    .line 2244
    .line 2245
    const/high16 v7, -0x3de40000    # -39.0f

    .line 2246
    .line 2247
    invoke-virtual {v2, v6, v7, v0, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2248
    .line 2249
    .line 2250
    const/high16 v0, 0x442a0000    # 680.0f

    .line 2251
    .line 2252
    const/high16 v14, 0x43f00000    # 480.0f

    .line 2253
    .line 2254
    invoke-virtual {v2, v14, v0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2255
    .line 2256
    .line 2257
    const/high16 v0, -0x3d1f0000    # -112.5f

    .line 2258
    .line 2259
    const/high16 v5, 0x41a40000    # 20.5f

    .line 2260
    .line 2261
    const/high16 v6, -0x3da00000    # -56.0f

    .line 2262
    .line 2263
    invoke-virtual {v2, v6, v12, v0, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2264
    .line 2265
    .line 2266
    const v0, 0x43868000    # 269.0f

    .line 2267
    .line 2268
    .line 2269
    invoke-virtual {v2, v0, v4}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2270
    .line 2271
    .line 2272
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2273
    .line 2274
    .line 2275
    const/high16 v0, 0x43530000    # 211.0f

    .line 2276
    .line 2277
    const/high16 v4, -0x3c600000    # -320.0f

    .line 2278
    .line 2279
    invoke-virtual {v2, v0, v4}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2280
    .line 2281
    .line 2282
    const/high16 v0, -0x3e380000    # -25.0f

    .line 2283
    .line 2284
    const/high16 v4, -0x3dd60000    # -42.5f

    .line 2285
    .line 2286
    const/high16 v5, -0x3e740000    # -17.5f

    .line 2287
    .line 2288
    invoke-virtual {v2, v0, v12, v4, v5}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2289
    .line 2290
    .line 2291
    const/high16 v6, 0x43d20000    # 420.0f

    .line 2292
    .line 2293
    const/high16 v7, 0x43be0000    # 380.0f

    .line 2294
    .line 2295
    invoke-virtual {v2, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2296
    .line 2297
    .line 2298
    const/high16 v6, 0x418c0000    # 17.5f

    .line 2299
    .line 2300
    invoke-virtual {v2, v12, v0, v6, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2301
    .line 2302
    .line 2303
    const/high16 v0, 0x43a00000    # 320.0f

    .line 2304
    .line 2305
    const/high16 v14, 0x43f00000    # 480.0f

    .line 2306
    .line 2307
    invoke-virtual {v2, v14, v0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2308
    .line 2309
    .line 2310
    const/high16 v0, 0x41c80000    # 25.0f

    .line 2311
    .line 2312
    const/high16 v4, 0x422a0000    # 42.5f

    .line 2313
    .line 2314
    invoke-virtual {v2, v0, v12, v4, v6}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2315
    .line 2316
    .line 2317
    const/high16 v6, 0x44070000    # 540.0f

    .line 2318
    .line 2319
    invoke-virtual {v2, v6, v7}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2320
    .line 2321
    .line 2322
    invoke-virtual {v2, v12, v0, v5, v4}, Lokhttp3/Headers$Builder;->quadToRelative(FFFF)V

    .line 2323
    .line 2324
    .line 2325
    const/high16 v0, 0x43dc0000    # 440.0f

    .line 2326
    .line 2327
    invoke-virtual {v2, v14, v0}, Lokhttp3/Headers$Builder;->reflectiveQuadTo(FF)V

    .line 2328
    .line 2329
    .line 2330
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2331
    .line 2332
    .line 2333
    const/high16 v0, 0x41880000    # 17.0f

    .line 2334
    .line 2335
    invoke-virtual {v2, v12, v0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2336
    .line 2337
    .line 2338
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->close()V

    .line 2339
    .line 2340
    .line 2341
    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2342
    .line 2343
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2344
    .line 2345
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2346
    .line 2347
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2348
    .line 2349
    const/4 v7, 0x2

    .line 2350
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2351
    .line 2352
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 2353
    .line 2354
    .line 2355
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v0

    .line 2359
    return-object v0

    .line 2360
    :pswitch_18
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2361
    .line 2362
    const/16 v21, 0x0

    .line 2363
    .line 2364
    const/16 v23, 0x60

    .line 2365
    .line 2366
    const-string v14, "FilledThundermail"

    .line 2367
    .line 2368
    const/high16 v15, 0x41c00000    # 24.0f

    .line 2369
    .line 2370
    const/high16 v16, 0x41c00000    # 24.0f

    .line 2371
    .line 2372
    const/high16 v17, 0x41900000    # 18.0f

    .line 2373
    .line 2374
    const/high16 v18, 0x41900000    # 18.0f

    .line 2375
    .line 2376
    const-wide/16 v19, 0x0

    .line 2377
    .line 2378
    const/16 v22, 0x0

    .line 2379
    .line 2380
    move-object v13, v1

    .line 2381
    invoke-direct/range {v13 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2382
    .line 2383
    .line 2384
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2385
    .line 2386
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->White:J

    .line 2387
    .line 2388
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2389
    .line 2390
    .line 2391
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 2392
    .line 2393
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2394
    .line 2395
    invoke-direct {v0, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 2396
    .line 2397
    .line 2398
    const v2, 0x414fae14    # 12.98f

    .line 2399
    .line 2400
    .line 2401
    const v4, 0x4101c28f    # 8.11f

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 2405
    .line 2406
    .line 2407
    const v2, 0x4099999a    # 4.8f

    .line 2408
    .line 2409
    .line 2410
    const v11, -0x3ff33333    # -2.2f

    .line 2411
    .line 2412
    .line 2413
    invoke-virtual {v0, v11, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2414
    .line 2415
    .line 2416
    const v2, -0x413d70a4    # -0.38f

    .line 2417
    .line 2418
    .line 2419
    const v4, -0x41c7ae14    # -0.18f

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2423
    .line 2424
    .line 2425
    const v5, 0x400ccccd    # 2.2f

    .line 2426
    .line 2427
    .line 2428
    const v6, -0x3f66b852    # -4.79f

    .line 2429
    .line 2430
    .line 2431
    invoke-static {v0, v2, v4, v5, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 2432
    .line 2433
    .line 2434
    const/high16 v2, 0x41040000    # 8.25f

    .line 2435
    .line 2436
    const v4, 0x402851ec    # 2.63f

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 2440
    .line 2441
    .line 2442
    const v2, 0x40adc28f    # 5.43f

    .line 2443
    .line 2444
    .line 2445
    const v4, 0x4110cccd    # 9.05f

    .line 2446
    .line 2447
    .line 2448
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2449
    .line 2450
    .line 2451
    const v2, 0x40951eb8    # 4.66f

    .line 2452
    .line 2453
    .line 2454
    const v5, 0x410b5c29    # 8.71f

    .line 2455
    .line 2456
    .line 2457
    invoke-virtual {v0, v2, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2458
    .line 2459
    .line 2460
    const v2, 0x40ef5c29    # 7.48f

    .line 2461
    .line 2462
    .line 2463
    const v6, 0x40133333    # 2.3f

    .line 2464
    .line 2465
    .line 2466
    invoke-virtual {v0, v2, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2467
    .line 2468
    .line 2469
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 2470
    .line 2471
    .line 2472
    const v13, 0x3ff5c28f    # 1.92f

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {v0, v13, v12}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 2476
    .line 2477
    .line 2478
    const v2, 0x40eb851f    # 7.36f

    .line 2479
    .line 2480
    .line 2481
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2482
    .line 2483
    .line 2484
    const v2, 0x40d28f5c    # 6.58f

    .line 2485
    .line 2486
    .line 2487
    invoke-virtual {v0, v2, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2488
    .line 2489
    .line 2490
    const v2, 0x41166666    # 9.4f

    .line 2491
    .line 2492
    .line 2493
    invoke-virtual {v0, v2, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2494
    .line 2495
    .line 2496
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 2497
    .line 2498
    .line 2499
    iget-object v2, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2500
    .line 2501
    const v4, 0x3e4ccccd    # 0.2f

    .line 2502
    .line 2503
    .line 2504
    const v5, 0x3e4ccccd    # 0.2f

    .line 2505
    .line 2506
    .line 2507
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2508
    .line 2509
    const/4 v7, 0x2

    .line 2510
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2511
    .line 2512
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 2513
    .line 2514
    .line 2515
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2516
    .line 2517
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2518
    .line 2519
    .line 2520
    const v0, 0x4139eb85    # 11.62f

    .line 2521
    .line 2522
    .line 2523
    const v2, 0x3fcf5c29    # 1.62f

    .line 2524
    .line 2525
    .line 2526
    invoke-static {v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v4

    .line 2530
    const v9, 0x3f99999a    # 1.2f

    .line 2531
    .line 2532
    .line 2533
    const v10, 0x3fe66666    # 1.8f

    .line 2534
    .line 2535
    .line 2536
    const v5, 0x3fa66666    # 1.3f

    .line 2537
    .line 2538
    .line 2539
    const v6, 0x3fa66666    # 1.3f

    .line 2540
    .line 2541
    .line 2542
    const/4 v7, 0x0

    .line 2543
    const/4 v8, 0x1

    .line 2544
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 2545
    .line 2546
    .line 2547
    const v0, 0x414ccccd    # 12.8f

    .line 2548
    .line 2549
    .line 2550
    const v2, 0x405d70a4    # 3.46f

    .line 2551
    .line 2552
    .line 2553
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2554
    .line 2555
    .line 2556
    const v0, 0x4134cccd    # 11.3f

    .line 2557
    .line 2558
    .line 2559
    const v2, 0x40d66666    # 6.7f

    .line 2560
    .line 2561
    .line 2562
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2563
    .line 2564
    .line 2565
    const v0, -0x3fd70a3d    # -2.64f

    .line 2566
    .line 2567
    .line 2568
    const v2, 0x40b851ec    # 5.76f

    .line 2569
    .line 2570
    .line 2571
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2572
    .line 2573
    .line 2574
    const v0, -0x409eb852    # -0.88f

    .line 2575
    .line 2576
    .line 2577
    invoke-virtual {v4, v0, v13}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2578
    .line 2579
    .line 2580
    const v0, 0x40c33333    # 6.1f

    .line 2581
    .line 2582
    .line 2583
    const v2, -0x3f566666    # -5.3f

    .line 2584
    .line 2585
    .line 2586
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v4, v11}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 2590
    .line 2591
    .line 2592
    const v0, 0x3f170a3d    # 0.59f

    .line 2593
    .line 2594
    .line 2595
    const v2, -0x405d70a4    # -1.27f

    .line 2596
    .line 2597
    .line 2598
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2599
    .line 2600
    .line 2601
    const v0, 0x40533333    # 3.3f

    .line 2602
    .line 2603
    .line 2604
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 2605
    .line 2606
    .line 2607
    const/high16 v7, 0x41800000    # 16.0f

    .line 2608
    .line 2609
    const v8, 0x410e6666    # 8.9f

    .line 2610
    .line 2611
    .line 2612
    const v5, 0x3f2147ae    # 0.63f

    .line 2613
    .line 2614
    .line 2615
    const v6, 0x3f2147ae    # 0.63f

    .line 2616
    .line 2617
    .line 2618
    const/4 v9, 0x1

    .line 2619
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 2620
    .line 2621
    .line 2622
    const v0, -0x3ef91eb8    # -8.43f

    .line 2623
    .line 2624
    .line 2625
    const v2, 0x40eae148    # 7.34f

    .line 2626
    .line 2627
    .line 2628
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2629
    .line 2630
    .line 2631
    const/high16 v9, -0x40400000    # -1.5f

    .line 2632
    .line 2633
    const v10, -0x406f5c29    # -1.13f

    .line 2634
    .line 2635
    .line 2636
    const v5, -0x40b851ec    # -0.78f

    .line 2637
    .line 2638
    .line 2639
    const v6, 0x3f2e147b    # 0.68f

    .line 2640
    .line 2641
    .line 2642
    const v7, -0x4007ae14    # -1.94f

    .line 2643
    .line 2644
    .line 2645
    const v8, -0x41bd70a4    # -0.19f

    .line 2646
    .line 2647
    .line 2648
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 2649
    .line 2650
    .line 2651
    const v0, 0x41066666    # 8.4f

    .line 2652
    .line 2653
    .line 2654
    const v2, 0x411fd70a    # 9.99f

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2658
    .line 2659
    .line 2660
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 2661
    .line 2662
    const v2, -0x3f8b851f    # -3.82f

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2666
    .line 2667
    .line 2668
    const v0, 0x3fbeb852    # 1.49f

    .line 2669
    .line 2670
    .line 2671
    const v2, -0x3fb0a3d7    # -3.24f

    .line 2672
    .line 2673
    .line 2674
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2675
    .line 2676
    .line 2677
    const v0, 0x4039999a    # 2.9f

    .line 2678
    .line 2679
    .line 2680
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 2681
    .line 2682
    .line 2683
    const v0, -0x435c28f6    # -0.02f

    .line 2684
    .line 2685
    .line 2686
    const v2, -0x43dc28f6    # -0.01f

    .line 2687
    .line 2688
    .line 2689
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2690
    .line 2691
    .line 2692
    const v0, 0x40e0a3d7    # 7.02f

    .line 2693
    .line 2694
    .line 2695
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 2696
    .line 2697
    .line 2698
    const v9, -0x408f5c29    # -0.94f

    .line 2699
    .line 2700
    .line 2701
    const v10, 0x3f19999a    # 0.6f

    .line 2702
    .line 2703
    .line 2704
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2705
    .line 2706
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2707
    .line 2708
    const/4 v7, 0x0

    .line 2709
    const/4 v8, 0x0

    .line 2710
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 2711
    .line 2712
    .line 2713
    const v0, 0x40c23d71    # 6.07f

    .line 2714
    .line 2715
    .line 2716
    const v2, 0x4061eb85    # 3.53f

    .line 2717
    .line 2718
    .line 2719
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2720
    .line 2721
    .line 2722
    const v0, 0x408a3d71    # 4.32f

    .line 2723
    .line 2724
    .line 2725
    const v2, 0x40f9999a    # 7.8f

    .line 2726
    .line 2727
    .line 2728
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2729
    .line 2730
    .line 2731
    const v0, 0x406851ec    # 3.63f

    .line 2732
    .line 2733
    .line 2734
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 2735
    .line 2736
    .line 2737
    const v0, 0x40ebd70a    # 7.37f

    .line 2738
    .line 2739
    .line 2740
    const v2, 0x41111eb8    # 9.07f

    .line 2741
    .line 2742
    .line 2743
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2744
    .line 2745
    .line 2746
    const/high16 v0, -0x3f800000    # -4.0f

    .line 2747
    .line 2748
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 2749
    .line 2750
    .line 2751
    const v7, 0x40333333    # 2.8f

    .line 2752
    .line 2753
    .line 2754
    const v8, 0x41033333    # 8.2f

    .line 2755
    .line 2756
    .line 2757
    const v5, 0x3f2147ae    # 0.63f

    .line 2758
    .line 2759
    .line 2760
    const v6, 0x3f2147ae    # 0.63f

    .line 2761
    .line 2762
    .line 2763
    const/4 v9, 0x1

    .line 2764
    invoke-virtual/range {v4 .. v9}, Lokhttp3/Headers$Builder;->arcTo(FFFFZ)V

    .line 2765
    .line 2766
    .line 2767
    const v0, 0x40066666    # 2.1f

    .line 2768
    .line 2769
    .line 2770
    const v2, -0x3f5b3333    # -5.15f

    .line 2771
    .line 2772
    .line 2773
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2774
    .line 2775
    .line 2776
    const v0, 0x3d23d70a    # 0.04f

    .line 2777
    .line 2778
    .line 2779
    const v2, -0x425c28f6    # -0.08f

    .line 2780
    .line 2781
    .line 2782
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 2783
    .line 2784
    .line 2785
    const v9, 0x40066666    # 2.1f

    .line 2786
    .line 2787
    .line 2788
    const v10, -0x40533333    # -1.35f

    .line 2789
    .line 2790
    .line 2791
    const v5, 0x40133333    # 2.3f

    .line 2792
    .line 2793
    .line 2794
    const v6, 0x40133333    # 2.3f

    .line 2795
    .line 2796
    .line 2797
    const/4 v7, 0x0

    .line 2798
    const/4 v8, 0x1

    .line 2799
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 2800
    .line 2801
    .line 2802
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 2803
    .line 2804
    .line 2805
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2806
    .line 2807
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2808
    .line 2809
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2810
    .line 2811
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2812
    .line 2813
    const/4 v7, 0x2

    .line 2814
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2815
    .line 2816
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 2817
    .line 2818
    .line 2819
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2820
    .line 2821
    .line 2822
    move-result-object v0

    .line 2823
    return-object v0

    .line 2824
    :pswitch_19
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2825
    .line 2826
    const/16 v20, 0x0

    .line 2827
    .line 2828
    const/16 v22, 0x60

    .line 2829
    .line 2830
    const-string v13, "FilledStarIcon"

    .line 2831
    .line 2832
    const/high16 v14, 0x41c00000    # 24.0f

    .line 2833
    .line 2834
    const/high16 v15, 0x41c00000    # 24.0f

    .line 2835
    .line 2836
    const/high16 v16, 0x41c00000    # 24.0f

    .line 2837
    .line 2838
    const/high16 v17, 0x41c00000    # 24.0f

    .line 2839
    .line 2840
    const-wide/16 v18, 0x0

    .line 2841
    .line 2842
    const/16 v21, 0x0

    .line 2843
    .line 2844
    move-object v12, v1

    .line 2845
    invoke-direct/range {v12 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2846
    .line 2847
    .line 2848
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2849
    .line 2850
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2851
    .line 2852
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2853
    .line 2854
    .line 2855
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 2856
    .line 2857
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2858
    .line 2859
    invoke-direct {v0, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 2860
    .line 2861
    .line 2862
    const/high16 v2, 0x41400000    # 12.0f

    .line 2863
    .line 2864
    const v4, 0x418e28f6    # 17.77f

    .line 2865
    .line 2866
    .line 2867
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 2868
    .line 2869
    .line 2870
    const v5, 0x419170a4    # 18.18f

    .line 2871
    .line 2872
    .line 2873
    const/high16 v6, 0x41ac0000    # 21.5f

    .line 2874
    .line 2875
    invoke-virtual {v0, v5, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2876
    .line 2877
    .line 2878
    const v5, 0x418451ec    # 16.54f

    .line 2879
    .line 2880
    .line 2881
    const v7, 0x4167851f    # 14.47f

    .line 2882
    .line 2883
    .line 2884
    invoke-virtual {v0, v5, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2885
    .line 2886
    .line 2887
    const/high16 v5, 0x41b00000    # 22.0f

    .line 2888
    .line 2889
    const v8, 0x411bd70a    # 9.74f

    .line 2890
    .line 2891
    .line 2892
    invoke-virtual {v0, v5, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2893
    .line 2894
    .line 2895
    const v5, 0x416cf5c3    # 14.81f

    .line 2896
    .line 2897
    .line 2898
    const v9, 0x4112147b    # 9.13f

    .line 2899
    .line 2900
    .line 2901
    invoke-virtual {v0, v5, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2902
    .line 2903
    .line 2904
    const/high16 v5, 0x40200000    # 2.5f

    .line 2905
    .line 2906
    invoke-virtual {v0, v2, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2907
    .line 2908
    .line 2909
    const v5, 0x41130a3d    # 9.19f

    .line 2910
    .line 2911
    .line 2912
    invoke-virtual {v0, v5, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2913
    .line 2914
    .line 2915
    const/high16 v5, 0x40000000    # 2.0f

    .line 2916
    .line 2917
    invoke-virtual {v0, v5, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2918
    .line 2919
    .line 2920
    const v5, 0x40eeb852    # 7.46f

    .line 2921
    .line 2922
    .line 2923
    invoke-virtual {v0, v5, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2924
    .line 2925
    .line 2926
    const v5, 0x40ba3d71    # 5.82f

    .line 2927
    .line 2928
    .line 2929
    invoke-virtual {v0, v5, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2930
    .line 2931
    .line 2932
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 2933
    .line 2934
    .line 2935
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 2936
    .line 2937
    .line 2938
    iget-object v2, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2939
    .line 2940
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2941
    .line 2942
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2943
    .line 2944
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2945
    .line 2946
    const/4 v7, 0x2

    .line 2947
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2948
    .line 2949
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 2950
    .line 2951
    .line 2952
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2953
    .line 2954
    .line 2955
    move-result-object v0

    .line 2956
    return-object v0

    .line 2957
    :pswitch_1a
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2958
    .line 2959
    const/4 v9, 0x0

    .line 2960
    const/16 v11, 0x60

    .line 2961
    .line 2962
    const-string v2, "FilledDotIcon"

    .line 2963
    .line 2964
    const/high16 v3, 0x41c00000    # 24.0f

    .line 2965
    .line 2966
    const/high16 v4, 0x41c00000    # 24.0f

    .line 2967
    .line 2968
    const/high16 v5, 0x41c00000    # 24.0f

    .line 2969
    .line 2970
    const/high16 v6, 0x41c00000    # 24.0f

    .line 2971
    .line 2972
    const-wide/16 v7, 0x0

    .line 2973
    .line 2974
    const/4 v10, 0x0

    .line 2975
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2976
    .line 2977
    .line 2978
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2979
    .line 2980
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2981
    .line 2982
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2983
    .line 2984
    .line 2985
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 2986
    .line 2987
    new-instance v2, Ljava/util/ArrayList;

    .line 2988
    .line 2989
    const/16 v0, 0x20

    .line 2990
    .line 2991
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2992
    .line 2993
    .line 2994
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 2995
    .line 2996
    const/high16 v4, 0x41400000    # 12.0f

    .line 2997
    .line 2998
    const/high16 v5, 0x40c00000    # 6.0f

    .line 2999
    .line 3000
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 3001
    .line 3002
    .line 3003
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    .line 3005
    .line 3006
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 3007
    .line 3008
    const v7, -0x3fac28f6    # -3.31f

    .line 3009
    .line 3010
    .line 3011
    const/4 v8, 0x0

    .line 3012
    const/high16 v9, -0x3f400000    # -6.0f

    .line 3013
    .line 3014
    const v10, 0x402c28f6    # 2.69f

    .line 3015
    .line 3016
    .line 3017
    const/high16 v11, -0x3f400000    # -6.0f

    .line 3018
    .line 3019
    const/high16 v12, 0x40c00000    # 6.0f

    .line 3020
    .line 3021
    invoke-direct/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 3022
    .line 3023
    .line 3024
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3025
    .line 3026
    .line 3027
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 3028
    .line 3029
    const v4, 0x402c28f6    # 2.69f

    .line 3030
    .line 3031
    .line 3032
    invoke-direct {v0, v4, v5, v5, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 3033
    .line 3034
    .line 3035
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3036
    .line 3037
    .line 3038
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 3039
    .line 3040
    const v4, -0x3fd3d70a    # -2.69f

    .line 3041
    .line 3042
    .line 3043
    const/high16 v6, -0x3f400000    # -6.0f

    .line 3044
    .line 3045
    invoke-direct {v0, v5, v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 3046
    .line 3047
    .line 3048
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3049
    .line 3050
    .line 3051
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 3052
    .line 3053
    invoke-direct {v0, v4, v6, v6, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 3054
    .line 3055
    .line 3056
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    .line 3058
    .line 3059
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 3060
    .line 3061
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    .line 3063
    .line 3064
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3065
    .line 3066
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3067
    .line 3068
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3069
    .line 3070
    const/4 v7, 0x2

    .line 3071
    const/high16 v8, 0x3f800000    # 1.0f

    .line 3072
    .line 3073
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 3074
    .line 3075
    .line 3076
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 3077
    .line 3078
    .line 3079
    move-result-object v0

    .line 3080
    return-object v0

    .line 3081
    :pswitch_1b
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 3082
    .line 3083
    const/16 v20, 0x0

    .line 3084
    .line 3085
    const/16 v22, 0x60

    .line 3086
    .line 3087
    const/16 v21, 0x0

    .line 3088
    .line 3089
    const/high16 v16, 0x41c00000    # 24.0f

    .line 3090
    .line 3091
    const/high16 v17, 0x41c00000    # 24.0f

    .line 3092
    .line 3093
    const/high16 v14, 0x41c00000    # 24.0f

    .line 3094
    .line 3095
    const/high16 v15, 0x41c00000    # 24.0f

    .line 3096
    .line 3097
    const-wide/16 v18, 0x0

    .line 3098
    .line 3099
    const-string v13, "DualToneWarningIcon"

    .line 3100
    .line 3101
    move-object v12, v1

    .line 3102
    invoke-direct/range {v12 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 3103
    .line 3104
    .line 3105
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 3106
    .line 3107
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 3108
    .line 3109
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 3110
    .line 3111
    .line 3112
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 3113
    .line 3114
    new-instance v2, Ljava/util/ArrayList;

    .line 3115
    .line 3116
    const/16 v0, 0x20

    .line 3117
    .line 3118
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3119
    .line 3120
    .line 3121
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 3122
    .line 3123
    const v4, 0x41a1999a    # 20.2f

    .line 3124
    .line 3125
    .line 3126
    const/high16 v5, 0x41a20000    # 20.25f

    .line 3127
    .line 3128
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 3129
    .line 3130
    .line 3131
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    .line 3133
    .line 3134
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 3135
    .line 3136
    const v4, 0x40733333    # 3.8f

    .line 3137
    .line 3138
    .line 3139
    invoke-direct {v0, v4}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 3140
    .line 3141
    .line 3142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    .line 3144
    .line 3145
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 3146
    .line 3147
    const/high16 v13, 0x3fc00000    # 1.5f

    .line 3148
    .line 3149
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 3150
    .line 3151
    const/4 v15, 0x0

    .line 3152
    const/16 v16, 0x0

    .line 3153
    .line 3154
    const/16 v17, 0x1

    .line 3155
    .line 3156
    const v18, -0x40533333    # -1.35f

    .line 3157
    .line 3158
    .line 3159
    const v19, -0x3ff0a3d7    # -2.24f

    .line 3160
    .line 3161
    .line 3162
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 3163
    .line 3164
    .line 3165
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    .line 3167
    .line 3168
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 3169
    .line 3170
    const v4, 0x41033333    # 8.2f

    .line 3171
    .line 3172
    .line 3173
    const v5, -0x3e9c28f6    # -14.24f

    .line 3174
    .line 3175
    .line 3176
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 3177
    .line 3178
    .line 3179
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3180
    .line 3181
    .line 3182
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 3183
    .line 3184
    const v13, 0x3fc8f5c3    # 1.57f

    .line 3185
    .line 3186
    .line 3187
    const v14, 0x3fc8f5c3    # 1.57f

    .line 3188
    .line 3189
    .line 3190
    const v18, 0x402ccccd    # 2.7f

    .line 3191
    .line 3192
    .line 3193
    const/16 v19, 0x0

    .line 3194
    .line 3195
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 3196
    .line 3197
    .line 3198
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3199
    .line 3200
    .line 3201
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 3202
    .line 3203
    const v5, 0x4163d70a    # 14.24f

    .line 3204
    .line 3205
    .line 3206
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 3207
    .line 3208
    .line 3209
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3210
    .line 3211
    .line 3212
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 3213
    .line 3214
    const/high16 v13, 0x3fc00000    # 1.5f

    .line 3215
    .line 3216
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 3217
    .line 3218
    const v18, -0x40533333    # -1.35f

    .line 3219
    .line 3220
    .line 3221
    const v19, 0x400f5c29    # 2.24f

    .line 3222
    .line 3223
    .line 3224
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 3225
    .line 3226
    .line 3227
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3228
    .line 3229
    .line 3230
    const v4, 0x3e4ccccd    # 0.2f

    .line 3231
    .line 3232
    .line 3233
    const v5, 0x3e4ccccd    # 0.2f

    .line 3234
    .line 3235
    .line 3236
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3237
    .line 3238
    const/4 v7, 0x2

    .line 3239
    const/high16 v8, 0x3f800000    # 1.0f

    .line 3240
    .line 3241
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 3242
    .line 3243
    .line 3244
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 3245
    .line 3246
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 3247
    .line 3248
    .line 3249
    new-instance v12, Lokhttp3/Headers$Builder;

    .line 3250
    .line 3251
    invoke-direct {v12, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 3252
    .line 3253
    .line 3254
    const v0, 0x41b1999a    # 22.2f

    .line 3255
    .line 3256
    .line 3257
    const v2, 0x418d0a3d    # 17.63f

    .line 3258
    .line 3259
    .line 3260
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 3261
    .line 3262
    .line 3263
    const/high16 v0, 0x41600000    # 14.0f

    .line 3264
    .line 3265
    const v2, 0x4059999a    # 3.4f

    .line 3266
    .line 3267
    .line 3268
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 3269
    .line 3270
    .line 3271
    const/high16 v17, -0x3f800000    # -4.0f

    .line 3272
    .line 3273
    const/16 v18, 0x0

    .line 3274
    .line 3275
    const v13, 0x40147ae1    # 2.32f

    .line 3276
    .line 3277
    .line 3278
    const v14, 0x40147ae1    # 2.32f

    .line 3279
    .line 3280
    .line 3281
    const/4 v15, 0x0

    .line 3282
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3283
    .line 3284
    .line 3285
    const v0, 0x3fe66666    # 1.8f

    .line 3286
    .line 3287
    .line 3288
    const v2, 0x418d0a3d    # 17.63f

    .line 3289
    .line 3290
    .line 3291
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 3292
    .line 3293
    .line 3294
    const/16 v17, 0x0

    .line 3295
    .line 3296
    const v18, 0x400eb852    # 2.23f

    .line 3297
    .line 3298
    .line 3299
    const v13, 0x400ccccd    # 2.2f

    .line 3300
    .line 3301
    .line 3302
    const v14, 0x400ccccd    # 2.2f

    .line 3303
    .line 3304
    .line 3305
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3306
    .line 3307
    .line 3308
    const/high16 v17, 0x40000000    # 2.0f

    .line 3309
    .line 3310
    const v18, 0x3f91eb85    # 1.14f

    .line 3311
    .line 3312
    .line 3313
    const v13, 0x40133333    # 2.3f

    .line 3314
    .line 3315
    .line 3316
    const v14, 0x40133333    # 2.3f

    .line 3317
    .line 3318
    .line 3319
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3320
    .line 3321
    .line 3322
    const v0, 0x41833333    # 16.4f

    .line 3323
    .line 3324
    .line 3325
    invoke-virtual {v12, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 3326
    .line 3327
    .line 3328
    const v17, 0x40133333    # 2.3f

    .line 3329
    .line 3330
    .line 3331
    const/high16 v18, -0x3ff00000    # -2.25f

    .line 3332
    .line 3333
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3334
    .line 3335
    .line 3336
    const v17, -0x41666666    # -0.3f

    .line 3337
    .line 3338
    .line 3339
    const v18, -0x4070a3d7    # -1.12f

    .line 3340
    .line 3341
    .line 3342
    const/high16 v13, 0x40000000    # 2.0f

    .line 3343
    .line 3344
    const/high16 v14, 0x40000000    # 2.0f

    .line 3345
    .line 3346
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3347
    .line 3348
    .line 3349
    const v0, -0x4059999a    # -1.3f

    .line 3350
    .line 3351
    .line 3352
    const v2, 0x3fbd70a4    # 1.48f

    .line 3353
    .line 3354
    .line 3355
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 3356
    .line 3357
    .line 3358
    const v17, -0x40cccccd    # -0.7f

    .line 3359
    .line 3360
    .line 3361
    const v18, 0x3ec7ae14    # 0.39f

    .line 3362
    .line 3363
    .line 3364
    const v13, 0x3f4ccccd    # 0.8f

    .line 3365
    .line 3366
    .line 3367
    const v14, 0x3f4ccccd    # 0.8f

    .line 3368
    .line 3369
    .line 3370
    const/16 v16, 0x1

    .line 3371
    .line 3372
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3373
    .line 3374
    .line 3375
    const v0, 0x40733333    # 3.8f

    .line 3376
    .line 3377
    .line 3378
    invoke-virtual {v12, v0}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 3379
    .line 3380
    .line 3381
    const v18, -0x41333333    # -0.4f

    .line 3382
    .line 3383
    .line 3384
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3385
    .line 3386
    .line 3387
    const/16 v17, 0x0

    .line 3388
    .line 3389
    const v18, -0x40c7ae14    # -0.72f

    .line 3390
    .line 3391
    .line 3392
    const v13, 0x3f333333    # 0.7f

    .line 3393
    .line 3394
    .line 3395
    const v14, 0x3f333333    # 0.7f

    .line 3396
    .line 3397
    .line 3398
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3399
    .line 3400
    .line 3401
    const v0, 0x41033333    # 8.2f

    .line 3402
    .line 3403
    .line 3404
    const v2, -0x3e9c28f6    # -14.24f

    .line 3405
    .line 3406
    .line 3407
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 3408
    .line 3409
    .line 3410
    const v17, 0x3fb33333    # 1.4f

    .line 3411
    .line 3412
    .line 3413
    const/16 v18, 0x0

    .line 3414
    .line 3415
    const v13, 0x3f51eb85    # 0.82f

    .line 3416
    .line 3417
    .line 3418
    const v14, 0x3f51eb85    # 0.82f

    .line 3419
    .line 3420
    .line 3421
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3422
    .line 3423
    .line 3424
    const v2, 0x4163d70a    # 14.24f

    .line 3425
    .line 3426
    .line 3427
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 3428
    .line 3429
    .line 3430
    const/16 v17, 0x0

    .line 3431
    .line 3432
    const v18, 0x3f3ae148    # 0.73f

    .line 3433
    .line 3434
    .line 3435
    const v13, 0x3f333333    # 0.7f

    .line 3436
    .line 3437
    .line 3438
    const v14, 0x3f333333    # 0.7f

    .line 3439
    .line 3440
    .line 3441
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3442
    .line 3443
    .line 3444
    const v0, -0x3ee5999a    # -9.65f

    .line 3445
    .line 3446
    .line 3447
    const v2, -0x3f4c7ae1    # -5.61f

    .line 3448
    .line 3449
    .line 3450
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 3451
    .line 3452
    .line 3453
    const/high16 v0, 0x411c0000    # 9.75f

    .line 3454
    .line 3455
    invoke-virtual {v12, v0}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 3456
    .line 3457
    .line 3458
    const/high16 v17, 0x3fc00000    # 1.5f

    .line 3459
    .line 3460
    const/16 v18, 0x0

    .line 3461
    .line 3462
    const/high16 v13, 0x3f400000    # 0.75f

    .line 3463
    .line 3464
    const/high16 v14, 0x3f400000    # 0.75f

    .line 3465
    .line 3466
    const/4 v15, 0x1

    .line 3467
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3468
    .line 3469
    .line 3470
    const/high16 v0, 0x40700000    # 3.75f

    .line 3471
    .line 3472
    invoke-virtual {v12, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 3473
    .line 3474
    .line 3475
    const/high16 v17, -0x40400000    # -1.5f

    .line 3476
    .line 3477
    const/4 v15, 0x0

    .line 3478
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3479
    .line 3480
    .line 3481
    const v0, 0x3ff0a3d7    # 1.88f

    .line 3482
    .line 3483
    .line 3484
    const v2, 0x405851ec    # 3.38f

    .line 3485
    .line 3486
    .line 3487
    invoke-virtual {v12, v0, v2}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 3488
    .line 3489
    .line 3490
    const v17, -0x3fef5c29    # -2.26f

    .line 3491
    .line 3492
    .line 3493
    const v13, 0x3f90a3d7    # 1.13f

    .line 3494
    .line 3495
    .line 3496
    const v14, 0x3f90a3d7    # 1.13f

    .line 3497
    .line 3498
    .line 3499
    const/4 v15, 0x1

    .line 3500
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3501
    .line 3502
    .line 3503
    const v17, 0x4010a3d7    # 2.26f

    .line 3504
    .line 3505
    .line 3506
    const/4 v15, 0x0

    .line 3507
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->arcToRelative(FFZZFF)V

    .line 3508
    .line 3509
    .line 3510
    iget-object v2, v12, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 3511
    .line 3512
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3513
    .line 3514
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3515
    .line 3516
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 3517
    .line 3518
    .line 3519
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 3520
    .line 3521
    .line 3522
    move-result-object v0

    .line 3523
    return-object v0

    .line 3524
    :pswitch_1c
    const-string v0, "Could not parse long"

    .line 3525
    .line 3526
    return-object v0

    .line 3527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
