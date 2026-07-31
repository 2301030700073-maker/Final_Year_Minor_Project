.class public abstract Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final addVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    :cond_0
    iget v3, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p2, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-gt v3, p2, :cond_1

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 56
    .line 57
    .line 58
    if-eq v3, p2, :cond_1

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public static fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/HandwritingGesture;->getFallbackText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x5

    .line 19
    return p0
.end method

.method public static performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLandroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V
    .locals 6

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_7

    .line 7
    .line 8
    sget p3, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 9
    .line 10
    const/16 p3, 0x20

    .line 11
    .line 12
    shr-long v2, p0, p3

    .line 13
    .line 14
    long-to-int p3, v2

    .line 15
    and-long v2, p0, v0

    .line 16
    .line 17
    long-to-int v2, v2

    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    if-lez p3, :cond_0

    .line 21
    .line 22
    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v3

    .line 28
    :goto_0
    iget-object v5, p2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v2, v5, :cond_1

    .line 35
    .line 36
    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :cond_1
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isPunctuation(I)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    sub-int/2addr p3, p0

    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    :cond_3
    invoke-static {p3, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_7

    .line 85
    .line 86
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isPunctuation(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    :cond_5
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    add-int/2addr v2, p0

    .line 103
    iget-object p0, p2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eq v2, p0, :cond_6

    .line 110
    .line 111
    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    :cond_6
    invoke-static {p3, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    :cond_7
    :goto_1
    new-instance p2, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 126
    .line 127
    and-long/2addr v0, p0

    .line 128
    long-to-int p3, v0

    .line 129
    invoke-direct {p2, p3, p3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 130
    .line 131
    .line 132
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    new-instance p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 137
    .line 138
    const/4 p3, 0x0

    .line 139
    invoke-direct {p1, p0, p3}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 140
    .line 141
    .line 142
    const/4 p0, 0x2

    .line 143
    new-array p0, p0, [Landroidx/compose/ui/text/input/EditCommand;

    .line 144
    .line 145
    aput-object p2, p0, p3

    .line 146
    .line 147
    const/4 p2, 0x1

    .line 148
    aput-object p1, p0, p2

    .line 149
    .line 150
    new-instance p1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 151
    .line 152
    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, p1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public static performHandwritingGesture$foundation(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I
    .locals 16

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v7, 0x0

    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    iget-object v6, v6, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 24
    .line 25
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v6, v7

    .line 33
    :goto_0
    invoke-virtual {v5, v6}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    :goto_1
    const/4 v0, 0x3

    .line 40
    return v0

    .line 41
    :cond_2
    instance-of v6, v1, Landroid/view/inputmethod/SelectGesture;

    .line 42
    .line 43
    const-wide v8, 0xffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const/16 v10, 0x20

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x1

    .line 52
    if-eqz v6, :cond_5

    .line 53
    .line 54
    check-cast v1, Landroid/view/inputmethod/SelectGesture;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eq v5, v12, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v11, v12

    .line 72
    :goto_2
    invoke-static {v0, v3, v11}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    return v0

    .line 87
    :cond_4
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 88
    .line 89
    shr-long v10, v5, v10

    .line 90
    .line 91
    long-to-int v1, v10

    .line 92
    and-long/2addr v5, v8

    .line 93
    long-to-int v3, v5

    .line 94
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    if-eqz v2, :cond_c

    .line 101
    .line 102
    invoke-virtual {v2, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation(Z)V

    .line 103
    .line 104
    .line 105
    return v12

    .line 106
    :cond_5
    instance-of v6, v1, Landroid/view/inputmethod/DeleteGesture;

    .line 107
    .line 108
    if-eqz v6, :cond_9

    .line 109
    .line 110
    check-cast v1, Landroid/view/inputmethod/DeleteGesture;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eq v2, v12, :cond_6

    .line 117
    .line 118
    move v2, v11

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    move v2, v12

    .line 121
    :goto_3
    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    return v0

    .line 144
    :cond_7
    if-ne v2, v12, :cond_8

    .line 145
    .line 146
    move v11, v12

    .line 147
    :cond_8
    invoke-static {v6, v7, v5, v11, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLandroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V

    .line 148
    .line 149
    .line 150
    return v12

    .line 151
    :cond_9
    instance-of v6, v1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 152
    .line 153
    if-eqz v6, :cond_d

    .line 154
    .line 155
    check-cast v1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v5}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eq v6, v12, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    move v11, v12

    .line 181
    :goto_4
    invoke-static {v0, v3, v5, v11}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    return v0

    .line 196
    :cond_b
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 197
    .line 198
    shr-long v10, v5, v10

    .line 199
    .line 200
    long-to-int v1, v10

    .line 201
    and-long/2addr v5, v8

    .line 202
    long-to-int v3, v5

    .line 203
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    if-eqz v2, :cond_c

    .line 210
    .line 211
    invoke-virtual {v2, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation(Z)V

    .line 212
    .line 213
    .line 214
    :cond_c
    return v12

    .line 215
    :cond_d
    instance-of v2, v1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 216
    .line 217
    if-eqz v2, :cond_11

    .line 218
    .line 219
    check-cast v1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eq v2, v12, :cond_e

    .line 226
    .line 227
    move v2, v11

    .line 228
    goto :goto_5

    .line 229
    :cond_e
    move v2, v12

    .line 230
    :goto_5
    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-static {v0, v3, v6, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 247
    .line 248
    .line 249
    move-result-wide v6

    .line 250
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_f

    .line 255
    .line 256
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    return v0

    .line 261
    :cond_f
    if-ne v2, v12, :cond_10

    .line 262
    .line 263
    move v11, v12

    .line 264
    :cond_10
    invoke-static {v6, v7, v5, v11, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLandroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V

    .line 265
    .line 266
    .line 267
    return v12

    .line 268
    :cond_11
    instance-of v2, v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 269
    .line 270
    const/4 v6, 0x2

    .line 271
    const/4 v8, -0x1

    .line 272
    if-eqz v2, :cond_1a

    .line 273
    .line 274
    check-cast v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 275
    .line 276
    if-nez v3, :cond_12

    .line 277
    .line 278
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    return v0

    .line 283
    :cond_12
    invoke-virtual {v1}, Landroid/view/inputmethod/JoinOrSplitGesture;->getJoinOrSplitPoint()Landroid/graphics/PointF;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    .line 288
    .line 289
    .line 290
    move-result-wide v13

    .line 291
    invoke-static {v0, v13, v14, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eq v2, v8, :cond_19

    .line 296
    .line 297
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_13

    .line 302
    .line 303
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 304
    .line 305
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-ne v0, v12, :cond_13

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_13
    move v0, v2

    .line 313
    :goto_6
    if-lez v0, :cond_15

    .line 314
    .line 315
    invoke-static {v5, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-nez v3, :cond_14

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_14
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    sub-int/2addr v0, v1

    .line 331
    goto :goto_6

    .line 332
    :cond_15
    :goto_7
    iget-object v1, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-ge v2, v1, :cond_17

    .line 339
    .line 340
    invoke-static {v5, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-nez v3, :cond_16

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_16
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    add-int/2addr v2, v1

    .line 356
    goto :goto_7

    .line 357
    :cond_17
    :goto_8
    invoke-static {v0, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 358
    .line 359
    .line 360
    move-result-wide v0

    .line 361
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_18

    .line 366
    .line 367
    shr-long/2addr v0, v10

    .line 368
    long-to-int v0, v0

    .line 369
    new-instance v1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 370
    .line 371
    invoke-direct {v1, v0, v0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 375
    .line 376
    const-string v2, " "

    .line 377
    .line 378
    invoke-direct {v0, v2, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 379
    .line 380
    .line 381
    new-array v2, v6, [Landroidx/compose/ui/text/input/EditCommand;

    .line 382
    .line 383
    aput-object v1, v2, v11

    .line 384
    .line 385
    aput-object v0, v2, v12

    .line 386
    .line 387
    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 388
    .line 389
    invoke-direct {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    return v12

    .line 396
    :cond_18
    invoke-static {v0, v1, v5, v11, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLandroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V

    .line 397
    .line 398
    .line 399
    return v12

    .line 400
    :cond_19
    :goto_9
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    return v0

    .line 405
    :cond_1a
    instance-of v2, v1, Landroid/view/inputmethod/InsertGesture;

    .line 406
    .line 407
    if-eqz v2, :cond_1e

    .line 408
    .line 409
    check-cast v1, Landroid/view/inputmethod/InsertGesture;

    .line 410
    .line 411
    if-nez v3, :cond_1b

    .line 412
    .line 413
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    return v0

    .line 418
    :cond_1b
    invoke-virtual {v1}, Landroid/view/inputmethod/InsertGesture;->getInsertionPoint()Landroid/graphics/PointF;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    .line 423
    .line 424
    .line 425
    move-result-wide v9

    .line 426
    invoke-static {v0, v9, v10, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eq v2, v8, :cond_1d

    .line 431
    .line 432
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    if-eqz v0, :cond_1c

    .line 437
    .line 438
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 439
    .line 440
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-ne v0, v12, :cond_1c

    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_1c
    invoke-virtual {v1}, Landroid/view/inputmethod/InsertGesture;->getTextToInsert()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 452
    .line 453
    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 454
    .line 455
    .line 456
    new-instance v2, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 457
    .line 458
    invoke-direct {v2, v0, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    new-array v0, v6, [Landroidx/compose/ui/text/input/EditCommand;

    .line 462
    .line 463
    aput-object v1, v0, v11

    .line 464
    .line 465
    aput-object v2, v0, v12

    .line 466
    .line 467
    new-instance v1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 468
    .line 469
    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    return v12

    .line 476
    :cond_1d
    :goto_a
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    return v0

    .line 481
    :cond_1e
    instance-of v2, v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 482
    .line 483
    if-eqz v2, :cond_28

    .line 484
    .line 485
    check-cast v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 486
    .line 487
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    if-eqz v2, :cond_1f

    .line 492
    .line 493
    iget-object v7, v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 494
    .line 495
    :cond_1f
    invoke-virtual {v1}, Landroid/view/inputmethod/RemoveSpaceGesture;->getStartPoint()Landroid/graphics/PointF;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    .line 500
    .line 501
    .line 502
    move-result-wide v13

    .line 503
    invoke-virtual {v1}, Landroid/view/inputmethod/RemoveSpaceGesture;->getEndPoint()Landroid/graphics/PointF;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    move v9, v10

    .line 508
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    .line 509
    .line 510
    .line 511
    move-result-wide v10

    .line 512
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    if-eqz v7, :cond_24

    .line 517
    .line 518
    iget-object v2, v7, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 519
    .line 520
    if-nez v0, :cond_20

    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_20
    invoke-interface {v0, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    .line 524
    .line 525
    .line 526
    move-result-wide v13

    .line 527
    invoke-interface {v0, v10, v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    .line 528
    .line 529
    .line 530
    move-result-wide v10

    .line 531
    invoke-static {v2, v13, v14, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-static {v2, v10, v11, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-ne v0, v8, :cond_21

    .line 540
    .line 541
    if-ne v3, v8, :cond_23

    .line 542
    .line 543
    sget-wide v2, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 544
    .line 545
    goto :goto_d

    .line 546
    :cond_21
    if-ne v3, v8, :cond_22

    .line 547
    .line 548
    goto :goto_b

    .line 549
    :cond_22
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    :goto_b
    move v3, v0

    .line 554
    :cond_23
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    add-float/2addr v3, v0

    .line 563
    const/high16 v0, 0x40000000    # 2.0f

    .line 564
    .line 565
    div-float/2addr v3, v0

    .line 566
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 567
    .line 568
    shr-long/2addr v13, v9

    .line 569
    long-to-int v7, v13

    .line 570
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 571
    .line 572
    .line 573
    move-result v13

    .line 574
    shr-long/2addr v10, v9

    .line 575
    long-to-int v10, v10

    .line 576
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    .line 581
    .line 582
    .line 583
    move-result v11

    .line 584
    const v13, 0x3dcccccd    # 0.1f

    .line 585
    .line 586
    .line 587
    sub-float v14, v3, v13

    .line 588
    .line 589
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 590
    .line 591
    .line 592
    move-result v7

    .line 593
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 594
    .line 595
    .line 596
    move-result v10

    .line 597
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    add-float/2addr v3, v13

    .line 602
    invoke-direct {v0, v11, v14, v7, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 603
    .line 604
    .line 605
    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->AnyOverlap:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 606
    .line 607
    const/4 v15, 0x0

    .line 608
    invoke-virtual {v2, v0, v15, v3}, Landroidx/compose/ui/text/MultiParagraph;->getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;)J

    .line 609
    .line 610
    .line 611
    move-result-wide v2

    .line 612
    goto :goto_d

    .line 613
    :cond_24
    :goto_c
    sget-wide v2, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 614
    .line 615
    :goto_d
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    if-eqz v0, :cond_25

    .line 620
    .line 621
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    return v0

    .line 626
    :cond_25
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 627
    .line 628
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 629
    .line 630
    .line 631
    iput v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 632
    .line 633
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 634
    .line 635
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 636
    .line 637
    .line 638
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 639
    .line 640
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 641
    .line 642
    .line 643
    move-result v10

    .line 644
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 645
    .line 646
    .line 647
    move-result v11

    .line 648
    invoke-virtual {v5, v10, v11}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 653
    .line 654
    new-instance v10, Lkotlin/text/Regex;

    .line 655
    .line 656
    const-string v11, "\\s+"

    .line 657
    .line 658
    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    new-instance v11, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 662
    .line 663
    const/16 v13, 0xb

    .line 664
    .line 665
    invoke-direct {v11, v13, v0, v7}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v10, v5, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 673
    .line 674
    if-eq v0, v8, :cond_27

    .line 675
    .line 676
    iget v10, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 677
    .line 678
    if-ne v10, v8, :cond_26

    .line 679
    .line 680
    goto :goto_e

    .line 681
    :cond_26
    shr-long v8, v2, v9

    .line 682
    .line 683
    long-to-int v1, v8

    .line 684
    add-int v8, v1, v0

    .line 685
    .line 686
    add-int/2addr v1, v10

    .line 687
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 688
    .line 689
    .line 690
    move-result v9

    .line 691
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 696
    .line 697
    sub-int/2addr v2, v3

    .line 698
    sub-int/2addr v9, v2

    .line 699
    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    new-instance v2, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 704
    .line 705
    invoke-direct {v2, v8, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 706
    .line 707
    .line 708
    new-instance v1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 709
    .line 710
    invoke-direct {v1, v0, v12}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 711
    .line 712
    .line 713
    new-array v0, v6, [Landroidx/compose/ui/text/input/EditCommand;

    .line 714
    .line 715
    const/4 v15, 0x0

    .line 716
    aput-object v2, v0, v15

    .line 717
    .line 718
    aput-object v1, v0, v12

    .line 719
    .line 720
    new-instance v1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    .line 721
    .line 722
    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v4, v1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    return v12

    .line 729
    :cond_27
    :goto_e
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)I

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    return v0

    .line 734
    :cond_28
    return v6
.end method

.method public static previewHandwritingGesture$foundation(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/os/CancellationSignal;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_2
    instance-of v0, p1, Landroid/view/inputmethod/SelectGesture;

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    check-cast p1, Landroid/view/inputmethod/SelectGesture;

    .line 40
    .line 41
    if-eqz p2, :cond_12

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eq p1, v3, :cond_3

    .line 56
    .line 57
    move p1, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move p1, v3

    .line 60
    :goto_1
    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setSelectionPreviewHighlightRange-5zc-tL8(J)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 76
    .line 77
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setDeletionPreviewHighlightRange-5zc-tL8(J)V

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_12

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_6
    instance-of v0, p1, Landroid/view/inputmethod/DeleteGesture;

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    check-cast p1, Landroid/view/inputmethod/DeleteGesture;

    .line 99
    .line 100
    if-eqz p2, :cond_12

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eq p1, v3, :cond_7

    .line 115
    .line 116
    move p1, v1

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    move p1, v3

    .line 119
    :goto_2
    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    .line 120
    .line 121
    .line 122
    move-result-wide p0

    .line 123
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setDeletionPreviewHighlightRange-5zc-tL8(J)V

    .line 128
    .line 129
    .line 130
    :cond_8
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 135
    .line 136
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setSelectionPreviewHighlightRange-5zc-tL8(J)V

    .line 137
    .line 138
    .line 139
    :cond_9
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_12

    .line 144
    .line 145
    invoke-virtual {p2, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :cond_a
    instance-of v0, p1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 154
    .line 155
    if-eqz v0, :cond_e

    .line 156
    .line 157
    check-cast p1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 158
    .line 159
    if-eqz p2, :cond_12

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eq p1, v3, :cond_b

    .line 182
    .line 183
    move p1, v1

    .line 184
    goto :goto_3

    .line 185
    :cond_b
    move p1, v3

    .line 186
    :goto_3
    invoke-static {p0, v0, v4, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 187
    .line 188
    .line 189
    move-result-wide p0

    .line 190
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 191
    .line 192
    if-eqz v0, :cond_c

    .line 193
    .line 194
    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setSelectionPreviewHighlightRange-5zc-tL8(J)V

    .line 195
    .line 196
    .line 197
    :cond_c
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 198
    .line 199
    if-eqz v0, :cond_d

    .line 200
    .line 201
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 202
    .line 203
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setDeletionPreviewHighlightRange-5zc-tL8(J)V

    .line 204
    .line 205
    .line 206
    :cond_d
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-nez p0, :cond_12

    .line 211
    .line 212
    invoke-virtual {p2, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_e
    instance-of v0, p1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 220
    .line 221
    if-eqz v0, :cond_14

    .line 222
    .line 223
    check-cast p1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 224
    .line 225
    if-eqz p2, :cond_12

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eq p1, v3, :cond_f

    .line 248
    .line 249
    move p1, v1

    .line 250
    goto :goto_4

    .line 251
    :cond_f
    move p1, v3

    .line 252
    :goto_4
    invoke-static {p0, v0, v4, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    .line 253
    .line 254
    .line 255
    move-result-wide p0

    .line 256
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 257
    .line 258
    if-eqz v0, :cond_10

    .line 259
    .line 260
    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setDeletionPreviewHighlightRange-5zc-tL8(J)V

    .line 261
    .line 262
    .line 263
    :cond_10
    iget-object v0, p2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 264
    .line 265
    if-eqz v0, :cond_11

    .line 266
    .line 267
    sget-wide v4, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 268
    .line 269
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setSelectionPreviewHighlightRange-5zc-tL8(J)V

    .line 270
    .line 271
    .line 272
    :cond_11
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-nez p0, :cond_12

    .line 277
    .line 278
    invoke-virtual {p2, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 282
    .line 283
    .line 284
    :cond_12
    :goto_5
    if-eqz p3, :cond_13

    .line 285
    .line 286
    new-instance p0, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda0;

    .line 287
    .line 288
    invoke-direct {p0, v1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 292
    .line 293
    .line 294
    :cond_13
    return v3

    .line 295
    :cond_14
    :goto_6
    return v1
.end method

.method public static setHandwritingGestures(Landroid/view/inputmethod/EditorInfo;)V
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 13
    .line 14
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    aput-object v1, v0, v4

    .line 18
    .line 19
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    aput-object v1, v0, v5

    .line 23
    .line 24
    const-class v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 25
    .line 26
    const/4 v6, 0x4

    .line 27
    aput-object v1, v0, v6

    .line 28
    .line 29
    const-class v1, Landroid/view/inputmethod/InsertGesture;

    .line 30
    .line 31
    const/4 v7, 0x5

    .line 32
    aput-object v1, v0, v7

    .line 33
    .line 34
    const-class v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 35
    .line 36
    const/4 v7, 0x6

    .line 37
    aput-object v1, v0, v7

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGestures(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    new-array v0, v6, [Ljava/lang/Class;

    .line 47
    .line 48
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    .line 49
    .line 50
    aput-object v1, v0, v2

    .line 51
    .line 52
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    .line 53
    .line 54
    aput-object v1, v0, v3

    .line 55
    .line 56
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    .line 57
    .line 58
    aput-object v1, v0, v4

    .line 59
    .line 60
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    .line 61
    .line 62
    aput-object v1, v0, v5

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
