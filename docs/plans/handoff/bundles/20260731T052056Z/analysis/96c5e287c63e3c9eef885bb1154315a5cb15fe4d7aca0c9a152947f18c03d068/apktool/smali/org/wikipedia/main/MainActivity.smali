.class public final Lorg/wikipedia/main/MainActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/main/MainFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/main/MainFragment$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/main/MainActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/main/MainFragment;",
        "Lorg/wikipedia/main/MainFragment$Callback;",
        "<init>",
        "()V",
        "org/wikipedia/util/UriUtil",
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
.field public binding:Lokhttp3/MultipartBody$Builder;

.field public controlNavTabInFragment:Z

.field public navBarInsets:Landroidx/core/graphics/Insets;

.field public final onboardingLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public statusBarInsets:Landroidx/core/graphics/Insets;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/main/MainActivity;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/wikipedia/main/MainActivity;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 9
    .line 10
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/16 v2, 0x16

    .line 19
    .line 20
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/wikipedia/main/MainActivity;->onboardingLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final applyInsets()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Lorg/wikipedia/feed/HomeFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/main/MainActivity;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 29
    .line 30
    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 31
    .line 32
    iget-object v2, p0, Lorg/wikipedia/main/MainActivity;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 33
    .line 34
    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/main/MainActivity;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 38
    .line 39
    iget v3, v2, Landroidx/core/graphics/Insets;->left:I

    .line 40
    .line 41
    iget-object v4, p0, Lorg/wikipedia/main/MainActivity;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 42
    .line 43
    iget v5, v4, Landroidx/core/graphics/Insets;->left:I

    .line 44
    .line 45
    add-int/2addr v3, v5

    .line 46
    iget v2, v2, Landroidx/core/graphics/Insets;->right:I

    .line 47
    .line 48
    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    .line 49
    .line 50
    add-int/2addr v2, v4

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/widget/FrameLayout;

    .line 72
    .line 73
    iget-object v1, p0, Lorg/wikipedia/main/MainActivity;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 74
    .line 75
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 78
    .line 79
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 80
    .line 81
    add-int/2addr v1, p0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    const-string p0, "binding"

    .line 99
    .line 100
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    throw p0
.end method

.method public final applyNavBarTheme(Lorg/wikipedia/theme/Theme;)V
    .locals 6

    .line 1
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getResourceId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0404e7

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, 0x7f040094

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const v3, 0x7f060046

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v3}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lorg/wikipedia/main/MainFragment;

    .line 36
    .line 37
    iget-object v3, v3, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v3, v3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lorg/wikipedia/navtab/NavTabLayout;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 81
    .line 82
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    xor-int/lit8 p1, p1, 0x1

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v2, Landroidx/paging/HintHandler;

    .line 115
    .line 116
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v3, 0x1a

    .line 122
    .line 123
    const/16 v4, 0x1e

    .line 124
    .line 125
    const/16 v5, 0x23

    .line 126
    .line 127
    if-lt v1, v5, :cond_0

    .line 128
    .line 129
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 130
    .line 131
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    if-lt v1, v4, :cond_1

    .line 136
    .line 137
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 138
    .line 139
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    if-lt v1, v3, :cond_2

    .line 144
    .line 145
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 146
    .line 147
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 152
    .line 153
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-virtual {v1, p1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v1, Landroidx/paging/HintHandler;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    if-lt v0, v5, :cond_3

    .line 178
    .line 179
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 180
    .line 181
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    if-lt v0, v4, :cond_4

    .line 186
    .line 187
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 188
    .line 189
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    if-lt v0, v3, :cond_5

    .line 194
    .line 195
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 196
    .line 197
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 202
    .line 203
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    invoke-virtual {v0, p1}, Lcoil3/util/UtilsKt;->setAppearanceLightNavigationBars(Z)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    new-instance p0, Lorg/wikipedia/main/MainFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->setRetainInstance()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final inflateAndSetContentView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c0026

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f09026a

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const v1, 0x7f09036f

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const v1, 0x7f090370

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v0, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const v0, 0x7f09026a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 31
    .line 32
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x1

    .line 43
    xor-int/2addr v0, v2

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v5, Landroidx/paging/HintHandler;

    .line 56
    .line 57
    invoke-direct {v5, v4}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v6, 0x1a

    .line 63
    .line 64
    const/16 v7, 0x1e

    .line 65
    .line 66
    const/16 v8, 0x23

    .line 67
    .line 68
    if-lt v4, v8, :cond_1

    .line 69
    .line 70
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 71
    .line 72
    invoke-direct {v9, v3, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-lt v4, v7, :cond_2

    .line 77
    .line 78
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 79
    .line 80
    invoke-direct {v9, v3, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-lt v4, v6, :cond_3

    .line 85
    .line 86
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 87
    .line 88
    invoke-direct {v9, v3, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 93
    .line 94
    invoke-direct {v9, v3, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {v9, v0}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    new-instance v9, Landroidx/paging/HintHandler;

    .line 112
    .line 113
    invoke-direct {v9, v5}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    if-lt v4, v8, :cond_4

    .line 117
    .line 118
    new-instance v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 119
    .line 120
    invoke-direct {v4, v3, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    if-lt v4, v7, :cond_5

    .line 125
    .line 126
    new-instance v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 127
    .line 128
    invoke-direct {v4, v3, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    if-lt v4, v6, :cond_6

    .line 133
    .line 134
    new-instance v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 135
    .line 136
    invoke-direct {v4, v3, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    new-instance v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 141
    .line 142
    invoke-direct {v4, v3, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    invoke-virtual {v4, v0}, Lcoil3/util/UtilsKt;->setAppearanceLightNavigationBars(Z)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 149
    .line 150
    const-string v3, "binding"

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    if-eqz v0, :cond_f

    .line 154
    .line 155
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    new-instance v5, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v5, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v5, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 172
    .line 173
    invoke-direct {v5, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p0, v5}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lorg/wikipedia/views/ImageZoomHelper;

    .line 180
    .line 181
    invoke-direct {v0, p0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    .line 185
    .line 186
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 187
    .line 188
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    if-nez p1, :cond_7

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v5, "previewSavedReadingList"

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_7

    .line 207
    .line 208
    new-instance v0, Landroid/content/Intent;

    .line 209
    .line 210
    const-class v5, Lorg/wikipedia/onboarding/InitialOnboardingActivity;

    .line 211
    .line 212
    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .line 214
    .line 215
    iget-object v5, p0, Lorg/wikipedia/main/MainActivity;->onboardingLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 216
    .line 217
    invoke-virtual {v5, v0, v4}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 224
    .line 225
    if-eqz v0, :cond_e

    .line 226
    .line 227
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-string v5, ""

    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    invoke-virtual {v0, v5}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 252
    .line 253
    .line 254
    :cond_9
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 255
    .line 256
    if-eqz v0, :cond_d

    .line 257
    .line 258
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 261
    .line 262
    invoke-virtual {v0, v4}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 263
    .line 264
    .line 265
    if-nez p1, :cond_c

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const-string v3, "android.intent.action.MAIN"

    .line 279
    .line 280
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    if-eqz v0, :cond_a

    .line 291
    .line 292
    const-string v3, "android.intent.category.LAUNCHER"

    .line 293
    .line 294
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-ne v0, v2, :cond_a

    .line 299
    .line 300
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 306
    .line 307
    const-string v2, "apps-open"

    .line 308
    .line 309
    invoke-direct {v6, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 310
    .line 311
    .line 312
    const/4 v12, 0x0

    .line 313
    const/16 v13, 0xfc

    .line 314
    .line 315
    const-string v7, "app_open"

    .line 316
    .line 317
    const-string v8, "app_icon"

    .line 318
    .line 319
    const/4 v9, 0x0

    .line 320
    const/4 v10, 0x0

    .line 321
    const/4 v11, 0x0

    .line 322
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 323
    .line 324
    .line 325
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v2, "android.intent.action.VIEW"

    .line 330
    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_c

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_c

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    if-eqz p1, :cond_c

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-nez v0, :cond_b

    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_b
    move-object v5, v0

    .line 357
    :goto_2
    const-string/jumbo v0, "wikipedia.org"

    .line 358
    .line 359
    .line 360
    invoke-static {v5, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_c

    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    const-string/jumbo v0, "wikipedia://"

    .line 374
    .line 375
    .line 376
    const-string v1, "https://"

    .line 377
    .line 378
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    new-instance v0, Landroid/content/Intent;

    .line 390
    .line 391
    const-class v1, Lorg/wikipedia/page/PageActivity;

    .line 392
    .line 393
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    :goto_3
    return-void

    .line 408
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v4

    .line 412
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v4

    .line 416
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v4
.end method

.method public final onGoOffline()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of v0, p0, Lorg/wikipedia/history/HistoryFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onGoOnline()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of v0, p0, Lorg/wikipedia/history/HistoryFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "reading_challenge_join"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 19
    .line 20
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeOnboardingShown()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getSTART_DATE()Lj$/time/LocalDate;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const/high16 v1, 0x4000000

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lorg/wikipedia/activity/BaseActivity;->requestReadingChallengeActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 72
    .line 73
    invoke-virtual {v2, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->handleIntent$2(Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onTabChanged(Lorg/wikipedia/navtab/NavTab;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 9
    .line 10
    const/16 v7, 0x8

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const-string v9, "binding"

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    if-ne v6, v1, :cond_6

    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 25
    .line 26
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 47
    .line 48
    const-string v2, ""

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iput-boolean v8, v0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    instance-of v2, v1, Lorg/wikipedia/feed/HomeFragment;

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    check-cast v1, Lorg/wikipedia/feed/HomeFragment;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object v1, v10

    .line 73
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lorg/wikipedia/feed/HomeViewModel;->selectedTab:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 80
    .line 81
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 82
    .line 83
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v10, v1

    .line 88
    check-cast v10, Lorg/wikipedia/feed/HomeTab;

    .line 89
    .line 90
    :cond_1
    sget-object v1, Lorg/wikipedia/feed/HomeTab;->FOR_YOU:Lorg/wikipedia/feed/HomeTab;

    .line 91
    .line 92
    if-ne v10, v1, :cond_2

    .line 93
    .line 94
    sget-object v1, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 98
    .line 99
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainActivity;->applyNavBarTheme(Lorg/wikipedia/theme/Theme;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_3
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v10

    .line 114
    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v10

    .line 118
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v10

    .line 122
    :cond_6
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    .line 123
    .line 124
    const/4 v11, 0x1

    .line 125
    if-ne v6, v1, :cond_7

    .line 126
    .line 127
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 128
    .line 129
    new-array v2, v8, [Ljava/lang/Object;

    .line 130
    .line 131
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 132
    .line 133
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const v12, 0x7f120686

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v8, v3, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3, v8, v2, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_7

    .line 157
    .line 158
    invoke-virtual {v0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lorg/wikipedia/main/MainFragment;

    .line 163
    .line 164
    iget-object v2, v2, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object v2, v2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v2, Lorg/wikipedia/navtab/NavTabLayout;

    .line 172
    .line 173
    invoke-virtual {v1}, Lorg/wikipedia/navtab/NavTab;->getId()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const v2, 0x7f120852

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    const/16 v5, 0xe0

    .line 196
    .line 197
    const/4 v3, 0x1

    .line 198
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/ShareUtil;->showTooltip$default(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZZI)Lcom/skydoves/balloon/Balloon;

    .line 199
    .line 200
    .line 201
    invoke-static {v12, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 202
    .line 203
    .line 204
    :cond_7
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 205
    .line 206
    if-ne v6, v1, :cond_8

    .line 207
    .line 208
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 209
    .line 210
    const-string v2, "suggested_edit_dialog"

    .line 211
    .line 212
    const/4 v3, 0x6

    .line 213
    invoke-static {v1, v2, v10, v3}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 217
    .line 218
    new-instance v12, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 219
    .line 220
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 221
    .line 222
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v16

    .line 226
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 227
    .line 228
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v17

    .line 232
    const-string v18, "app_patroller_experience"

    .line 233
    .line 234
    const-string v13, "impression"

    .line 235
    .line 236
    const-string v14, "suggested_edits_dialog"

    .line 237
    .line 238
    const-string v15, ""

    .line 239
    .line 240
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v12}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 244
    .line 245
    .line 246
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 247
    .line 248
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->shouldShowWidgetInstallDialog()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_8

    .line 253
    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    new-instance v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

    .line 259
    .line 260
    invoke-direct {v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 264
    .line 265
    .line 266
    :cond_8
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 267
    .line 268
    if-eqz v1, :cond_b

    .line 269
    .line 270
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 278
    .line 279
    if-eqz v1, :cond_a

    .line 280
    .line 281
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 284
    .line 285
    invoke-virtual {v6}, Lorg/wikipedia/navtab/NavTab;->getText()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 293
    .line 294
    if-eqz v1, :cond_9

    .line 295
    .line 296
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 299
    .line 300
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    iput-boolean v11, v0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    .line 304
    .line 305
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 306
    .line 307
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainActivity;->applyNavBarTheme(Lorg/wikipedia/theme/Theme;)V

    .line 314
    .line 315
    .line 316
    :goto_2
    invoke-virtual {v0}, Lorg/wikipedia/main/MainActivity;->applyInsets()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_9
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v10

    .line 324
    :cond_a
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v10

    .line 328
    :cond_b
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v10
.end method

.method public final onUnreadNotification()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->updateNotificationDot$1(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of v0, p0, Lorg/wikipedia/feed/HomeFragment;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast p0, Lorg/wikipedia/feed/HomeFragment;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->refreshNotification()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final updateToolbarElevation(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "binding"

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 13
    .line 14
    const p1, 0x7f0704a0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setElevation(F)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setElevation(F)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
