.class public final Lorg/wikipedia/feed/news/NewsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/feed/news/NewsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "RecyclerAdapter",
        "org/wikipedia/media/AvPlayer",
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
.field public _binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 24
    .line 25
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/16 v4, 0x11

    .line 41
    .line 42
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/feed/news/NewsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lorg/wikipedia/feed/news/NewsFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c019b

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f09006a

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    move-object v3, p3

    .line 20
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    if-eqz v3, :cond_6

    .line 24
    .line 25
    const p2, 0x7f09028c

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_6

    .line 33
    .line 34
    const p2, 0x7f090299

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v5, v1

    .line 42
    check-cast v5, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 43
    .line 44
    if-eqz v5, :cond_6

    .line 45
    .line 46
    const p2, 0x7f090455

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v6, v1

    .line 54
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    if-eqz v6, :cond_6

    .line 57
    .line 58
    const p2, 0x7f090632

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v7, v1

    .line 66
    check-cast v7, Lorg/wikipedia/views/AppTextView;

    .line 67
    .line 68
    if-eqz v7, :cond_6

    .line 69
    .line 70
    const p2, 0x7f0906cb

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    move-object v8, v1

    .line 78
    check-cast v8, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 79
    .line 80
    if-eqz v8, :cond_6

    .line 81
    .line 82
    const p2, 0x7f0906ce

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object v9, v1

    .line 90
    check-cast v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 91
    .line 92
    if-eqz v9, :cond_6

    .line 93
    .line 94
    new-instance v1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 95
    .line 96
    move-object v2, p1

    .line 97
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 98
    .line 99
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p2, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const/4 p2, 0x1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    .line 133
    .line 134
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v1, ""

    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lorg/wikipedia/feed/news/NewsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 162
    .line 163
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 168
    .line 169
    iget-object v3, v3, Lorg/wikipedia/feed/news/NewsViewModel;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 170
    .line 171
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p1, v3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const v4, 0x7f0404da

    .line 190
    .line 191
    .line 192
    invoke-static {v3, v4}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const/16 v4, 0x30

    .line 197
    .line 198
    invoke-static {v3, v4}, Lorg/jsoup/Jsoup;->getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 210
    .line 211
    iget-object p1, p1, Lorg/wikipedia/feed/news/NewsViewModel;->item:Lorg/wikipedia/feed/news/NewsItem;

    .line 212
    .line 213
    iget-object p1, p1, Lorg/wikipedia/feed/news/NewsItem;->links:Ljava/util/List;

    .line 214
    .line 215
    invoke-static {p1}, Lorg/wikipedia/feed/news/NewsItem;->getFirstImageUri(Ljava/util/List;)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    sget-object v3, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/16 v3, 0x3c0

    .line 231
    .line 232
    invoke-static {v3, p1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_2
    move-object p1, p3

    .line 245
    :goto_0
    if-nez p1, :cond_3

    .line 246
    .line 247
    iget-object v3, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 255
    .line 256
    invoke-virtual {v3, v0, v0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 257
    .line 258
    .line 259
    :cond_3
    iget-object v3, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v3, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 267
    .line 268
    sget v4, Lorg/wikipedia/views/FaceAndColorDetectImageView;->$r8$clinit:I

    .line 269
    .line 270
    invoke-virtual {v3, p1, p3}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object p3, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 278
    .line 279
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object p3, p3, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 285
    .line 286
    invoke-static {p1, p3, p2}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Lcom/google/android/material/appbar/MaterialToolbar;Z)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 297
    .line 298
    iget-object p3, p0, Lorg/wikipedia/feed/news/NewsFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 299
    .line 300
    invoke-virtual {p1, p3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    const v3, 0x7f0404e7

    .line 317
    .line 318
    .line 319
    invoke-static {p3, v3}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 320
    .line 321
    .line 322
    move-result p3

    .line 323
    invoke-virtual {p1, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p1, Lorg/wikipedia/views/AppTextView;

    .line 334
    .line 335
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p3

    .line 339
    check-cast p3, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 340
    .line 341
    iget-object p3, p3, Lorg/wikipedia/feed/news/NewsViewModel;->item:Lorg/wikipedia/feed/news/NewsItem;

    .line 342
    .line 343
    iget-object p3, p3, Lorg/wikipedia/feed/news/NewsItem;->story:Ljava/lang/String;

    .line 344
    .line 345
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 346
    .line 347
    if-nez p3, :cond_4

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_4
    move-object v1, p3

    .line 351
    :goto_1
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 356
    .line 357
    .line 358
    move-result-object p3

    .line 359
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 374
    .line 375
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 376
    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 378
    .line 379
    .line 380
    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 387
    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    new-instance p2, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 396
    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    const/16 v1, 0x1c

    .line 402
    .line 403
    invoke-direct {p2, p3, v0, v0, v1}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 407
    .line 408
    .line 409
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 417
    .line 418
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 422
    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 429
    .line 430
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    check-cast p2, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 435
    .line 436
    iget-object p2, p2, Lorg/wikipedia/feed/news/NewsViewModel;->item:Lorg/wikipedia/feed/news/NewsItem;

    .line 437
    .line 438
    iget-object p2, p2, Lorg/wikipedia/feed/news/NewsItem;->links:Ljava/util/List;

    .line 439
    .line 440
    new-instance p3, Ljava/util/ArrayList;

    .line 441
    .line 442
    const/16 v1, 0xa

    .line 443
    .line 444
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-eqz v1, :cond_5

    .line 460
    .line 461
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 466
    .line 467
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    check-cast v3, Lorg/wikipedia/feed/news/NewsViewModel;

    .line 472
    .line 473
    iget-object v3, v3, Lorg/wikipedia/feed/news/NewsViewModel;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 474
    .line 475
    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    goto :goto_2

    .line 483
    :cond_5
    new-instance p2, Lorg/wikipedia/media/AvPlayer;

    .line 484
    .line 485
    const/4 v1, 0x5

    .line 486
    invoke-direct {p2, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    new-instance v1, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;

    .line 490
    .line 491
    invoke-direct {v1, p3, p2, v0}, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;-><init>(Ljava/util/ArrayList;Lorg/wikipedia/feed/view/ListItemView$Callback;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 495
    .line 496
    .line 497
    iget-object p0, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 498
    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 505
    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    return-object p0

    .line 510
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    const-string p1, "Missing required view with ID: "

    .line 519
    .line 520
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    return-object p3
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/feed/news/NewsFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/wikipedia/feed/news/NewsFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 20
    .line 21
    return-void
.end method
