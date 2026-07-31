.class public final Lorg/wikipedia/page/PageActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/PageFragment$Callback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;
.implements Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/page/PageActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/page/PageFragment$Callback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;",
        "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;",
        "<init>",
        "()V",
        "TabPosition",
        "org/wikipedia/login/LoginClient",
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
.field public app:Lorg/wikipedia/WikipediaApp;

.field public binding:Lorg/wikipedia/databinding/ActivityPageBinding;

.field public final currentActionModes:Ljava/util/LinkedHashSet;

.field public exclusiveTooltipRunnable:Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

.field public hasTransitionAnimation:Z

.field public isTooltipShowing:Z

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public pageFragment:Lorg/wikipedia/page/PageFragment;

.field public final requestBrowseTabLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestEditSectionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestGalleryEditLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestHandleIntentLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestSuggestedEditsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

.field public wasTransitionShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->requestEditSectionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 30
    .line 31
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->requestHandleIntentLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 49
    .line 50
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->requestGalleryEditLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 68
    .line 69
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 84
    .line 85
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->requestBrowseTabLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 86
    .line 87
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 103
    .line 104
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->requestSuggestedEditsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 105
    .line 106
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 107
    .line 108
    const/16 v1, 0x8

    .line 109
    .line 110
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "binding"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final handleIntent$1(Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "android.intent.action.VIEW"

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "pageFragment"

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v2, :cond_13

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_13

    .line 30
    .line 31
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 37
    .line 38
    const-string v10, "apps-open"

    .line 39
    .line 40
    invoke-direct {v9, v10, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 41
    .line 42
    .line 43
    const/4 v15, 0x0

    .line 44
    const/16 v16, 0xfc

    .line 45
    .line 46
    const-string v10, "app_open"

    .line 47
    .line 48
    const-string v11, "external_link"

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v9, "beta"

    .line 61
    .line 62
    const-string v10, "org.wikipedia"

    .line 63
    .line 64
    invoke-static {v10, v9, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const/4 v11, 0x3

    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    move v5, v6

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string v9, "alpha"

    .line 74
    .line 75
    invoke-static {v10, v9, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string v5, "dev"

    .line 83
    .line 84
    invoke-static {v10, v5, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    move v5, v11

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v5, v7

    .line 93
    :goto_0
    if-eqz v5, :cond_3

    .line 94
    .line 95
    if-eq v5, v6, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move-object v5, v8

    .line 106
    :goto_1
    if-eqz v5, :cond_5

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "http"

    .line 113
    .line 114
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-string v5, "https"

    .line 125
    .line 126
    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :cond_5
    :goto_2
    if-eqz v2, :cond_26

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-eqz v5, :cond_12

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_6

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_6
    const-string/jumbo v6, "wikipedia.org"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_7

    .line 158
    .line 159
    const-string v6, ".wikipedia.org"

    .line 160
    .line 161
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-nez v6, :cond_7

    .line 166
    .line 167
    const-string/jumbo v6, "wikimedia.org"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_7

    .line 175
    .line 176
    const-string v6, ".wikimedia.org"

    .line 177
    .line 178
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_7

    .line 183
    .line 184
    const-string/jumbo v6, "wikidata.org"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_7

    .line 192
    .line 193
    const-string v6, ".wikidata.org"

    .line 194
    .line 195
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_12

    .line 200
    .line 201
    :cond_7
    new-instance v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 202
    .line 203
    invoke-direct {v5, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 204
    .line 205
    .line 206
    sget-object v6, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v5}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    new-instance v9, Lorg/wikipedia/history/HistoryEntry;

    .line 216
    .line 217
    const-string v10, "notificationId"

    .line 218
    .line 219
    invoke-virtual {v1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    const/16 v11, 0x1a

    .line 226
    .line 227
    :cond_8
    invoke-direct {v9, v11, v6}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_9

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iput-object v1, v9, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 241
    .line 242
    :cond_9
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    sget-object v10, Lorg/wikipedia/page/Namespace;->SPECIAL:Lorg/wikipedia/page/Namespace;

    .line 247
    .line 248
    if-ne v1, v10, :cond_a

    .line 249
    .line 250
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v10, "Special:ReadingLists"

    .line 255
    .line 256
    invoke-static {v1, v10, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    const-string v1, "Received shareable reading lists"

    .line 263
    .line 264
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v1, "limport"

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 274
    .line 275
    const v2, 0x7f120615

    .line 276
    .line 277
    .line 278
    invoke-static {v2, v7}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 279
    .line 280
    .line 281
    const v2, 0x7f120662

    .line 282
    .line 283
    .line 284
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    new-instance v2, Landroid/content/Intent;

    .line 293
    .line 294
    const-class v3, Lorg/wikipedia/readinglist/ReadingListActivity;

    .line 295
    .line 296
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .line 298
    .line 299
    const-string v3, "readingListMode"

    .line 300
    .line 301
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string v2, "invokeSource"

    .line 306
    .line 307
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    const/high16 v2, 0x4000000

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_a
    iget-object v1, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    sget-object v7, Lorg/wikipedia/Constants;->NON_LANGUAGE_SUBDOMAINS:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    if-nez v7, :cond_c

    .line 350
    .line 351
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_b

    .line 356
    .line 357
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->isContributions()Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-nez v7, :cond_b

    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_b
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 365
    .line 366
    invoke-virtual {v0, v6, v9, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_c
    :goto_3
    const-string v6, "thankyou"

    .line 371
    .line 372
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_11

    .line 377
    .line 378
    const-string v1, "order_id"

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_11

    .line 385
    .line 386
    const-string v1, "amount"

    .line 387
    .line 388
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    if-eqz v1, :cond_d

    .line 393
    .line 394
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    goto :goto_4

    .line 399
    :cond_d
    const/4 v1, 0x0

    .line 400
    :goto_4
    const-string v6, "currency"

    .line 401
    .line 402
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    if-nez v6, :cond_e

    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_e
    move-object v4, v6

    .line 410
    :goto_5
    const-string v6, "recurring"

    .line 411
    .line 412
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    const-string v7, "1"

    .line 417
    .line 418
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 423
    .line 424
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    new-instance v9, Lorg/wikipedia/donate/DonationResult;

    .line 429
    .line 430
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-virtual {v10}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-direct {v9, v10, v1, v4, v6}, Lorg/wikipedia/donate/DonationResult;-><init>(Ljava/lang/String;FLjava/lang/String;Z)V

    .line 442
    .line 443
    .line 444
    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationResults(Ljava/util/List;)V

    .line 449
    .line 450
    .line 451
    const-string/jumbo v1, "wmf_campaign"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-eqz v1, :cond_11

    .line 459
    .line 460
    const-string v4, "Android"

    .line 461
    .line 462
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_11

    .line 467
    .line 468
    sget-object v12, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->currentCampaignId:Ljava/lang/String;

    .line 469
    .line 470
    if-eqz v12, :cond_f

    .line 471
    .line 472
    const/4 v14, 0x0

    .line 473
    const/16 v9, 0xe6

    .line 474
    .line 475
    const/4 v10, 0x0

    .line 476
    const-string v11, "impression"

    .line 477
    .line 478
    const-string/jumbo v13, "webpay_processed"

    .line 479
    .line 480
    .line 481
    invoke-static/range {v9 .. v14}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    const-string/jumbo v1, "yearInReview"

    .line 485
    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_f
    iget-object v1, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 489
    .line 490
    const/16 v4, 0x8

    .line 491
    .line 492
    const-string v5, "impression"

    .line 493
    .line 494
    const-string/jumbo v6, "webpay_processed"

    .line 495
    .line 496
    .line 497
    invoke-static {v4, v5, v6, v1, v8}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string v1, "donorExperience"

    .line 501
    .line 502
    :goto_6
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    iget-object v4, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 510
    .line 511
    if-eqz v4, :cond_10

    .line 512
    .line 513
    iget-object v3, v4, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 514
    .line 515
    iget-object v3, v3, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 518
    .line 519
    const/16 v4, 0x20

    .line 520
    .line 521
    invoke-static {v0, v2, v3, v1, v4}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw v8

    .line 536
    :cond_11
    invoke-static {v0, v2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :cond_12
    :goto_7
    invoke-static {v0, v2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :cond_13
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    const-string v9, "org.wikipedia.load_in_new_tab"

    .line 555
    .line 556
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    const-class v10, Lorg/wikipedia/history/HistoryEntry;

    .line 561
    .line 562
    const-class v11, Lorg/wikipedia/page/PageTitle;

    .line 563
    .line 564
    const-string v12, "title"

    .line 565
    .line 566
    const-string v13, "org.wikipedia.load_in_current_tab_squash"

    .line 567
    .line 568
    const-string v14, "org.wikipedia.load_in_current_tab"

    .line 569
    .line 570
    const-string v15, "org.wikipedia.history.historyentry"

    .line 571
    .line 572
    if-nez v2, :cond_14

    .line 573
    .line 574
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-nez v2, :cond_14

    .line 583
    .line 584
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_1d

    .line 593
    .line 594
    :cond_14
    invoke-virtual {v1, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-eqz v2, :cond_1d

    .line 599
    .line 600
    invoke-static {v1, v12, v11}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    check-cast v2, Landroid/os/Parcelable;

    .line 605
    .line 606
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 607
    .line 608
    invoke-static {v1, v15, v10}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    check-cast v3, Landroid/os/Parcelable;

    .line 613
    .line 614
    check-cast v3, Lorg/wikipedia/history/HistoryEntry;

    .line 615
    .line 616
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v10

    .line 620
    if-eqz v10, :cond_1b

    .line 621
    .line 622
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 623
    .line 624
    .line 625
    move-result v11

    .line 626
    const v12, -0x2578e56c

    .line 627
    .line 628
    .line 629
    if-eq v11, v12, :cond_19

    .line 630
    .line 631
    const v9, 0x2fea46d1

    .line 632
    .line 633
    .line 634
    if-eq v11, v9, :cond_17

    .line 635
    .line 636
    const v9, 0x628f5aed

    .line 637
    .line 638
    .line 639
    if-eq v11, v9, :cond_15

    .line 640
    .line 641
    goto :goto_8

    .line 642
    :cond_15
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    if-nez v9, :cond_16

    .line 647
    .line 648
    goto :goto_8

    .line 649
    :cond_16
    sget-object v9, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 650
    .line 651
    invoke-virtual {v0, v2, v3, v9}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 652
    .line 653
    .line 654
    goto :goto_8

    .line 655
    :cond_17
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v9

    .line 659
    if-nez v9, :cond_18

    .line 660
    .line 661
    goto :goto_8

    .line 662
    :cond_18
    sget-object v9, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 663
    .line 664
    invoke-virtual {v0, v2, v3, v9}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 665
    .line 666
    .line 667
    goto :goto_8

    .line 668
    :cond_19
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v9

    .line 672
    if-nez v9, :cond_1a

    .line 673
    .line 674
    goto :goto_8

    .line 675
    :cond_1a
    sget-object v9, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 676
    .line 677
    invoke-virtual {v0, v2, v3, v9}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 678
    .line 679
    .line 680
    :cond_1b
    :goto_8
    const-string v2, "revertQNumber"

    .line 681
    .line 682
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    if-eqz v1, :cond_26

    .line 687
    .line 688
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 689
    .line 690
    invoke-direct {v1, v0, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 691
    .line 692
    .line 693
    const v2, 0x7f120475

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 697
    .line 698
    .line 699
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;

    .line 700
    .line 701
    invoke-direct {v2, v0, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 702
    .line 703
    .line 704
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    const v9, 0x7f0c05c1

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 712
    .line 713
    .line 714
    const v3, 0x7f09029b

    .line 715
    .line 716
    .line 717
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 718
    .line 719
    .line 720
    move-result-object v9

    .line 721
    check-cast v9, Landroid/widget/TextView;

    .line 722
    .line 723
    if-eqz v9, :cond_1c

    .line 724
    .line 725
    new-instance v3, Landroid/text/method/LinkMovementMethod;

    .line 726
    .line 727
    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 731
    .line 732
    .line 733
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 734
    .line 735
    const v3, 0x7f120112

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    const-string v10, ":revertSubtitle"

    .line 746
    .line 747
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 748
    .line 749
    .line 750
    move-result-object v10

    .line 751
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    const v11, 0x7f120117

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v11

    .line 761
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    const-string v10, ":revertIntro"

    .line 776
    .line 777
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 778
    .line 779
    .line 780
    move-result-object v10

    .line 781
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    const v11, 0x7f120114

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v11

    .line 791
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    const-string v10, ":revertHistory"

    .line 806
    .line 807
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 808
    .line 809
    .line 810
    move-result-object v10

    .line 811
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    new-instance v11, Landroid/net/Uri$Builder;

    .line 815
    .line 816
    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    .line 817
    .line 818
    .line 819
    sget-object v12, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 820
    .line 821
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 822
    .line 823
    .line 824
    move-result-object v12

    .line 825
    invoke-virtual {v12}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 826
    .line 827
    .line 828
    move-result-object v12

    .line 829
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v12

    .line 833
    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 834
    .line 835
    .line 836
    move-result-object v11

    .line 837
    const-string v12, "m.wikidata.org"

    .line 838
    .line 839
    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 840
    .line 841
    .line 842
    move-result-object v11

    .line 843
    const-string/jumbo v12, "wiki"

    .line 844
    .line 845
    .line 846
    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 847
    .line 848
    .line 849
    move-result-object v11

    .line 850
    const-string v12, "Special:History"

    .line 851
    .line 852
    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 853
    .line 854
    .line 855
    move-result-object v11

    .line 856
    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    new-array v11, v6, [Ljava/lang/Object;

    .line 868
    .line 869
    aput-object v4, v11, v7

    .line 870
    .line 871
    const v4, 0x7f120113

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v4, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    .line 891
    .line 892
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    const v4, 0x7f120a4a

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    new-array v10, v6, [Ljava/lang/Object;

    .line 904
    .line 905
    aput-object v4, v10, v7

    .line 906
    .line 907
    const v4, 0x7f120115

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    invoke-static {v4}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->createReason(Ljava/lang/String;)Landroid/text/SpannedString;

    .line 918
    .line 919
    .line 920
    move-result-object v4

    .line 921
    const v10, 0x7f120116

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->createReason(Ljava/lang/String;)Landroid/text/SpannedString;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    new-instance v10, Landroid/text/SpannableString;

    .line 936
    .line 937
    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 938
    .line 939
    aput-object v4, v5, v7

    .line 940
    .line 941
    aput-object v0, v5, v6

    .line 942
    .line 943
    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    .line 952
    .line 953
    iget-object v0, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 956
    .line 957
    iput-object v2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 958
    .line 959
    const v0, 0x7f120828

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v0, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 966
    .line 967
    .line 968
    return-void

    .line 969
    :cond_1c
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    const-string v1, "Missing required view with ID: "

    .line 978
    .line 979
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    return-void

    .line 987
    :cond_1d
    const-string v2, "org.wikipedia.load_from_existing_tab"

    .line 988
    .line 989
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    if-eqz v2, :cond_1e

    .line 998
    .line 999
    invoke-virtual {v1, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v2

    .line 1003
    if-eqz v2, :cond_1e

    .line 1004
    .line 1005
    invoke-static {v1, v12, v11}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    check-cast v2, Landroid/os/Parcelable;

    .line 1010
    .line 1011
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 1012
    .line 1013
    invoke-static {v1, v15, v10}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v1

    .line 1017
    check-cast v1, Landroid/os/Parcelable;

    .line 1018
    .line 1019
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 1020
    .line 1021
    sget-object v3, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 1022
    .line 1023
    invoke-virtual {v0, v2, v1, v3}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 1024
    .line 1025
    .line 1026
    return-void

    .line 1027
    :cond_1e
    const-string v2, "org.wikipedia.resume_reading"

    .line 1028
    .line 1029
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v4

    .line 1033
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v2

    .line 1037
    if-nez v2, :cond_23

    .line 1038
    .line 1039
    const-string v2, "appShortcutContinueReading"

    .line 1040
    .line 1041
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    if-eqz v2, :cond_1f

    .line 1046
    .line 1047
    goto :goto_9

    .line 1048
    :cond_1f
    const-string v2, "android.intent.action.SEARCH"

    .line 1049
    .line 1050
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v2

    .line 1058
    if-eqz v2, :cond_21

    .line 1059
    .line 1060
    const-string v2, "query"

    .line 1061
    .line 1062
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 1067
    .line 1068
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 1069
    .line 1070
    if-eqz v3, :cond_20

    .line 1071
    .line 1072
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    invoke-direct {v2, v1, v3, v8}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 1080
    .line 1081
    invoke-direct {v1, v6, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 1082
    .line 1083
    .line 1084
    sget-object v3, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 1085
    .line 1086
    invoke-virtual {v0, v2, v1, v3}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 1087
    .line 1088
    .line 1089
    return-void

    .line 1090
    :cond_20
    const-string v0, "app"

    .line 1091
    .line 1092
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    throw v8

    .line 1096
    :cond_21
    const-string v2, "org.wikipedia.create_new_tab"

    .line 1097
    .line 1098
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v1

    .line 1106
    if-eqz v1, :cond_22

    .line 1107
    .line 1108
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 1109
    .line 1110
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 1111
    .line 1112
    .line 1113
    return-void

    .line 1114
    :cond_22
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 1115
    .line 1116
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 1117
    .line 1118
    .line 1119
    return-void

    .line 1120
    :cond_23
    :goto_9
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 1121
    .line 1122
    if-eqz v1, :cond_27

    .line 1123
    .line 1124
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    iget-object v1, v1, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 1129
    .line 1130
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v1

    .line 1134
    if-nez v1, :cond_26

    .line 1135
    .line 1136
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 1137
    .line 1138
    if-eqz v1, :cond_25

    .line 1139
    .line 1140
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    iget-object v1, v1, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 1145
    .line 1146
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 1147
    .line 1148
    if-eqz v2, :cond_24

    .line 1149
    .line 1150
    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    check-cast v1, Lorg/wikipedia/page/PageBackStackItem;

    .line 1163
    .line 1164
    iget-object v1, v1, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 1165
    .line 1166
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z

    .line 1167
    .line 1168
    .line 1169
    return-void

    .line 1170
    :cond_24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    throw v8

    .line 1174
    :cond_25
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    throw v8

    .line 1178
    :cond_26
    return-void

    .line 1179
    :cond_27
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    throw v8
.end method

.method public final loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "app"

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v4, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v0, v1, v3, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, p1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v2
.end method

.method public final loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isFilePage()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "title"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v1, Lorg/wikipedia/commons/FilePageActivity;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "allowEdit"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v4, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 45
    .line 46
    if-eq v1, v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v4, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 53
    .line 54
    if-ne v1, v4, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isContributions()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-array v2, v3, [C

    .line 74
    .line 75
    const/16 v4, 0x2f

    .line 76
    .line 77
    aput-char v4, v2, v0

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    new-instance p1, Landroid/content/Intent;

    .line 92
    .line 93
    const-class v1, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 94
    .line 95
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v1, "userName"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 112
    .line 113
    .line 114
    return v3

    .line 115
    :cond_2
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    .line 131
    .line 132
    return v3

    .line 133
    :cond_3
    :goto_0
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v4, Landroid/content/Intent;

    .line 139
    .line 140
    const-class v5, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 141
    .line 142
    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 150
    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_5

    .line 158
    .line 159
    :cond_4
    move v0, v3

    .line 160
    :cond_5
    xor-int/lit8 p1, v0, 0x1

    .line 161
    .line 162
    const-string v0, "goToTopic"

    .line 163
    .line 164
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v0, "invokeSource"

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 181
    .line 182
    .line 183
    return v3

    .line 184
    :cond_6
    return v0
.end method

.method public final loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    if-eqz p1, :cond_8

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/page/PageActivity;->hasTransitionAnimation:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget-boolean v0, p0, Lorg/wikipedia/page/PageActivity;->wasTransitionShown:Z

    .line 20
    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lorg/wikipedia/views/WikiArticleCardView;

    .line 43
    .line 44
    iget-object v4, v0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 45
    .line 46
    iget-object v5, p1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v5, v6

    .line 60
    :goto_0
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v7}, Lokio/Okio__OkioKt;->isLandscape(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 77
    .line 78
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v7, v4, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImageContainer:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v9}, Lokio/Okio__OkioKt;->leadImageHeightForDevice(Landroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v10}, Lokio/Okio__OkioKt;->getToolbarHeightPx(Landroid/content/Context;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    sub-int/2addr v9, v10

    .line 112
    const/4 v10, -0x1

    .line 113
    invoke-direct {v8, v10, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    iget-object v7, v4, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImageContainer:Landroid/widget/FrameLayout;

    .line 120
    .line 121
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v7, v4, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 125
    .line 126
    sget v8, Lorg/wikipedia/views/FaceAndColorDetectImageView;->$r8$clinit:I

    .line 127
    .line 128
    invoke-virtual {v7, v5, v6}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :goto_1
    iget-object v5, v4, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImageContainer:Landroid/widget/FrameLayout;

    .line 133
    .line 134
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :goto_2
    sget v5, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 138
    .line 139
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iget-boolean v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 144
    .line 145
    if-eqz v5, :cond_5

    .line 146
    .line 147
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iget-boolean v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 152
    .line 153
    if-eqz v5, :cond_5

    .line 154
    .line 155
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isInEligibleCountry()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_5

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v0, v5}, Lorg/wikipedia/views/WikiArticleCardView;->setTitle(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, p1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v5}, Lorg/wikipedia/views/WikiArticleCardView;->setDescription(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleDivider:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v3, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 180
    .line 181
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v0, v3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iput-boolean v1, p0, Lorg/wikipedia/page/PageActivity;->wasTransitionShown:Z

    .line 187
    .line 188
    :cond_6
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_7
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-array v1, v1, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v0, v1, v2

    .line 202
    .line 203
    const v0, 0x7f12051b

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Landroid/widget/FrameLayout;

    .line 220
    .line 221
    new-instance v1, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    .line 222
    .line 223
    const/4 v6, 0x1

    .line 224
    move-object v2, p0

    .line 225
    move-object v4, p1

    .line 226
    move-object v5, p2

    .line 227
    move-object v3, p3

    .line 228
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_4
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_e

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_e

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "shareHandler"

    .line 35
    .line 36
    const-string v6, "pageFragment"

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-ge v3, v4, :cond_6

    .line 40
    .line 41
    add-int/lit8 v4, v3, 0x1

    .line 42
    .line 43
    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const v9, 0x7f120844

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v9, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const v9, 0x7f120409

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v9, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_4

    .line 96
    .line 97
    iget-object v8, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 98
    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    iget-object v6, v8, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 102
    .line 103
    if-eqz v6, :cond_1

    .line 104
    .line 105
    iget-object v5, v6, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Lorg/wikipedia/page/PageFragment;

    .line 108
    .line 109
    iget-object v5, v5, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 110
    .line 111
    iget-object v5, v5, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 114
    .line 115
    if-eqz v5, :cond_0

    .line 116
    .line 117
    sget-object v6, Lorg/wikipedia/wiktionary/WiktionaryDialog;->enabledLanguages:Ljava/util/List;

    .line 118
    .line 119
    iget-object v5, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 120
    .line 121
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    goto :goto_1

    .line 128
    :cond_0
    move v5, v2

    .line 129
    :goto_1
    if-eqz v5, :cond_4

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v7

    .line 136
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v7

    .line 140
    :cond_3
    :goto_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    .line 142
    .line 143
    :cond_4
    move v3, v4

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 146
    .line 147
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const v4, 0x7f0e0029

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 162
    .line 163
    if-eqz v1, :cond_d

    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const v3, 0x7f0c05bb

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const v3, 0x7f090156

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/widget/ImageView;

    .line 188
    .line 189
    if-eqz v4, :cond_c

    .line 190
    .line 191
    check-cast v1, Landroid/widget/LinearLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v1, v2, p1}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 205
    .line 206
    if-eqz p0, :cond_b

    .line 207
    .line 208
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 209
    .line 210
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lorg/wikipedia/page/Page;

    .line 213
    .line 214
    if-eqz v1, :cond_e

    .line 215
    .line 216
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 217
    .line 218
    if-eqz p0, :cond_a

    .line 219
    .line 220
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 223
    .line 224
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    const v4, 0x7f0903f9

    .line 231
    .line 232
    .line 233
    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const/4 v4, 0x1

    .line 238
    if-eqz v3, :cond_8

    .line 239
    .line 240
    iget-object v5, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 241
    .line 242
    iget-object v5, v5, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 245
    .line 246
    if-eqz v5, :cond_7

    .line 247
    .line 248
    sget-object v6, Lorg/wikipedia/wiktionary/WiktionaryDialog;->enabledLanguages:Ljava/util/List;

    .line 249
    .line 250
    iget-object v5, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 251
    .line 252
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    goto :goto_3

    .line 259
    :cond_7
    move v5, v2

    .line 260
    :goto_3
    if-eqz v5, :cond_8

    .line 261
    .line 262
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    .line 264
    .line 265
    new-instance v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    .line 266
    .line 267
    const-string v6, "define"

    .line 268
    .line 269
    invoke-direct {v5, v4, p0, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 273
    .line 274
    .line 275
    :cond_8
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    const v5, 0x7f0903f8

    .line 280
    .line 281
    .line 282
    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-eqz v3, :cond_9

    .line 287
    .line 288
    new-instance v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    .line 289
    .line 290
    const-string v6, "edit_here"

    .line 291
    .line 292
    invoke-direct {v5, v4, p0, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 296
    .line 297
    .line 298
    iget-object p0, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 299
    .line 300
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p0, Lorg/wikipedia/page/Page;

    .line 303
    .line 304
    if-eqz p0, :cond_9

    .line 305
    .line 306
    iget-boolean p0, p0, Lorg/wikipedia/page/Page;->isArticle:Z

    .line 307
    .line 308
    if-nez p0, :cond_9

    .line 309
    .line 310
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    .line 312
    .line 313
    :cond_9
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v7

    .line 321
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v7

    .line 325
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    const-string p1, "Missing required view with ID: "

    .line 334
    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v7

    .line 347
    :cond_e
    :goto_4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v2, v2, Lorg/wikipedia/WikipediaApp;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "_has_set_default_values"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    new-instance v6, Landroidx/preference/PreferenceManager;

    .line 45
    .line 46
    invoke-direct {v6, v0}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v6, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v7, v6, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 52
    .line 53
    const v2, 0x7f15000b

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v0, v2, v7}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 57
    .line 58
    .line 59
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const v3, 0x7f0c002a

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const v3, 0x7f09016e

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    move-object v11, v5

    .line 89
    check-cast v11, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    .line 90
    .line 91
    if-eqz v11, :cond_e

    .line 92
    .line 93
    move-object v10, v2

    .line 94
    check-cast v10, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 95
    .line 96
    const v3, 0x7f0904cd

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object v13, v5

    .line 104
    check-cast v13, Landroidx/fragment/app/FragmentContainerView;

    .line 105
    .line 106
    if-eqz v13, :cond_e

    .line 107
    .line 108
    const v5, 0x7f0904dd

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    move-object v14, v6

    .line 116
    check-cast v14, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 117
    .line 118
    if-eqz v14, :cond_d

    .line 119
    .line 120
    const v5, 0x7f0904e0

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    move-object v15, v6

    .line 128
    check-cast v15, Lorg/wikipedia/views/PageScrollerView;

    .line 129
    .line 130
    if-eqz v15, :cond_d

    .line 131
    .line 132
    const v5, 0x7f0904e5

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    move-object/from16 v16, v6

    .line 140
    .line 141
    check-cast v16, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 142
    .line 143
    if-eqz v16, :cond_d

    .line 144
    .line 145
    const v5, 0x7f0904e6

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    move-object/from16 v17, v6

    .line 153
    .line 154
    check-cast v17, Lorg/wikipedia/views/NotificationButtonView;

    .line 155
    .line 156
    if-eqz v17, :cond_d

    .line 157
    .line 158
    const v5, 0x7f0904e7

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    move-object/from16 v18, v6

    .line 166
    .line 167
    check-cast v18, Lcom/google/android/material/textview/MaterialTextView;

    .line 168
    .line 169
    if-eqz v18, :cond_d

    .line 170
    .line 171
    const v5, 0x7f0904e8

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    move-object/from16 v19, v6

    .line 179
    .line 180
    check-cast v19, Landroid/widget/ImageView;

    .line 181
    .line 182
    if-eqz v19, :cond_d

    .line 183
    .line 184
    const v5, 0x7f0904e9

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    move-object/from16 v20, v6

    .line 192
    .line 193
    check-cast v20, Lorg/wikipedia/views/TabCountsView;

    .line 194
    .line 195
    if-eqz v20, :cond_d

    .line 196
    .line 197
    const v5, 0x7f0904ea

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    move-object/from16 v21, v6

    .line 205
    .line 206
    check-cast v21, Landroid/widget/FrameLayout;

    .line 207
    .line 208
    if-eqz v21, :cond_d

    .line 209
    .line 210
    const v5, 0x7f0905fd

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    move-object/from16 v22, v6

    .line 218
    .line 219
    check-cast v22, Landroid/widget/FrameLayout;

    .line 220
    .line 221
    if-eqz v22, :cond_d

    .line 222
    .line 223
    const v5, 0x7f0906c8

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    move-object/from16 v23, v6

    .line 231
    .line 232
    check-cast v23, Lorg/wikipedia/views/SwipeableListView;

    .line 233
    .line 234
    if-eqz v23, :cond_d

    .line 235
    .line 236
    const v5, 0x7f090774

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    move-object/from16 v24, v6

    .line 244
    .line 245
    check-cast v24, Lorg/wikipedia/views/WikiArticleCardView;

    .line 246
    .line 247
    if-eqz v24, :cond_d

    .line 248
    .line 249
    new-instance v9, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 250
    .line 251
    move-object v12, v10

    .line 252
    invoke-direct/range {v9 .. v24}, Lorg/wikipedia/databinding/ActivityPageBinding;-><init>(Landroidx/drawerlayout/widget/FixedDrawerLayout;Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;Landroidx/drawerlayout/widget/FixedDrawerLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lorg/wikipedia/views/PageScrollerView;Lcom/google/android/material/appbar/MaterialToolbar;Lorg/wikipedia/views/NotificationButtonView;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;Lorg/wikipedia/views/TabCountsView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/views/SwipeableListView;Lorg/wikipedia/views/WikiArticleCardView;)V

    .line 253
    .line 254
    .line 255
    iput-object v9, v0, Lorg/wikipedia/page/PageActivity;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 256
    .line 257
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v2, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v5, v0, Lorg/wikipedia/page/PageActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 273
    .line 274
    invoke-virtual {v2, v5, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    new-instance v5, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 282
    .line 283
    invoke-direct {v5, v0, v7, v4}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 284
    .line 285
    .line 286
    const/4 v6, 0x3

    .line 287
    invoke-static {v2, v7, v7, v5, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v4}, Lorg/wikipedia/page/PageActivity;->updateProgressBar$1(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    check-cast v2, Lorg/wikipedia/page/PageFragment;

    .line 305
    .line 306
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 307
    .line 308
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const-string v3, ""

    .line 324
    .line 325
    if-eqz v2, :cond_2

    .line 326
    .line 327
    invoke-virtual {v2, v3}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    if-eqz v2, :cond_3

    .line 335
    .line 336
    invoke-virtual {v2, v8}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 337
    .line 338
    .line 339
    :cond_3
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 346
    .line 347
    new-instance v5, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;

    .line 348
    .line 349
    invoke-direct {v5, v0, v4}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v2, Lorg/wikipedia/views/TabCountsView;

    .line 362
    .line 363
    invoke-virtual {v2, v4}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v2, Lorg/wikipedia/views/TabCountsView;

    .line 373
    .line 374
    new-instance v5, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;

    .line 375
    .line 376
    const/4 v9, 0x2

    .line 377
    invoke-direct {v5, v0, v9}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    new-instance v2, Lorg/wikipedia/page/ViewHideHandler;

    .line 384
    .line 385
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v5, Landroid/widget/FrameLayout;

    .line 392
    .line 393
    new-instance v10, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda8;

    .line 394
    .line 395
    invoke-direct {v10, v0, v4}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 396
    .line 397
    .line 398
    const/16 v11, 0x30

    .line 399
    .line 400
    invoke-direct {v2, v5, v11, v8, v10}, Lorg/wikipedia/page/ViewHideHandler;-><init>(Landroid/view/View;IZLkotlin/jvm/functions/Function0;)V

    .line 401
    .line 402
    .line 403
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 404
    .line 405
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v2, Lorg/wikipedia/views/NotificationButtonView;

    .line 412
    .line 413
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v5, Lorg/wikipedia/views/TabCountsView;

    .line 420
    .line 421
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    iget-object v10, v10, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v10, Landroid/widget/ImageView;

    .line 428
    .line 429
    new-array v11, v6, [Landroid/view/View;

    .line 430
    .line 431
    aput-object v2, v11, v4

    .line 432
    .line 433
    aput-object v5, v11, v8

    .line 434
    .line 435
    aput-object v10, v11, v9

    .line 436
    .line 437
    move v2, v4

    .line 438
    :goto_0
    if-ge v2, v6, :cond_4

    .line 439
    .line 440
    aget-object v5, v11, v2

    .line 441
    .line 442
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-static {v5, v9}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    add-int/lit8 v2, v2, 0x1

    .line 450
    .line 451
    goto :goto_0

    .line 452
    :cond_4
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v2, Landroid/widget/ImageView;

    .line 459
    .line 460
    new-instance v5, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;

    .line 461
    .line 462
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v2, Lorg/wikipedia/views/NotificationButtonView;

    .line 475
    .line 476
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    const/16 v6, 0x8

    .line 481
    .line 482
    if-eqz v5, :cond_5

    .line 483
    .line 484
    move v5, v4

    .line 485
    goto :goto_1

    .line 486
    :cond_5
    move v5, v6

    .line 487
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v2, Lorg/wikipedia/views/NotificationButtonView;

    .line 497
    .line 498
    new-instance v5, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;

    .line 499
    .line 500
    invoke-direct {v5, v0, v8}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v2, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 513
    .line 514
    invoke-virtual {v2, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v2, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    .line 524
    .line 525
    invoke-virtual {v2, v0}, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->setCallback(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v2, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 535
    .line 536
    new-instance v5, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 537
    .line 538
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 539
    .line 540
    .line 541
    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 542
    .line 543
    invoke-static {v2, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    const-string v5, "hasTransitionAnim"

    .line 551
    .line 552
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    iput-boolean v2, v0, Lorg/wikipedia/page/PageActivity;->hasTransitionAnimation:Z

    .line 557
    .line 558
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v2, Lorg/wikipedia/views/WikiArticleCardView;

    .line 565
    .line 566
    iget-boolean v5, v0, Lorg/wikipedia/page/PageActivity;->hasTransitionAnimation:Z

    .line 567
    .line 568
    if-eqz v5, :cond_6

    .line 569
    .line 570
    move v6, v4

    .line 571
    :cond_6
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    const-string v2, "app"

    .line 575
    .line 576
    if-eqz v1, :cond_9

    .line 577
    .line 578
    iget-object v4, v0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 579
    .line 580
    if-eqz v4, :cond_8

    .line 581
    .line 582
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    const-string v5, "language"

    .line 587
    .line 588
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    if-nez v5, :cond_7

    .line 593
    .line 594
    goto :goto_2

    .line 595
    :cond_7
    move-object v3, v5

    .line 596
    :goto_2
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    xor-int/lit8 v4, v3, 0x1

    .line 601
    .line 602
    goto :goto_3

    .line 603
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v7

    .line 607
    :cond_9
    :goto_3
    if-eqz v4, :cond_b

    .line 608
    .line 609
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 610
    .line 611
    if-eqz v3, :cond_a

    .line 612
    .line 613
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    .line 614
    .line 615
    .line 616
    sget-object v2, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 617
    .line 618
    invoke-virtual {v0, v2}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 619
    .line 620
    .line 621
    goto :goto_4

    .line 622
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    throw v7

    .line 626
    :cond_b
    :goto_4
    if-nez v1, :cond_c

    .line 627
    .line 628
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->handleIntent$1(Landroid/content/Intent;)V

    .line 636
    .line 637
    .line 638
    :cond_c
    return-void

    .line 639
    :cond_d
    move v3, v5

    .line 640
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    const-string v1, "Missing required view with ID: "

    .line 649
    .line 650
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const v1, 0x7f12069f

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x22

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    const/16 v0, 0x85

    .line 21
    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->showFindInPage()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    const-string p0, "pageFragment"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0

    .line 40
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    sget-object p3, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p3, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

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
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->handleIntent$1(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 19
    .line 20
    iget-boolean p1, p1, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->goToMainActivity(Lorg/wikipedia/navtab/NavTab;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const-string p0, "pageFragment"

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    const-string p0, "app"

    .line 50
    .line 51
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_3
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public final onPageCloseActionMode()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/ActionMode;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onPageLoadComplete()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->removeTransitionAnimState()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f1205dd

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v2, v0, v1, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 39
    .line 40
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lorg/wikipedia/page/PageActivity;->exclusiveTooltipRunnable:Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput-object v1, p0, Lorg/wikipedia/page/PageActivity;->exclusiveTooltipRunnable:Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 57
    .line 58
    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 59
    .line 60
    const/16 v5, 0x19

    .line 61
    .line 62
    invoke-direct {v4, v5, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v5, 0x1f4

    .line 66
    .line 67
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 71
    .line 72
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchOnboardingShown()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    new-instance v1, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 80
    .line 81
    invoke-direct {v1}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1, v4}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 103
    .line 104
    const-string v4, "pageFragment"

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 109
    .line 110
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move-object v1, v2

    .line 122
    :goto_1
    sget-object v5, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 123
    .line 124
    if-ne v1, v5, :cond_6

    .line 125
    .line 126
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 127
    .line 128
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 133
    .line 134
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 137
    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object v1, v2

    .line 146
    :goto_2
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 157
    .line 158
    new-array v3, v3, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v1, v3, v0

    .line 161
    .line 162
    const v0, 0x7f1202bb

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v2

    .line 177
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v2

    .line 181
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 188
    .line 189
    const v1, 0x7f120844

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 204
    .line 205
    const/4 v3, 0x2

    .line 206
    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 207
    .line 208
    .line 209
    const/4 p0, 0x3

    .line 210
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final onPageRequestEditDescription(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "title"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "highlightText"

    .line 24
    .line 25
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "sourceSummary"

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "targetSummary"

    .line 36
    .line 37
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "intentAction"

    .line 42
    .line 43
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "invokeSource"

    .line 48
    .line 49
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->requestSuggestedEditsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onPageRequestGallery(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JZLandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p3, "revision"

    .line 8
    .line 9
    const-string v0, "filename"

    .line 10
    .line 11
    const-string v1, "title"

    .line 12
    .line 13
    const-string/jumbo v2, "wikiSite"

    .line 14
    .line 15
    .line 16
    const-class v3, Lorg/wikipedia/gallery/GalleryActivity;

    .line 17
    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    iget-object p6, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 21
    .line 22
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p5, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {p5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    invoke-virtual {p5, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->requestGalleryEditLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p6, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 60
    .line 61
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p5, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {p5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p5, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-virtual {p5, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->requestHandleIntentLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 93
    .line 94
    invoke-virtual {p0, p1, p7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onPageSetToolbarElevationEnabled(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const p1, 0x7f0704a0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-static {p1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onPause()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/views/TabCountsView;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return v0
.end method

.method public final onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const-string p0, "pageFragment"

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageActivity;->updateNotificationsButton(Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 17
    .line 18
    const v0, 0x7f120699

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->maybeShowYearInReviewFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "app"

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "language"

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "app"

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public final onStart()V
    .locals 6

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_0
    const-string/jumbo v3, "webview"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v2, v1

    .line 48
    :goto_1
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    throw v0

    .line 56
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    const v1, 0x7f1201eb

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    const-string p0, "app"

    .line 75
    .line 76
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    throw p0
.end method

.method public final onUnreadNotification()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageActivity;->updateNotificationsButton(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final removeTransitionAnimState()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/views/WikiArticleCardView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lorg/wikipedia/views/WikiArticleCardView;

    .line 50
    .line 51
    new-instance v2, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 52
    .line 53
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v3, 0xfa

    .line 57
    .line 58
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final updateNotificationsButton(Z)V
    .locals 8

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "toolbarHideHandler"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 37
    .line 38
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    new-instance v0, Ljava/util/Date;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 98
    .line 99
    const v0, 0x7f12061f

    .line 100
    .line 101
    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    invoke-static {v6, v7, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    sub-long/2addr v4, v6

    .line 109
    const-wide/32 v6, 0x240c8400

    .line 110
    .line 111
    .line 112
    cmp-long v0, v4, v6

    .line 113
    .line 114
    if-gez v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    new-array v0, v3, [Ljava/lang/Object;

    .line 128
    .line 129
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 130
    .line 131
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const v5, 0x7f1205d2

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v3, v4, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4, v3, v0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 163
    .line 164
    const/4 v3, 0x1

    .line 165
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 166
    .line 167
    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 171
    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    invoke-virtual {p1}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 184
    .line 185
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :cond_4
    return-void

    .line 194
    :cond_5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 201
    .line 202
    invoke-virtual {p0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 213
    .line 214
    const/16 p1, 0x8

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public final updateProgressBar$1(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
