.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activity/BaseActivity$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/activity/BaseActivity$Callback;",
        "<init>",
        "()V",
        "org/wikipedia/games/onthisday/OnThisDayGameProvider",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lokhttp3/Request$Builder;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 13
    .line 14
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0c0029

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f09006a

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    move-object v7, v4

    .line 25
    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    .line 26
    .line 27
    if-eqz v7, :cond_9

    .line 28
    .line 29
    const v1, 0x7f090193

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v8, v4

    .line 37
    check-cast v8, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v8, :cond_9

    .line 40
    .line 41
    const v1, 0x7f090269

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    move-object v9, v4

    .line 49
    check-cast v9, Landroidx/fragment/app/FragmentContainerView;

    .line 50
    .line 51
    if-eqz v9, :cond_9

    .line 52
    .line 53
    const v4, 0x7f0906cb

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    move-object v10, v5

    .line 61
    check-cast v10, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 62
    .line 63
    if-eqz v10, :cond_8

    .line 64
    .line 65
    new-instance v5, Lokhttp3/Request$Builder;

    .line 66
    .line 67
    move-object v6, v0

    .line 68
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 69
    .line 70
    invoke-direct/range {v5 .. v10}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 80
    .line 81
    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v5, 0x1d

    .line 85
    .line 86
    if-lt v4, v5, :cond_0

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iput-object p0, p0, Lorg/wikipedia/activity/BaseActivity;->callback:Lorg/wikipedia/activity/BaseActivity$Callback;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 102
    .line 103
    invoke-virtual {v4, v5, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 107
    .line 108
    const-string v5, "binding"

    .line 109
    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    iget-object v4, v4, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 120
    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    iget-object v4, v4, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 126
    .line 127
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-eqz v4, :cond_1

    .line 135
    .line 136
    invoke-virtual {v4, v0}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    .line 138
    .line 139
    :cond_1
    const-string v4, ""

    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 145
    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    iget-object v4, v4, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 151
    .line 152
    new-instance v6, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    invoke-direct {v6, v0, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 158
    .line 159
    .line 160
    if-nez p1, :cond_3

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v4, "gameStatus"

    .line 167
    .line 168
    const/4 v6, -0x1

    .line 169
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    const-string v4, "invokeSource"

    .line 174
    .line 175
    if-ne p1, v0, :cond_2

    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v6, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 187
    .line 188
    invoke-direct {v6}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v7, Lkotlin/Pair;

    .line 192
    .line 193
    invoke-direct {v7, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    new-array p1, v0, [Lkotlin/Pair;

    .line 197
    .line 198
    aput-object v7, p1, v3

    .line 199
    .line 200
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance v6, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;

    .line 218
    .line 219
    invoke-direct {v6}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;-><init>()V

    .line 220
    .line 221
    .line 222
    new-instance v7, Lkotlin/Pair;

    .line 223
    .line 224
    invoke-direct {v7, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    new-array p1, v0, [Lkotlin/Pair;

    .line 228
    .line 229
    aput-object v7, p1, v3

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    .line 237
    .line 238
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 243
    .line 244
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1, v6, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 254
    .line 255
    .line 256
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 257
    .line 258
    if-eqz p0, :cond_4

    .line 259
    .line 260
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Landroid/widget/TextView;

    .line 263
    .line 264
    const/16 p1, 0x8

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v2

    .line 274
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v2

    .line 278
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v2

    .line 282
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v2

    .line 286
    :cond_8
    move v1, v4

    .line 287
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    const-string p1, "Missing required view with ID: "

    .line 296
    .line 297
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0017

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    const v1, 0x7f0903ba

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/16 v3, 0x3d8

    .line 47
    .line 48
    const-string v6, "about_click"

    .line 49
    .line 50
    const-string v7, "game_play"

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f1204fd

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_1
    const v1, 0x7f0903e1

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x2

    .line 82
    const/4 v4, 0x0

    .line 83
    if-ne v0, v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v7, 0x0

    .line 104
    const/16 v5, 0x3d8

    .line 105
    .line 106
    const-string v8, "report_click"

    .line 107
    .line 108
    const-string v9, "game_play"

    .line 109
    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f1204dd

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f1204dc

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p0, v4, p1, v0, v3}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    return v2

    .line 139
    :cond_2
    const v1, 0x7f0903d0

    .line 140
    .line 141
    .line 142
    if-ne v0, v1, :cond_8

    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 157
    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const/4 v7, 0x0

    .line 163
    const/16 v5, 0x3d8

    .line 164
    .line 165
    const-string v8, "notification_click"

    .line 166
    .line 167
    const-string v9, "game_play"

    .line 168
    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 175
    .line 176
    const p1, 0x7f120639

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    invoke-static {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->valueOf(Ljava/lang/String;)Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-nez p1, :cond_4

    .line 190
    .line 191
    :cond_3
    sget-object p1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->NO_INTERACTED:Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 192
    .line 193
    :cond_4
    sget-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    aget p1, v0, p1

    .line 200
    .line 201
    const/4 v0, 0x3

    .line 202
    const v1, 0x7f13000a

    .line 203
    .line 204
    .line 205
    if-eq p1, v2, :cond_7

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    if-eq p1, v3, :cond_6

    .line 209
    .line 210
    if-ne p1, v0, :cond_5

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 214
    .line 215
    .line 216
    return v4

    .line 217
    :cond_6
    :goto_0
    const/4 v7, 0x0

    .line 218
    const/16 v5, 0x3f8

    .line 219
    .line 220
    const/4 v6, 0x0

    .line 221
    const-string v8, "impression"

    .line 222
    .line 223
    const-string v9, "notification_modal"

    .line 224
    .line 225
    const-string v10, "game_end"

    .line 226
    .line 227
    const/4 v11, 0x0

    .line 228
    const/4 v12, 0x0

    .line 229
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 233
    .line 234
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 235
    .line 236
    .line 237
    const v0, 0x7f1204fb

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 241
    .line 242
    .line 243
    const v0, 0x7f1204fa

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 252
    .line 253
    const v1, 0x7f0802d6

    .line 254
    .line 255
    .line 256
    iput v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 257
    .line 258
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 261
    .line 262
    .line 263
    const v1, 0x7f1204f9

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;

    .line 270
    .line 271
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 272
    .line 273
    .line 274
    const p0, 0x7f1204f8

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 281
    .line 282
    .line 283
    return v2

    .line 284
    :cond_7
    const/4 v6, 0x0

    .line 285
    const/16 v4, 0x3f8

    .line 286
    .line 287
    const/4 v5, 0x0

    .line 288
    const-string v7, "impression"

    .line 289
    .line 290
    const-string v8, "notification_modal"

    .line 291
    .line 292
    const-string v9, "game_end"

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    const/4 v11, 0x0

    .line 296
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 300
    .line 301
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    const v1, 0x7f1204f7

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 308
    .line 309
    .line 310
    const v1, 0x7f1204f6

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 319
    .line 320
    const v4, 0x7f0802d7

    .line 321
    .line 322
    .line 323
    iput v4, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 324
    .line 325
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;

    .line 326
    .line 327
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 328
    .line 329
    .line 330
    const v3, 0x7f1204f5

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 334
    .line 335
    .line 336
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;

    .line 337
    .line 338
    invoke-direct {v1, p0, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationManager$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;I)V

    .line 339
    .line 340
    .line 341
    const p0, 0x7f1204f4

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 348
    .line 349
    .line 350
    return v2

    .line 351
    :cond_8
    const v1, 0x7f090404

    .line 352
    .line 353
    .line 354
    if-ne v0, v1, :cond_9

    .line 355
    .line 356
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 357
    .line 358
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isOtdSoundOn()Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    xor-int/2addr p1, v2

    .line 363
    const v0, 0x7f12063a

    .line 364
    .line 365
    .line 366
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 370
    .line 371
    .line 372
    return v2

    .line 373
    :cond_9
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    return p0
.end method

.method public final onPermissionResult(Lorg/wikipedia/activity/BaseActivity;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->scheduleDailyGameNotification(Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903d0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f090404

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 19
    .line 20
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isOtdSoundOn()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const v2, 0x7f08030d

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v2, 0x7f08030e

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isOtdSoundOn()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const v3, 0x7f1204e9

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const v3, 0x7f1204ea

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    instance-of v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    :cond_2
    if-eqz v0, :cond_9

    .line 82
    .line 83
    const v3, 0x7f120639

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-static {v3, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-static {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->valueOf(Ljava/lang/String;)Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    :cond_3
    sget-object v3, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->NO_INTERACTED:Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 100
    .line 101
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v4, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    aget v3, v4, v3

    .line 111
    .line 112
    if-eq v3, v1, :cond_7

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    if-eq v3, v1, :cond_6

    .line 116
    .line 117
    const/4 v1, 0x3

    .line 118
    if-ne v3, v1, :cond_5

    .line 119
    .line 120
    const v1, 0x7f0802d7

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 125
    .line 126
    .line 127
    return v2

    .line 128
    :cond_6
    const v1, 0x7f0802d6

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    const v1, 0x7f0802d5

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    if-eqz v0, :cond_9

    .line 140
    .line 141
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    .line 143
    .line 144
    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    return p0
.end method

.method public final showAppBarDateText()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "binding"

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method
