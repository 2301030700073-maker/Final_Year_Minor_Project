.class public final Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public highlightedSection:I

.field public final sectionYOffsets:Landroid/util/SparseIntArray;

.field public final sections:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/wikipedia/page/SidePanelHandler;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/SidePanelHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/SidePanelHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/page/Section;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/SidePanelHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const v1, 0x7f0c031e

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_0
    iget-object p3, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p3, Lorg/wikipedia/page/Section;

    .line 36
    .line 37
    iget v1, p3, Lorg/wikipedia/page/Section;->level:I

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0904e4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/TextView;

    .line 50
    .line 51
    const v3, 0x7f0904e3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 59
    .line 60
    iget-object v4, p3, Lorg/wikipedia/page/Section;->title:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget p3, p3, Lorg/wikipedia/page/Section;->id:I

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    if-nez p3, :cond_1

    .line 77
    .line 78
    sget-object p3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 79
    .line 80
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    .line 82
    .line 83
    const/high16 p3, 0x41c00000    # 24.0f

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    if-ne v1, v4, :cond_2

    .line 87
    .line 88
    sget-object p3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 89
    .line 90
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    .line 92
    .line 93
    const/high16 p3, 0x41900000    # 18.0f

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    sget-object p3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 97
    .line 98
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    .line 100
    .line 101
    const/high16 p3, 0x41600000    # 14.0f

    .line 102
    .line 103
    :goto_0
    const/4 v5, 0x2

    .line 104
    invoke-virtual {v2, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/4 v6, 0x0

    .line 115
    if-eqz v5, :cond_b

    .line 116
    .line 117
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .line 119
    const/high16 v7, 0x40000000    # 2.0f

    .line 120
    .line 121
    div-float/2addr p3, v7

    .line 122
    invoke-static {p3}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    iput p3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    .line 128
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    iget p0, p0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->highlightedSection:I

    .line 132
    .line 133
    if-ne p0, p1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance p1, Landroid/util/TypedValue;

    .line 140
    .line 141
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const p3, 0x7f040520

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p3, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    move-object p1, v6

    .line 159
    :goto_1
    if-eqz p1, :cond_4

    .line 160
    .line 161
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 162
    .line 163
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    return-object p2

    .line 167
    :cond_4
    const-string p0, "Attribute not found; ID=2130969888"

    .line 168
    .line 169
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object v6

    .line 173
    :cond_5
    const-string p0, "Attribute not found; ID=2130969882"

    .line 174
    .line 175
    const p1, 0x7f04051a

    .line 176
    .line 177
    .line 178
    if-le v1, v4, :cond_8

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    new-instance v0, Landroid/util/TypedValue;

    .line 185
    .line 186
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p3, p1, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_6

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_6
    move-object v0, v6

    .line 201
    :goto_2
    if-eqz v0, :cond_7

    .line 202
    .line 203
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 204
    .line 205
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    .line 207
    .line 208
    return-object p2

    .line 209
    :cond_7
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object v6

    .line 213
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    new-instance v0, Landroid/util/TypedValue;

    .line 218
    .line 219
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p3, p1, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_9

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_9
    move-object v0, v6

    .line 234
    :goto_3
    if-eqz v0, :cond_a

    .line 235
    .line 236
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 237
    .line 238
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    .line 240
    .line 241
    return-object p2

    .line 242
    :cond_a
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object v6

    .line 246
    :cond_b
    const-string p0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 247
    .line 248
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-object v6
.end method
