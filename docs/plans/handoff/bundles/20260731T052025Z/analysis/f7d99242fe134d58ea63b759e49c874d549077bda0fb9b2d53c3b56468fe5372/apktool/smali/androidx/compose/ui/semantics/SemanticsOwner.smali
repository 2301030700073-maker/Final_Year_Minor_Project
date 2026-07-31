.class public final Landroidx/compose/ui/semantics/SemanticsOwner;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final listeners:Landroidx/collection/MutableObjectList;

.field public final nodes:Landroidx/collection/IntObjectMap;

.field public final outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

.field public final rootNode:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->rootNode:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->nodes:Landroidx/collection/IntObjectMap;

    .line 9
    .line 10
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-direct {p1, p2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->rootNode:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-direct {v1, v3, v2, p0, v0}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final notifySemanticsChange$ui(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 13

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 4
    .line 5
    iget p0, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, p0, :cond_1b

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsListener;

    .line 14
    .line 15
    check-cast v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 16
    .line 17
    iget-object v4, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    .line 18
    .line 19
    iget-object v5, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    iget v7, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 31
    .line 32
    iget-object v10, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 33
    .line 34
    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    if-nez v9, :cond_0

    .line 39
    .line 40
    move-object v9, v8

    .line 41
    :cond_0
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString;

    .line 42
    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    iget-object v9, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v9, v8

    .line 49
    :goto_1
    if-eqz v6, :cond_3

    .line 50
    .line 51
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    iget-object v11, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 54
    .line 55
    invoke-virtual {v11, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    move-object v10, v8

    .line 62
    :cond_2
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    .line 63
    .line 64
    if-eqz v10, :cond_3

    .line 65
    .line 66
    iget-object v10, v10, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object v10, v8

    .line 70
    :goto_2
    const/4 v11, 0x1

    .line 71
    if-eq v9, v10, :cond_6

    .line 72
    .line 73
    if-nez v9, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4, v5, v7, v11}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    if-nez v10, :cond_5

    .line 80
    .line 81
    invoke-virtual {v4, v5, v7, v1}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 86
    .line 87
    invoke-static {v6, v9}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 92
    .line 93
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType$Companion;->Text:Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 94
    .line 95
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_6

    .line 100
    .line 101
    invoke-static {v10}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v4, v5, v7, v9}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyValueChanged(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/autofill/AutofillValue;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_3
    if-eqz p2, :cond_8

    .line 109
    .line 110
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 111
    .line 112
    iget-object v10, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 113
    .line 114
    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    if-nez v9, :cond_7

    .line 119
    .line 120
    move-object v9, v8

    .line 121
    :cond_7
    check-cast v9, Landroidx/compose/ui/state/ToggleableState;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_8
    move-object v9, v8

    .line 125
    :goto_4
    if-eqz v6, :cond_a

    .line 126
    .line 127
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 128
    .line 129
    iget-object v12, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 130
    .line 131
    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    if-nez v10, :cond_9

    .line 136
    .line 137
    move-object v10, v8

    .line 138
    :cond_9
    check-cast v10, Landroidx/compose/ui/state/ToggleableState;

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_a
    move-object v10, v8

    .line 142
    :goto_5
    if-eq v9, v10, :cond_f

    .line 143
    .line 144
    if-nez v9, :cond_b

    .line 145
    .line 146
    invoke-virtual {v4, v5, v7, v11}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 147
    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_b
    if-nez v10, :cond_c

    .line 151
    .line 152
    invoke-virtual {v4, v5, v7, v1}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_c
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 157
    .line 158
    invoke-static {v6, v9}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 163
    .line 164
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType$Companion;->Toggle:Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 165
    .line 166
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_f

    .line 171
    .line 172
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-eqz v9, :cond_e

    .line 177
    .line 178
    if-eq v9, v11, :cond_d

    .line 179
    .line 180
    move-object v9, v8

    .line 181
    goto :goto_6

    .line 182
    :cond_d
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_e
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 186
    .line 187
    :goto_6
    if-eqz v9, :cond_f

    .line 188
    .line 189
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-static {v9}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillToggleValue(Z)Landroid/view/autofill/AutofillValue;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-virtual {v4, v5, v7, v9}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyValueChanged(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/autofill/AutofillValue;)V

    .line 198
    .line 199
    .line 200
    :cond_f
    :goto_7
    if-eqz p2, :cond_11

    .line 201
    .line 202
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 203
    .line 204
    iget-object v10, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 205
    .line 206
    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    if-nez v9, :cond_10

    .line 211
    .line 212
    move-object v9, v8

    .line 213
    :cond_10
    check-cast v9, Landroidx/compose/ui/autofill/FillableData;

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_11
    move-object v9, v8

    .line 217
    :goto_8
    if-eqz v6, :cond_13

    .line 218
    .line 219
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 220
    .line 221
    iget-object v12, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 222
    .line 223
    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    if-nez v10, :cond_12

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :cond_12
    move-object v8, v10

    .line 231
    :goto_9
    check-cast v8, Landroidx/compose/ui/autofill/FillableData;

    .line 232
    .line 233
    :cond_13
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-nez v10, :cond_16

    .line 238
    .line 239
    if-nez v9, :cond_14

    .line 240
    .line 241
    invoke-virtual {v4, v5, v7, v11}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 242
    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_14
    if-nez v8, :cond_15

    .line 246
    .line 247
    invoke-virtual {v4, v5, v7, v1}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 248
    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_15
    check-cast v8, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 252
    .line 253
    iget-object v8, v8, Landroidx/compose/ui/autofill/AndroidFillableData;->autofillValue:Landroid/view/autofill/AutofillValue;

    .line 254
    .line 255
    invoke-virtual {v4, v5, v7, v8}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->notifyValueChanged(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/autofill/AutofillValue;)V

    .line 256
    .line 257
    .line 258
    :cond_16
    :goto_a
    if-eqz p2, :cond_17

    .line 259
    .line 260
    iget-object v4, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 261
    .line 262
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 263
    .line 264
    invoke-virtual {v4, v5}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-ne v4, v11, :cond_17

    .line 269
    .line 270
    move v4, v11

    .line 271
    goto :goto_b

    .line 272
    :cond_17
    move v4, v1

    .line 273
    :goto_b
    if-eqz v6, :cond_18

    .line 274
    .line 275
    iget-object v5, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 276
    .line 277
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 278
    .line 279
    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-ne v5, v11, :cond_18

    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_18
    move v11, v1

    .line 287
    :goto_c
    if-eq v4, v11, :cond_1a

    .line 288
    .line 289
    iget-object v3, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    .line 290
    .line 291
    if-eqz v11, :cond_19

    .line 292
    .line 293
    invoke-virtual {v3, v7}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 294
    .line 295
    .line 296
    goto :goto_d

    .line 297
    :cond_19
    invoke-virtual {v3, v7}, Landroidx/collection/MutableIntSet;->remove(I)Z

    .line 298
    .line 299
    .line 300
    :cond_1a
    :goto_d
    add-int/lit8 v2, v2, 0x1

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_1b
    return-void
.end method
