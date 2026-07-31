.class public final synthetic Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    int-to-float v3, p2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    div-float/2addr v3, v4

    .line 27
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    .line 33
    sub-float/2addr v4, v3

    .line 34
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    neg-int v0, v0

    .line 42
    if-le p2, v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    neg-int v0, v0

    .line 62
    if-gt p2, v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 70
    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    neg-int v0, v0

    .line 81
    if-gt p2, v0, :cond_2

    .line 82
    .line 83
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object p2, p2, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v0, "MMMM d"

    .line 99
    .line 100
    invoke-static {v0, p2}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string p2, ""

    .line 106
    .line 107
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->yearInReviewRedDot:Landroid/view/View;

    .line 113
    .line 114
    check-cast v0, Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    const/16 v1, 0x16

    .line 133
    .line 134
    invoke-direct {v0, v1, p0, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    :cond_3
    return-void

    .line 141
    :pswitch_0
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 142
    .line 143
    new-instance p1, Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 154
    .line 155
    iget-object v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->articleTitleDivider:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->overlayRevisionDetailsView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 171
    .line 172
    neg-int p2, p2

    .line 173
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 174
    .line 175
    if-le p2, p1, :cond_4

    .line 176
    .line 177
    move v1, v2

    .line 178
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_1
    check-cast p0, Lorg/wikipedia/feed/news/NewsFragment;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    add-int/2addr v3, p2

    .line 202
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    div-int/lit8 p1, p1, 0x2

    .line 207
    .line 208
    const/4 p2, 0x1

    .line 209
    if-le v3, p1, :cond_5

    .line 210
    .line 211
    move v2, p2

    .line 212
    :cond_5
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Lcom/google/android/material/appbar/MaterialToolbar;Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Lorg/wikipedia/feed/news/NewsActivity;

    .line 220
    .line 221
    new-instance p1, Landroid/util/TypedValue;

    .line 222
    .line 223
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v1, 0x7f0404e7

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-eqz p2, :cond_6

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    const/4 p1, 0x0

    .line 241
    :goto_2
    if-eqz p1, :cond_7

    .line 242
    .line 243
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    const-string p0, "Attribute not found; ID=2130969831"

    .line 250
    .line 251
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :goto_3
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
