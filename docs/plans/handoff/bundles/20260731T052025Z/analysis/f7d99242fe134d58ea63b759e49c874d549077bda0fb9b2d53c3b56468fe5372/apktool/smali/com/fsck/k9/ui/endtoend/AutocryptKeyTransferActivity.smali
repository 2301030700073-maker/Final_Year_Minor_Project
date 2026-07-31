.class public final Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final presenter$delegate:Lkotlin/Lazy;

.field public transferAddress1:Lcom/google/android/material/textview/MaterialTextView;

.field public transferAddress2:Lcom/google/android/material/textview/MaterialTextView;

.field public transferButtonShowCode:Landroid/view/View;

.field public transferErrorSend:Landroid/view/View;

.field public transferLayoutFinish:Landroid/view/View;

.field public transferLayoutGenerating:Landroid/view/View;

.field public transferLayoutSending:Landroid/view/View;

.field public transferMsgInfo:Landroid/view/View;

.field public transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

.field public transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

.field public transferSendButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->presenter$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c0153

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f12002d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "account"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    .line 36
    .line 37
    const v1, 0x7f090459

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 48
    .line 49
    const v1, 0x7f090451

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 60
    .line 61
    const v1, 0x7f09044f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferAddress1:Lcom/google/android/material/textview/MaterialTextView;

    .line 74
    .line 75
    const v1, 0x7f090450

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferAddress2:Lcom/google/android/material/textview/MaterialTextView;

    .line 88
    .line 89
    const v1, 0x7f090456

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferMsgInfo:Landroid/view/View;

    .line 100
    .line 101
    const v1, 0x7f090454

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutGenerating:Landroid/view/View;

    .line 112
    .line 113
    const v1, 0x7f090455

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutSending:Landroid/view/View;

    .line 124
    .line 125
    const v1, 0x7f090453

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutFinish:Landroid/view/View;

    .line 136
    .line 137
    const v1, 0x7f090452

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferErrorSend:Landroid/view/View;

    .line 148
    .line 149
    const v1, 0x7f090457

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    check-cast v1, Lcom/fsck/k9/view/StatusIndicator;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

    .line 162
    .line 163
    const v1, 0x7f090458

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast v1, Lcom/fsck/k9/view/StatusIndicator;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    new-instance v4, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-direct {v4, p0, v5}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 192
    .line 193
    if-eqz v1, :cond_5

    .line 194
    .line 195
    new-instance v4, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;

    .line 196
    .line 197
    invoke-direct {v4, p0, v2}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->presenter$delegate:Lkotlin/Lazy;

    .line 204
    .line 205
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 212
    .line 213
    if-nez p1, :cond_0

    .line 214
    .line 215
    new-array p0, v5, [Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    const p1, 0x7f12064c

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->preferences:Lcom/fsck/k9/Preferences;

    .line 246
    .line 247
    invoke-virtual {v2, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-eqz v2, :cond_4

    .line 252
    .line 253
    iput-object v2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 254
    .line 255
    iget-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 256
    .line 257
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    new-instance v4, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;

    .line 262
    .line 263
    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v2, v4}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProvider(Ljava/lang/String;Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 270
    .line 271
    if-eqz p1, :cond_3

    .line 272
    .line 273
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 284
    .line 285
    iget-object p1, p1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferAddress1:Lcom/google/android/material/textview/MaterialTextView;

    .line 294
    .line 295
    if-eqz v0, :cond_2

    .line 296
    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferAddress2:Lcom/google/android/material/textview/MaterialTextView;

    .line 301
    .line 302
    if-eqz v0, :cond_1

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->viewModel:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 308
    .line 309
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupTransferLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_1
    const-string p0, "transferAddress2"

    .line 320
    .line 321
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v3

    .line 325
    :cond_2
    const-string p0, "transferAddress1"

    .line 326
    .line 327
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v3

    .line 331
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v3

    .line 335
    :cond_4
    const-string p0, "Account "

    .line 336
    .line 337
    const-string v0, " not found"

    .line 338
    .line 339
    invoke-static {p1, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_5
    const-string p0, "transferButtonShowCode"

    .line 344
    .line 345
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw v3

    .line 349
    :cond_6
    const-string p0, "transferSendButton"

    .line 350
    .line 351
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v3
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
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->presenter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final sceneGeneratingAndSending()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x7f150000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x1020002

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferMsgInfo:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutGenerating:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutSending:Landroid/view/View;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutFinish:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferErrorSend:Landroid/view/View;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 70
    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    const-string p0, "transferButtonShowCode"

    .line 78
    .line 79
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_1
    const-string p0, "transferErrorSend"

    .line 84
    .line 85
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :cond_2
    const-string p0, "transferLayoutFinish"

    .line 90
    .line 91
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :cond_3
    const-string p0, "transferLayoutSending"

    .line 96
    .line 97
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_4
    const-string p0, "transferLayoutGenerating"

    .line 102
    .line 103
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_5
    const-string p0, "transferMsgInfo"

    .line 108
    .line 109
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :cond_6
    const-string p0, "transferSendButton"

    .line 114
    .line 115
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1
.end method
