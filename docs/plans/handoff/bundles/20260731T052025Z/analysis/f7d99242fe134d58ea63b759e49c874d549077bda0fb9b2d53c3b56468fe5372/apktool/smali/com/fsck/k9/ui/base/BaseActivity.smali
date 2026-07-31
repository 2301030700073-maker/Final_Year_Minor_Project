.class public abstract Lcom/fsck/k9/ui/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appLanguageManager$delegate:Lkotlin/Lazy;

.field public overrideLocaleOnLaunch:Ljava/util/Locale;

.field public final pushController$delegate:Lkotlin/Lazy;

.field public final themeManager$delegate:Lkotlin/Lazy;

.field public final themeType:Lcom/fsck/k9/ui/base/ThemeType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/fsck/k9/ui/base/ThemeType;->DEFAULT:Lcom/fsck/k9/ui/base/ThemeType;

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>(Lcom/fsck/k9/ui/base/ThemeType;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/base/ThemeType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->themeType:Lcom/fsck/k9/ui/base/ThemeType;

    .line 5
    .line 6
    new-instance p1, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/base/BaseActivity;I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->pushController$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {p1, p0, v1}, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/base/BaseActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->themeManager$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance p1, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-direct {p1, p0, v1}, Lcom/fsck/k9/ui/base/BaseActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/base/BaseActivity;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->appLanguageManager$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/base/BaseActivity;->appLanguageManager$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/fsck/k9/ui/base/AppLanguageManager;->currentOverrideLocale:Ljava/util/Locale;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fsck/k9/ui/base/BaseActivity;->overrideLocaleOnLaunch:Ljava/util/Locale;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/fsck/k9/ui/base/LocaleContextWrapper;

    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Lcom/fsck/k9/ui/base/LocaleContextWrapper;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/base/BaseActivity;->themeType:Lcom/fsck/k9/ui/base/ThemeType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->themeManager$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f13031d

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f13031b

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/ui/base/BaseActivity;->pushController$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/fsck/k9/controller/push/PushController;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->init()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v0, v2}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Landroidx/activity/SystemBarStyle;

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-direct {v5, v10, v10, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    sget v0, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    .line 69
    .line 70
    sget v3, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    .line 71
    .line 72
    new-instance v4, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v4, v2}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Landroidx/activity/SystemBarStyle;

    .line 78
    .line 79
    invoke-direct {v6, v0, v3, v4}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 94
    .line 95
    const/16 v11, 0x1a

    .line 96
    .line 97
    const/16 v12, 0x1e

    .line 98
    .line 99
    const/16 v13, 0x23

    .line 100
    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    if-lt v0, v13, :cond_2

    .line 106
    .line 107
    new-instance v0, Landroidx/activity/EdgeToEdgeApi35;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    if-lt v0, v12, :cond_3

    .line 114
    .line 115
    new-instance v0, Landroidx/activity/EdgeToEdgeApi30;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/16 v3, 0x1d

    .line 122
    .line 123
    if-lt v0, v3, :cond_4

    .line 124
    .line 125
    new-instance v0, Landroidx/activity/EdgeToEdgeApi29;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/16 v3, 0x1c

    .line 132
    .line 133
    if-lt v0, v3, :cond_5

    .line 134
    .line 135
    new-instance v0, Landroidx/activity/EdgeToEdgeApi28;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    if-lt v0, v11, :cond_6

    .line 142
    .line 143
    new-instance v0, Landroidx/activity/EdgeToEdgeApi26;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    new-instance v0, Landroidx/activity/EdgeToEdgeApi23;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    :goto_1
    sput-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 155
    .line 156
    :cond_7
    move-object v4, v0

    .line 157
    new-instance v3, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;

    .line 158
    .line 159
    const/4 v9, 0x1

    .line 160
    move-object v7, p0

    .line 161
    invoke-direct/range {v3 .. v9}, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    check-cast v8, Landroid/view/ViewGroup;

    .line 165
    .line 166
    move p0, v10

    .line 167
    :goto_2
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ge p0, v0, :cond_a

    .line 172
    .line 173
    add-int/lit8 v0, p0, 0x1

    .line 174
    .line 175
    invoke-virtual {v8, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-eqz p0, :cond_9

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    instance-of p0, p0, Landroidx/activity/EdgeToEdgeBase;

    .line 186
    .line 187
    if-eqz p0, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    move p0, v0

    .line 191
    goto :goto_2

    .line 192
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 193
    .line 194
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    new-instance v0, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;

    .line 203
    .line 204
    invoke-direct {v0, v3, p0}, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;-><init>(Landroidx/work/OperationKt$$ExternalSyntheticLambda0;Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const/16 p0, 0x8

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    :goto_3
    invoke-virtual {v3}, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->run()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, p0}, Landroidx/activity/EdgeToEdgeBase;->adjustLayoutInDisplayCutoutMode(Landroid/view/Window;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 243
    .line 244
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    .line 247
    if-lt v0, v13, :cond_b

    .line 248
    .line 249
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 250
    .line 251
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_b
    if-lt v0, v12, :cond_c

    .line 256
    .line 257
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 258
    .line 259
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_c
    if-lt v0, v11, :cond_d

    .line 264
    .line 265
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 266
    .line 267
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_d
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 272
    .line 273
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 281
    .line 282
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    sget-object v1, Lnet/thunderbird/core/ui/theme/api/Theme;->LIGHT:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 287
    .line 288
    if-ne p0, v1, :cond_e

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_e
    move v2, v10

    .line 292
    :goto_5
    invoke-virtual {v0, v2}, Lkotlin/math/MathKt;->setAppearanceLightStatusBars(Z)V

    .line 293
    .line 294
    .line 295
    invoke-super {v7, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    .line 297
    .line 298
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 299
    .line 300
    const/16 p1, 0x1f

    .line 301
    .line 302
    if-lt p0, p1, :cond_f

    .line 303
    .line 304
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 325
    .line 326
    .line 327
    :cond_f
    iget-object p0, v7, Lcom/fsck/k9/ui/base/BaseActivity;->appLanguageManager$delegate:Lkotlin/Lazy;

    .line 328
    .line 329
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    check-cast p0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 334
    .line 335
    iget-object p0, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 336
    .line 337
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    new-instance p1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 342
    .line 343
    const/16 v0, 0xa

    .line 344
    .line 345
    invoke-direct {p1, v0, v7}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    new-instance v0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 349
    .line 350
    invoke-direct {v0, v10, p1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v7, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public final setLayout(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f09015b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    const v0, 0x7f09007f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    const v1, 0x7f090444

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    const v2, 0x7f090157

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 55
    .line 56
    instance-of v3, v3, Landroid/app/Activity;

    .line 57
    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 65
    .line 66
    instance-of v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;

    .line 67
    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->onDestroy()V

    .line 76
    .line 77
    .line 78
    :cond_1
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 79
    .line 80
    new-instance v3, Landroidx/appcompat/app/ToolbarActionBar;

    .line 81
    .line 82
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 83
    .line 84
    instance-of v5, v4, Landroid/app/Activity;

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    check-cast v4, Landroid/app/Activity;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 96
    .line 97
    :goto_0
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    .line 98
    .line 99
    invoke-direct {v3, v1, v4, v5}, Landroidx/appcompat/app/ToolbarActionBar;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 103
    .line 104
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    .line 105
    .line 106
    iget-object v3, v3, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallback:Landroidx/appcompat/app/ToolbarActionBar$2;

    .line 107
    .line 108
    iput-object v3, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mActionBarCallback:Landroidx/appcompat/app/ToolbarActionBar$2;

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidateOptionsMenu()V

    .line 115
    .line 116
    .line 117
    :goto_1
    new-instance p0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 v1, 0x11

    .line 120
    .line 121
    invoke-direct {p0, v1, v0, v2}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 125
    .line 126
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    const-string p0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 131
    .line 132
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    const-string p0, "TB layouts must provide a FrameLayout with id=\'content_container\'."

    .line 137
    .line 138
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    const-string p0, "TB layouts must provide a Toolbar with id=\'toolbar\'."

    .line 143
    .line 144
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_6
    const-string p0, "TB layouts must provide an AppBarLayout with id=\'app_bar_layout\'."

    .line 149
    .line 150
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_7
    const-string p0, "TB layouts must provide a ViewGroup with id=\'coordinator_layout\'."

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
