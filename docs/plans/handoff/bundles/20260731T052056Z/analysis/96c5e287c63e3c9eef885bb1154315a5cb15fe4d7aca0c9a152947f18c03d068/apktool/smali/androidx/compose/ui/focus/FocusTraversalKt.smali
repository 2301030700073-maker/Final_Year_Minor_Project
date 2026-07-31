.class public abstract Landroidx/compose/ui/focus/FocusTraversalKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v0, v6, :cond_3

    .line 19
    .line 20
    if-eq v0, v5, :cond_2

    .line 21
    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_8

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p0, v4

    .line 52
    :goto_0
    if-eqz p0, :cond_7

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 56
    .line 57
    .line 58
    return v4

    .line 59
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v7, "ActiveParent must have a focusedChild"

    .line 69
    .line 70
    if-eqz v0, :cond_9

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    aget v1, v1, v8

    .line 81
    .line 82
    if-eq v1, v6, :cond_6

    .line 83
    .line 84
    if-eq v1, v5, :cond_5

    .line 85
    .line 86
    if-eq v1, v3, :cond_5

    .line 87
    .line 88
    if-eq v1, v2, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 91
    .line 92
    .line 93
    return v4

    .line 94
    :cond_4
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v4

    .line 98
    :cond_5
    invoke-static {p0, v0, v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0

    .line 103
    :cond_6
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_8

    .line 108
    .line 109
    invoke-static {p0, v0, v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 120
    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_7

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    return v4

    .line 137
    :cond_8
    :goto_1
    return v6

    .line 138
    :cond_9
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v4
.end method

.method public static final beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget v5, v2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 14
    .line 15
    iget v6, v2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 16
    .line 17
    iget v7, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 18
    .line 19
    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 20
    .line 21
    iget v8, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 22
    .line 23
    iget v9, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 24
    .line 25
    iget v10, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 26
    .line 27
    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    if-nez v4, :cond_13

    .line 31
    .line 32
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    const-string v4, "This function should only be used for 2-D focus search"

    .line 41
    .line 42
    const/4 v13, 0x6

    .line 43
    const/4 v14, 0x5

    .line 44
    const/4 v15, 0x4

    .line 45
    const/16 p0, 0x1

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-ne v3, v0, :cond_1

    .line 49
    .line 50
    cmpl-float v16, v11, v2

    .line 51
    .line 52
    if-ltz v16, :cond_11

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-ne v3, v15, :cond_2

    .line 56
    .line 57
    cmpg-float v16, v10, v7

    .line 58
    .line 59
    if-gtz v16, :cond_11

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-ne v3, v14, :cond_3

    .line 63
    .line 64
    cmpl-float v16, v9, v6

    .line 65
    .line 66
    if-ltz v16, :cond_11

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-ne v3, v13, :cond_12

    .line 70
    .line 71
    cmpg-float v16, v8, v5

    .line 72
    .line 73
    if-gtz v16, :cond_11

    .line 74
    .line 75
    :goto_0
    if-ne v3, v0, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    if-ne v3, v15, :cond_5

    .line 79
    .line 80
    :goto_1
    return p0

    .line 81
    :cond_5
    if-ne v3, v0, :cond_6

    .line 82
    .line 83
    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 84
    .line 85
    sub-float v1, v11, v1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    if-ne v3, v15, :cond_7

    .line 89
    .line 90
    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 91
    .line 92
    sub-float/2addr v1, v10

    .line 93
    goto :goto_2

    .line 94
    :cond_7
    if-ne v3, v14, :cond_8

    .line 95
    .line 96
    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 97
    .line 98
    sub-float v1, v9, v1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_8
    if-ne v3, v13, :cond_10

    .line 102
    .line 103
    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 104
    .line 105
    sub-float/2addr v1, v8

    .line 106
    :goto_2
    const/16 v16, 0x0

    .line 107
    .line 108
    cmpg-float v17, v1, v16

    .line 109
    .line 110
    if-gez v17, :cond_9

    .line 111
    .line 112
    move/from16 v1, v16

    .line 113
    .line 114
    :cond_9
    if-ne v3, v0, :cond_a

    .line 115
    .line 116
    sub-float/2addr v11, v7

    .line 117
    goto :goto_3

    .line 118
    :cond_a
    if-ne v3, v15, :cond_b

    .line 119
    .line 120
    sub-float v11, v2, v10

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_b
    if-ne v3, v14, :cond_c

    .line 124
    .line 125
    sub-float v11, v9, v5

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_c
    if-ne v3, v13, :cond_f

    .line 129
    .line 130
    sub-float v11, v6, v8

    .line 131
    .line 132
    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    .line 134
    cmpg-float v2, v11, v0

    .line 135
    .line 136
    if-gez v2, :cond_d

    .line 137
    .line 138
    move v11, v0

    .line 139
    :cond_d
    cmpg-float v0, v1, v11

    .line 140
    .line 141
    if-gez v0, :cond_e

    .line 142
    .line 143
    return p0

    .line 144
    :cond_e
    return v12

    .line 145
    :cond_f
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return v12

    .line 149
    :cond_10
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v12

    .line 153
    :cond_11
    return p0

    .line 154
    :cond_12
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_13
    :goto_4
    return v12
.end method

.method public static final beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x4

    .line 8
    if-ne p0, v0, :cond_2

    .line 9
    .line 10
    :goto_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 11
    .line 12
    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 13
    .line 14
    cmpl-float p0, p0, v0

    .line 15
    .line 16
    if-lez p0, :cond_1

    .line 17
    .line 18
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 19
    .line 20
    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 21
    .line 22
    cmpg-float p0, p0, p1

    .line 23
    .line 24
    if-gez p0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    const/4 v0, 0x5

    .line 29
    if-ne p0, v0, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v0, 0x6

    .line 33
    if-ne p0, v0, :cond_5

    .line 34
    .line 35
    :goto_1
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 36
    .line 37
    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 38
    .line 39
    cmpl-float p0, p0, v0

    .line 40
    .line 41
    if-lez p0, :cond_4

    .line 42
    .line 43
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 44
    .line 45
    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 46
    .line 47
    cmpg-float p0, p0, p1

    .line 48
    .line 49
    if-gez p0, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    return v1

    .line 53
    :cond_5
    const-string p0, "This function should only be used for 2-D focus search"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public static final clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_5

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    if-ne v0, p0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move p1, v1

    .line 43
    :goto_0
    if-eqz p1, :cond_3

    .line 44
    .line 45
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 46
    .line 47
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_3
    return v3

    .line 54
    :cond_4
    return p1

    .line 55
    :cond_5
    :goto_1
    return v1
.end method

.method public static final collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "visitChildren called on an unattached node"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 36
    .line 37
    if-eqz p0, :cond_e

    .line 38
    .line 39
    add-int/lit8 p0, p0, -0x1

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 48
    .line 49
    and-int/lit16 v2, v2, 0x400

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    .line 58
    .line 59
    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 60
    .line 61
    and-int/lit16 v2, v2, 0x400

    .line 62
    .line 63
    if-eqz v2, :cond_d

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    move-object v3, v2

    .line 67
    :goto_2
    if-eqz p0, :cond_2

    .line 68
    .line 69
    instance-of v4, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 74
    .line 75
    iget-boolean v4, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 76
    .line 77
    if-eqz v4, :cond_c

    .line 78
    .line 79
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-boolean v4, v4, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 93
    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_6
    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 105
    .line 106
    and-int/lit16 v4, v4, 0x400

    .line 107
    .line 108
    if-eqz v4, :cond_c

    .line 109
    .line 110
    instance-of v4, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 111
    .line 112
    if-eqz v4, :cond_c

    .line 113
    .line 114
    move-object v4, p0

    .line 115
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 116
    .line 117
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    :goto_3
    const/4 v6, 0x1

    .line 121
    if-eqz v4, :cond_b

    .line 122
    .line 123
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 124
    .line 125
    and-int/lit16 v7, v7, 0x400

    .line 126
    .line 127
    if-eqz v7, :cond_a

    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    if-ne v5, v6, :cond_7

    .line 132
    .line 133
    move-object p0, v4

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    if-nez v3, :cond_8

    .line 136
    .line 137
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 138
    .line 139
    new-array v6, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 140
    .line 141
    invoke-direct {v3, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_8
    if-eqz p0, :cond_9

    .line 145
    .line 146
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move-object p0, v2

    .line 150
    :cond_9
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    :goto_4
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_b
    if-ne v5, v6, :cond_c

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_c
    :goto_5
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    goto :goto_2

    .line 164
    :cond_d
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_e
    return-void
.end method

.method public static final findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 9
    .line 10
    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 11
    .line 12
    sub-float/2addr v0, v4

    .line 13
    add-float/2addr v0, v3

    .line 14
    invoke-virtual {p1, v0, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x4

    .line 20
    if-ne p2, v0, :cond_1

    .line 21
    .line 22
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 23
    .line 24
    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 25
    .line 26
    sub-float/2addr v0, v4

    .line 27
    add-float/2addr v0, v3

    .line 28
    neg-float v0, v0

    .line 29
    invoke-virtual {p1, v0, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x5

    .line 35
    if-ne p2, v0, :cond_2

    .line 36
    .line 37
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 38
    .line 39
    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 40
    .line 41
    sub-float/2addr v0, v4

    .line 42
    add-float/2addr v0, v3

    .line 43
    invoke-virtual {p1, v2, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x6

    .line 49
    if-ne p2, v0, :cond_5

    .line 50
    .line 51
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 52
    .line 53
    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 54
    .line 55
    sub-float/2addr v0, v4

    .line 56
    add-float/2addr v0, v3

    .line 57
    neg-float v0, v0

    .line 58
    invoke-virtual {p1, v2, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 63
    .line 64
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    :goto_1
    if-ge v3, p0, :cond_4

    .line 68
    .line 69
    aget-object v4, v2, v3

    .line 70
    .line 71
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 72
    .line 73
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5, v0, p1, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    move-object v1, v4

    .line 90
    move-object v0, v5

    .line 91
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    return-object v1

    .line 95
    :cond_5
    const-string p0, "This function should only be used for 2-D focus search"

    .line 96
    .line 97
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v1
.end method

.method public static final findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 11
    .line 12
    .line 13
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-gt v1, v2, :cond_1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object p0, p0, v3

    .line 26
    .line 27
    :goto_0
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 28
    .line 29
    if-eqz p0, :cond_6

    .line 30
    .line 31
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    const/4 v1, 0x7

    .line 43
    const/4 v2, 0x4

    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    move p1, v2

    .line 47
    :cond_2
    if-ne p1, v2, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v1, 0x6

    .line 51
    if-ne p1, v1, :cond_4

    .line 52
    .line 53
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 58
    .line 59
    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 60
    .line 61
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 62
    .line 63
    invoke-direct {v1, v2, p0, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/4 v1, 0x3

    .line 68
    if-ne p1, v1, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    const/4 v1, 0x5

    .line 72
    if-ne p1, v1, :cond_7

    .line 73
    .line 74
    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 79
    .line 80
    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 81
    .line 82
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 83
    .line 84
    invoke-direct {v1, v2, p0, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :cond_6
    return v3

    .line 105
    :cond_7
    const-string p0, "This function should only be used for 2-D focus search"

    .line 106
    .line 107
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3
.end method

.method public static final focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusRect$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusRequesterElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterElement;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_5

    .line 70
    .line 71
    invoke-static {p0, v0, v2, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return v1

    .line 79
    :cond_5
    :goto_0
    return v2

    .line 80
    :cond_6
    const-string p0, "ActiveParent must have a focusedChild"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1
.end method

.method public static final generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 8

    .line 50
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    .line 52
    new-instance v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;

    const/4 v7, 0x1

    move v5, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILandroidx/glance/session/SessionWorkerKt$runSession$6;I)V

    invoke-static {v3, v5, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 8

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v3, p0

    .line 29
    move-object v4, p1

    .line 30
    move v5, p2

    .line 31
    move-object v6, p3

    .line 32
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILandroidx/glance/session/SessionWorkerKt$runSession$6;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v5, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public static final getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "visitChildren called on an unattached node"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    .line 23
    .line 24
    invoke-direct {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 41
    .line 42
    if-eqz p0, :cond_f

    .line 43
    .line 44
    add-int/lit8 p0, p0, -0x1

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 51
    .line 52
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 53
    .line 54
    and-int/lit16 v3, v3, 0x400

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    :goto_1
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 65
    .line 66
    and-int/lit16 v3, v3, 0x400

    .line 67
    .line 68
    if-eqz v3, :cond_e

    .line 69
    .line 70
    move-object v3, v1

    .line 71
    :goto_2
    if-eqz p0, :cond_3

    .line 72
    .line 73
    instance-of v4, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    if-eqz v4, :cond_7

    .line 77
    .line 78
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 81
    .line 82
    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 83
    .line 84
    if-eqz v4, :cond_d

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget-object v6, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    aget v4, v6, v4

    .line 97
    .line 98
    if-eq v4, v5, :cond_6

    .line 99
    .line 100
    const/4 v5, 0x2

    .line 101
    if-eq v4, v5, :cond_6

    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    if-eq v4, v5, :cond_6

    .line 105
    .line 106
    const/4 p0, 0x4

    .line 107
    if-ne v4, p0, :cond_5

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_6
    return-object p0

    .line 115
    :cond_7
    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 116
    .line 117
    and-int/lit16 v4, v4, 0x400

    .line 118
    .line 119
    if-eqz v4, :cond_d

    .line 120
    .line 121
    instance-of v4, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 122
    .line 123
    if-eqz v4, :cond_d

    .line 124
    .line 125
    move-object v4, p0

    .line 126
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 127
    .line 128
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    :goto_3
    if-eqz v4, :cond_c

    .line 132
    .line 133
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 134
    .line 135
    and-int/lit16 v7, v7, 0x400

    .line 136
    .line 137
    if-eqz v7, :cond_b

    .line 138
    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    if-ne v6, v5, :cond_8

    .line 142
    .line 143
    move-object p0, v4

    .line 144
    goto :goto_4

    .line 145
    :cond_8
    if-nez v3, :cond_9

    .line 146
    .line 147
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 148
    .line 149
    new-array v7, v2, [Landroidx/compose/ui/Modifier$Node;

    .line 150
    .line 151
    invoke-direct {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    if-eqz p0, :cond_a

    .line 155
    .line 156
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    move-object p0, v1

    .line 160
    :cond_a
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_b
    :goto_4
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_c
    if-ne v6, v5, :cond_d

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_d
    :goto_5
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    goto :goto_2

    .line 174
    :cond_e
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_f
    :goto_6
    return-object v1
.end method

.method public static final isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 2

    .line 1
    invoke-static {p3, p0, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p2, p0, p1, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-static {p2, p1, p0, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    invoke-static {p3, p2, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {p3, p2, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    cmp-long p0, v0, p0

    .line 38
    .line 39
    if-gez p0, :cond_4

    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public static final isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p0, v0, :cond_2

    .line 5
    .line 6
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 7
    .line 8
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 9
    .line 10
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 11
    .line 12
    cmpl-float p0, p0, v0

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    cmpl-float p0, p2, v0

    .line 17
    .line 18
    if-ltz p0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 21
    .line 22
    cmpl-float p0, p2, p0

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    const/4 v0, 0x4

    .line 29
    if-ne p0, v0, :cond_5

    .line 30
    .line 31
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 32
    .line 33
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 34
    .line 35
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 36
    .line 37
    cmpg-float p0, p0, v0

    .line 38
    .line 39
    if-ltz p0, :cond_3

    .line 40
    .line 41
    cmpg-float p0, p2, v0

    .line 42
    .line 43
    if-gtz p0, :cond_4

    .line 44
    .line 45
    :cond_3
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 46
    .line 47
    cmpg-float p0, p2, p0

    .line 48
    .line 49
    if-gez p0, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    return v1

    .line 53
    :cond_5
    const/4 v0, 0x5

    .line 54
    if-ne p0, v0, :cond_8

    .line 55
    .line 56
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 57
    .line 58
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 59
    .line 60
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 61
    .line 62
    cmpl-float p0, p0, v0

    .line 63
    .line 64
    if-gtz p0, :cond_6

    .line 65
    .line 66
    cmpl-float p0, p2, v0

    .line 67
    .line 68
    if-ltz p0, :cond_7

    .line 69
    .line 70
    :cond_6
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 71
    .line 72
    cmpl-float p0, p2, p0

    .line 73
    .line 74
    if-lez p0, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    return v1

    .line 78
    :cond_8
    const/4 v0, 0x6

    .line 79
    if-ne p0, v0, :cond_b

    .line 80
    .line 81
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 82
    .line 83
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 84
    .line 85
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 86
    .line 87
    cmpg-float p0, p0, v0

    .line 88
    .line 89
    if-ltz p0, :cond_9

    .line 90
    .line 91
    cmpg-float p0, p2, v0

    .line 92
    .line 93
    if-gtz p0, :cond_a

    .line 94
    .line 95
    :cond_9
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 96
    .line 97
    cmpg-float p0, p2, p0

    .line 98
    .line 99
    if-gez p0, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    return v1

    .line 103
    :cond_b
    const-string p0, "This function should only be used for 2-D focus search"

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v1
.end method

.method public static final isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string v2, "This function should only be used for 2-D focus search"

    .line 4
    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x5

    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x3

    .line 9
    if-ne p0, v6, :cond_0

    .line 10
    .line 11
    iget v7, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 12
    .line 13
    iget v8, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 14
    .line 15
    :goto_0
    sub-float/2addr v7, v8

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-ne p0, v5, :cond_1

    .line 18
    .line 19
    iget v7, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 20
    .line 21
    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne p0, v4, :cond_2

    .line 25
    .line 26
    iget v7, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 27
    .line 28
    iget v8, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-ne p0, v3, :cond_8

    .line 32
    .line 33
    iget v7, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 34
    .line 35
    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    const/4 v8, 0x0

    .line 39
    cmpg-float v9, v7, v8

    .line 40
    .line 41
    if-gez v9, :cond_3

    .line 42
    .line 43
    move v7, v8

    .line 44
    :cond_3
    float-to-long v7, v7

    .line 45
    const/high16 v9, 0x40000000    # 2.0f

    .line 46
    .line 47
    if-ne p0, v6, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    if-ne p0, v5, :cond_5

    .line 51
    .line 52
    :goto_2
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 53
    .line 54
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 55
    .line 56
    sub-float/2addr p1, p0

    .line 57
    div-float/2addr p1, v9

    .line 58
    add-float/2addr p1, p0

    .line 59
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 60
    .line 61
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 62
    .line 63
    :goto_3
    sub-float/2addr p2, p0

    .line 64
    div-float/2addr p2, v9

    .line 65
    add-float/2addr p2, p0

    .line 66
    sub-float/2addr p1, p2

    .line 67
    goto :goto_5

    .line 68
    :cond_5
    if-ne p0, v4, :cond_6

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    if-ne p0, v3, :cond_7

    .line 72
    .line 73
    :goto_4
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 74
    .line 75
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 76
    .line 77
    sub-float/2addr p1, p0

    .line 78
    div-float/2addr p1, v9

    .line 79
    add-float/2addr p1, p0

    .line 80
    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 81
    .line 82
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_5
    float-to-long p0, p1

    .line 86
    const-wide/16 v0, 0xd

    .line 87
    .line 88
    mul-long/2addr v0, v7

    .line 89
    mul-long/2addr v0, v7

    .line 90
    mul-long/2addr p0, p0

    .line 91
    add-long/2addr p0, v0

    .line 92
    return-wide p0

    .line 93
    :cond_7
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-wide v0

    .line 97
    :cond_8
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-wide v0
.end method

.method public static final isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ne p0, v1, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static final onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusChangedElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusChangedElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_a

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_9

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    if-ne v0, p0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_8

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 43
    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v3, v0

    .line 48
    :goto_0
    if-nez v3, :cond_7

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    .line 54
    iput-boolean v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v3, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 62
    .line 63
    invoke-direct {v3, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-boolean v1, v3, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 96
    .line 97
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 100
    .line 101
    return-object p1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    if-eq v4, p1, :cond_5

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 109
    .line 110
    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 111
    .line 112
    if-ne p1, v1, :cond_4

    .line 113
    .line 114
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_4
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_5
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 125
    .line 126
    return-object v2

    .line 127
    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    .line 128
    .line 129
    throw p1

    .line 130
    :cond_6
    return-object v2

    .line 131
    :cond_7
    return-object v3

    .line 132
    :cond_8
    const-string p0, "ActiveParent with no focused child"

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_9
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_a
    :goto_2
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 142
    .line 143
    return-object p0
.end method

.method public static final performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-boolean v1, v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 48
    .line 49
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-eq v3, p1, :cond_2

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 61
    .line 62
    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 63
    .line 64
    if-ne p1, v1, :cond_1

    .line 65
    .line 66
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_1
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_2
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    .line 80
    .line 81
    throw p1

    .line 82
    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 83
    .line 84
    return-object p0
.end method

.method public static final performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_16

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_16

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eq v0, v3, :cond_14

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    if-ne v0, v5, :cond_13

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo v0, "visitAncestors called on an unattached node"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 41
    .line 42
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    if-eqz p0, :cond_b

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 49
    .line 50
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 53
    .line 54
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 55
    .line 56
    and-int/lit16 v6, v6, 0x400

    .line 57
    .line 58
    if-eqz v6, :cond_9

    .line 59
    .line 60
    :goto_1
    if-eqz v0, :cond_9

    .line 61
    .line 62
    iget v6, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 63
    .line 64
    and-int/lit16 v6, v6, 0x400

    .line 65
    .line 66
    if-eqz v6, :cond_8

    .line 67
    .line 68
    move-object v6, v0

    .line 69
    move-object v7, v4

    .line 70
    :goto_2
    if-eqz v6, :cond_8

    .line 71
    .line 72
    instance-of v8, v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 73
    .line 74
    if-eqz v8, :cond_1

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_1
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 78
    .line 79
    and-int/lit16 v8, v8, 0x400

    .line 80
    .line 81
    if-eqz v8, :cond_7

    .line 82
    .line 83
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 84
    .line 85
    if-eqz v8, :cond_7

    .line 86
    .line 87
    move-object v8, v6

    .line 88
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 89
    .line 90
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    :goto_3
    if-eqz v8, :cond_6

    .line 94
    .line 95
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 96
    .line 97
    and-int/lit16 v10, v10, 0x400

    .line 98
    .line 99
    if-eqz v10, :cond_5

    .line 100
    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 102
    .line 103
    if-ne v9, v1, :cond_2

    .line 104
    .line 105
    move-object v6, v8

    .line 106
    goto :goto_4

    .line 107
    :cond_2
    if-nez v7, :cond_3

    .line 108
    .line 109
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 110
    .line 111
    const/16 v10, 0x10

    .line 112
    .line 113
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    if-eqz v6, :cond_4

    .line 119
    .line 120
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-object v6, v4

    .line 124
    :cond_4
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_4
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    if-ne v9, v1, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_a

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_a
    move-object v0, v4

    .line 157
    goto :goto_0

    .line 158
    :cond_b
    move-object v6, v4

    .line 159
    :goto_5
    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 160
    .line 161
    if-nez v6, :cond_c

    .line 162
    .line 163
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_c
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    sget-object v0, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    aget p0, v0, p0

    .line 177
    .line 178
    if-eq p0, v1, :cond_12

    .line 179
    .line 180
    if-eq p0, v2, :cond_11

    .line 181
    .line 182
    if-eq p0, v3, :cond_10

    .line 183
    .line 184
    if-ne p0, v5, :cond_f

    .line 185
    .line 186
    invoke-static {v6, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 191
    .line 192
    if-ne p0, v0, :cond_d

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_d
    move-object v4, p0

    .line 196
    :goto_6
    if-nez v4, :cond_e

    .line 197
    .line 198
    invoke-static {v6, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :cond_e
    return-object v4

    .line 204
    :cond_f
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 205
    .line 206
    .line 207
    return-object v4

    .line 208
    :cond_10
    invoke-static {v6, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :cond_11
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_12
    invoke-static {v6, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :cond_13
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 222
    .line 223
    .line 224
    return-object v4

    .line 225
    :cond_14
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    if-eqz p0, :cond_15

    .line 230
    .line 231
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0

    .line 236
    :cond_15
    const-string p0, "ActiveParent with no focused child"

    .line 237
    .line 238
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-object v4

    .line 242
    :cond_16
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 243
    .line 244
    return-object p0
.end method

.method public static final performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v2, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 27
    .line 28
    .line 29
    return v4

    .line 30
    :cond_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-boolean v6, v2, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-boolean v6, v0, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 52
    .line 53
    iget-object v6, v6, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->requestOwnerFocus-7o62pno()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_2

    .line 60
    .line 61
    :goto_0
    const/16 v19, 0x0

    .line 62
    .line 63
    goto/16 :goto_19

    .line 64
    .line 65
    :cond_2
    :goto_1
    const-string/jumbo v6, "visitAncestors called on an unattached node"

    .line 66
    .line 67
    .line 68
    const/16 v7, 0x10

    .line 69
    .line 70
    if-eqz v2, :cond_e

    .line 71
    .line 72
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 73
    .line 74
    new-array v10, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 75
    .line 76
    invoke-direct {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 80
    .line 81
    iget-boolean v10, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 82
    .line 83
    if-nez v10, :cond_3

    .line 84
    .line 85
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 89
    .line 90
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 91
    .line 92
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    :goto_2
    if-eqz v11, :cond_f

    .line 97
    .line 98
    iget-object v12, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 99
    .line 100
    iget-object v12, v12, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .line 103
    .line 104
    iget v12, v12, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 105
    .line 106
    and-int/lit16 v12, v12, 0x400

    .line 107
    .line 108
    if-eqz v12, :cond_c

    .line 109
    .line 110
    :goto_3
    if-eqz v10, :cond_c

    .line 111
    .line 112
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 113
    .line 114
    and-int/lit16 v12, v12, 0x400

    .line 115
    .line 116
    if-eqz v12, :cond_b

    .line 117
    .line 118
    move-object v12, v10

    .line 119
    const/4 v13, 0x0

    .line 120
    :goto_4
    if-eqz v12, :cond_b

    .line 121
    .line 122
    instance-of v14, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 123
    .line 124
    if-eqz v14, :cond_4

    .line 125
    .line 126
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 127
    .line 128
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_4
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 133
    .line 134
    and-int/lit16 v14, v14, 0x400

    .line 135
    .line 136
    if-eqz v14, :cond_a

    .line 137
    .line 138
    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 139
    .line 140
    if-eqz v14, :cond_a

    .line 141
    .line 142
    move-object v14, v12

    .line 143
    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    .line 144
    .line 145
    iget-object v14, v14, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 146
    .line 147
    const/4 v15, 0x0

    .line 148
    :goto_5
    if-eqz v14, :cond_9

    .line 149
    .line 150
    iget v8, v14, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 151
    .line 152
    and-int/lit16 v8, v8, 0x400

    .line 153
    .line 154
    if-eqz v8, :cond_8

    .line 155
    .line 156
    add-int/lit8 v15, v15, 0x1

    .line 157
    .line 158
    if-ne v15, v4, :cond_5

    .line 159
    .line 160
    move-object v12, v14

    .line 161
    goto :goto_6

    .line 162
    :cond_5
    if-nez v13, :cond_6

    .line 163
    .line 164
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 165
    .line 166
    new-array v13, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 167
    .line 168
    invoke-direct {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    move-object v13, v8

    .line 172
    :cond_6
    if-eqz v12, :cond_7

    .line 173
    .line 174
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    const/4 v12, 0x0

    .line 178
    :cond_7
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_8
    :goto_6
    iget-object v14, v14, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    if-ne v15, v4, :cond_a

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_a
    :goto_7
    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    goto :goto_4

    .line 192
    :cond_b
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    if-eqz v11, :cond_d

    .line 200
    .line 201
    iget-object v8, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 202
    .line 203
    if-eqz v8, :cond_d

    .line 204
    .line 205
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v8, Landroidx/compose/ui/node/TailModifierNode;

    .line 208
    .line 209
    move-object v10, v8

    .line 210
    goto :goto_2

    .line 211
    :cond_d
    const/4 v10, 0x0

    .line 212
    goto :goto_2

    .line 213
    :cond_e
    const/4 v9, 0x0

    .line 214
    :cond_f
    new-array v8, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 215
    .line 216
    new-array v10, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 217
    .line 218
    iget-object v11, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 219
    .line 220
    iget-boolean v11, v11, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 221
    .line 222
    if-nez v11, :cond_10

    .line 223
    .line 224
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_10
    iget-object v6, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 228
    .line 229
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 230
    .line 231
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    move v12, v4

    .line 236
    const/4 v13, 0x0

    .line 237
    const/4 v14, 0x0

    .line 238
    :goto_8
    if-eqz v11, :cond_21

    .line 239
    .line 240
    iget-object v15, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 241
    .line 242
    iget-object v15, v15, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .line 245
    .line 246
    iget v15, v15, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 247
    .line 248
    and-int/lit16 v15, v15, 0x400

    .line 249
    .line 250
    if-eqz v15, :cond_1f

    .line 251
    .line 252
    :goto_9
    if-eqz v6, :cond_1f

    .line 253
    .line 254
    iget v15, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 255
    .line 256
    and-int/lit16 v15, v15, 0x400

    .line 257
    .line 258
    if-eqz v15, :cond_1e

    .line 259
    .line 260
    move-object v15, v6

    .line 261
    const/16 v16, 0x0

    .line 262
    .line 263
    :goto_a
    if-eqz v15, :cond_1e

    .line 264
    .line 265
    instance-of v7, v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 266
    .line 267
    if-eqz v7, :cond_16

    .line 268
    .line 269
    move-object v7, v15

    .line 270
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 271
    .line 272
    if-eqz v9, :cond_11

    .line 273
    .line 274
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v18

    .line 278
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v18

    .line 282
    move-object/from16 v4, v18

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_11
    const/4 v4, 0x0

    .line 286
    :goto_b
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_13

    .line 293
    .line 294
    add-int/lit8 v4, v13, 0x1

    .line 295
    .line 296
    array-length v5, v8

    .line 297
    if-ge v5, v4, :cond_12

    .line 298
    .line 299
    array-length v5, v8

    .line 300
    move-object/from16 v20, v1

    .line 301
    .line 302
    mul-int/lit8 v1, v5, 0x2

    .line 303
    .line 304
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    new-array v1, v1, [Ljava/lang/Object;

    .line 309
    .line 310
    move/from16 v21, v4

    .line 311
    .line 312
    const/4 v4, 0x0

    .line 313
    invoke-static {v8, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    .line 315
    .line 316
    move-object v8, v1

    .line 317
    goto :goto_c

    .line 318
    :cond_12
    move-object/from16 v20, v1

    .line 319
    .line 320
    move/from16 v21, v4

    .line 321
    .line 322
    :goto_c
    aput-object v7, v8, v13

    .line 323
    .line 324
    move/from16 v13, v21

    .line 325
    .line 326
    goto :goto_e

    .line 327
    :cond_13
    move-object/from16 v20, v1

    .line 328
    .line 329
    add-int/lit8 v1, v14, 0x1

    .line 330
    .line 331
    array-length v4, v10

    .line 332
    if-ge v4, v1, :cond_14

    .line 333
    .line 334
    array-length v4, v10

    .line 335
    mul-int/lit8 v5, v4, 0x2

    .line 336
    .line 337
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    new-array v5, v5, [Ljava/lang/Object;

    .line 342
    .line 343
    move/from16 v21, v1

    .line 344
    .line 345
    const/4 v1, 0x0

    .line 346
    invoke-static {v10, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    .line 348
    .line 349
    move-object v10, v5

    .line 350
    goto :goto_d

    .line 351
    :cond_14
    move/from16 v21, v1

    .line 352
    .line 353
    :goto_d
    aput-object v7, v10, v14

    .line 354
    .line 355
    move/from16 v14, v21

    .line 356
    .line 357
    :goto_e
    if-ne v7, v2, :cond_15

    .line 358
    .line 359
    const/4 v12, 0x0

    .line 360
    :cond_15
    const/4 v1, 0x0

    .line 361
    goto :goto_f

    .line 362
    :cond_16
    move-object/from16 v20, v1

    .line 363
    .line 364
    const/4 v1, 0x1

    .line 365
    :goto_f
    if-eqz v1, :cond_1c

    .line 366
    .line 367
    iget v1, v15, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 368
    .line 369
    and-int/lit16 v1, v1, 0x400

    .line 370
    .line 371
    if-eqz v1, :cond_1c

    .line 372
    .line 373
    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    .line 374
    .line 375
    if-eqz v1, :cond_1c

    .line 376
    .line 377
    move-object v1, v15

    .line 378
    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 379
    .line 380
    iget-object v1, v1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 381
    .line 382
    const/4 v4, 0x0

    .line 383
    :goto_10
    if-eqz v1, :cond_1b

    .line 384
    .line 385
    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 386
    .line 387
    and-int/lit16 v5, v5, 0x400

    .line 388
    .line 389
    if-eqz v5, :cond_1a

    .line 390
    .line 391
    add-int/lit8 v4, v4, 0x1

    .line 392
    .line 393
    const/4 v5, 0x1

    .line 394
    if-ne v4, v5, :cond_17

    .line 395
    .line 396
    move-object v15, v1

    .line 397
    move/from16 v17, v4

    .line 398
    .line 399
    const/16 v7, 0x10

    .line 400
    .line 401
    goto :goto_12

    .line 402
    :cond_17
    if-nez v16, :cond_18

    .line 403
    .line 404
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 405
    .line 406
    move/from16 v17, v4

    .line 407
    .line 408
    const/16 v7, 0x10

    .line 409
    .line 410
    new-array v4, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 411
    .line 412
    invoke-direct {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_18
    move/from16 v17, v4

    .line 417
    .line 418
    const/16 v7, 0x10

    .line 419
    .line 420
    move-object/from16 v5, v16

    .line 421
    .line 422
    :goto_11
    if-eqz v15, :cond_19

    .line 423
    .line 424
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    const/4 v15, 0x0

    .line 428
    :cond_19
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    move-object/from16 v16, v5

    .line 432
    .line 433
    :goto_12
    move/from16 v4, v17

    .line 434
    .line 435
    goto :goto_13

    .line 436
    :cond_1a
    const/16 v7, 0x10

    .line 437
    .line 438
    :goto_13
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 439
    .line 440
    goto :goto_10

    .line 441
    :cond_1b
    const/4 v5, 0x1

    .line 442
    const/16 v7, 0x10

    .line 443
    .line 444
    if-ne v4, v5, :cond_1d

    .line 445
    .line 446
    move v4, v5

    .line 447
    move-object/from16 v1, v20

    .line 448
    .line 449
    goto/16 :goto_a

    .line 450
    .line 451
    :cond_1c
    const/16 v7, 0x10

    .line 452
    .line 453
    :cond_1d
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 454
    .line 455
    .line 456
    move-result-object v15

    .line 457
    move-object/from16 v1, v20

    .line 458
    .line 459
    const/4 v4, 0x1

    .line 460
    goto/16 :goto_a

    .line 461
    .line 462
    :cond_1e
    move-object/from16 v20, v1

    .line 463
    .line 464
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 465
    .line 466
    move-object/from16 v1, v20

    .line 467
    .line 468
    const/4 v4, 0x1

    .line 469
    goto/16 :goto_9

    .line 470
    .line 471
    :cond_1f
    move-object/from16 v20, v1

    .line 472
    .line 473
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    if-eqz v11, :cond_20

    .line 478
    .line 479
    iget-object v1, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 480
    .line 481
    if-eqz v1, :cond_20

    .line 482
    .line 483
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v1, Landroidx/compose/ui/node/TailModifierNode;

    .line 486
    .line 487
    move-object v6, v1

    .line 488
    goto :goto_14

    .line 489
    :cond_20
    const/4 v6, 0x0

    .line 490
    :goto_14
    move-object/from16 v1, v20

    .line 491
    .line 492
    const/4 v4, 0x1

    .line 493
    goto/16 :goto_8

    .line 494
    .line 495
    :cond_21
    move-object/from16 v20, v1

    .line 496
    .line 497
    if-eqz v12, :cond_22

    .line 498
    .line 499
    if-eqz v2, :cond_22

    .line 500
    .line 501
    const/4 v1, 0x0

    .line 502
    invoke-static {v2, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-nez v4, :cond_22

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :cond_22
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 511
    .line 512
    const/4 v4, 0x2

    .line 513
    invoke-direct {v1, v4, v0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    sget-object v5, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    aget v1, v5, v1

    .line 530
    .line 531
    const/4 v5, 0x1

    .line 532
    if-eq v1, v5, :cond_25

    .line 533
    .line 534
    if-eq v1, v4, :cond_25

    .line 535
    .line 536
    const/4 v4, 0x3

    .line 537
    if-eq v1, v4, :cond_24

    .line 538
    .line 539
    const/4 v4, 0x4

    .line 540
    if-ne v1, v4, :cond_23

    .line 541
    .line 542
    goto :goto_15

    .line 543
    :cond_23
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 544
    .line 545
    .line 546
    const/16 v19, 0x0

    .line 547
    .line 548
    return v19

    .line 549
    :cond_24
    :goto_15
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 554
    .line 555
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 560
    .line 561
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 562
    .line 563
    .line 564
    :cond_25
    if-eqz v12, :cond_26

    .line 565
    .line 566
    if-eqz v2, :cond_26

    .line 567
    .line 568
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 569
    .line 570
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 571
    .line 572
    invoke-virtual {v2, v1, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 573
    .line 574
    .line 575
    :cond_26
    if-eqz v9, :cond_28

    .line 576
    .line 577
    iget v1, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 578
    .line 579
    const/16 v18, 0x1

    .line 580
    .line 581
    add-int/lit8 v1, v1, -0x1

    .line 582
    .line 583
    iget-object v4, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 584
    .line 585
    array-length v5, v4

    .line 586
    if-ge v1, v5, :cond_28

    .line 587
    .line 588
    :goto_16
    if-ltz v1, :cond_28

    .line 589
    .line 590
    aget-object v5, v4, v1

    .line 591
    .line 592
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 593
    .line 594
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    if-eq v6, v0, :cond_27

    .line 599
    .line 600
    goto/16 :goto_0

    .line 601
    .line 602
    :cond_27
    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 603
    .line 604
    sget-object v7, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 605
    .line 606
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 607
    .line 608
    .line 609
    add-int/lit8 v1, v1, -0x1

    .line 610
    .line 611
    goto :goto_16

    .line 612
    :cond_28
    const/16 v18, 0x1

    .line 613
    .line 614
    add-int/lit8 v14, v14, -0x1

    .line 615
    .line 616
    array-length v1, v10

    .line 617
    if-ge v14, v1, :cond_2b

    .line 618
    .line 619
    :goto_17
    if-ltz v14, :cond_2b

    .line 620
    .line 621
    aget-object v1, v10, v14

    .line 622
    .line 623
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 624
    .line 625
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    if-eq v4, v0, :cond_29

    .line 630
    .line 631
    goto/16 :goto_0

    .line 632
    .line 633
    :cond_29
    if-ne v1, v2, :cond_2a

    .line 634
    .line 635
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 636
    .line 637
    goto :goto_18

    .line 638
    :cond_2a
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 639
    .line 640
    :goto_18
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 641
    .line 642
    invoke-virtual {v1, v4, v5}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 643
    .line 644
    .line 645
    add-int/lit8 v14, v14, -0x1

    .line 646
    .line 647
    goto :goto_17

    .line 648
    :cond_2b
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    if-eq v1, v0, :cond_2c

    .line 653
    .line 654
    goto/16 :goto_0

    .line 655
    .line 656
    :cond_2c
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 657
    .line 658
    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    if-eq v1, v0, :cond_2d

    .line 666
    .line 667
    goto/16 :goto_0

    .line 668
    .line 669
    :goto_19
    return v19

    .line 670
    :cond_2d
    const/16 v18, 0x1

    .line 671
    .line 672
    return v18
.end method

.method public static final pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 11

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "visitChildren called on an unattached node"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-static {v2, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move p0, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-eqz v3, :cond_d

    .line 44
    .line 45
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 54
    .line 55
    and-int/lit16 v6, v6, 0x400

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    .line 64
    .line 65
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 66
    .line 67
    and-int/lit16 v6, v6, 0x400

    .line 68
    .line 69
    if-eqz v6, :cond_c

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v7, v6

    .line 73
    :goto_3
    if-eqz v3, :cond_2

    .line 74
    .line 75
    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 80
    .line 81
    add-int/lit8 v8, p0, 0x1

    .line 82
    .line 83
    array-length v9, v1

    .line 84
    if-ge v9, v8, :cond_4

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    mul-int/lit8 v10, v9, 0x2

    .line 88
    .line 89
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    new-array v10, v10, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    move-object v1, v10

    .line 99
    :cond_4
    aput-object v3, v1, p0

    .line 100
    .line 101
    move p0, v8

    .line 102
    goto :goto_6

    .line 103
    :cond_5
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 104
    .line 105
    and-int/lit16 v8, v8, 0x400

    .line 106
    .line 107
    if-eqz v8, :cond_b

    .line 108
    .line 109
    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 110
    .line 111
    if-eqz v8, :cond_b

    .line 112
    .line 113
    move-object v8, v3

    .line 114
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 115
    .line 116
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 117
    .line 118
    move v9, v4

    .line 119
    :goto_4
    if-eqz v8, :cond_a

    .line 120
    .line 121
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 122
    .line 123
    and-int/lit16 v10, v10, 0x400

    .line 124
    .line 125
    if-eqz v10, :cond_9

    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    if-ne v9, v5, :cond_6

    .line 130
    .line 131
    move-object v3, v8

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    if-nez v7, :cond_7

    .line 134
    .line 135
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 136
    .line 137
    new-array v10, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 138
    .line 139
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    if-eqz v3, :cond_8

    .line 143
    .line 144
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v3, v6

    .line 148
    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    if-ne v9, v5, :cond_b

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    goto :goto_3

    .line 162
    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_d
    sget-object v0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 166
    .line 167
    invoke-static {v1, v4, p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 168
    .line 169
    .line 170
    sub-int/2addr p0, v5

    .line 171
    array-length v0, v1

    .line 172
    if-ge p0, v0, :cond_f

    .line 173
    .line 174
    :goto_7
    if-ltz p0, :cond_f

    .line 175
    .line 176
    aget-object v0, v1, p0

    .line 177
    .line 178
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 179
    .line 180
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_e

    .line 185
    .line 186
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_e

    .line 191
    .line 192
    return v5

    .line 193
    :cond_e
    add-int/lit8 p0, p0, -0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_f
    return v4
.end method

.method public static final pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 11

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "visitChildren called on an unattached node"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-static {v2, p0}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move p0, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-eqz v3, :cond_d

    .line 44
    .line 45
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 54
    .line 55
    and-int/lit16 v6, v6, 0x400

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    .line 64
    .line 65
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 66
    .line 67
    and-int/lit16 v6, v6, 0x400

    .line 68
    .line 69
    if-eqz v6, :cond_c

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v7, v6

    .line 73
    :goto_3
    if-eqz v3, :cond_2

    .line 74
    .line 75
    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 80
    .line 81
    add-int/lit8 v8, p0, 0x1

    .line 82
    .line 83
    array-length v9, v1

    .line 84
    if-ge v9, v8, :cond_4

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    mul-int/lit8 v10, v9, 0x2

    .line 88
    .line 89
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    new-array v10, v10, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    move-object v1, v10

    .line 99
    :cond_4
    aput-object v3, v1, p0

    .line 100
    .line 101
    move p0, v8

    .line 102
    goto :goto_6

    .line 103
    :cond_5
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 104
    .line 105
    and-int/lit16 v8, v8, 0x400

    .line 106
    .line 107
    if-eqz v8, :cond_b

    .line 108
    .line 109
    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 110
    .line 111
    if-eqz v8, :cond_b

    .line 112
    .line 113
    move-object v8, v3

    .line 114
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 115
    .line 116
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 117
    .line 118
    move v9, v4

    .line 119
    :goto_4
    if-eqz v8, :cond_a

    .line 120
    .line 121
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 122
    .line 123
    and-int/lit16 v10, v10, 0x400

    .line 124
    .line 125
    if-eqz v10, :cond_9

    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    if-ne v9, v5, :cond_6

    .line 130
    .line 131
    move-object v3, v8

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    if-nez v7, :cond_7

    .line 134
    .line 135
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 136
    .line 137
    new-array v10, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 138
    .line 139
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    if-eqz v3, :cond_8

    .line 143
    .line 144
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v3, v6

    .line 148
    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    if-ne v9, v5, :cond_b

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    goto :goto_3

    .line 162
    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_d
    sget-object v0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 166
    .line 167
    invoke-static {v1, v4, p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 168
    .line 169
    .line 170
    move v0, v4

    .line 171
    :goto_7
    if-ge v0, p0, :cond_f

    .line 172
    .line 173
    aget-object v2, v1, v0

    .line 174
    .line 175
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 176
    .line 177
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_e

    .line 182
    .line 183
    invoke-static {v2, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_e

    .line 188
    .line 189
    return v5

    .line 190
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_f
    return v4
.end method

.method public static final searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "visitAncestors called on an unattached node"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v1, :cond_b

    .line 25
    .line 26
    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 27
    .line 28
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 33
    .line 34
    and-int/lit16 v5, v5, 0x400

    .line 35
    .line 36
    if-eqz v5, :cond_9

    .line 37
    .line 38
    :goto_1
    if-eqz v0, :cond_9

    .line 39
    .line 40
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 41
    .line 42
    and-int/lit16 v5, v5, 0x400

    .line 43
    .line 44
    if-eqz v5, :cond_8

    .line 45
    .line 46
    move-object v5, v0

    .line 47
    move-object v6, v4

    .line 48
    :goto_2
    if-eqz v5, :cond_8

    .line 49
    .line 50
    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 51
    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_1
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 56
    .line 57
    and-int/lit16 v7, v7, 0x400

    .line 58
    .line 59
    if-eqz v7, :cond_7

    .line 60
    .line 61
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 62
    .line 63
    if-eqz v7, :cond_7

    .line 64
    .line 65
    move-object v7, v5

    .line 66
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 67
    .line 68
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 69
    .line 70
    move v8, v2

    .line 71
    :goto_3
    if-eqz v7, :cond_6

    .line 72
    .line 73
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 74
    .line 75
    and-int/lit16 v9, v9, 0x400

    .line 76
    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    if-ne v8, v3, :cond_2

    .line 82
    .line 83
    move-object v5, v7

    .line 84
    goto :goto_4

    .line 85
    :cond_2
    if-nez v6, :cond_3

    .line 86
    .line 87
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 88
    .line 89
    const/16 v9, 0x10

    .line 90
    .line 91
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 92
    .line 93
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz v5, :cond_4

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move-object v5, v4

    .line 102
    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    if-ne v8, v3, :cond_7

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_a

    .line 124
    .line 125
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 126
    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_a
    move-object v0, v4

    .line 135
    goto :goto_0

    .line 136
    :cond_b
    move-object v5, v4

    .line 137
    :goto_5
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 138
    .line 139
    if-eqz v5, :cond_c

    .line 140
    .line 141
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_c

    .line 154
    .line 155
    goto/16 :goto_c

    .line 156
    .line 157
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_19

    .line 162
    .line 163
    const/4 v0, 0x5

    .line 164
    const/4 v1, 0x2

    .line 165
    if-ne p1, v0, :cond_d

    .line 166
    .line 167
    :goto_6
    move v3, v0

    .line 168
    goto :goto_7

    .line 169
    :cond_d
    const/4 v0, 0x6

    .line 170
    if-ne p1, v0, :cond_e

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_e
    const/4 v0, 0x3

    .line 174
    if-ne p1, v0, :cond_f

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_f
    const/4 v0, 0x4

    .line 178
    if-ne p1, v0, :cond_10

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_10
    if-ne p1, v3, :cond_11

    .line 182
    .line 183
    move v3, v1

    .line 184
    goto :goto_7

    .line 185
    :cond_11
    if-ne p1, v1, :cond_18

    .line 186
    .line 187
    :goto_7
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 188
    .line 189
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getItemCount()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-lez p1, :cond_17

    .line 194
    .line 195
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 196
    .line 197
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getHasVisibleItems()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_17

    .line 202
    .line 203
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 204
    .line 205
    if-nez p1, :cond_12

    .line 206
    .line 207
    goto/16 :goto_b

    .line 208
    .line 209
    :cond_12
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->isForward-4vf7U8o(I)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 214
    .line 215
    if-eqz p1, :cond_13

    .line 216
    .line 217
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getLastPlacedIndex()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    goto :goto_8

    .line 222
    :cond_13
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getFirstPlacedIndex()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    :goto_8
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 237
    .line 238
    invoke-direct {v6, p1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iget-object p1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 242
    .line 243
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 247
    .line 248
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 249
    .line 250
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->itemsPerViewport()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    mul-int/2addr p1, v1

    .line 255
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 256
    .line 257
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getItemCount()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-le p1, v1, :cond_14

    .line 262
    .line 263
    move p1, v1

    .line 264
    :cond_14
    :goto_9
    if-nez v4, :cond_16

    .line 265
    .line 266
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 269
    .line 270
    invoke-virtual {p0, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_16

    .line 275
    .line 276
    if-ge v2, p1, :cond_16

    .line 277
    .line 278
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 281
    .line 282
    iget v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->start:I

    .line 283
    .line 284
    iget v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->end:I

    .line 285
    .line 286
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->isForward-4vf7U8o(I)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_15

    .line 291
    .line 292
    add-int/lit8 v1, v1, 0x1

    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_15
    add-int/lit8 v4, v4, -0x1

    .line 296
    .line 297
    :goto_a
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 303
    .line 304
    invoke-direct {v6, v4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 308
    .line 309
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 313
    .line 314
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 317
    .line 318
    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 319
    .line 320
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 326
    .line 327
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 332
    .line 333
    .line 334
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$layout$2;

    .line 335
    .line 336
    invoke-direct {v1, p0, v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$layout$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 337
    .line 338
    .line 339
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    goto :goto_9

    .line 344
    :cond_16
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 345
    .line 346
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 349
    .line 350
    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 360
    .line 361
    .line 362
    return-object v4

    .line 363
    :cond_17
    :goto_b
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->emptyBeyondBoundsScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1;

    .line 364
    .line 365
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    return-object p0

    .line 370
    :cond_18
    const-string p0, "Unsupported direction for beyond bounds layout"

    .line 371
    .line 372
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_19
    :goto_c
    return-object v4
.end method

.method public static final searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 10

    .line 441
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 442
    iget-object v2, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 443
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    .line 444
    const-string/jumbo v2, "visitChildren called on an unattached node"

    .line 445
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 446
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 447
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 448
    iget-object v3, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v3, :cond_1

    .line 449
    invoke-static {v2, p1}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 451
    :cond_2
    :goto_0
    iget p1, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 452
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    .line 453
    iget v5, p1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_3

    .line 454
    invoke-static {v2, p1}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_2

    .line 455
    iget v5, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p1, :cond_2

    .line 456
    instance-of v7, p1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_4

    .line 457
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 458
    iget-boolean v7, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_a

    .line 459
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_5

    .line 460
    :cond_4
    iget v7, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    .line 461
    instance-of v7, p1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_a

    .line 462
    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 463
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v4

    :goto_3
    if-eqz v7, :cond_9

    .line 464
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_5

    move-object p1, v7

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    .line 465
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 466
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p1, v5

    .line 467
    :cond_7
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 468
    :cond_8
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_9
    if-ne v8, v3, :cond_a

    goto :goto_2

    .line 469
    :cond_a
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_2

    .line 470
    :cond_b
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    .line 471
    :cond_c
    :goto_6
    iget p1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p1, :cond_10

    .line 472
    invoke-static {v0, p2, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_7

    .line 473
    :cond_d
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v1

    .line 474
    iget-boolean v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v1, :cond_e

    .line 475
    invoke-virtual {p3, p1}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 476
    :cond_e
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v3

    .line 477
    :cond_f
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    :goto_7
    return v4
.end method

.method public static final searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/glance/session/SessionWorkerKt$runSession$6;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_24

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 15
    .line 16
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string/jumbo v3, "visitChildren called on an unattached node"

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    new-array v4, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    invoke-direct {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    iget-object v5, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    invoke-static {v3, v4}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    move v4, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    iget v5, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x1

    .line 52
    if-eqz v5, :cond_d

    .line 53
    .line 54
    add-int/lit8 v5, v5, -0x1

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 61
    .line 62
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 63
    .line 64
    and-int/lit16 v8, v8, 0x400

    .line 65
    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    invoke-static {v3, v5}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    if-eqz v5, :cond_2

    .line 73
    .line 74
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 75
    .line 76
    and-int/lit16 v8, v8, 0x400

    .line 77
    .line 78
    if-eqz v8, :cond_c

    .line 79
    .line 80
    move-object v8, v6

    .line 81
    :goto_3
    if-eqz v5, :cond_2

    .line 82
    .line 83
    instance-of v9, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 84
    .line 85
    if-eqz v9, :cond_5

    .line 86
    .line 87
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 88
    .line 89
    add-int/lit8 v9, v4, 0x1

    .line 90
    .line 91
    array-length v10, v1

    .line 92
    if-ge v10, v9, :cond_4

    .line 93
    .line 94
    array-length v10, v1

    .line 95
    mul-int/lit8 v11, v10, 0x2

    .line 96
    .line 97
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    new-array v11, v11, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v1, v2, v11, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    move-object v1, v11

    .line 107
    :cond_4
    aput-object v5, v1, v4

    .line 108
    .line 109
    move v4, v9

    .line 110
    goto :goto_6

    .line 111
    :cond_5
    iget v9, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 112
    .line 113
    and-int/lit16 v9, v9, 0x400

    .line 114
    .line 115
    if-eqz v9, :cond_b

    .line 116
    .line 117
    instance-of v9, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 118
    .line 119
    if-eqz v9, :cond_b

    .line 120
    .line 121
    move-object v9, v5

    .line 122
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 123
    .line 124
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 125
    .line 126
    move v10, v2

    .line 127
    :goto_4
    if-eqz v9, :cond_a

    .line 128
    .line 129
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 130
    .line 131
    and-int/lit16 v11, v11, 0x400

    .line 132
    .line 133
    if-eqz v11, :cond_9

    .line 134
    .line 135
    add-int/lit8 v10, v10, 0x1

    .line 136
    .line 137
    if-ne v10, v7, :cond_6

    .line 138
    .line 139
    move-object v5, v9

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    if-nez v8, :cond_7

    .line 142
    .line 143
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 144
    .line 145
    new-array v11, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 146
    .line 147
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    if-eqz v5, :cond_8

    .line 151
    .line 152
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    move-object v5, v6

    .line 156
    :cond_8
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_a
    if-ne v10, v7, :cond_b

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_b
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    goto :goto_3

    .line 170
    :cond_c
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_d
    sget-object v3, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 174
    .line 175
    invoke-static {v1, v2, v4, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 176
    .line 177
    .line 178
    if-ne p2, v7, :cond_10

    .line 179
    .line 180
    invoke-static {v2, v4}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    iget v4, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 185
    .line 186
    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 187
    .line 188
    if-gt v4, v3, :cond_13

    .line 189
    .line 190
    move v5, v2

    .line 191
    :goto_7
    if-eqz v5, :cond_e

    .line 192
    .line 193
    aget-object v8, v1, v4

    .line 194
    .line 195
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 196
    .line 197
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_e

    .line 202
    .line 203
    invoke-static {v8, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_e

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_e
    aget-object v8, v1, v4

    .line 211
    .line 212
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_f

    .line 217
    .line 218
    move v5, v7

    .line 219
    :cond_f
    if-eq v4, v3, :cond_13

    .line 220
    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_10
    const/4 v3, 0x2

    .line 225
    if-ne p2, v3, :cond_23

    .line 226
    .line 227
    invoke-static {v2, v4}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iget v4, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 232
    .line 233
    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 234
    .line 235
    if-gt v4, v3, :cond_13

    .line 236
    .line 237
    move v5, v2

    .line 238
    :goto_8
    if-eqz v5, :cond_11

    .line 239
    .line 240
    aget-object v8, v1, v3

    .line 241
    .line 242
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 243
    .line 244
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_11

    .line 249
    .line 250
    invoke-static {v8, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_11

    .line 255
    .line 256
    :goto_9
    return v7

    .line 257
    :cond_11
    aget-object v8, v1, v3

    .line 258
    .line 259
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_12

    .line 264
    .line 265
    move v5, v7

    .line 266
    :cond_12
    if-eq v3, v4, :cond_13

    .line 267
    .line 268
    add-int/lit8 v3, v3, -0x1

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_13
    if-ne p2, v7, :cond_14

    .line 272
    .line 273
    goto/16 :goto_10

    .line 274
    .line 275
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-boolean p1, p1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 280
    .line 281
    if-eqz p1, :cond_22

    .line 282
    .line 283
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 284
    .line 285
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 286
    .line 287
    if-nez p1, :cond_15

    .line 288
    .line 289
    const-string/jumbo p1, "visitAncestors called on an unattached node"

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_15
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 296
    .line 297
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 298
    .line 299
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    :goto_a
    if-eqz p2, :cond_20

    .line 304
    .line 305
    iget-object v1, p2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 306
    .line 307
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 310
    .line 311
    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 312
    .line 313
    and-int/lit16 v1, v1, 0x400

    .line 314
    .line 315
    if-eqz v1, :cond_1e

    .line 316
    .line 317
    :goto_b
    if-eqz p1, :cond_1e

    .line 318
    .line 319
    iget v1, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 320
    .line 321
    and-int/lit16 v1, v1, 0x400

    .line 322
    .line 323
    if-eqz v1, :cond_1d

    .line 324
    .line 325
    move-object v1, p1

    .line 326
    move-object v3, v6

    .line 327
    :goto_c
    if-eqz v1, :cond_1d

    .line 328
    .line 329
    instance-of v4, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 330
    .line 331
    if-eqz v4, :cond_16

    .line 332
    .line 333
    move-object v6, v1

    .line 334
    goto :goto_f

    .line 335
    :cond_16
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 336
    .line 337
    and-int/lit16 v4, v4, 0x400

    .line 338
    .line 339
    if-eqz v4, :cond_1c

    .line 340
    .line 341
    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 342
    .line 343
    if-eqz v4, :cond_1c

    .line 344
    .line 345
    move-object v4, v1

    .line 346
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 347
    .line 348
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 349
    .line 350
    move v5, v2

    .line 351
    :goto_d
    if-eqz v4, :cond_1b

    .line 352
    .line 353
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 354
    .line 355
    and-int/lit16 v8, v8, 0x400

    .line 356
    .line 357
    if-eqz v8, :cond_1a

    .line 358
    .line 359
    add-int/lit8 v5, v5, 0x1

    .line 360
    .line 361
    if-ne v5, v7, :cond_17

    .line 362
    .line 363
    move-object v1, v4

    .line 364
    goto :goto_e

    .line 365
    :cond_17
    if-nez v3, :cond_18

    .line 366
    .line 367
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 368
    .line 369
    new-array v8, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 370
    .line 371
    invoke-direct {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_18
    if-eqz v1, :cond_19

    .line 375
    .line 376
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    move-object v1, v6

    .line 380
    :cond_19
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_1a
    :goto_e
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_1b
    if-ne v5, v7, :cond_1c

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_1c
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    goto :goto_c

    .line 394
    :cond_1d
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_1e
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    if-eqz p2, :cond_1f

    .line 402
    .line 403
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 404
    .line 405
    if-eqz p1, :cond_1f

    .line 406
    .line 407
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p1, Landroidx/compose/ui/node/TailModifierNode;

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_1f
    move-object p1, v6

    .line 413
    goto :goto_a

    .line 414
    :cond_20
    :goto_f
    if-nez v6, :cond_21

    .line 415
    .line 416
    goto :goto_10

    .line 417
    :cond_21
    invoke-virtual {p3, p0}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    check-cast p0, Ljava/lang/Boolean;

    .line 422
    .line 423
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    return p0

    .line 428
    :cond_22
    :goto_10
    return v2

    .line 429
    :cond_23
    const-string p0, "This function should only be used for 1-D focus search"

    .line 430
    .line 431
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    return v2

    .line 435
    :cond_24
    const-string p0, "This function should only be used within a parent that has focus."

    .line 436
    .line 437
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    return v2
.end method

.method public static final twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Ljava/lang/Boolean;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v0, v6, :cond_4

    .line 19
    .line 20
    if-eq v0, v5, :cond_3

    .line 21
    .line 22
    if-eq v0, v4, :cond_3

    .line 23
    .line 24
    if-ne v0, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Landroidx/glance/session/SessionWorkerKt$runSession$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, p0, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :cond_3
    invoke-static {p1, p0, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v7, "ActiveParent must have a focusedChild"

    .line 79
    .line 80
    if-eqz v0, :cond_d

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    aget v1, v1, v8

    .line 91
    .line 92
    if-eq v1, v6, :cond_8

    .line 93
    .line 94
    if-eq v1, v5, :cond_6

    .line 95
    .line 96
    if-eq v1, v4, :cond_6

    .line 97
    .line 98
    if-eq v1, v3, :cond_5

    .line 99
    .line 100
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_5
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_6
    if-nez p2, :cond_7

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_8
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_9

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_9
    if-nez p2, :cond_c

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 143
    .line 144
    if-ne p2, v1, :cond_b

    .line 145
    .line 146
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eqz p2, :cond_a

    .line 151
    .line 152
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    goto :goto_0

    .line 157
    :cond_a
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v2

    .line 161
    :cond_b
    const-string p0, "Searching for active node in inactive hierarchy"

    .line 162
    .line 163
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v2

    .line 167
    :cond_c
    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Landroidx/glance/session/SessionWorkerKt$runSession$6;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :cond_d
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v2
.end method
