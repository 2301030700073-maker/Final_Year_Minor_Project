.class public final Lorg/wikipedia/donate/DonateDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/donate/DonateDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Companion",
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
.field public _binding:Lcom/google/gson/GsonBuilder;

.field public campaignId:Ljava/lang/String;

.field public campaignIdOriginal:Ljava/lang/String;

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
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lorg/wikipedia/donate/DonateViewModel;

    .line 24
    .line 25
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 32
    .line 33
    const/16 v4, 0xb

    .line 34
    .line 35
    invoke-direct {v3, v1, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/16 v5, 0xc

    .line 41
    .line 42
    invoke-direct {v4, v1, v5}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 46
    .line 47
    invoke-direct {v5, p0, v1, v0}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lokhttp3/Request$Builder;

    .line 51
    .line 52
    invoke-direct {v0, v2, v3, v5, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/wikipedia/donate/DonateDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 56
    .line 57
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
    const p3, 0x7f0c0179

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
    const p2, 0x7f090174

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
    check-cast v3, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    const p2, 0x7f0901d2

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v4, v1

    .line 33
    check-cast v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    const p2, 0x7f0901d3

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v5, v1

    .line 45
    check-cast v5, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    const p2, 0x7f0901d4

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v6, v1

    .line 57
    check-cast v6, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v6, :cond_5

    .line 60
    .line 61
    const p2, 0x7f09027b

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    const p2, 0x7f09027c

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v7, v1

    .line 80
    check-cast v7, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    const p2, 0x7f09027d

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const p2, 0x7f090513

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object v8, v1

    .line 103
    check-cast v8, Landroid/widget/ProgressBar;

    .line 104
    .line 105
    if-eqz v8, :cond_5

    .line 106
    .line 107
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 108
    .line 109
    move-object v2, p1

    .line 110
    check-cast v2, Landroid/widget/FrameLayout;

    .line 111
    .line 112
    const/16 v9, 0x8

    .line 113
    .line 114
    invoke-direct/range {v1 .. v9}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 120
    .line 121
    if-eqz p1, :cond_0

    .line 122
    .line 123
    const-string p2, "campaignId"

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_1

    .line 130
    .line 131
    :cond_0
    const-string p1, "appmenu"

    .line 132
    .line 133
    :cond_1
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 134
    .line 135
    sget p2, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 136
    .line 137
    invoke-static {p1}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog;->campaignId:Ljava/lang/String;

    .line 142
    .line 143
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 144
    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    const-string p2, "fromYiR"

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    const/4 p2, 0x1

    .line 154
    if-ne p1, p2, :cond_2

    .line 155
    .line 156
    const-string/jumbo p1, "wiki_yir"

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/donate/DonateDialog;->campaignId:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_3

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const-string p1, "article_banner"

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    :goto_0
    const-string p1, "setting"

    .line 175
    .line 176
    :goto_1
    iget-object p2, p0, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object p2, p2, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p2, Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;

    .line 186
    .line 187
    invoke-direct {v1, p1, p0}, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lorg/wikipedia/donate/DonateDialog;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-object p2, p2, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p2, Landroid/widget/TextView;

    .line 201
    .line 202
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    invoke-direct {v1, p0, p1}, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/donate/DonateDialog;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance p2, Lorg/wikipedia/donate/DonateDialog$onCreateView$3;

    .line 215
    .line 216
    invoke-direct {p2, p0, p3, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3;-><init>(Lorg/wikipedia/donate/DonateDialog;Lkotlin/coroutines/Continuation;I)V

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x3

    .line 220
    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lorg/wikipedia/donate/DonateDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 224
    .line 225
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lorg/wikipedia/donate/DonateViewModel;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 240
    .line 241
    invoke-direct {v1, p1}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/donate/DonateViewModel;)V

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 245
    .line 246
    const/16 v3, 0xc

    .line 247
    .line 248
    invoke-direct {v2, p1, p2, p3, v3}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 249
    .line 250
    .line 251
    const/4 p1, 0x2

    .line 252
    invoke-static {v0, v1, p3, v2, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Landroid/widget/FrameLayout;

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    return-object p0

    .line 268
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    const-string p1, "Missing required view with ID: "

    .line 277
    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-object p3
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDonateClicked()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v3, "donateUrl"

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lorg/wikipedia/donate/DonateDialog;->campaignId:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-static {v3}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->getFormattedCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v3, v2

    .line 28
    :goto_1
    if-nez v3, :cond_2

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    :cond_2
    if-nez v1, :cond_3

    .line 33
    .line 34
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 49
    .line 50
    const v4, 0x7f120649

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    aput-object v3, v4, v5

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    aput-object v1, v4, v3

    .line 65
    .line 66
    const-string v1, "r/50598-r-2026-07-13"

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    aput-object v1, v4, v3

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    aput-object v2, v4, v1

    .line 73
    .line 74
    const v1, 0x7f120169

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {v0, v1}, Lokio/Okio__JvmOkioKt;->openInCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/wikipedia/donate/DonateDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setAnnouncementShownDialogs(Ljava/util/Set;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
