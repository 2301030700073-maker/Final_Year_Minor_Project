.class public final synthetic Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;
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
    iput p1, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function1;

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
    .locals 3

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnOAuthResult;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnOAuthResult;-><init>(Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$AuthenticationTypeChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$SecurityChanged;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$SecurityChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PasswordChanged;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PasswordChanged;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ClientCertificateChanged;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ClientCertificateChanged;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ServerChanged;

    .line 92
    .line 93
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ServerChanged;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$UsernameChanged;

    .line 108
    .line 109
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$UsernameChanged;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_6
    check-cast p1, Ljava/lang/Long;

    .line 119
    .line 120
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PortChanged;

    .line 121
    .line 122
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PortChanged;-><init>(Ljava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_7
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0

    .line 142
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$UsernameChanged;

    .line 148
    .line 149
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$UsernameChanged;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PasswordChanged;

    .line 164
    .line 165
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PasswordChanged;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_a
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$AuthenticationTypeChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    .line 189
    return-object p0

    .line 190
    :pswitch_b
    check-cast p1, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ServerChanged;

    .line 196
    .line 197
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ServerChanged;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 207
    .line 208
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ClientCertificateChanged;

    .line 209
    .line 210
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ClientCertificateChanged;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_d
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ProtocolTypeChanged;

    .line 225
    .line 226
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ProtocolTypeChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 233
    .line 234
    return-object p0

    .line 235
    :pswitch_e
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$SecurityChanged;

    .line 241
    .line 242
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$SecurityChanged;-><init>(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    .line 250
    return-object p0

    .line 251
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .line 252
    .line 253
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PortChanged;

    .line 254
    .line 255
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PortChanged;-><init>(Ljava/lang/Long;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_10
    check-cast p1, Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapPrefixChanged;

    .line 270
    .line 271
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapPrefixChanged;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 278
    .line 279
    return-object p0

    .line 280
    :pswitch_11
    check-cast p1, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapAutoDetectNamespaceChanged;

    .line 287
    .line 288
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapAutoDetectNamespaceChanged;-><init>(Z)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 295
    .line 296
    return-object p0

    .line 297
    :pswitch_12
    check-cast p1, Ljava/lang/Boolean;

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapSendClientInfoChanged;

    .line 304
    .line 305
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapSendClientInfoChanged;-><init>(Z)V

    .line 306
    .line 307
    .line 308
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 312
    .line 313
    return-object p0

    .line 314
    :pswitch_13
    check-cast p1, Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapUseCompressionChanged;

    .line 321
    .line 322
    invoke-direct {v0, p1}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapUseCompressionChanged;-><init>(Z)V

    .line 323
    .line 324
    .line 325
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 329
    .line 330
    return-object p0

    .line 331
    :pswitch_14
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_15
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;

    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 351
    .line 352
    return-object p0

    .line 353
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getHasVisualOverflow()Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 370
    .line 371
    return-object p0

    .line 372
    :pswitch_17
    check-cast p1, Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_0
    move-object p1, v1

    .line 385
    :goto_0
    if-eqz p1, :cond_1

    .line 386
    .line 387
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    :cond_1
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 395
    .line 396
    return-object p0

    .line 397
    :pswitch_18
    check-cast p1, Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 403
    .line 404
    const-string v1, ""

    .line 405
    .line 406
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 414
    .line 415
    return-object p0

    .line 416
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 417
    .line 418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    iget-object v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 422
    .line 423
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 424
    .line 425
    sget-object v1, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldCommonKt;->LINE_BREAK:Lkotlin/text/Regex;

    .line 426
    .line 427
    const-string v2, ""

    .line 428
    .line 429
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {p1, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 441
    .line 442
    return-object p0

    .line 443
    :pswitch_1a
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 444
    .line 445
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 450
    .line 451
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 452
    .line 453
    monitor-enter p1

    .line 454
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 455
    .line 456
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 457
    .line 458
    .line 459
    move-result-wide v1

    .line 460
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .line 466
    monitor-exit p1

    .line 467
    return-object p0

    .line 468
    :catchall_0
    move-exception p0

    .line 469
    monitor-exit p1

    .line 470
    throw p0

    .line 471
    :pswitch_1b
    check-cast p1, Ljava/lang/Long;

    .line 472
    .line 473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    return-object p0

    .line 481
    :pswitch_1c
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 482
    .line 483
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 488
    .line 489
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 495
    .line 496
    sget v2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 497
    .line 498
    invoke-static {v0}, Landroidx/work/OperationKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_2

    .line 511
    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 517
    .line 518
    goto :goto_1

    .line 519
    :cond_2
    if-eqz p0, :cond_3

    .line 520
    .line 521
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    move-object v1, p0

    .line 526
    check-cast v1, Landroidx/compose/animation/SizeTransformImpl;

    .line 527
    .line 528
    :cond_3
    return-object v1

    .line 529
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
