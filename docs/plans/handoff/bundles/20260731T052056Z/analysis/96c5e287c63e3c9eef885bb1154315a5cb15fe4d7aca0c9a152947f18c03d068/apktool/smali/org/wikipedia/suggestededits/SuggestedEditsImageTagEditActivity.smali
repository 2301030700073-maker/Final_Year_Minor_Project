.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;",
        "<init>",
        "()V",
        "org/wikipedia/util/TabUtil",
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
.field public binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

.field public page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getLangCode()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2
    .line 3
    return-object p0
.end method

.method public final nextPage(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "intentAction"

    .line 7
    .line 8
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0030

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f09004f

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    const v0, 0x7f090050

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    const v0, 0x7f090051

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    const v0, 0x7f0902d3

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    .line 58
    .line 59
    if-eqz v6, :cond_5

    .line 60
    .line 61
    new-instance v6, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 62
    .line 63
    check-cast p1, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-direct {v6, p1, v3, v4, v5}, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 78
    .line 79
    const/16 v4, 0x17

    .line 80
    .line 81
    invoke-direct {v3, v4, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0, v3}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v3, "imageTagPage"

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;

    .line 114
    .line 115
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 124
    .line 125
    invoke-virtual {v3, p1, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    move-object p1, v1

    .line 135
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 136
    .line 137
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    const/4 v3, 0x1

    .line 147
    invoke-virtual {p1, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const v4, 0x7f120905

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {p1, v4}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Lorg/wikipedia/views/ImageZoomHelper;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 186
    .line 187
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string v0, "invokeSource"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 203
    .line 204
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 205
    .line 206
    const-string v0, "binding"

    .line 207
    .line 208
    if-eqz p1, :cond_4

    .line 209
    .line 210
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 211
    .line 212
    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;

    .line 213
    .line 214
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 221
    .line 222
    if-eqz p1, :cond_3

    .line 223
    .line 224
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 225
    .line 226
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;

    .line 227
    .line 228
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 235
    .line 236
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowImageTagsOnboarding()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_2

    .line 241
    .line 242
    const p1, 0x7f120611

    .line 243
    .line 244
    .line 245
    invoke-static {p1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Landroid/content/Intent;

    .line 249
    .line 250
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    .line 251
    .line 252
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    .line 257
    .line 258
    :cond_2
    return-void

    .line 259
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v1

    .line 267
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    const-string p1, "Missing required view with ID: "

    .line 276
    .line 277
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final updateActionButton()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_13

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 9
    .line 10
    new-instance v3, Landroid/util/TypedValue;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const v5, 0x7f040520

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v2

    .line 31
    :goto_0
    if-eqz v3, :cond_12

    .line 32
    .line 33
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 39
    .line 40
    if-eqz v0, :cond_11

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 45
    .line 46
    const-string v4, "suggestedEditsImageTagsFragment"

    .line 47
    .line 48
    if-eqz v3, :cond_10

    .line 49
    .line 50
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 58
    .line 59
    if-eqz v0, :cond_f

    .line 60
    .line 61
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 64
    .line 65
    if-eqz v3, :cond_e

    .line 66
    .line 67
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 75
    .line 76
    if-eqz v0, :cond_d

    .line 77
    .line 78
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 81
    .line 82
    if-eqz v3, :cond_c

    .line 83
    .line 84
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/high16 v5, 0x3f000000    # 0.5f

    .line 89
    .line 90
    const/high16 v7, 0x3f800000    # 1.0f

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    move v3, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v3, v5

    .line 97
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 105
    .line 106
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 107
    .line 108
    if-eqz v3, :cond_a

    .line 109
    .line 110
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    move v5, v7

    .line 117
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    const/4 v4, 0x0

    .line 132
    if-ne v0, v3, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v6, v4

    .line 136
    :goto_2
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 137
    .line 138
    const/16 v3, 0x8

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 150
    .line 151
    if-eqz p0, :cond_4

    .line 152
    .line 153
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 154
    .line 155
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v2

    .line 163
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v2

    .line 167
    :cond_6
    if-eqz v0, :cond_9

    .line 168
    .line 169
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 175
    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 188
    .line 189
    const v1, 0x7f120118

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v2

    .line 204
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v2

    .line 208
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v2

    .line 212
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v2

    .line 216
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v2

    .line 220
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v2

    .line 224
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v2

    .line 228
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v2

    .line 232
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2

    .line 236
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v2

    .line 240
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v2

    .line 244
    :cond_12
    const-string p0, "Attribute not found; ID=2130969888"

    .line 245
    .line 246
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v2
.end method
