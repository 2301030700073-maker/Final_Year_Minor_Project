.class public final Lcom/fsck/k9/activity/EditIdentity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public description:Landroid/widget/EditText;

.field public email:Landroid/widget/EditText;

.field public final emailAddressValidator$delegate:Lkotlin/Lazy;

.field public identity:Lnet/thunderbird/core/android/account/Identity;

.field public identityIndex:I

.field public isSaveActionEnabled:Z

.field public name:Landroid/widget/EditText;

.field public replyTo:Landroid/widget/EditText;

.field public signature:Landroid/widget/EditText;

.field public signatureLayout:Landroid/view/View;

.field public signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->emailAddressValidator$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c016d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1202bb

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "com.fsck.k9.EditIdentity_identity_index"

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/fsck/k9/activity/EditIdentity;->identityIndex:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "com.fsck.k9.EditIdentity_account"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_17

    .line 51
    .line 52
    const-class v2, Lcom/fsck/k9/Preferences;

    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_16

    .line 65
    .line 66
    iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 67
    .line 68
    const-class v0, Lnet/thunderbird/core/android/account/Identity;

    .line 69
    .line 70
    const-string v2, "com.fsck.k9.EditIdentity_identity"

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-static {p1, v2, v0}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 79
    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string p0, "Missing state"

    .line 84
    .line 85
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    iget p1, p0, Lcom/fsck/k9/activity/EditIdentity;->identityIndex:I

    .line 90
    .line 91
    if-eq p1, v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string p0, "Missing argument"

    .line 107
    .line 108
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    new-instance v2, Lnet/thunderbird/core/android/account/Identity;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const/16 v8, 0x3f

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-direct/range {v2 .. v8}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 122
    .line 123
    .line 124
    move-object p1, v2

    .line 125
    :goto_0
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 126
    .line 127
    const p1, 0x7f090193

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast p1, Landroid/widget/EditText;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->description:Landroid/widget/EditText;

    .line 140
    .line 141
    const p1, 0x7f0902e2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    check-cast p1, Landroid/widget/EditText;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->name:Landroid/widget/EditText;

    .line 154
    .line 155
    const p1, 0x7f0901c6

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast p1, Landroid/widget/EditText;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->email:Landroid/widget/EditText;

    .line 168
    .line 169
    const p1, 0x7f090370

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    check-cast p1, Landroid/widget/EditText;

    .line 180
    .line 181
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->replyTo:Landroid/widget/EditText;

    .line 182
    .line 183
    const p1, 0x7f0903d2

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    check-cast p1, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 194
    .line 195
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 196
    .line 197
    const p1, 0x7f0903d0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    check-cast p1, Landroid/widget/EditText;

    .line 208
    .line 209
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signature:Landroid/widget/EditText;

    .line 210
    .line 211
    const p1, 0x7f0903d1

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureLayout:Landroid/view/View;

    .line 222
    .line 223
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->description:Landroid/widget/EditText;

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    if-eqz p1, :cond_15

    .line 227
    .line 228
    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 229
    .line 230
    const-string v3, "identity"

    .line 231
    .line 232
    if-eqz v2, :cond_14

    .line 233
    .line 234
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->name:Landroid/widget/EditText;

    .line 240
    .line 241
    if-eqz p1, :cond_13

    .line 242
    .line 243
    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 244
    .line 245
    if-eqz v2, :cond_12

    .line 246
    .line 247
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->email:Landroid/widget/EditText;

    .line 253
    .line 254
    const-string v2, "email"

    .line 255
    .line 256
    if-eqz p1, :cond_11

    .line 257
    .line 258
    iget-object v4, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 259
    .line 260
    if-eqz v4, :cond_10

    .line 261
    .line 262
    iget-object v4, v4, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->replyTo:Landroid/widget/EditText;

    .line 268
    .line 269
    const-string v4, "replyTo"

    .line 270
    .line 271
    if-eqz p1, :cond_f

    .line 272
    .line 273
    iget-object v5, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 274
    .line 275
    if-eqz v5, :cond_e

    .line 276
    .line 277
    iget-object v5, v5, Lnet/thunderbird/core/android/account/Identity;->replyTo:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 283
    .line 284
    const-string v5, "signatureUse"

    .line 285
    .line 286
    if-eqz p1, :cond_d

    .line 287
    .line 288
    iget-object v6, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 289
    .line 290
    if-eqz v6, :cond_c

    .line 291
    .line 292
    iget-boolean v6, v6, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 293
    .line 294
    invoke-virtual {p1, v6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 298
    .line 299
    if-eqz p1, :cond_b

    .line 300
    .line 301
    new-instance v6, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    invoke-direct {v6, v7, p0}, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 311
    .line 312
    if-eqz p1, :cond_a

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_6

    .line 319
    .line 320
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signature:Landroid/widget/EditText;

    .line 321
    .line 322
    if-eqz p1, :cond_5

    .line 323
    .line 324
    iget-object v5, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 325
    .line 326
    if-eqz v5, :cond_4

    .line 327
    .line 328
    iget-object v3, v5, Lnet/thunderbird/core/android/account/Identity;->signature:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_5
    const-string p0, "signature"

    .line 339
    .line 340
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_6
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureLayout:Landroid/view/View;

    .line 345
    .line 346
    if-eqz p1, :cond_9

    .line 347
    .line 348
    const/16 v3, 0x8

    .line 349
    .line 350
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    :goto_1
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->email:Landroid/widget/EditText;

    .line 354
    .line 355
    if-eqz p1, :cond_8

    .line 356
    .line 357
    new-instance v2, Lcom/fsck/k9/activity/EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1;

    .line 358
    .line 359
    invoke-direct {v2, p0, v7}, Lcom/fsck/k9/activity/EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1;-><init>(Lcom/fsck/k9/activity/EditIdentity;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->replyTo:Landroid/widget/EditText;

    .line 366
    .line 367
    if-eqz p1, :cond_7

    .line 368
    .line 369
    new-instance v0, Lcom/fsck/k9/activity/EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1;

    .line 370
    .line 371
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1;-><init>(Lcom/fsck/k9/activity/EditIdentity;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->validateFields()V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_9
    const-string p0, "signatureLayout"

    .line 390
    .line 391
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0

    .line 427
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v0

    .line 431
    :cond_13
    const-string p0, "name"

    .line 432
    .line 433
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v0

    .line 437
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_15
    const-string p0, "description"

    .line 442
    .line 443
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :cond_16
    const-string p0, "Couldn\'t find account"

    .line 448
    .line 449
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :cond_17
    const-string p0, "Missing account UUID"

    .line 454
    .line 455
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0003

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

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
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const v1, 0x7f0901c2

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_10

    .line 26
    .line 27
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const-string v1, "identity"

    .line 31
    .line 32
    if-eqz p1, :cond_f

    .line 33
    .line 34
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->description:Landroid/widget/EditText;

    .line 35
    .line 36
    if-eqz p1, :cond_e

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    move-object v5, p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v5, v0

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->email:Landroid/widget/EditText;

    .line 56
    .line 57
    if-eqz p1, :cond_d

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->name:Landroid/widget/EditText;

    .line 76
    .line 77
    if-eqz p1, :cond_c

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    move-object v6, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v6, v0

    .line 96
    :goto_1
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signatureUse:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 97
    .line 98
    if-eqz p1, :cond_b

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->signature:Landroid/widget/EditText;

    .line 105
    .line 106
    if-eqz p1, :cond_a

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->replyTo:Landroid/widget/EditText;

    .line 117
    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_3

    .line 141
    .line 142
    move-object v10, p1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    move-object v10, v0

    .line 145
    :goto_2
    new-instance v4, Lnet/thunderbird/core/android/account/Identity;

    .line 146
    .line 147
    invoke-direct/range {v4 .. v10}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iput-object v4, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/fsck/k9/activity/EditIdentity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 153
    .line 154
    const-string v3, "account"

    .line 155
    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget v4, p0, Lcom/fsck/k9/activity/EditIdentity;->identityIndex:I

    .line 163
    .line 164
    const/4 v5, -0x1

    .line 165
    if-ne v4, v5, :cond_5

    .line 166
    .line 167
    iget-object v4, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 168
    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    check-cast p1, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_5
    check-cast p1, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget v4, p0, Lcom/fsck/k9/activity/EditIdentity;->identityIndex:I

    .line 187
    .line 188
    iget-object v5, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 189
    .line 190
    if-eqz v5, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    const-class p1, Lcom/fsck/k9/Preferences;

    .line 196
    .line 197
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 204
    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 214
    .line 215
    .line 216
    return v2

    .line 217
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_9
    const-string p0, "replyTo"

    .line 230
    .line 231
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_a
    const-string p0, "signature"

    .line 236
    .line 237
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :cond_b
    const-string p0, "signatureUse"

    .line 242
    .line 243
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_c
    const-string p0, "name"

    .line 248
    .line 249
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_d
    const-string p0, "email"

    .line 254
    .line 255
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_e
    const-string p0, "description"

    .line 260
    .line 261
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0901c2

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-boolean p0, p0, Lcom/fsck/k9/activity/EditIdentity;->isSaveActionEnabled:Z

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
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
    iget-object p0, p0, Lcom/fsck/k9/activity/EditIdentity;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string v0, "com.fsck.k9.EditIdentity_identity"

    .line 12
    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "identity"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public final validateFields()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->email:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->emailAddressValidator$delegate:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lcom/fsck/k9/EmailAddressValidator;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->replyTo:Landroid/widget/EditText;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/fsck/k9/EmailAddressValidator;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    :cond_0
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string p0, "replyTo"

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    :goto_0
    iput-boolean v0, p0, Lcom/fsck/k9/activity/EditIdentity;->isSaveActionEnabled:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const-string p0, "email"

    .line 93
    .line 94
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1
.end method
