.class public final Lorg/wikipedia/views/PageItemView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public callback:Lorg/wikipedia/views/PageItemView$Callback;

.field public imageUrl:Ljava/lang/String;

.field public item:Ljava/lang/Object;

.field public selected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c0310

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const v2, 0x7f09014b

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    move-object v6, v4

    .line 29
    check-cast v6, Landroid/widget/HorizontalScrollView;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    const v2, 0x7f0904d3

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v7, v5

    .line 42
    check-cast v7, Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    const v2, 0x7f0904d4

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v8, v5

    .line 54
    check-cast v8, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    const v2, 0x7f0904d5

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v9, v5

    .line 66
    check-cast v9, Lorg/wikipedia/views/CircularProgressBar;

    .line 67
    .line 68
    if-eqz v9, :cond_2

    .line 69
    .line 70
    move-object v10, v1

    .line 71
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    const v2, 0x7f0904d7

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move-object v11, v5

    .line 81
    check-cast v11, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 82
    .line 83
    if-eqz v11, :cond_2

    .line 84
    .line 85
    const v2, 0x7f0904d8

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    move-object v12, v5

    .line 93
    check-cast v12, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 94
    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    const v2, 0x7f0904d9

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    move-object v13, v5

    .line 105
    check-cast v13, Landroid/widget/FrameLayout;

    .line 106
    .line 107
    if-eqz v13, :cond_2

    .line 108
    .line 109
    const v2, 0x7f0904da

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    move-object v14, v5

    .line 117
    check-cast v14, Landroid/widget/ImageView;

    .line 118
    .line 119
    if-eqz v14, :cond_2

    .line 120
    .line 121
    const v2, 0x7f0904db

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    move-object v15, v5

    .line 129
    check-cast v15, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v15, :cond_2

    .line 132
    .line 133
    const v2, 0x7f090554

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    move-object/from16 v16, v5

    .line 141
    .line 142
    check-cast v16, Lcom/google/android/material/chip/ChipGroup;

    .line 143
    .line 144
    if-eqz v16, :cond_2

    .line 145
    .line 146
    new-instance v5, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 147
    .line 148
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    iput-object v5, v0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 152
    .line 153
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    const/4 v2, -0x1

    .line 156
    const/4 v5, -0x2

    .line 157
    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Landroid/util/TypedValue;

    .line 164
    .line 165
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const v5, 0x7f0404e7

    .line 173
    .line 174
    .line 175
    const/4 v6, 0x1

    .line 176
    invoke-virtual {v2, v5, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_0
    move-object v1, v4

    .line 184
    :goto_0
    if-eqz v1, :cond_1

    .line 185
    .line 186
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/PageItemView;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v1, v3, v0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    invoke-direct {v1, v0, v6}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/PageItemView;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    new-array v1, v6, [Landroid/view/View;

    .line 219
    .line 220
    aput-object v0, v1, v3

    .line 221
    .line 222
    aget-object v0, v1, v3

    .line 223
    .line 224
    new-instance v1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 230
    .line 231
    .line 232
    new-array v0, v6, [Landroid/view/View;

    .line 233
    .line 234
    aput-object v7, v0, v3

    .line 235
    .line 236
    aget-object v0, v0, v3

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_1
    const-string v0, "Attribute not found; ID=2130969831"

    .line 247
    .line 248
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v4

    .line 252
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v1, "Missing required view with ID: "

    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v4
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/views/PageItemView$Callback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/views/PageItemView$Callback;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->callback:Lorg/wikipedia/views/PageItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->item:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setActionHint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/PageItemView$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/PageItemView;->callback:Lorg/wikipedia/views/PageItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setCircularProgressVisibility(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/CircularProgressBar;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setDescriptionMaxLines(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/PageItemView;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/views/PageItemView;->updateSelectedState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setImageVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/PageItemView;->item:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgress(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/CircularProgressBar;

    .line 6
    .line 7
    int-to-double v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/views/CircularProgressBar;->setCurrentProgress(D)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/StringUtil;->boldenKeywordText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setSecondaryActionIcon(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    move v2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v0

    .line 22
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/views/PageItemView;->selected:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/wikipedia/views/PageItemView;->selected:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/views/PageItemView;->updateSelectedState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setTitleMaxLines(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setTitleTypeface(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setUpChipGroup(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    new-instance v3, Lcom/google/android/material/chip/Chip;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    .line 53
    .line 54
    const v4, 0x7f130158

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/Chip;->setTextAppearance(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v7, Landroid/util/TypedValue;

    .line 79
    .line 80
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const v8, 0x7f040094

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v8, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_0

    .line 95
    .line 96
    move-object v5, v7

    .line 97
    :cond_0
    if-eqz v5, :cond_1

    .line 98
    .line 99
    iget v4, v5, Landroid/util/TypedValue;->resourceId:I

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;

    .line 105
    .line 106
    invoke-direct {v4, v2, p0, v1}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const-string p0, "Attribute not found; ID=2130968724"

    .line 117
    .line 118
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public final setViewsGreyedOut(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setViewsRead(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f040061

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const v0, 0x7f0404e7

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/widget/TextView;

    .line 15
    .line 16
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    xor-int/2addr p1, v4

    .line 20
    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget p0, v1, Landroid/util/TypedValue;->data:I

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "Attribute not found; ID="

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final updateSelectedState()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/views/PageItemView;->selected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/16 v4, 0x8

    .line 7
    .line 8
    iget-object v5, p0, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const v4, 0x7f040061

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    move-object v1, v3

    .line 52
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget p0, v1, Landroid/util/TypedValue;->data:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const-string p0, "Attribute not found; ID=2130968673"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView;->imageUrl:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 80
    .line 81
    iget-object v6, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v7, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v7, Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    new-array v8, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v7, v8, v3

    .line 103
    .line 104
    const v3, 0x7f1202ee

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView;->imageUrl:Ljava/lang/String;

    .line 115
    .line 116
    const/16 v3, 0x1c

    .line 117
    .line 118
    invoke-static {v6, v0, v1, v3}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    :goto_0
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroid/widget/ImageView;

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const v4, 0x101030e

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_5

    .line 160
    .line 161
    move-object v1, v3

    .line 162
    :cond_5
    if-eqz v1, :cond_6

    .line 163
    .line 164
    iget p0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_6
    const-string p0, "Attribute not found; ID=16843534"

    .line 171
    .line 172
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
