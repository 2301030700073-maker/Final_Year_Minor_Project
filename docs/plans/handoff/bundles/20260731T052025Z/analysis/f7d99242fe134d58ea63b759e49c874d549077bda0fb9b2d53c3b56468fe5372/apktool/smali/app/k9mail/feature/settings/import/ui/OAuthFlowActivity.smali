.class public final Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accountManager$delegate:Lkotlin/Lazy;

.field public final authViewModel$delegate:Lkotlin/Lazy;

.field public errorText:Lcom/google/android/material/textview/MaterialTextView;

.field public signInButton:Landroid/widget/Button;

.field public signInProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->authViewModel$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;I)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->accountManager$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final varargs displayErrorText(I[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInProgress:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInButton:Landroid/widget/Button;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->errorText:Lcom/google/android/material/textview/MaterialTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    array-length v1, p2

    .line 24
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "errorText"

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    const-string p0, "signInButton"

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_2
    const-string p0, "signInProgress"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c001f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1205af

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "accountUuid"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_9

    .line 27
    .line 28
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->accountManager$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 35
    .line 36
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_8

    .line 43
    .line 44
    const v1, 0x7f0901cf

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 55
    .line 56
    iput-object v1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->errorText:Lcom/google/android/material/textview/MaterialTextView;

    .line 57
    .line 58
    const v1, 0x7f0903cf

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v1, Landroid/widget/ProgressBar;

    .line 69
    .line 70
    iput-object v1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInProgress:Landroid/widget/ProgressBar;

    .line 71
    .line 72
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->authViewModel$delegate:Lkotlin/Lazy;

    .line 73
    .line 74
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v2, v2, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const-string v5, ".gmail.com"

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_1

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v3, ".googlemail.com"

    .line 118
    .line 119
    invoke-static {v2, v3, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    const v2, 0x7f090306

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    check-cast v2, Landroid/widget/Button;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    const v2, 0x7f09020e

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast v2, Landroid/widget/Button;

    .line 150
    .line 151
    :goto_1
    iput-object v2, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInButton:Landroid/widget/Button;

    .line 152
    .line 153
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInButton:Landroid/widget/Button;

    .line 157
    .line 158
    const-string v3, "signInButton"

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    new-instance v4, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    invoke-direct {v4, v5, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    const-string v2, "signInProgress"

    .line 175
    .line 176
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iget-object v4, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInButton:Landroid/widget/Button;

    .line 181
    .line 182
    if-eqz v4, :cond_5

    .line 183
    .line 184
    const/16 v3, 0x8

    .line 185
    .line 186
    if-nez p1, :cond_2

    .line 187
    .line 188
    move v5, v6

    .line 189
    goto :goto_2

    .line 190
    :cond_2
    move v5, v3

    .line 191
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object v4, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInProgress:Landroid/widget/ProgressBar;

    .line 195
    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    if-eqz p1, :cond_3

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    move v6, v3

    .line 202
    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v11

    .line 210
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v11

    .line 214
    :cond_6
    :goto_4
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object v3, p0, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iput-object v0, p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 234
    .line 235
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;

    .line 236
    .line 237
    invoke-direct {v0, p1, v2}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Landroidx/activity/ComponentActivity$activityResultRegistry$1;)V

    .line 238
    .line 239
    .line 240
    iput-object v0, p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->resultObserver:Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;

    .line 241
    .line 242
    invoke-virtual {v3, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 250
    .line 251
    iget-object v9, p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 252
    .line 253
    new-instance v10, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 254
    .line 255
    const/4 p1, 0x6

    .line 256
    invoke-direct {v10, p1, p0}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    new-instance v7, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 264
    .line 265
    const/16 v12, 0x12

    .line 266
    .line 267
    move-object v8, p0

    .line 268
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 269
    .line 270
    .line 271
    const/4 p0, 0x3

    .line 272
    invoke-static {p1, v11, v11, v7, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v11

    .line 280
    :cond_8
    const-string p0, "Account not found"

    .line 281
    .line 282
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_9
    const-string p0, "Missing account UUID"

    .line 287
    .line 288
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void
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
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInProgress:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const-string v0, "signInProgress"

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method
