.class public final Lnet/newpipe/app/ComposeActivity;
.super Landroidx/activity/ComponentActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    new-instance v0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v4, Landroidx/activity/SystemBarStyle;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    invoke-direct {v4, v9, v9, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    sget v0, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    .line 14
    .line 15
    sget v2, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    .line 16
    .line 17
    new-instance v3, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Landroidx/activity/SystemBarStyle;

    .line 23
    .line 24
    invoke-direct {v5, v0, v2, v3}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 39
    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v2, 0x23

    .line 45
    .line 46
    if-lt v0, v2, :cond_0

    .line 47
    .line 48
    new-instance v0, Landroidx/activity/EdgeToEdgeApi35;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v2, 0x1e

    .line 55
    .line 56
    if-lt v0, v2, :cond_1

    .line 57
    .line 58
    new-instance v0, Landroidx/activity/EdgeToEdgeApi30;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 v2, 0x1d

    .line 65
    .line 66
    if-lt v0, v2, :cond_2

    .line 67
    .line 68
    new-instance v0, Landroidx/activity/EdgeToEdgeApi29;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/16 v2, 0x1c

    .line 75
    .line 76
    if-lt v0, v2, :cond_3

    .line 77
    .line 78
    new-instance v0, Landroidx/activity/EdgeToEdgeApi28;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/16 v2, 0x1a

    .line 85
    .line 86
    if-lt v0, v2, :cond_4

    .line 87
    .line 88
    new-instance v0, Landroidx/activity/EdgeToEdgeApi26;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    new-instance v0, Landroidx/activity/EdgeToEdgeApi23;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    :goto_0
    sput-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 100
    .line 101
    :cond_5
    move-object v3, v0

    .line 102
    new-instance v2, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/4 v8, 0x1

    .line 105
    move-object v6, p0

    .line 106
    invoke-direct/range {v2 .. v8}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    check-cast v7, Landroid/view/ViewGroup;

    .line 110
    .line 111
    move p0, v9

    .line 112
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-ge p0, v0, :cond_8

    .line 117
    .line 118
    add-int/lit8 v0, p0, 0x1

    .line 119
    .line 120
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_7

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    instance-of p0, p0, Landroidx/activity/EdgeToEdgeBase;

    .line 131
    .line 132
    if-eqz p0, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    move p0, v0

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 138
    .line 139
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance v0, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;

    .line 148
    .line 149
    invoke-direct {v0, v2, p0}, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;-><init>(Landroidx/work/OperationKt$$ExternalSyntheticLambda1;Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const/16 p0, 0x8

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {v2}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->run()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, p0}, Landroidx/activity/EdgeToEdgeBase;->adjustLayoutInDisplayCutoutMode(Landroid/view/Window;)V

    .line 177
    .line 178
    .line 179
    invoke-super {v6, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-direct {p0, v6, v9}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;-><init>(Lnet/newpipe/app/ComposeActivity;I)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 188
    .line 189
    const v0, 0x29716e1c

    .line 190
    .line 191
    .line 192
    invoke-direct {p1, v0, v1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 193
    .line 194
    .line 195
    sget-object p0, Landroidx/activity/compose/ComponentActivityKt;->DefaultActivityContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 196
    .line 197
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const v0, 0x1020002

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Landroid/view/ViewGroup;

    .line 213
    .line 214
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    instance-of v0, p0, Landroidx/compose/ui/platform/ComposeView;

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    check-cast p0, Landroidx/compose/ui/platform/ComposeView;

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_9
    move-object p0, v1

    .line 227
    :goto_3
    if-eqz p0, :cond_a

    .line 228
    .line 229
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_a
    new-instance p0, Landroidx/compose/ui/platform/ComposeView;

    .line 237
    .line 238
    invoke-direct {p0, v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Lnet/newpipe/app/ComposeActivity;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-nez v0, :cond_b

    .line 260
    .line 261
    const v0, 0x7f0a042b

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_b
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-nez v0, :cond_c

    .line 272
    .line 273
    const v0, 0x7f0a042f

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-static {p1}, Lorg/jsoup/Jsoup;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-nez v0, :cond_d

    .line 284
    .line 285
    const v0, 0x7f0a042e

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :cond_d
    sget-object p1, Landroidx/activity/compose/ComponentActivityKt;->DefaultActivityContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 292
    .line 293
    invoke-virtual {v6, p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    return-void
.end method
