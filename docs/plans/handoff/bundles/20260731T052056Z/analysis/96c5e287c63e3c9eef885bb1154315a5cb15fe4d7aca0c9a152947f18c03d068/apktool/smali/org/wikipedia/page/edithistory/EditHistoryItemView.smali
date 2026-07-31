.class public final Lorg/wikipedia/page/edithistory/EditHistoryItemView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c02fc

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    .line 21
    .line 22
    const v2, 0x7f090151

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const v2, 0x7f0901c4

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const v2, 0x7f0901ec

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    const v2, 0x7f0901ed

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    const v2, 0x7f0905e2

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    const v2, 0x7f090700

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Landroidx/constraintlayout/helper/widget/Flow;

    .line 85
    .line 86
    if-eqz v8, :cond_0

    .line 87
    .line 88
    const v2, 0x7f090702

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 96
    .line 97
    if-eqz v8, :cond_0

    .line 98
    .line 99
    new-instance p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v5, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v8, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 117
    .line 118
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    const/4 v0, -0x1

    .line 121
    const/4 v2, -0x2

    .line 122
    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {p1, p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryItemView;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    const/4 v0, 0x4

    .line 139
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    const/4 v0, 0x1

    .line 148
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryItemView;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryItemView;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    const-string p1, "Missing required view with ID: "

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/4 p0, 0x0

    .line 182
    throw p0
.end method


# virtual methods
.method public final getListener()Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setListener(Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectedState(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0404e7

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const v2, 0x7f04054f

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const v3, 0x7f04051a

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const v4, 0x7f040520

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const v5, 0x7f0406cf

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget-object v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 72
    .line 73
    iget-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Landroid/widget/ImageView;

    .line 76
    .line 77
    iget-object v7, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v8, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v8, Lorg/wikipedia/views/WikiCardView;

    .line 84
    .line 85
    iget-object v9, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v9, Landroid/widget/ImageView;

    .line 88
    .line 89
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/16 v10, 0x8

    .line 98
    .line 99
    :goto_0
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    const/4 v6, 0x1

    .line 105
    if-eq p1, v6, :cond_3

    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    const v2, 0x7f08013c

    .line 109
    .line 110
    .line 111
    const v6, 0x3d4ccccd    # 0.05f

    .line 112
    .line 113
    .line 114
    if-eq p1, v1, :cond_2

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    if-eq p1, v1, :cond_1

    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v9, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const p1, 0x7f060400

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-virtual {v8, p0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v6, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-virtual {v8, p0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v6, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_2
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v6, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    invoke-virtual {v8, p0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 194
    .line 195
    .line 196
    invoke-static {p0, v6, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_3
    const p1, 0x7f08013d

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8}, Lorg/wikipedia/views/WikiCardView;->setDefaultBorder()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    const p1, 0x7f040061

    .line 244
    .line 245
    .line 246
    invoke-static {p0, p1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    .line 261
    .line 262
    return-void
.end method
