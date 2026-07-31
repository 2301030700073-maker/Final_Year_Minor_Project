.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v0, 0x7f120301

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const/16 v9, 0x38

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x1

    .line 43
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 54
    .line 55
    invoke-direct {v3, v1}, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 59
    .line 60
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;

    .line 61
    .line 62
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const v1, 0x7f120302

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/4 v10, 0x3

    .line 83
    const/16 v11, 0x38

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x1

    .line 89
    const/4 v9, 0x2

    .line 90
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 101
    .line 102
    invoke-direct {v5, v3}, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    iput-object v5, v1, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 106
    .line 107
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;

    .line 108
    .line 109
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const v3, 0x7f120303

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const/4 v12, 0x3

    .line 130
    const/16 v13, 0xb8

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x1

    .line 136
    const/4 v11, 0x3

    .line 137
    invoke-static/range {v5 .. v13}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;

    .line 142
    .line 143
    const/4 v5, 0x2

    .line 144
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 148
    .line 149
    invoke-direct {v6, v4}, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 150
    .line 151
    .line 152
    iput-object v6, v3, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 153
    .line 154
    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;

    .line 155
    .line 156
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v4, v4, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v4, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 176
    .line 177
    if-nez v4, :cond_1

    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v4, v5, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v4, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object v4, v5, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v4, Landroid/widget/TextView;

    .line 193
    .line 194
    :goto_0
    invoke-virtual {v0, v4, v2}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 195
    .line 196
    .line 197
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v4, v4, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsRequestedList:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v4, Landroid/widget/TextView;

    .line 205
    .line 206
    const/high16 v5, 0x41400000    # 12.0f

    .line 207
    .line 208
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    new-instance v6, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;

    .line 213
    .line 214
    invoke-direct {v6, v0, v1, v4, v5}, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;-><init>(Lcom/skydoves/balloon/Balloon;Lcom/skydoves/balloon/Balloon;Landroid/view/View;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v6}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 228
    .line 229
    new-instance v0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;

    .line 230
    .line 231
    invoke-direct {v0, v1, v3, p0, v2}, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v0}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 235
    .line 236
    .line 237
    :cond_2
    :goto_1
    return-void

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_5

    .line 243
    .line 244
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Landroid/widget/Space;

    .line 252
    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    .line 255
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 256
    .line 257
    if-eqz p0, :cond_4

    .line 258
    .line 259
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 260
    .line 261
    const/4 v3, -0x1

    .line 262
    if-eqz v2, :cond_3

    .line 263
    .line 264
    move p0, v3

    .line 265
    goto :goto_2

    .line 266
    :cond_3
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 267
    .line 268
    :goto_2
    invoke-direct {v1, v3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_4
    const-string p0, "bottomSheetBehavior"

    .line 276
    .line 277
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const/4 p0, 0x0

    .line 281
    throw p0

    .line 282
    :cond_5
    :goto_3
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
