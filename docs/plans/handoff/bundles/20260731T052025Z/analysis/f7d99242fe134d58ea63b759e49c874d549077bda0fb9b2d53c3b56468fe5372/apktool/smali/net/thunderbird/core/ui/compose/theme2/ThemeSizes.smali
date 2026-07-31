.class public final Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    instance-of p0, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    const/high16 p0, 0x41000000    # 8.0f

    .line 12
    .line 13
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    const/high16 p0, 0x41800000    # 16.0f

    .line 22
    .line 23
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_3
    const/high16 p1, 0x42000000    # 32.0f

    .line 32
    .line 33
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_4
    const/high16 v0, 0x42800000    # 64.0f

    .line 42
    .line 43
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_5
    const/high16 v1, 0x43000000    # 128.0f

    .line 52
    .line 53
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_6
    const/high16 v1, 0x43800000    # 256.0f

    .line 62
    .line 63
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_7

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_7
    const/high16 v1, 0x43c00000    # 384.0f

    .line 71
    .line 72
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_8

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_8
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_9

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_9
    const/high16 p0, 0x41c00000    # 24.0f

    .line 87
    .line 88
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_a

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_a
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_b

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_b
    const/high16 p0, 0x42400000    # 48.0f

    .line 103
    .line 104
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_c

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_c
    const/high16 p1, 0x41400000    # 12.0f

    .line 112
    .line 113
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_d

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_d
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_e

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_e
    const/high16 p1, 0x42a00000    # 80.0f

    .line 128
    .line 129
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_f

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_f
    const/high16 p1, 0x42900000    # 72.0f

    .line 137
    .line 138
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_10

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_10
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_11

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_11
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_12

    .line 157
    .line 158
    :goto_0
    const/4 p0, 0x0

    .line 159
    return p0

    .line 160
    :cond_12
    :goto_1
    const/4 p0, 0x1

    .line 161
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/high16 p0, 0x41000000    # 8.0f

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x1f

    .line 8
    .line 9
    mul-int/2addr p0, v0

    .line 10
    const/high16 v1, 0x41800000    # 16.0f

    .line 11
    .line 12
    invoke-static {p0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/high16 v2, 0x42000000    # 32.0f

    .line 17
    .line 18
    invoke-static {p0, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/high16 v3, 0x42800000    # 64.0f

    .line 23
    .line 24
    invoke-static {p0, v3, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/high16 v4, 0x43000000    # 128.0f

    .line 29
    .line 30
    invoke-static {p0, v4, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/high16 v4, 0x43800000    # 256.0f

    .line 35
    .line 36
    invoke-static {p0, v4, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/high16 v4, 0x43c00000    # 384.0f

    .line 41
    .line 42
    invoke-static {p0, v4, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/high16 v1, 0x41c00000    # 24.0f

    .line 51
    .line 52
    invoke-static {p0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/high16 v1, 0x42400000    # 48.0f

    .line 61
    .line 62
    invoke-static {p0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const/high16 v2, 0x41400000    # 12.0f

    .line 67
    .line 68
    invoke-static {p0, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {p0, v3, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/high16 v2, 0x42a00000    # 80.0f

    .line 77
    .line 78
    invoke-static {p0, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const/high16 v2, 0x42900000    # 72.0f

    .line 83
    .line 84
    invoke-static {p0, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {p0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, p0

    .line 97
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    .line 1
    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x41800000    # 16.0f

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/high16 v3, 0x42000000    # 32.0f

    .line 14
    .line 15
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/high16 v5, 0x42800000    # 64.0f

    .line 20
    .line 21
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/high16 v7, 0x43000000    # 128.0f

    .line 26
    .line 27
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/high16 v8, 0x43800000    # 256.0f

    .line 32
    .line 33
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/high16 v9, 0x43c00000    # 384.0f

    .line 38
    .line 39
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/high16 v10, 0x41c00000    # 24.0f

    .line 48
    .line 49
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/high16 v11, 0x42400000    # 48.0f

    .line 58
    .line 59
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    const/high16 v13, 0x41400000    # 12.0f

    .line 64
    .line 65
    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/high16 v14, 0x42a00000    # 80.0f

    .line 74
    .line 75
    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    const/high16 v15, 0x42900000    # 72.0f

    .line 80
    .line 81
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    move/from16 p0, v11

    .line 86
    .line 87
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    move-object/from16 v16, v11

    .line 92
    .line 93
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    move-object/from16 p0, v11

    .line 98
    .line 99
    const-string v11, ", small="

    .line 100
    .line 101
    move-object/from16 v17, v15

    .line 102
    .line 103
    const-string v15, ", medium="

    .line 104
    .line 105
    move-object/from16 v18, v5

    .line 106
    .line 107
    const-string v5, "ThemeSizes(smaller="

    .line 108
    .line 109
    invoke-static {v5, v0, v11, v2, v15}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v2, ", large="

    .line 114
    .line 115
    const-string v5, ", larger="

    .line 116
    .line 117
    invoke-static {v0, v4, v2, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v2, ", huge="

    .line 121
    .line 122
    const-string v4, ", huger="

    .line 123
    .line 124
    invoke-static {v0, v7, v2, v8, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v2, ", iconSmall="

    .line 128
    .line 129
    const-string v4, ", icon="

    .line 130
    .line 131
    invoke-static {v0, v9, v2, v1, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, ", iconLarge="

    .line 135
    .line 136
    const-string v2, ", iconAvatar="

    .line 137
    .line 138
    invoke-static {v0, v10, v1, v3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, ", badge="

    .line 142
    .line 143
    const-string v2, ", topBarHeight="

    .line 144
    .line 145
    invoke-static {v0, v12, v1, v13, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, ", bottomBarHeight="

    .line 149
    .line 150
    const-string v2, ", bottomBarHeightWithFab="

    .line 151
    .line 152
    move-object/from16 v3, v18

    .line 153
    .line 154
    invoke-static {v0, v3, v1, v14, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v1, ", bannerGlobalHeight="

    .line 158
    .line 159
    const-string v2, ", minTouchTarget="

    .line 160
    .line 161
    move-object/from16 v4, v16

    .line 162
    .line 163
    move-object/from16 v3, v17

    .line 164
    .line 165
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v1, ")"

    .line 169
    .line 170
    move-object/from16 v2, p0

    .line 171
    .line 172
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0
.end method
