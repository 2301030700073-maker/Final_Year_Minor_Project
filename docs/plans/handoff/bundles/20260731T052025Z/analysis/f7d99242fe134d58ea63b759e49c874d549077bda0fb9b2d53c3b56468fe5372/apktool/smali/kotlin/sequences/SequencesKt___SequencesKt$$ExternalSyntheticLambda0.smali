.class public final synthetic Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BccEmailChange;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BccEmailChange;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderNameChange;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderNameChange;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_3
    check-cast p1, Lkotlin/Pair;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;

    .line 65
    .line 66
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;-><init>(Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureChange;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureChange;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$UseSignatureChange;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$UseSignatureChange;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_6
    check-cast p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;

    .line 103
    .line 104
    sget v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :pswitch_7
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :pswitch_8
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$DraftsFolderChanged;

    .line 128
    .line 129
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$DraftsFolderChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    :pswitch_9
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SpamFolderChanged;

    .line 142
    .line 143
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SpamFolderChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :pswitch_a
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$ArchiveFolderChanged;

    .line 156
    .line 157
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$ArchiveFolderChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :pswitch_b
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SentFolderChanged;

    .line 170
    .line 171
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SentFolderChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :pswitch_c
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$TrashFolderChanged;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$TrashFolderChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    return-object v1

    .line 192
    :pswitch_d
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    return-object v1

    .line 201
    :pswitch_e
    check-cast p1, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnShowNotificationChanged;

    .line 208
    .line 209
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnShowNotificationChanged;-><init>(Z)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    return-object v1

    .line 216
    :pswitch_f
    check-cast p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;

    .line 222
    .line 223
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;-><init>(Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :pswitch_10
    check-cast p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnCheckFrequencyChanged;

    .line 236
    .line 237
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnCheckFrequencyChanged;-><init>(Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    return-object v1

    .line 244
    :pswitch_11
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    return-object v1

    .line 253
    :pswitch_12
    check-cast p1, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnDisplayNameChanged;

    .line 259
    .line 260
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnDisplayNameChanged;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    return-object v1

    .line 267
    :pswitch_13
    check-cast p1, Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnAccountNameChanged;

    .line 273
    .line 274
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnAccountNameChanged;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :pswitch_14
    check-cast p1, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnEmailSignatureChanged;

    .line 287
    .line 288
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnEmailSignatureChanged;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    return-object v1

    .line 295
    :pswitch_15
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    return-object v1

    .line 304
    :pswitch_16
    check-cast p1, Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$ResultApprovalChanged;

    .line 311
    .line 312
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$ResultApprovalChanged;-><init>(Z)V

    .line 313
    .line 314
    .line 315
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    return-object v1

    .line 319
    :pswitch_17
    check-cast p1, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnOAuthResult;

    .line 325
    .line 326
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnOAuthResult;-><init>(Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;)V

    .line 327
    .line 328
    .line 329
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    return-object v1

    .line 333
    :pswitch_18
    check-cast p1, Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$PasswordChanged;

    .line 339
    .line 340
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$PasswordChanged;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    return-object v1

    .line 347
    :pswitch_19
    check-cast p1, Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$EmailAddressChanged;

    .line 353
    .line 354
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$EmailAddressChanged;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    return-object v1

    .line 361
    :pswitch_1a
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event;

    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    return-object v1

    .line 370
    :pswitch_1b
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    return-object v1

    .line 379
    :pswitch_1c
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    return-object p1

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
