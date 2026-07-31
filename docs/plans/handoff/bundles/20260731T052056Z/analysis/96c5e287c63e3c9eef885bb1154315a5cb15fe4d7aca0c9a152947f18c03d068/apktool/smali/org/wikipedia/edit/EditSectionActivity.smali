.class public final Lorg/wikipedia/edit/EditSectionActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
.implements Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/edit/EditSectionActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;",
        "Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;",
        "<init>",
        "()V",
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
.field public actionMode:Landroid/view/ActionMode;

.field public binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field public editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

.field public editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

.field public final movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public sectionTextFirstLoad:Z

.field public sectionTextModified:Z

.field public syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

.field public textWatcher:Landroidx/appcompat/widget/SearchView$10;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 13
    .line 14
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/edit/EditSectionActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    iput-boolean v5, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextFirstLoad:Z

    .line 38
    .line 39
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;

    .line 46
    .line 47
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 57
    .line 58
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;

    .line 64
    .line 65
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 73
    .line 74
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 75
    .line 76
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 77
    .line 78
    new-instance v1, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;

    .line 79
    .line 80
    invoke-direct {v1, p0, v7}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 87
    .line 88
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 89
    .line 90
    const/4 v1, 0x4

    .line 91
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final clickNextButton()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "imageTitle"

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/Parcelable;

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "imageSource"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "imageSourceProjects"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, v0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 43
    .line 44
    const-string v5, "editSummaryFragment"

    .line 45
    .line 46
    if-eqz v4, :cond_37

    .line 47
    .line 48
    invoke-virtual {v4}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const-string/jumbo v7, "wikitext"

    .line 53
    .line 54
    .line 55
    const v8, 0x7f1206fe

    .line 56
    .line 57
    .line 58
    const-string v9, "editsummary_dialog"

    .line 59
    .line 60
    const-string v10, "resultImageAlt"

    .line 61
    .line 62
    const-string v11, "resultImageCaption"

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const-string v13, ""

    .line 66
    .line 67
    const/4 v14, 0x1

    .line 68
    if-eqz v4, :cond_b

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 75
    .line 76
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 77
    .line 78
    if-ne v4, v5, :cond_a

    .line 79
    .line 80
    sget-object v15, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 81
    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v4, 0x0

    .line 90
    :goto_0
    if-nez v4, :cond_1

    .line 91
    .line 92
    move-object/from16 v16, v13

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-object/from16 v16, v4

    .line 96
    .line 97
    :goto_1
    if-nez v2, :cond_2

    .line 98
    .line 99
    move-object/from16 v17, v13

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move-object/from16 v17, v2

    .line 103
    .line 104
    :goto_2
    if-nez v3, :cond_3

    .line 105
    .line 106
    move-object/from16 v18, v13

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    move-object/from16 v18, v3

    .line 110
    .line 111
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    move v2, v12

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    :goto_4
    move v2, v14

    .line 131
    :goto_5
    xor-int/2addr v2, v14

    .line 132
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v22

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_7

    .line 151
    .line 152
    :cond_6
    move v12, v14

    .line 153
    :cond_7
    xor-int/lit8 v2, v12, 0x1

    .line 154
    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v23

    .line 159
    const/16 v24, 0x0

    .line 160
    .line 161
    const/16 v25, 0x128

    .line 162
    .line 163
    const/16 v19, 0x0

    .line 164
    .line 165
    const-string v20, "accepted"

    .line 166
    .line 167
    const/16 v21, 0x0

    .line 168
    .line 169
    invoke-static/range {v15 .. v25}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 176
    .line 177
    if-eqz v1, :cond_8

    .line 178
    .line 179
    iget-object v6, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_8
    const/4 v6, 0x0

    .line 183
    :goto_6
    if-nez v6, :cond_9

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_9
    move-object v13, v6

    .line 187
    :goto_7
    const-string v1, "editsummary_save"

    .line 188
    .line 189
    invoke-static {v1, v9, v2, v13}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->doSave()V

    .line 193
    .line 194
    .line 195
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 196
    .line 197
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 202
    .line 203
    const-string v3, "saveAttempt"

    .line 204
    .line 205
    invoke-static {v1, v2, v3, v7, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_31

    .line 213
    .line 214
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_b
    iget-object v4, v0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 223
    .line 224
    const-string v15, "editPreviewFragment"

    .line 225
    .line 226
    if-eqz v4, :cond_36

    .line 227
    .line 228
    invoke-virtual {v4}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    const/16 v16, 0x0

    .line 233
    .line 234
    const-string v6, "caption_preview"

    .line 235
    .line 236
    const/16 v8, 0x8

    .line 237
    .line 238
    if-eqz v4, :cond_23

    .line 239
    .line 240
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 245
    .line 246
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 247
    .line 248
    if-ne v4, v7, :cond_1c

    .line 249
    .line 250
    sget-object v18, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 251
    .line 252
    if-eqz v1, :cond_c

    .line 253
    .line 254
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    goto :goto_8

    .line 259
    :cond_c
    move-object/from16 v4, v16

    .line 260
    .line 261
    :goto_8
    if-nez v4, :cond_d

    .line 262
    .line 263
    move-object/from16 v19, v13

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_d
    move-object/from16 v19, v4

    .line 267
    .line 268
    :goto_9
    if-nez v2, :cond_e

    .line 269
    .line 270
    move-object/from16 v20, v13

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_e
    move-object/from16 v20, v2

    .line 274
    .line 275
    :goto_a
    if-nez v3, :cond_f

    .line 276
    .line 277
    move-object/from16 v21, v13

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_f
    move-object/from16 v21, v3

    .line 281
    .line 282
    :goto_b
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    if-eqz v4, :cond_11

    .line 291
    .line 292
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_10

    .line 297
    .line 298
    goto :goto_c

    .line 299
    :cond_10
    move v4, v12

    .line 300
    goto :goto_d

    .line 301
    :cond_11
    :goto_c
    move v4, v14

    .line 302
    :goto_d
    xor-int/2addr v4, v14

    .line 303
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v25

    .line 307
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    if-eqz v4, :cond_13

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-nez v4, :cond_12

    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_12
    move v4, v12

    .line 325
    goto :goto_f

    .line 326
    :cond_13
    :goto_e
    move v4, v14

    .line 327
    :goto_f
    xor-int/2addr v4, v14

    .line 328
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    move-result-object v26

    .line 332
    const/16 v27, 0x0

    .line 333
    .line 334
    const/16 v28, 0x128

    .line 335
    .line 336
    const/16 v22, 0x0

    .line 337
    .line 338
    const-string v23, "accepted"

    .line 339
    .line 340
    const/16 v24, 0x0

    .line 341
    .line 342
    invoke-static/range {v18 .. v28}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    iget-object v7, v7, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 351
    .line 352
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 353
    .line 354
    iget-object v7, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 355
    .line 356
    const-string v15, "caption_preview_accept"

    .line 357
    .line 358
    invoke-static {v15, v6, v4, v7}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    if-eqz v1, :cond_14

    .line 362
    .line 363
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    goto :goto_10

    .line 368
    :cond_14
    move-object/from16 v1, v16

    .line 369
    .line 370
    :goto_10
    if-nez v1, :cond_15

    .line 371
    .line 372
    move-object/from16 v19, v13

    .line 373
    .line 374
    goto :goto_11

    .line 375
    :cond_15
    move-object/from16 v19, v1

    .line 376
    .line 377
    :goto_11
    if-nez v2, :cond_16

    .line 378
    .line 379
    move-object/from16 v20, v13

    .line 380
    .line 381
    goto :goto_12

    .line 382
    :cond_16
    move-object/from16 v20, v2

    .line 383
    .line 384
    :goto_12
    if-nez v3, :cond_17

    .line 385
    .line 386
    move-object/from16 v21, v13

    .line 387
    .line 388
    goto :goto_13

    .line 389
    :cond_17
    move-object/from16 v21, v3

    .line 390
    .line 391
    :goto_13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_19

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_18

    .line 406
    .line 407
    goto :goto_14

    .line 408
    :cond_18
    move v1, v12

    .line 409
    goto :goto_15

    .line 410
    :cond_19
    :goto_14
    move v1, v14

    .line 411
    :goto_15
    xor-int/2addr v1, v14

    .line 412
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 413
    .line 414
    .line 415
    move-result-object v25

    .line 416
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    if-eqz v1, :cond_1b

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_1a

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_1a
    move v1, v12

    .line 434
    goto :goto_17

    .line 435
    :cond_1b
    :goto_16
    move v1, v14

    .line 436
    :goto_17
    xor-int/2addr v1, v14

    .line 437
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 438
    .line 439
    .line 440
    move-result-object v26

    .line 441
    const/16 v27, 0x0

    .line 442
    .line 443
    const/16 v28, 0x128

    .line 444
    .line 445
    const/16 v22, 0x0

    .line 446
    .line 447
    const-string v23, "accepted"

    .line 448
    .line 449
    const/16 v24, 0x0

    .line 450
    .line 451
    invoke-static/range {v18 .. v28}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 460
    .line 461
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 462
    .line 463
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v9, v1, v2}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    :cond_1c
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 469
    .line 470
    if-eqz v1, :cond_22

    .line 471
    .line 472
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_1e

    .line 477
    .line 478
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_1d

    .line 483
    .line 484
    goto :goto_18

    .line 485
    :cond_1d
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 493
    .line 494
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 495
    .line 496
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_1c

    .line 500
    .line 501
    :cond_1e
    :goto_18
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 509
    .line 510
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 511
    .line 512
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 523
    .line 524
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 525
    .line 526
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-eqz v3, :cond_1f

    .line 531
    .line 532
    const v3, 0x7f0801f6

    .line 533
    .line 534
    .line 535
    goto :goto_19

    .line 536
    :cond_1f
    const v3, 0x7f080110

    .line 537
    .line 538
    .line 539
    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 550
    .line 551
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 552
    .line 553
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 558
    .line 559
    .line 560
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 568
    .line 569
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 570
    .line 571
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 572
    .line 573
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    const v4, 0x7f12099d

    .line 578
    .line 579
    .line 580
    if-eqz v3, :cond_20

    .line 581
    .line 582
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserNameFromCookie()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    const/4 v5, 0x2

    .line 591
    new-array v5, v5, [Ljava/lang/Object;

    .line 592
    .line 593
    aput-object v3, v5, v12

    .line 594
    .line 595
    aput-object v4, v5, v14

    .line 596
    .line 597
    const v3, 0x7f120995

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    goto :goto_1b

    .line 605
    :cond_20
    iget-object v3, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 606
    .line 607
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    check-cast v3, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 612
    .line 613
    iget-boolean v3, v3, Lorg/wikipedia/edit/EditSectionViewModel;->tempAccountsEnabled:Z

    .line 614
    .line 615
    if-eqz v3, :cond_21

    .line 616
    .line 617
    const v3, 0x7f12098f

    .line 618
    .line 619
    .line 620
    goto :goto_1a

    .line 621
    :cond_21
    const v3, 0x7f120991

    .line 622
    .line 623
    .line 624
    :goto_1a
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    new-array v5, v14, [Ljava/lang/Object;

    .line 629
    .line 630
    aput-object v4, v5, v12

    .line 631
    .line 632
    invoke-virtual {v1, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    :goto_1b
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .line 642
    .line 643
    :goto_1c
    sget v2, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 644
    .line 645
    iget-object v2, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v2, Landroid/widget/ScrollView;

    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    new-instance v3, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;

    .line 658
    .line 659
    invoke-direct {v3, v1, v12}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 660
    .line 661
    .line 662
    invoke-static {v2, v3}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    if-eqz v1, :cond_31

    .line 670
    .line 671
    const v2, 0x7f1206fe

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v1, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :cond_22
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    throw v16

    .line 686
    :cond_23
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    new-instance v9, Landroidx/paging/HintHandler;

    .line 698
    .line 699
    invoke-direct {v9, v5}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 700
    .line 701
    .line 702
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 703
    .line 704
    const/16 v12, 0x23

    .line 705
    .line 706
    if-lt v5, v12, :cond_24

    .line 707
    .line 708
    new-instance v5, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 709
    .line 710
    invoke-direct {v5, v4, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 711
    .line 712
    .line 713
    goto :goto_1d

    .line 714
    :cond_24
    const/16 v12, 0x1e

    .line 715
    .line 716
    if-lt v5, v12, :cond_25

    .line 717
    .line 718
    new-instance v5, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 719
    .line 720
    invoke-direct {v5, v4, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 721
    .line 722
    .line 723
    goto :goto_1d

    .line 724
    :cond_25
    const/16 v12, 0x1a

    .line 725
    .line 726
    if-lt v5, v12, :cond_26

    .line 727
    .line 728
    new-instance v5, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 729
    .line 730
    invoke-direct {v5, v4, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 731
    .line 732
    .line 733
    goto :goto_1d

    .line 734
    :cond_26
    new-instance v5, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 735
    .line 736
    invoke-direct {v5, v4, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 737
    .line 738
    .line 739
    :goto_1d
    invoke-virtual {v5}, Lcoil3/util/UtilsKt;->hide()V

    .line 740
    .line 741
    .line 742
    iget-object v4, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 743
    .line 744
    const-string v5, "binding"

    .line 745
    .line 746
    if-eqz v4, :cond_35

    .line 747
    .line 748
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast v4, Landroid/widget/ScrollView;

    .line 751
    .line 752
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 753
    .line 754
    .line 755
    iget-object v4, v0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 756
    .line 757
    if-eqz v4, :cond_34

    .line 758
    .line 759
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 760
    .line 761
    .line 762
    move-result-object v8

    .line 763
    iget-object v8, v8, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 764
    .line 765
    iget-object v9, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 766
    .line 767
    if-eqz v9, :cond_33

    .line 768
    .line 769
    iget-object v5, v9, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v5, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 772
    .line 773
    invoke-virtual {v5}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-virtual {v4, v8, v5}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->showPreview(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 785
    .line 786
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    iget-object v5, v5, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 791
    .line 792
    const-string v8, "saveIntent"

    .line 793
    .line 794
    invoke-static {v4, v5, v8, v7, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    if-eqz v4, :cond_27

    .line 802
    .line 803
    const v5, 0x7f1201a4

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    invoke-virtual {v4, v5}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 811
    .line 812
    .line 813
    :cond_27
    new-instance v4, Landroid/util/TypedValue;

    .line 814
    .line 815
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    const v7, 0x7f0404e7

    .line 823
    .line 824
    .line 825
    invoke-virtual {v5, v7, v4, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 826
    .line 827
    .line 828
    move-result v5

    .line 829
    if-eqz v5, :cond_28

    .line 830
    .line 831
    goto :goto_1e

    .line 832
    :cond_28
    move-object/from16 v4, v16

    .line 833
    .line 834
    :goto_1e
    if-eqz v4, :cond_32

    .line 835
    .line 836
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 837
    .line 838
    invoke-virtual {v0, v4}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 846
    .line 847
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 848
    .line 849
    if-ne v4, v5, :cond_31

    .line 850
    .line 851
    sget-object v18, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 852
    .line 853
    if-eqz v1, :cond_29

    .line 854
    .line 855
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    move-object/from16 v16, v1

    .line 860
    .line 861
    :cond_29
    if-nez v16, :cond_2a

    .line 862
    .line 863
    move-object/from16 v19, v13

    .line 864
    .line 865
    goto :goto_1f

    .line 866
    :cond_2a
    move-object/from16 v19, v16

    .line 867
    .line 868
    :goto_1f
    if-nez v2, :cond_2b

    .line 869
    .line 870
    move-object/from16 v20, v13

    .line 871
    .line 872
    goto :goto_20

    .line 873
    :cond_2b
    move-object/from16 v20, v2

    .line 874
    .line 875
    :goto_20
    if-nez v3, :cond_2c

    .line 876
    .line 877
    move-object/from16 v21, v13

    .line 878
    .line 879
    goto :goto_21

    .line 880
    :cond_2c
    move-object/from16 v21, v3

    .line 881
    .line 882
    :goto_21
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    if-eqz v1, :cond_2e

    .line 891
    .line 892
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-nez v1, :cond_2d

    .line 897
    .line 898
    goto :goto_22

    .line 899
    :cond_2d
    const/4 v1, 0x0

    .line 900
    goto :goto_23

    .line 901
    :cond_2e
    :goto_22
    move v1, v14

    .line 902
    :goto_23
    xor-int/2addr v1, v14

    .line 903
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 904
    .line 905
    .line 906
    move-result-object v25

    .line 907
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    if-eqz v1, :cond_30

    .line 916
    .line 917
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 918
    .line 919
    .line 920
    move-result v1

    .line 921
    if-nez v1, :cond_2f

    .line 922
    .line 923
    goto :goto_24

    .line 924
    :cond_2f
    const/4 v12, 0x0

    .line 925
    goto :goto_25

    .line 926
    :cond_30
    :goto_24
    move v12, v14

    .line 927
    :goto_25
    xor-int/lit8 v1, v12, 0x1

    .line 928
    .line 929
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 930
    .line 931
    .line 932
    move-result-object v26

    .line 933
    const/16 v27, 0x0

    .line 934
    .line 935
    const/16 v28, 0x128

    .line 936
    .line 937
    const/16 v22, 0x0

    .line 938
    .line 939
    const-string v23, "accepted"

    .line 940
    .line 941
    const/16 v24, 0x0

    .line 942
    .line 943
    invoke-static/range {v18 .. v28}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 952
    .line 953
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 954
    .line 955
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 956
    .line 957
    invoke-static {v6, v1, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    :cond_31
    return-void

    .line 961
    :cond_32
    const-string v0, "Attribute not found; ID=2130969831"

    .line 962
    .line 963
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    return-void

    .line 967
    :cond_33
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v16

    .line 971
    :cond_34
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v16

    .line 975
    :cond_35
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    throw v16

    .line 979
    :cond_36
    const/16 v16, 0x0

    .line 980
    .line 981
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    throw v16

    .line 985
    :cond_37
    const/16 v16, 0x0

    .line 986
    .line 987
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v16
.end method

.method public final displaySectionText()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "binding"

    .line 9
    .line 10
    if-eqz v1, :cond_e

    .line 11
    .line 12
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 26
    .line 27
    if-eqz v1, :cond_d

    .line 28
    .line 29
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/widget/ScrollView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 37
    .line 38
    if-eqz v1, :cond_c

    .line 39
    .line 40
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-boolean v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->editingAllowed:Z

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_b

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->textToHighlight:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v1, :cond_b

    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_1

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 86
    .line 87
    if-eqz p0, :cond_a

    .line 88
    .line 89
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v2, "\\s"

    .line 98
    .line 99
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 126
    .line 127
    const/16 v2, 0xa

    .line 128
    .line 129
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .line 131
    .line 132
    move v2, v0

    .line 133
    :cond_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_3

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-object v1, v6

    .line 174
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    move-object v5, v3

    .line 194
    check-cast v5, Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-nez v5, :cond_4

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move v3, v0

    .line 211
    :goto_2
    move v5, v3

    .line 212
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    const/4 v7, -0x1

    .line 217
    if-eqz v6, :cond_8

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Ljava/lang/String;

    .line 224
    .line 225
    const/4 v8, 0x4

    .line 226
    invoke-static {v4, v6, v3, v0, v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ne v3, v7, :cond_7

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    if-nez v5, :cond_6

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_8
    :goto_3
    if-ne v3, v7, :cond_9

    .line 237
    .line 238
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/String;

    .line 243
    .line 244
    const/4 v3, 0x6

    .line 245
    invoke-static {v4, v1, v0, v0, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    move v3, v5

    .line 250
    :cond_9
    if-ltz v3, :cond_b

    .line 251
    .line 252
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    add-int/2addr v0, v3

    .line 263
    invoke-virtual {p0, v5, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 264
    .line 265
    .line 266
    add-int/lit8 v5, v5, 0x64

    .line 267
    .line 268
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 277
    .line 278
    .line 279
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;

    .line 280
    .line 281
    const/4 v2, 0x5

    .line 282
    invoke-direct {v1, v0, v2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const-wide/16 v2, 0x1f4

    .line 286
    .line 287
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v2

    .line 295
    :cond_b
    :goto_4
    return-void

    .line 296
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v2

    .line 300
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v2

    .line 304
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v2
.end method

.method public final doExitActionWithConfirmationDialog(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    const v1, 0x7f120193

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 21
    .line 22
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 23
    .line 24
    const v1, 0x7f120195

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-direct {v2, v3, p1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f120194

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    invoke-direct {p1, v3}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final doSave()V
    .locals 15

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionAnchor:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 23
    .line 24
    const-string v3, "editSummaryFragment"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v2, :cond_15

    .line 28
    .line 29
    iget-object v2, v2, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroid/widget/CheckBox;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    move-object v11, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v11, v4

    .line 49
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 50
    .line 51
    if-eqz v2, :cond_14

    .line 52
    .line 53
    iget-object v2, v2, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroid/widget/CheckBox;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const-string/jumbo v2, "watch"

    .line 69
    .line 70
    .line 71
    :goto_1
    move-object v12, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const-string/jumbo v2, "unwatch"

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 89
    .line 90
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 105
    .line 106
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 107
    .line 108
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "en"

    .line 111
    .line 112
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    const-string v1, "/* top */"

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const-string v1, "_"

    .line 122
    .line 123
    const-string v2, " "

    .line 124
    .line 125
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "/* "

    .line 130
    .line 131
    const-string v2, " */ "

    .line 132
    .line 133
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 138
    .line 139
    if-eqz v0, :cond_13

    .line 140
    .line 141
    iget-object v0, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_6

    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 189
    .line 190
    if-eqz v0, :cond_12

    .line 191
    .line 192
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 195
    .line 196
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 205
    .line 206
    const-string v1, "captchaHandler"

    .line 207
    .line 208
    if-eqz v0, :cond_11

    .line 209
    .line 210
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    move-object v0, v4

    .line 218
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 223
    .line 224
    if-eqz v0, :cond_10

    .line 225
    .line 226
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 239
    .line 240
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPIC_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 241
    .line 242
    const/4 v2, 0x0

    .line 243
    if-ne v0, v1, :cond_8

    .line 244
    .line 245
    const-string v0, "app-talk-source"

    .line 246
    .line 247
    :goto_6
    move-object v13, v0

    .line 248
    goto :goto_8

    .line 249
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 254
    .line 255
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 256
    .line 257
    if-ne v0, v1, :cond_a

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v1, "insertedIntoInfobox"

    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_9

    .line 270
    .line 271
    const-string v0, "app-image-add-infobox"

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_9
    const-string v0, "app-image-add-top"

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_a
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->textToHighlight:Ljava/lang/String;

    .line 282
    .line 283
    if-eqz v0, :cond_c

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_b

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_b
    const-string v0, "app-select-source"

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionID:I

    .line 300
    .line 301
    if-ltz v0, :cond_d

    .line 302
    .line 303
    const-string v0, "app-section-source"

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_d
    const-string v0, "app-full-source"

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    iget-object v0, v6, Lorg/wikipedia/edit/EditSectionViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 316
    .line 317
    if-eqz v0, :cond_e

    .line 318
    .line 319
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 320
    .line 321
    .line 322
    :cond_e
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-instance v1, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;

    .line 327
    .line 328
    invoke-direct {v1, v6, v2}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;I)V

    .line 329
    .line 330
    .line 331
    new-instance v5, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 332
    .line 333
    const/4 v14, 0x0

    .line 334
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 335
    .line 336
    .line 337
    const/4 v2, 0x2

    .line 338
    invoke-static {v0, v1, v4, v5, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, v6, Lorg/wikipedia/edit/EditSectionViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 343
    .line 344
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 345
    .line 346
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 347
    .line 348
    if-eqz v1, :cond_f

    .line 349
    .line 350
    iget-object v1, v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableNameForView(Landroid/view/View;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v0, "."

    .line 379
    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 391
    .line 392
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 393
    .line 394
    invoke-static {p0, v4}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-direct {v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v4

    .line 409
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v4

    .line 413
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v4

    .line 417
    :cond_12
    const-string p0, "binding"

    .line 418
    .line 419
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v4

    .line 423
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v4

    .line 427
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v4

    .line 431
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v4
.end method

.method public final getParentPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isNewPage()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final launchLogin(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/wikipedia/login/LoginActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "login_request_source"

    .line 9
    .line 10
    const-string v2, "edit"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "create_account_first"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final maybeShowTempAccountDialog(Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTempAccountDialogShown()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v0

    .line 26
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 27
    .line 28
    const v2, 0x7f13000c

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 37
    .line 38
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    const v3, 0x7f0801f6

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const v3, 0x7f080110

    .line 49
    .line 50
    .line 51
    :goto_1
    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 52
    .line 53
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const v3, 0x7f12099c

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const v3, 0x7f12099a

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 70
    .line 71
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x1

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-array v5, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v3, v5, v0

    .line 85
    .line 86
    const v3, 0x7f12099b

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-boolean v3, v3, Lorg/wikipedia/edit/EditSectionViewModel;->tempAccountsEnabled:Z

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    const v3, 0x7f12098e

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const v3, 0x7f120990

    .line 107
    .line 108
    .line 109
    :goto_3
    const v5, 0x7f12099d

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    new-array v6, v4, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v5, v6, v0

    .line 119
    .line 120
    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :goto_4
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 129
    .line 130
    const v2, 0x7f120994

    .line 131
    .line 132
    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    move v3, v2

    .line 136
    goto :goto_5

    .line 137
    :cond_6
    const v3, 0x7f1200db

    .line 138
    .line 139
    .line 140
    :goto_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    new-instance v5, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    invoke-direct {v5, p1, p0, v0}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;-><init>(ZLorg/wikipedia/edit/EditSectionActivity;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    const v2, 0x7f1200e2

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v2, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-direct {v2, p1, p0, v4}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;-><init>(ZLorg/wikipedia/edit/EditSectionActivity;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const v1, 0x102000b

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/widget/TextView;

    .line 191
    .line 192
    if-eqz v0, :cond_8

    .line 193
    .line 194
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 195
    .line 196
    new-instance v2, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 197
    .line 198
    const/4 v3, 0x5

    .line 199
    invoke-direct {v2, v3, p0, p1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 209
    .line 210
    const p0, 0x7f120697

    .line 211
    .line 212
    .line 213
    invoke-static {p0, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 214
    .line 215
    .line 216
    return v4
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    const v1, 0x7f0c05bb

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const v0, 0x7f090156

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast p0, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "Missing required view with ID: "

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final onCancelThemeChooser()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v2, 0x7f0c0021

    .line 13
    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    invoke-virtual {v0, v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v2, 0x7f0900c7

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1a

    .line 29
    .line 30
    invoke-static {v3}, Lorg/wikipedia/databinding/GroupCaptchaBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v15

    .line 34
    const v2, 0x7f090200

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object/from16 v16, v3

    .line 42
    .line 43
    check-cast v16, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 44
    .line 45
    if-eqz v16, :cond_1a

    .line 46
    .line 47
    const v2, 0x7f090201

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    move-object/from16 v17, v3

    .line 55
    .line 56
    check-cast v17, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 57
    .line 58
    if-eqz v17, :cond_1a

    .line 59
    .line 60
    const v2, 0x7f090202

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object/from16 v18, v3

    .line 68
    .line 69
    check-cast v18, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 70
    .line 71
    if-eqz v18, :cond_1a

    .line 72
    .line 73
    const v2, 0x7f090206

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    move-object/from16 v19, v3

    .line 81
    .line 82
    check-cast v19, Landroid/widget/ScrollView;

    .line 83
    .line 84
    if-eqz v19, :cond_1a

    .line 85
    .line 86
    const v10, 0x7f090207

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    .line 94
    .line 95
    if-eqz v2, :cond_19

    .line 96
    .line 97
    const v2, 0x7f090208

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object/from16 v20, v3

    .line 105
    .line 106
    check-cast v20, Landroid/widget/ScrollView;

    .line 107
    .line 108
    if-eqz v20, :cond_1a

    .line 109
    .line 110
    const v6, 0x7f090209

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    .line 118
    .line 119
    if-eqz v2, :cond_18

    .line 120
    .line 121
    const v2, 0x7f09020a

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    move-object/from16 v21, v3

    .line 129
    .line 130
    check-cast v21, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 131
    .line 132
    if-eqz v21, :cond_1a

    .line 133
    .line 134
    const v2, 0x7f0906cb

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    move-object/from16 v22, v3

    .line 142
    .line 143
    check-cast v22, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 144
    .line 145
    if-eqz v22, :cond_1a

    .line 146
    .line 147
    const v2, 0x7f090732

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    move-object/from16 v23, v3

    .line 155
    .line 156
    check-cast v23, Lorg/wikipedia/views/WikiErrorView;

    .line 157
    .line 158
    if-eqz v23, :cond_1a

    .line 159
    .line 160
    const v2, 0x7f09073f

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object/from16 v24, v3

    .line 168
    .line 169
    check-cast v24, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 170
    .line 171
    if-eqz v24, :cond_1a

    .line 172
    .line 173
    new-instance v13, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 174
    .line 175
    move-object v14, v0

    .line 176
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 177
    .line 178
    invoke-direct/range {v13 .. v24}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/wikipedia/databinding/GroupCaptchaBinding;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Landroid/widget/ScrollView;Landroid/widget/ScrollView;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lcom/google/android/material/appbar/MaterialToolbar;Lorg/wikipedia/views/WikiErrorView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    .line 179
    .line 180
    .line 181
    iput-object v13, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 182
    .line 183
    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Landroid/util/TypedValue;

    .line 187
    .line 188
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const v3, 0x1010031

    .line 196
    .line 197
    .line 198
    const/4 v13, 0x1

    .line 199
    invoke-virtual {v2, v3, v0, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_0

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_0
    move-object v0, v11

    .line 207
    :goto_0
    if-eqz v0, :cond_17

    .line 208
    .line 209
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 215
    .line 216
    const-string v14, "binding"

    .line 217
    .line 218
    if-eqz v0, :cond_16

    .line 219
    .line 220
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v15, ""

    .line 232
    .line 233
    if-eqz v0, :cond_1

    .line 234
    .line 235
    invoke-virtual {v0, v15}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    :cond_1
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v2, v1, Lorg/wikipedia/edit/EditSectionActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 243
    .line 244
    invoke-virtual {v0, v2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 248
    .line 249
    iget-object v2, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 250
    .line 251
    if-eqz v2, :cond_15

    .line 252
    .line 253
    iget-object v3, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v3, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 256
    .line 257
    if-eqz v2, :cond_14

    .line 258
    .line 259
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Landroid/widget/ScrollView;

    .line 262
    .line 263
    const-wide/16 v4, 0x1f4

    .line 264
    .line 265
    move-object/from16 v25, v3

    .line 266
    .line 267
    move-object v3, v2

    .line 268
    move-object/from16 v2, v25

    .line 269
    .line 270
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;-><init>(Landroidx/activity/ComponentActivity;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Landroid/widget/ScrollView;J)V

    .line 271
    .line 272
    .line 273
    iput-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 274
    .line 275
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 276
    .line 277
    if-eqz v0, :cond_13

    .line 278
    .line 279
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Landroid/widget/ScrollView;

    .line 282
    .line 283
    invoke-virtual {v0, v12}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    .line 287
    .line 288
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 293
    .line 294
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 295
    .line 296
    iget-object v3, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 297
    .line 298
    if-eqz v3, :cond_12

    .line 299
    .line 300
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v4, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 303
    .line 304
    iget-object v4, v4, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 305
    .line 306
    if-eqz v3, :cond_11

    .line 307
    .line 308
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 311
    .line 312
    const/4 v7, 0x0

    .line 313
    const/16 v8, 0xc0

    .line 314
    .line 315
    const-string v5, ""

    .line 316
    .line 317
    move/from16 v16, v6

    .line 318
    .line 319
    const/4 v6, 0x0

    .line 320
    move-object v11, v4

    .line 321
    move-object v4, v3

    .line 322
    move-object v3, v11

    .line 323
    move/from16 v11, v16

    .line 324
    .line 325
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 326
    .line 327
    .line 328
    iput-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 329
    .line 330
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, v10}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    check-cast v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 342
    .line 343
    iput-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    check-cast v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 357
    .line 358
    iput-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 359
    .line 360
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iput-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->title:Lorg/wikipedia/page/PageTitle;

    .line 370
    .line 371
    if-nez v9, :cond_2

    .line 372
    .line 373
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 374
    .line 375
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 380
    .line 381
    const-string/jumbo v3, "wikitext"

    .line 382
    .line 383
    .line 384
    const-string v4, "init"

    .line 385
    .line 386
    invoke-static {v0, v2, v4, v3, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 387
    .line 388
    .line 389
    :cond_2
    if-eqz v9, :cond_4

    .line 390
    .line 391
    const-string v0, "hasTemporaryWikitextStored"

    .line 392
    .line 393
    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_3

    .line 398
    .line 399
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 404
    .line 405
    const v2, 0x7f120699

    .line 406
    .line 407
    .line 408
    invoke-static {v2, v15}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iput-object v2, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 413
    .line 414
    :cond_3
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string v2, "editingAllowed"

    .line 419
    .line 420
    invoke-virtual {v9, v2, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iput-boolean v2, v0, Lorg/wikipedia/edit/EditSectionViewModel;->editingAllowed:Z

    .line 425
    .line 426
    const-string v0, "sectionTextModified"

    .line 427
    .line 428
    invoke-virtual {v9, v0, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iput-boolean v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 433
    .line 434
    :cond_4
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 435
    .line 436
    if-eqz v0, :cond_10

    .line 437
    .line 438
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 441
    .line 442
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 447
    .line 448
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 449
    .line 450
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v0, v2}, Lcoil3/util/BitmapsKt;->setTextDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 460
    .line 461
    const/4 v11, 0x2

    .line 462
    if-eqz v0, :cond_5

    .line 463
    .line 464
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    new-instance v3, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;

    .line 473
    .line 474
    invoke-direct {v3, v0, v13}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;I)V

    .line 475
    .line 476
    .line 477
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 478
    .line 479
    const/16 v5, 0x1d

    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    invoke-direct {v4, v5, v0, v6}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v2, v3, v6, v4, v11}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 486
    .line 487
    .line 488
    goto :goto_1

    .line 489
    :cond_5
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->displaySectionText()V

    .line 490
    .line 491
    .line 492
    :goto_1
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 493
    .line 494
    if-eqz v0, :cond_f

    .line 495
    .line 496
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 499
    .line 500
    new-instance v2, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;

    .line 501
    .line 502
    invoke-direct {v2, v1, v12}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 509
    .line 510
    if-eqz v0, :cond_e

    .line 511
    .line 512
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 515
    .line 516
    new-instance v2, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;

    .line 517
    .line 518
    invoke-direct {v2, v1, v13}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    .line 523
    .line 524
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 525
    .line 526
    if-eqz v0, :cond_d

    .line 527
    .line 528
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 531
    .line 532
    new-instance v2, Landroidx/appcompat/widget/SearchView$10;

    .line 533
    .line 534
    const/4 v3, 0x4

    .line 535
    invoke-direct {v2, v3, v1}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 539
    .line 540
    .line 541
    iput-object v2, v1, Lorg/wikipedia/edit/EditSectionActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 542
    .line 543
    new-instance v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 544
    .line 545
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 550
    .line 551
    iget-object v3, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 552
    .line 553
    if-eqz v3, :cond_c

    .line 554
    .line 555
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v4, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 558
    .line 559
    if-eqz v3, :cond_b

    .line 560
    .line 561
    iget-object v5, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v5, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 564
    .line 565
    if-eqz v3, :cond_a

    .line 566
    .line 567
    iget-object v6, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v6, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 570
    .line 571
    if-eqz v3, :cond_9

    .line 572
    .line 573
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v3, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 576
    .line 577
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 578
    .line 579
    const/4 v9, 0x0

    .line 580
    const/4 v10, 0x0

    .line 581
    iget-object v8, v1, Lorg/wikipedia/edit/EditSectionActivity;->requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 582
    .line 583
    move-object/from16 v25, v6

    .line 584
    .line 585
    move-object v6, v3

    .line 586
    move-object v3, v4

    .line 587
    move-object v4, v5

    .line 588
    move-object/from16 v5, v25

    .line 589
    .line 590
    invoke-direct/range {v0 .. v10}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;-><init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Lorg/wikipedia/Constants$InvokeSource;Landroidx/activity/result/ActivityResultRegistry$register$2;ZZ)V

    .line 591
    .line 592
    .line 593
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 594
    .line 595
    if-eqz v0, :cond_8

    .line 596
    .line 597
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 600
    .line 601
    new-instance v2, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;

    .line 602
    .line 603
    invoke-direct {v2, v1, v11}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditingPrefsChanged()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 617
    .line 618
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 619
    .line 620
    if-ne v0, v2, :cond_6

    .line 621
    .line 622
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->startInsertImageFlow()V

    .line 623
    .line 624
    .line 625
    :cond_6
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 626
    .line 627
    if-eqz v0, :cond_7

    .line 628
    .line 629
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 632
    .line 633
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    const/4 v2, 0x3

    .line 641
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 642
    .line 643
    .line 644
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    new-instance v3, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;

    .line 649
    .line 650
    const/4 v6, 0x0

    .line 651
    invoke-direct {v3, v1, v6, v12}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V

    .line 652
    .line 653
    .line 654
    invoke-static {v0, v6, v6, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_7
    const/4 v6, 0x0

    .line 659
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    throw v6

    .line 663
    :cond_8
    const/4 v6, 0x0

    .line 664
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v6

    .line 668
    :cond_9
    const/4 v6, 0x0

    .line 669
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    throw v6

    .line 673
    :cond_a
    const/4 v6, 0x0

    .line 674
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw v6

    .line 678
    :cond_b
    const/4 v6, 0x0

    .line 679
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v6

    .line 683
    :cond_c
    const/4 v6, 0x0

    .line 684
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    throw v6

    .line 688
    :cond_d
    const/4 v6, 0x0

    .line 689
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    throw v6

    .line 693
    :cond_e
    const/4 v6, 0x0

    .line 694
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v6

    .line 698
    :cond_f
    const/4 v6, 0x0

    .line 699
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    throw v6

    .line 703
    :cond_10
    const/4 v6, 0x0

    .line 704
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    throw v6

    .line 708
    :cond_11
    move-object v6, v11

    .line 709
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    throw v6

    .line 713
    :cond_12
    move-object v6, v11

    .line 714
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v6

    .line 718
    :cond_13
    move-object v6, v11

    .line 719
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    throw v6

    .line 723
    :cond_14
    move-object v6, v11

    .line 724
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    throw v6

    .line 728
    :cond_15
    move-object v6, v11

    .line 729
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v6

    .line 733
    :cond_16
    move-object v6, v11

    .line 734
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v6

    .line 738
    :cond_17
    const-string v0, "Attribute not found; ID=16842801"

    .line 739
    .line 740
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    return-void

    .line 744
    :cond_18
    move v11, v6

    .line 745
    move v2, v11

    .line 746
    goto :goto_2

    .line 747
    :cond_19
    move v2, v10

    .line 748
    :cond_1a
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    const-string v1, "Missing required view with ID: "

    .line 757
    .line 758
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0e000a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0903f7

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move v1, v3

    .line 39
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const v1, 0x7f0801f6

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const v1, 0x7f080110

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0903e6

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v4, "editPreviewFragment"

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iget-object v6, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    invoke-virtual {v6}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/high16 v6, 0x40800000    # 4.0f

    .line 87
    .line 88
    invoke-static {v6}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    :goto_3
    invoke-virtual {v1, v6}, Lcoil3/util/ContextsKt;->setElevation(F)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v5

    .line 100
    :cond_5
    :goto_4
    const v1, 0x7f0903a2

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iget-object v6, v6, Lorg/wikipedia/edit/EditSectionViewModel;->editNotices:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_7

    .line 118
    .line 119
    iget-object v6, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 120
    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    invoke-virtual {v6}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_7

    .line 128
    .line 129
    move v6, v3

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v5

    .line 135
    :cond_7
    move v6, v2

    .line 136
    :goto_5
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    .line 138
    .line 139
    const v1, 0x7f0903a4

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v6, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 147
    .line 148
    if-eqz v6, :cond_17

    .line 149
    .line 150
    invoke-virtual {v6}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    xor-int/2addr v6, v3

    .line 155
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    const v1, 0x7f0903af

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 166
    .line 167
    if-eqz v1, :cond_16

    .line 168
    .line 169
    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    xor-int/2addr v1, v3

    .line 174
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 178
    .line 179
    const-string v1, "editSummaryFragment"

    .line 180
    .line 181
    if-eqz p1, :cond_15

    .line 182
    .line 183
    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    const p1, 0x7f12019b

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 198
    .line 199
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 200
    .line 201
    if-ne p1, v4, :cond_9

    .line 202
    .line 203
    const p1, 0x7f120507

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    const p1, 0x7f12019f

    .line 208
    .line 209
    .line 210
    :goto_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-boolean p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->editingAllowed:Z

    .line 222
    .line 223
    if-eqz p1, :cond_b

    .line 224
    .line 225
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 226
    .line 227
    if-eqz p1, :cond_a

    .line 228
    .line 229
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    const/16 v4, 0x8

    .line 238
    .line 239
    if-ne p1, v4, :cond_b

    .line 240
    .line 241
    iget-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 242
    .line 243
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_a
    const-string p0, "binding"

    .line 248
    .line 249
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v5

    .line 253
    :cond_b
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 254
    .line 255
    .line 256
    :goto_7
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 257
    .line 258
    if-eqz p1, :cond_14

    .line 259
    .line 260
    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_c

    .line 265
    .line 266
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 267
    .line 268
    if-eqz p1, :cond_e

    .line 269
    .line 270
    iget-object p1, p1, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-lez p1, :cond_d

    .line 292
    .line 293
    :cond_c
    move p1, v3

    .line 294
    goto :goto_8

    .line 295
    :cond_d
    move p1, v2

    .line 296
    goto :goto_8

    .line 297
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v5

    .line 301
    :goto_8
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_f

    .line 306
    .line 307
    if-eqz p1, :cond_f

    .line 308
    .line 309
    move p1, v3

    .line 310
    goto :goto_9

    .line 311
    :cond_f
    move p1, v2

    .line 312
    :goto_9
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const v4, 0x7f0c02fb

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz v1, :cond_13

    .line 324
    .line 325
    check-cast v1, Landroid/widget/Button;

    .line 326
    .line 327
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 328
    .line 329
    .line 330
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    if-eqz p1, :cond_10

    .line 338
    .line 339
    const p1, 0x7f040520

    .line 340
    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_10
    const p1, 0x7f0404fb

    .line 344
    .line 345
    .line 346
    :goto_a
    new-instance v4, Landroid/util/TypedValue;

    .line 347
    .line 348
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v6, p1, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_11

    .line 360
    .line 361
    move-object v5, v4

    .line 362
    :cond_11
    if-eqz v5, :cond_12

    .line 363
    .line 364
    iget p1, v5, Landroid/util/TypedValue;->data:I

    .line 365
    .line 366
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    .line 378
    .line 379
    new-instance p1, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;

    .line 380
    .line 381
    const/4 v0, 0x3

    .line 382
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    return v3

    .line 389
    :cond_12
    const-string p0, "Attribute not found; ID="

    .line 390
    .line 391
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return v2

    .line 399
    :cond_13
    const-string p0, "rootView"

    .line 400
    .line 401
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    return v2

    .line 405
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v5

    .line 409
    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v5

    .line 413
    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v5

    .line 417
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v5
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/text/Editable;->clearSpans()V

    .line 39
    .line 40
    .line 41
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string p0, "syntaxHighlighter"

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_2
    const-string p0, "textWatcher"

    .line 52
    .line 53
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_3
    const-string p0, "binding"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_4
    const-string p0, "captchaHandler"

    .line 64
    .line 65
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method public final onEditFailure(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 3
    .line 4
    .line 5
    instance-of v1, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v5, p1

    .line 11
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 12
    .line 13
    iget-object v0, v5, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 29
    .line 30
    const/16 v8, 0xd

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v6, p0

    .line 34
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v7, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v6, p0

    .line 42
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 43
    .line 44
    invoke-direct {p0, v6, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f120149

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 60
    .line 61
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    .line 63
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 64
    .line 65
    invoke-direct {v0, v2, v6}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f12014b

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, v1}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const v1, 0x7f12014a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onEditSuccess(Lokhttp3/HttpUrl$Companion;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/wikipedia/edit/EditSuccessResult;

    .line 2
    .line 3
    const-string/jumbo v1, "wikitext"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/core/app/ActivityRecreator$1;

    .line 32
    .line 33
    const/16 v2, 0xd

    .line 34
    .line 35
    invoke-direct {v1, v2, p0, p1}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 p0, 0x7d0

    .line 39
    .line 40
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 46
    .line 47
    .line 48
    instance-of v2, p1, Lorg/wikipedia/captcha/CaptchaResult;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroid/widget/ScrollView;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 65
    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    check-cast p1, Lorg/wikipedia/captcha/CaptchaResult;

    .line 69
    .line 70
    iput-object v2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const-string p0, "captchaHandler"

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    :cond_2
    const-string p0, "binding"

    .line 85
    .line 86
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :cond_3
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const-string p1, "saveFailure"

    .line 105
    .line 106
    invoke-static {p1, v1, v0}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/lang/Throwable;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final onEditingPrefsChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 14
    .line 15
    new-instance v4, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    invoke-direct {v4, v5, v0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v5, 0x3e8

    .line 22
    .line 23
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 27
    .line 28
    if-eqz v0, :cond_a

    .line 29
    .line 30
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 33
    .line 34
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-virtual {v4, v5}, Lorg/wikipedia/WikipediaApp;->getFontSize(Z)F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 49
    .line 50
    if-eqz v0, :cond_9

    .line 51
    .line 52
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 53
    .line 54
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditSyntaxHighlightEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v6, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 59
    .line 60
    iput-boolean v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->enabled:Z

    .line 61
    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->currentHighlightJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v6}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const-class v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 80
    .line 81
    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    array-length v4, v0

    .line 89
    move v5, v3

    .line 90
    :goto_0
    if-ge v5, v4, :cond_2

    .line 91
    .line 92
    aget-object v7, v0, v5

    .line 93
    .line 94
    check-cast v7, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 95
    .line 96
    invoke-virtual {v6}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v8, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 107
    .line 108
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v6, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;

    .line 113
    .line 114
    invoke-direct {v6, v0, v2, v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x3

    .line 118
    invoke-static {v4, v2, v2, v6, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 122
    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 128
    .line 129
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 130
    .line 131
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditTypingSuggestionsEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const v3, 0x80090

    .line 139
    .line 140
    .line 141
    :goto_1
    const v4, 0x20001

    .line 142
    .line 143
    .line 144
    or-int/2addr v3, v4

    .line 145
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 155
    .line 156
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditMonoSpaceFontEnabled()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 166
    .line 167
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 177
    .line 178
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditLineNumbersEnabled()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v0, v3}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->setShowLineNumbers(Z)V

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 186
    .line 187
    if-eqz p0, :cond_5

    .line 188
    .line 189
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v2

    .line 201
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v2

    .line 205
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v2

    .line 209
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v2

    .line 213
    :cond_9
    const-string p0, "syntaxHighlighter"

    .line 214
    .line 215
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v2

    .line 219
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v2

    .line 223
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2
.end method

.method public final onLinkPreviewDismiss()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 14
    .line 15
    new-instance v1, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda10;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda10;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0xc8

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "binding"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_1
    return-void
.end method

.method public final onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    invoke-direct {v0, p0, p3, p2, p1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;ZLorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->doExitActionWithConfirmationDialog(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

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
    const v1, 0x7f0903e6

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->clickNextButton()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const v1, 0x7f0903a4

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 33
    .line 34
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v3, 0x3e8

    .line 41
    .line 42
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget p1, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 50
    .line 51
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 52
    .line 53
    invoke-static {p1, v2}, Lorg/wikipedia/login/LoginClient;->newInstance(Lorg/wikipedia/Constants$InvokeSource;Z)Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_1
    const-string p0, "binding"

    .line 62
    .line 63
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    throw p0

    .line 68
    :cond_2
    const v1, 0x7f0903af

    .line 69
    .line 70
    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    new-instance p1, Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_3
    const v1, 0x7f0903a2

    .line 83
    .line 84
    .line 85
    if-ne v0, v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->showEditNotices()V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_4
    const v1, 0x7f0903f7

    .line 92
    .line 93
    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lorg/wikipedia/edit/EditSectionActivity;->maybeShowTempAccountDialog(Z)Z

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_5
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "binding"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "hasTemporaryWikitextStored"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string v0, "sectionTextModified"

    .line 14
    .line 15
    iget-boolean v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->editingAllowed:Z

    .line 25
    .line 26
    const-string v1, "editingAllowed"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const-string p0, ""

    .line 42
    .line 43
    :cond_0
    const p1, 0x7f120699

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateEditLicenseText()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onToggleDimImages()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onToggleReadingFocusMode()V
    .locals 0

    .line 1
    return-void
.end method

.method public final showEditNotices()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->editNotices:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lorg/wikipedia/views/EditNoticesDialog;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->editNotices:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, p0}, Lorg/wikipedia/views/EditNoticesDialog;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lorg/wikipedia/edit/EditSectionActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/wikipedia/views/EditNoticesDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final showError$1(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroidx/paging/HintHandler;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v3, 0x23

    .line 20
    .line 21
    if-lt v1, v3, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v3, 0x1e

    .line 30
    .line 31
    if-lt v1, v3, :cond_1

    .line 32
    .line 33
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v3, 0x1a

    .line 40
    .line 41
    if-lt v1, v3, :cond_2

    .line 42
    .line 43
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 44
    .line 45
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const-string v2, "binding"

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 67
    .line 68
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 69
    .line 70
    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1
.end method

.method public final showProgressBar$1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

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
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p0, "binding"

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public final startInsertImageFlow()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "imageTitle"

    .line 9
    .line 10
    const-class v2, Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/os/Parcelable;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-object v7, v0

    .line 22
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v10, "imageSource"

    .line 29
    .line 30
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v6, v0, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 60
    .line 61
    const/16 v9, 0x40

    .line 62
    .line 63
    move-object v3, p0

    .line 64
    invoke-static/range {v3 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/os/Parcelable;

    .line 80
    .line 81
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "resultImageCaption"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "resultImageAlt"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "resultImageSize"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "resultImageType"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v1, "resultImagePos"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "imageSourceProjects"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    iget-object v0, v3, Lorg/wikipedia/edit/EditSectionActivity;->requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, p0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final updateEditLicenseText()V
    .locals 5

    .line 1
    const v0, 0x7f09032b

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->requireViewById(Landroid/app/Activity;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 14
    .line 15
    const v1, 0x7f1209aa

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f1200ba

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput-object v1, v3, v4

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aput-object v2, v3, v1

    .line 37
    .line 38
    const v1, 0x7f1201a9

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
