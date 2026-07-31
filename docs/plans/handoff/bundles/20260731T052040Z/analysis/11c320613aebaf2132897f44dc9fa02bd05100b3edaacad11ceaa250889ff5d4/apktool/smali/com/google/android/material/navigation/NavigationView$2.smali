.class public final Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v2, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eq v2, v0, :cond_3

    .line 50
    .line 51
    iput v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 52
    .line 53
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    move v0, v3

    .line 70
    :goto_1
    iget-object v2, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object p2, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    :cond_4
    const/4 v3, 0x1

    .line 114
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_b

    .line 7
    .line 8
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/MainActivity;

    .line 13
    .line 14
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0x7f0a0252

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/MainActivity;->changeService(Landroid/view/MenuItem;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    const v1, 0x7f0a0253

    .line 32
    .line 33
    .line 34
    if-ne v0, v1, :cond_6

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 v0, -0x5

    .line 41
    const v1, 0x7f0a01a9

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eq p2, v0, :cond_5

    .line 46
    .line 47
    const/4 v0, -0x4

    .line 48
    if-eq p2, v0, :cond_4

    .line 49
    .line 50
    const/4 v0, -0x3

    .line 51
    if-eq p2, v0, :cond_3

    .line 52
    .line 53
    const/4 v0, -0x2

    .line 54
    if-eq p2, v0, :cond_2

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    if-eq p2, v0, :cond_1

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 70
    .line 71
    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1, v0, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-wide/16 v0, -0x1

    .line 90
    .line 91
    invoke-static {p2, v0, v1, v3}, Landroidx/sqlite/SQLite;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    new-instance v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 105
    .line 106
    invoke-direct {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v1, v0, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_4
    invoke-static {p0}, Landroidx/sqlite/SQLite;->openDownloads(Landroid/app/Activity;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {p2}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 134
    .line 135
    invoke-direct {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v1, v0, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_6
    const v1, 0x7f0a0250

    .line 150
    .line 151
    .line 152
    if-ne v0, v1, :cond_7

    .line 153
    .line 154
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/MainActivity;->kioskSelected(Landroid/view/MenuItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :catch_0
    move-exception p2

    .line 160
    const-string v0, "Selecting drawer kiosk"

    .line 161
    .line 162
    invoke-static {p0, v0, p2}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    const v1, 0x7f0a0251

    .line 168
    .line 169
    .line 170
    if-ne v0, v1, :cond_b

    .line 171
    .line 172
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-eqz p2, :cond_a

    .line 177
    .line 178
    if-eq p2, v2, :cond_9

    .line 179
    .line 180
    const/4 v0, 0x2

    .line 181
    if-eq p2, v0, :cond_8

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_8
    sget-object p2, Lnet/newpipe/app/navigation/Destination$About;->INSTANCE:Lnet/newpipe/app/navigation/Destination$About;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v0, Landroid/content/Intent;

    .line 190
    .line 191
    const-class v1, Lnet/newpipe/app/ComposeActivity;

    .line 192
    .line 193
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .line 195
    .line 196
    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object v3, Lnet/newpipe/app/navigation/Destination;->Companion:Lnet/newpipe/app/navigation/Destination$Companion;

    .line 202
    .line 203
    invoke-virtual {v3}, Lnet/newpipe/app/navigation/Destination$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    new-instance v4, Lokio/PriorityQueue;

    .line 213
    .line 214
    const/16 v5, 0x9

    .line 215
    .line 216
    invoke-direct {v4, p1, v5}, Lokio/PriorityQueue;-><init>(CI)V

    .line 217
    .line 218
    .line 219
    sget-object v5, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 220
    .line 221
    const/16 v6, 0x80

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->take(I)[C

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iput-object v6, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 228
    .line 229
    :try_start_1
    invoke-static {v1, v4, v3, p2}, Lkotlinx/serialization/json/internal/WriteModeKt;->encodeByWriter(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Lokio/PriorityQueue;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v1, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, [C

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v1}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([C)V

    .line 247
    .line 248
    .line 249
    const-string v1, "SCREEN"

    .line 250
    .line 251
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catchall_0
    move-exception p0

    .line 259
    sget-object p1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 260
    .line 261
    iget-object p2, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p2, [C

    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([C)V

    .line 272
    .line 273
    .line 274
    throw p0

    .line 275
    :cond_9
    const p2, 0x7f13010b

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {p0, p2}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_a
    new-instance p2, Landroid/content/Intent;

    .line 287
    .line 288
    const-class v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 289
    .line 290
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    .line 295
    .line 296
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 297
    .line 298
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 301
    .line 302
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 303
    .line 304
    .line 305
    return v2

    .line 306
    :cond_b
    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    return-void
.end method
