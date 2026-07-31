.class public final Lorg/wikipedia/views/WikitextKeyboardButtonView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/wikipedia/views/WikitextKeyboardButtonView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "binding",
        "Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;",
        "getBinding",
        "()Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;",
        "setExpandable",
        "",
        "expandable",
        "",
        "setExpanded",
        "expanded",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0c0601

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f090226

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_a

    .line 28
    .line 29
    const v0, 0x7f090783

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v3, :cond_a

    .line 39
    .line 40
    const v0, 0x7f090790

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v4, :cond_a

    .line 50
    .line 51
    new-instance v0, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;

    .line 52
    .line 53
    invoke-direct {v0, p0, v1, v3, v4}, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;-><init>(Lorg/wikipedia/views/WikitextKeyboardButtonView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->binding:Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;

    .line 57
    .line 58
    const/high16 v0, 0x42400000    # 48.0f

    .line 59
    .line 60
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    sget-object v1, Lorg/wikipedia/R$styleable;->WikitextKeyboardButtonView:[I

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p1, p2, v1, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v6, 0x2

    .line 87
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    new-instance v8, Landroid/util/TypedValue;

    .line 96
    .line 97
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const v10, 0x7f04051a

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v10, v8, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    move-object v8, v2

    .line 115
    :goto_0
    if-eqz v8, :cond_6

    .line 116
    .line 117
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 118
    .line 119
    const/4 v9, 0x3

    .line 120
    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    const/16 v9, 0x8

    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    if-eqz v6, :cond_3

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_2

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    :goto_2
    if-eqz v7, :cond_5

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_4

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {p0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    new-array v1, v0, [Landroid/view/View;

    .line 172
    .line 173
    aput-object p0, v1, v5

    .line 174
    .line 175
    aget-object v1, v1, v5

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v1, v3}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    const-string p0, "Attribute not found; ID=2130969882"

    .line 189
    .line 190
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v2

    .line 194
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 198
    .line 199
    .line 200
    new-instance p2, Landroid/util/TypedValue;

    .line 201
    .line 202
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const v1, 0x101030e

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_8

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_8
    move-object p2, v2

    .line 220
    :goto_5
    if-eqz p2, :cond_9

    .line 221
    .line 222
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_9
    const-string p0, "Attribute not found; ID=16843534"

    .line 229
    .line 230
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v2

    .line 234
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    const-string p1, "Missing required view with ID: "

    .line 243
    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v2
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->binding:Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExpandable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->binding:Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;->expandNotch:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

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
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const v1, 0x7f040520

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, 0x7f04051a

    .line 15
    .line 16
    .line 17
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 38
    .line 39
    iget-object p0, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->binding:Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;

    .line 40
    .line 41
    iget-object v1, p0, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;->wikitextButtonImage:Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;->expandNotch:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const p1, 0x7f080117

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const p1, 0x7f080116

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;->wikitextButtonText:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    const-string p0, "Attribute not found; ID="

    .line 78
    .line 79
    invoke-static {v1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
