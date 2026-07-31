.class public final Lorg/wikipedia/login/ResetPasswordActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/login/ResetPasswordActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "org/wikipedia/media/AvPlayer",
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
.field public binding:Lcom/google/gson/GsonBuilder;

.field public firstStepToken:Ljava/lang/String;

.field public final loginCallback:Lorg/wikipedia/media/AvPlayer;

.field public loginClient:Lorg/wikipedia/login/LoginClient;

.field public uiPromptResult:Lorg/wikipedia/login/LoginResult;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginCallback:Lorg/wikipedia/media/AvPlayer;

    .line 12
    .line 13
    return-void
.end method

.method public static getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

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
    const v0, 0x7f0c002c

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
    const v0, 0x7f090354

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    .line 27
    if-eqz v6, :cond_b

    .line 28
    .line 29
    const v0, 0x7f090355

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v7, v3

    .line 37
    check-cast v7, Landroid/widget/Button;

    .line 38
    .line 39
    if-eqz v7, :cond_b

    .line 40
    .line 41
    const v0, 0x7f090583

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v8, v3

    .line 49
    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    .line 51
    if-eqz v8, :cond_b

    .line 52
    .line 53
    const v0, 0x7f090584

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v9, v3

    .line 61
    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    .line 63
    if-eqz v9, :cond_b

    .line 64
    .line 65
    const v0, 0x7f0906cb

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    move-object v10, v3

    .line 73
    check-cast v10, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 74
    .line 75
    if-eqz v10, :cond_b

    .line 76
    .line 77
    const v0, 0x7f09073a

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v11, v3

    .line 85
    check-cast v11, Lorg/wikipedia/views/WikiErrorView;

    .line 86
    .line 87
    if-eqz v11, :cond_b

    .line 88
    .line 89
    const v0, 0x7f09073f

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    move-object v12, v3

    .line 97
    check-cast v12, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 98
    .line 99
    if-eqz v12, :cond_b

    .line 100
    .line 101
    new-instance v4, Lcom/google/gson/GsonBuilder;

    .line 102
    .line 103
    move-object v5, p1

    .line 104
    check-cast v5, Landroid/widget/FrameLayout;

    .line 105
    .line 106
    const/4 v13, 0x6

    .line 107
    invoke-direct/range {v4 .. v13}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 108
    .line 109
    .line 110
    iput-object v4, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 111
    .line 112
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 116
    .line 117
    const-string v0, "binding"

    .line 118
    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 135
    .line 136
    new-instance v3, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v3}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 151
    .line 152
    new-instance v3, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/4 v4, 0x1

    .line 155
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v3}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/caverock/androidsvg/CSSParser;

    .line 162
    .line 163
    iget-object v3, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 164
    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    iget-object v5, v3, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v5, Landroid/widget/Button;

    .line 170
    .line 171
    if-eqz v3, :cond_6

    .line 172
    .line 173
    iget-object v6, v3, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 176
    .line 177
    if-eqz v3, :cond_5

    .line 178
    .line 179
    iget-object v3, v3, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    .line 183
    const/4 v7, 0x2

    .line 184
    new-array v8, v7, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 185
    .line 186
    aput-object v6, v8, v2

    .line 187
    .line 188
    aput-object v3, v8, v4

    .line 189
    .line 190
    invoke-direct {p1, v5, v8}, Lcom/caverock/androidsvg/CSSParser;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 194
    .line 195
    if-eqz p1, :cond_4

    .line 196
    .line 197
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_0

    .line 206
    .line 207
    new-instance v2, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;

    .line 208
    .line 209
    const/4 v3, 0x3

    .line 210
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    .line 215
    .line 216
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 217
    .line 218
    if-eqz p1, :cond_3

    .line 219
    .line 220
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p1, Landroid/widget/Button;

    .line 223
    .line 224
    new-instance v0, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    invoke-direct {v0, p0, v7}, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const-string/jumbo v0, "userName"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string v0, ""

    .line 244
    .line 245
    if-nez p1, :cond_1

    .line 246
    .line 247
    move-object p1, v0

    .line 248
    :cond_1
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const-string v1, "token"

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-nez p1, :cond_2

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_2
    move-object v0, p1

    .line 264
    :goto_0
    iput-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->resetAuthState$1()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1

    .line 274
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v1

    .line 282
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v1

    .line 286
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v1

    .line 290
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v1

    .line 294
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v1

    .line 302
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    const-string p1, "Missing required view with ID: "

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar$3(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final resetAuthState$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object v2, p0, Lorg/wikipedia/login/ResetPasswordActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v2

    .line 43
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v2
.end method

.method public final showProgressBar$3(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v3, 0x8

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/widget/Button;

    .line 28
    .line 29
    xor-int/lit8 v3, p1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/widget/Button;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const p1, 0x7f12034e

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const p1, 0x7f1203de

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public final validateThenLogin$1()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "binding"

    .line 7
    .line 8
    if-eqz v1, :cond_18

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 19
    .line 20
    if-eqz v1, :cond_17

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    .line 32
    .line 33
    const-string/jumbo v5, "userName"

    .line 34
    .line 35
    .line 36
    if-eqz v1, :cond_16

    .line 37
    .line 38
    iget-object v6, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 39
    .line 40
    if-eqz v6, :cond_15

    .line 41
    .line 42
    iget-object v6, v6, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    invoke-static {v6}, Lorg/wikipedia/login/ResetPasswordActivity;->getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v7, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 51
    .line 52
    if-eqz v7, :cond_14

    .line 53
    .line 54
    iget-object v7, v7, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    .line 58
    invoke-static {v7}, Lorg/wikipedia/login/ResetPasswordActivity;->getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, ""

    .line 63
    .line 64
    invoke-static {v1, v6, v7, v8}, Lorg/wikipedia/util/TabUtil;->validateInput(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v6, Lorg/wikipedia/login/ResetPasswordActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    aget v1, v6, v1

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    if-eq v1, v6, :cond_11

    .line 78
    .line 79
    iget-object v7, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 80
    .line 81
    const/4 v8, 0x2

    .line 82
    if-eq v1, v8, :cond_e

    .line 83
    .line 84
    const/4 v8, 0x3

    .line 85
    if-eq v1, v8, :cond_b

    .line 86
    .line 87
    if-eqz v7, :cond_a

    .line 88
    .line 89
    iget-object v1, v7, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    .line 93
    invoke-static {v1}, Lorg/wikipedia/login/ResetPasswordActivity;->getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 98
    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 104
    .line 105
    invoke-static {v1}, Lorg/wikipedia/login/ResetPasswordActivity;->getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 116
    .line 117
    invoke-static {v1}, Lorg/wikipedia/login/ResetPasswordActivity;->getText$2(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v6}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar$3(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Lorg/wikipedia/login/ResetPasswordActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 125
    .line 126
    if-nez v3, :cond_0

    .line 127
    .line 128
    new-instance v3, Lorg/wikipedia/login/LoginClient;

    .line 129
    .line 130
    invoke-direct {v3, v4}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iput-object v3, v0, Lorg/wikipedia/login/ResetPasswordActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 134
    .line 135
    :cond_0
    move-object v7, v3

    .line 136
    iget-object v3, v0, Lorg/wikipedia/login/ResetPasswordActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 137
    .line 138
    const-string v4, "firstStepToken"

    .line 139
    .line 140
    if-nez v3, :cond_3

    .line 141
    .line 142
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 147
    .line 148
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    iget-object v10, v0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v10, :cond_2

    .line 159
    .line 160
    iget-object v13, v0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v13, :cond_1

    .line 163
    .line 164
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    iget-object v0, v0, Lorg/wikipedia/login/ResetPasswordActivity;->loginCallback:Lorg/wikipedia/media/AvPlayer;

    .line 167
    .line 168
    const/16 v20, 0x3c0

    .line 169
    .line 170
    const/4 v14, 0x0

    .line 171
    const/4 v15, 0x0

    .line 172
    const/16 v16, 0x0

    .line 173
    .line 174
    const/16 v17, 0x0

    .line 175
    .line 176
    move-object/from16 v19, v0

    .line 177
    .line 178
    invoke-static/range {v7 .. v20}, Lorg/wikipedia/login/LoginClient;->login$default(Lorg/wikipedia/login/LoginClient;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/wikipedia/login/LoginClient$LoginCallback;I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v2

    .line 186
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v2

    .line 190
    :cond_3
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 195
    .line 196
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iget-object v10, v0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    .line 205
    .line 206
    if-eqz v10, :cond_7

    .line 207
    .line 208
    iget-object v3, v0, Lorg/wikipedia/login/ResetPasswordActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 209
    .line 210
    instance-of v5, v3, Lorg/wikipedia/login/LoginOATHResult;

    .line 211
    .line 212
    if-eqz v5, :cond_4

    .line 213
    .line 214
    move-object v14, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_4
    move-object v14, v2

    .line 217
    :goto_0
    instance-of v3, v3, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 218
    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    move-object v15, v1

    .line 222
    goto :goto_1

    .line 223
    :cond_5
    move-object v15, v2

    .line 224
    :goto_1
    iget-object v13, v0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    .line 225
    .line 226
    if-eqz v13, :cond_6

    .line 227
    .line 228
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 229
    .line 230
    const/16 v20, 0x300

    .line 231
    .line 232
    const/16 v16, 0x0

    .line 233
    .line 234
    const/16 v17, 0x0

    .line 235
    .line 236
    iget-object v0, v0, Lorg/wikipedia/login/ResetPasswordActivity;->loginCallback:Lorg/wikipedia/media/AvPlayer;

    .line 237
    .line 238
    move-object/from16 v19, v0

    .line 239
    .line 240
    invoke-static/range {v7 .. v20}, Lorg/wikipedia/login/LoginClient;->login$default(Lorg/wikipedia/login/LoginClient;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/wikipedia/login/LoginClient$LoginCallback;I)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v2

    .line 248
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v2

    .line 252
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v2

    .line 256
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v2

    .line 260
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v2

    .line 264
    :cond_b
    if-eqz v7, :cond_d

    .line 265
    .line 266
    iget-object v1, v7, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 274
    .line 275
    if-eqz v1, :cond_c

    .line 276
    .line 277
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 280
    .line 281
    const v2, 0x7f1200e8

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v2

    .line 296
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v2

    .line 300
    :cond_e
    if-eqz v7, :cond_10

    .line 301
    .line 302
    iget-object v1, v7, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 310
    .line 311
    if-eqz v1, :cond_f

    .line 312
    .line 313
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 316
    .line 317
    const v2, 0x7f1200e6

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v2

    .line 332
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v2

    .line 336
    :cond_11
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 337
    .line 338
    if-eqz v1, :cond_13

    .line 339
    .line 340
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 348
    .line 349
    if-eqz v1, :cond_12

    .line 350
    .line 351
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 354
    .line 355
    const v2, 0x7f1200e5

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v2

    .line 370
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v2

    .line 374
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v2

    .line 378
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v2

    .line 382
    :cond_16
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v2

    .line 386
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v2

    .line 390
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v2
.end method
