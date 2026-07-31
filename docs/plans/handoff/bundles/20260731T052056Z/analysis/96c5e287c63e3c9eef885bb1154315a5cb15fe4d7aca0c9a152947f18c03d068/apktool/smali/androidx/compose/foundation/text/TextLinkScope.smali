.class public final Landroidx/compose/foundation/text/TextLinkScope;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public text:Landroidx/compose/ui/text/AnnotatedString;

.field public final textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-direct {v1, v2}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    invoke-direct {v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v4, v2, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v7, 0x0

    .line 45
    :goto_0
    if-ge v7, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 52
    .line 53
    const/high16 v9, -0x80000000

    .line 54
    .line 55
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v1, v8}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Ljava/util/List;

    .line 64
    .line 65
    new-instance v9, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/4 v11, 0x0

    .line 79
    :goto_1
    if-ge v11, v10, :cond_0

    .line 80
    .line 81
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 86
    .line 87
    new-instance v13, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 88
    .line 89
    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 90
    .line 91
    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 92
    .line 93
    iget v6, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 94
    .line 95
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v13, v15, v6, v14, v12}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v11, v11, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 123
    .line 124
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 125
    .line 126
    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 130
    .line 131
    return-void
.end method

.method public static calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    iget v0, p1, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineEnd(IZ)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ge v0, p1, :cond_0

    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 v0, 0xb

    .line 24
    .line 25
    invoke-static {p0, v1, p1, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final LinksComposables(ILandroidx/compose/runtime/GapComposer;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const v3, 0x44d294da

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v5, 0x2

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v5

    .line 23
    :goto_0
    or-int/2addr v3, v1

    .line 24
    and-int/lit8 v6, v3, 0x3

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eq v6, v5, :cond_1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v6, v8

    .line 32
    :goto_1
    and-int/lit8 v9, v3, 0x1

    .line 33
    .line 34
    invoke-virtual {v2, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_14

    .line 39
    .line 40
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 47
    .line 48
    iget-object v9, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 49
    .line 50
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-virtual {v9, v8, v10}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(II)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    move v11, v8

    .line 65
    :goto_2
    if-ge v11, v10, :cond_15

    .line 66
    .line 67
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 72
    .line 73
    iget v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 74
    .line 75
    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 76
    .line 77
    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 78
    .line 79
    if-eq v13, v15, :cond_13

    .line 80
    .line 81
    const v13, 0x2b3dee17

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 92
    .line 93
    if-ne v13, v15, :cond_2

    .line 94
    .line 95
    new-instance v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 96
    .line 97
    invoke-direct {v13}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 104
    .line 105
    move/from16 v16, v5

    .line 106
    .line 107
    new-instance v5, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    const/16 v17, 0x1

    .line 110
    .line 111
    const/4 v7, 0x3

    .line 112
    invoke-direct {v5, v7, v0, v12}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move/from16 v18, v7

    .line 116
    .line 117
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 118
    .line 119
    invoke-static {v7, v5}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const/16 v19, 0x4

    .line 128
    .line 129
    const/4 v4, 0x7

    .line 130
    if-ne v7, v15, :cond_3

    .line 131
    .line 132
    new-instance v7, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 133
    .line 134
    invoke-direct {v7, v4}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    invoke-static {v5, v8, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v7, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 147
    .line 148
    new-instance v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 149
    .line 150
    invoke-direct {v4, v8, v0, v12}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/TextRangeLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v5, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4, v13}, Landroidx/compose/foundation/ImageKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerId;->pointerIconHand:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 170
    .line 171
    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    or-int/2addr v5, v7

    .line 184
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    or-int/2addr v5, v7

    .line 189
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-nez v5, :cond_4

    .line 194
    .line 195
    if-ne v7, v15, :cond_5

    .line 196
    .line 197
    :cond_4
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 198
    .line 199
    invoke-direct {v7, v0, v12, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/AndroidUriHandler;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 206
    .line 207
    invoke-static {v4, v13, v7}, Landroidx/compose/foundation/ImageKt;->combinedClickable-auXiCPI$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-static {v4, v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 212
    .line 213
    .line 214
    check-cast v14, Landroidx/compose/ui/text/LinkAnnotation;

    .line 215
    .line 216
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    if-eqz v4, :cond_6

    .line 221
    .line 222
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 223
    .line 224
    if-nez v5, :cond_7

    .line 225
    .line 226
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 227
    .line 228
    if-nez v5, :cond_7

    .line 229
    .line 230
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 231
    .line 232
    if-nez v5, :cond_7

    .line 233
    .line 234
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 235
    .line 236
    if-nez v4, :cond_7

    .line 237
    .line 238
    :cond_6
    move/from16 v23, v3

    .line 239
    .line 240
    move v3, v8

    .line 241
    move/from16 v7, v19

    .line 242
    .line 243
    goto/16 :goto_f

    .line 244
    .line 245
    :cond_7
    const v4, 0x2b4a813f

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-ne v4, v15, :cond_8

    .line 256
    .line 257
    new-instance v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 258
    .line 259
    invoke-direct {v4, v13}, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_8
    check-cast v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    const/4 v7, 0x0

    .line 272
    if-ne v5, v15, :cond_9

    .line 273
    .line 274
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 275
    .line 276
    const/16 v13, 0xa

    .line 277
    .line 278
    invoke-direct {v5, v13, v4, v7}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 285
    .line 286
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 287
    .line 288
    invoke-static {v2, v13, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    iget-object v5, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 292
    .line 293
    iget-object v13, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 294
    .line 295
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    and-int/lit8 v5, v5, 0x2

    .line 300
    .line 301
    if-eqz v5, :cond_a

    .line 302
    .line 303
    move/from16 v5, v17

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_a
    move v5, v8

    .line 307
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 312
    .line 313
    .line 314
    move-result v21

    .line 315
    and-int/lit8 v21, v21, 0x1

    .line 316
    .line 317
    if-eqz v21, :cond_b

    .line 318
    .line 319
    move/from16 v21, v17

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_b
    move/from16 v21, v8

    .line 323
    .line 324
    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 325
    .line 326
    .line 327
    move-result-object v21

    .line 328
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    and-int/lit8 v13, v13, 0x4

    .line 333
    .line 334
    if-eqz v13, :cond_c

    .line 335
    .line 336
    move/from16 v13, v17

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_c
    move v13, v8

    .line 340
    :goto_5
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    if-eqz v7, :cond_d

    .line 349
    .line 350
    iget-object v7, v7, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 351
    .line 352
    :goto_6
    move/from16 v22, v8

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_d
    const/4 v7, 0x0

    .line 356
    goto :goto_6

    .line 357
    :goto_7
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    if-eqz v8, :cond_e

    .line 362
    .line 363
    iget-object v8, v8, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 364
    .line 365
    :goto_8
    move/from16 v23, v3

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_e
    const/4 v8, 0x0

    .line 369
    goto :goto_8

    .line 370
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_f

    .line 375
    .line 376
    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_f
    const/4 v3, 0x0

    .line 380
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 381
    .line 382
    .line 383
    move-result-object v14

    .line 384
    if-eqz v14, :cond_10

    .line 385
    .line 386
    iget-object v14, v14, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 387
    .line 388
    :goto_b
    move-object/from16 v20, v3

    .line 389
    .line 390
    const/4 v3, 0x7

    .line 391
    goto :goto_c

    .line 392
    :cond_10
    const/4 v14, 0x0

    .line 393
    goto :goto_b

    .line 394
    :goto_c
    new-array v3, v3, [Ljava/lang/Object;

    .line 395
    .line 396
    aput-object v5, v3, v22

    .line 397
    .line 398
    aput-object v21, v3, v17

    .line 399
    .line 400
    aput-object v13, v3, v16

    .line 401
    .line 402
    aput-object v7, v3, v18

    .line 403
    .line 404
    aput-object v8, v3, v19

    .line 405
    .line 406
    const/4 v5, 0x5

    .line 407
    aput-object v20, v3, v5

    .line 408
    .line 409
    const/4 v5, 0x6

    .line 410
    aput-object v14, v3, v5

    .line 411
    .line 412
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    or-int/2addr v7, v8

    .line 421
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    if-nez v7, :cond_12

    .line 426
    .line 427
    if-ne v8, v15, :cond_11

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_11
    move/from16 v7, v19

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_12
    :goto_d
    new-instance v8, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 434
    .line 435
    move/from16 v7, v19

    .line 436
    .line 437
    invoke-direct {v8, v0, v12, v4, v7}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    :goto_e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 444
    .line 445
    shl-int/lit8 v4, v23, 0x6

    .line 446
    .line 447
    and-int/lit16 v4, v4, 0x380

    .line 448
    .line 449
    invoke-virtual {v0, v3, v8, v2, v4}, Landroidx/compose/foundation/text/TextLinkScope;->StyleAnnotation([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 450
    .line 451
    .line 452
    move/from16 v3, v22

    .line 453
    .line 454
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 455
    .line 456
    .line 457
    goto :goto_10

    .line 458
    :goto_f
    const v4, 0x2b6975be

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 465
    .line 466
    .line 467
    :goto_10
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 468
    .line 469
    .line 470
    goto :goto_11

    .line 471
    :cond_13
    move/from16 v23, v3

    .line 472
    .line 473
    move/from16 v16, v5

    .line 474
    .line 475
    move v3, v8

    .line 476
    const/4 v7, 0x4

    .line 477
    const/16 v17, 0x1

    .line 478
    .line 479
    const v4, 0x2b69abfe

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 486
    .line 487
    .line 488
    :goto_11
    add-int/lit8 v11, v11, 0x1

    .line 489
    .line 490
    move v8, v3

    .line 491
    move/from16 v5, v16

    .line 492
    .line 493
    move/from16 v3, v23

    .line 494
    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 498
    .line 499
    .line 500
    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    if-eqz v2, :cond_16

    .line 505
    .line 506
    new-instance v3, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 507
    .line 508
    const/16 v4, 0x9

    .line 509
    .line 510
    invoke-direct {v3, v1, v4, v0}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 514
    .line 515
    :cond_16
    return-void
.end method

.method public final StyleAnnotation([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 7

    .line 1
    const v0, -0x7c28da43

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x30

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x10

    .line 22
    .line 23
    :goto_0
    or-int/2addr v0, p4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p4

    .line 26
    :goto_1
    and-int/lit16 v2, p4, 0x180

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x100

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v2, 0x80

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v2

    .line 42
    :cond_3
    array-length v2, p1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, -0x155b52f2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    array-length v2, p1

    .line 54
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x4

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    move v2, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v2, v4

    .line 65
    :goto_3
    or-int/2addr v0, v2

    .line 66
    array-length v2, p1

    .line 67
    move v5, v4

    .line 68
    :goto_4
    if-ge v5, v2, :cond_6

    .line 69
    .line 70
    aget-object v6, p1, v5

    .line 71
    .line 72
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_5

    .line 77
    .line 78
    move v6, v3

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    move v6, v4

    .line 81
    :goto_5
    or-int/2addr v0, v6

    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 86
    .line 87
    .line 88
    and-int/lit8 v2, v0, 0xe

    .line 89
    .line 90
    if-nez v2, :cond_7

    .line 91
    .line 92
    or-int/lit8 v0, v0, 0x2

    .line 93
    .line 94
    :cond_7
    and-int/lit16 v2, v0, 0x93

    .line 95
    .line 96
    const/16 v3, 0x92

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    if-eq v2, v3, :cond_8

    .line 100
    .line 101
    move v2, v5

    .line 102
    goto :goto_6

    .line 103
    :cond_8
    move v2, v4

    .line 104
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 105
    .line 106
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_c

    .line 111
    .line 112
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    invoke-direct {v2, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v2, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1}, Lokhttp3/Headers$Builder;->addSpread(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    and-int/lit8 v0, v0, 0x70

    .line 141
    .line 142
    if-ne v0, v1, :cond_9

    .line 143
    .line 144
    move v4, v5

    .line 145
    :cond_9
    or-int v0, v3, v4

    .line 146
    .line 147
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-nez v0, :cond_a

    .line 152
    .line 153
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 154
    .line 155
    if-ne v1, v0, :cond_b

    .line 156
    .line 157
    :cond_a
    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;

    .line 158
    .line 159
    invoke-direct {v1, p0, p2, v5}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 166
    .line 167
    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/Updater;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_c
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    :goto_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    if-eqz p3, :cond_d

    .line 179
    .line 180
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 181
    .line 182
    const/4 v5, 0x5

    .line 183
    move-object v1, p0

    .line 184
    move-object v2, p1

    .line 185
    move-object v3, p2

    .line 186
    move v4, p4

    .line 187
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 191
    .line 192
    :cond_d
    return-void
.end method
