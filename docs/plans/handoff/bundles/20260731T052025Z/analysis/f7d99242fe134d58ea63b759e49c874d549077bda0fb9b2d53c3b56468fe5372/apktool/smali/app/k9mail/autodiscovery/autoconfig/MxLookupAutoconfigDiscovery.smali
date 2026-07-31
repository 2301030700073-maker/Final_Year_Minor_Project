.class public final Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/autodiscovery/api/AutoDiscovery;


# instance fields
.field public final autoconfigFetcher:Lcom/beetstra/jutf7/Base64Util;

.field public final mxResolver:Lokio/Path$Companion;

.field public final urlProvider:Landroidx/work/Configuration$Builder;


# direct methods
.method public constructor <init>(Lokio/Path$Companion;Lcom/bumptech/glide/load/Option$1;Lokio/AsyncTimeout$Companion;Landroidx/work/Configuration$Builder;Lcom/beetstra/jutf7/Base64Util;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->mxResolver:Lokio/Path$Companion;

    .line 5
    .line 6
    iput-object p4, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->urlProvider:Landroidx/work/Configuration$Builder;

    .line 7
    .line 8
    iput-object p5, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->autoconfigFetcher:Lcom/beetstra/jutf7/Base64Util;

    .line 9
    .line 10
    return-void
.end method

.method public static final access$mxLookupAutoconfig(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lnet/thunderbird/core/common/mail/EmailAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;

    .line 13
    .line 14
    iget v4, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;-><init>(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-eq v4, v7, :cond_2

    .line 44
    .line 45
    if-ne v4, v6, :cond_1

    .line 46
    .line 47
    iget-object v1, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$9:Ljava/util/Iterator;

    .line 48
    .line 49
    iget-object v4, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$7:Ljava/util/Iterator;

    .line 50
    .line 51
    iget-object v10, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$2:Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;

    .line 52
    .line 53
    iget-object v11, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$0:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v16, v4

    .line 59
    .line 60
    move-object v4, v3

    .line 61
    move-object/from16 v3, v16

    .line 62
    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v8

    .line 71
    :cond_2
    iget-object v1, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$1:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$0:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v16, v2

    .line 79
    .line 80
    move-object v2, v1

    .line 81
    move-object v1, v4

    .line 82
    move-object/from16 v4, v16

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v1, Lnet/thunderbird/core/common/mail/EmailAddress;->domain:Lnet/thunderbird/core/common/mail/EmailDomain;

    .line 89
    .line 90
    iget-object v2, v2, Lnet/thunderbird/core/common/mail/EmailDomain;->value:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2}, Lnet/thunderbird/core/common/net/Domain;->constructor-impl(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$0:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 96
    .line 97
    iput-object v2, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$1:Ljava/lang/String;

    .line 98
    .line 99
    iput v7, v3, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->label:I

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->mxLookup-s1GoCZM(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-ne v4, v9, :cond_4

    .line 106
    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :cond_4
    :goto_1
    check-cast v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;

    .line 110
    .line 111
    sget-object v10, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;->INSTANCE:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;

    .line 112
    .line 113
    if-nez v4, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    iget-object v11, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;->mxNames:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    check-cast v11, Lnet/thunderbird/core/common/net/Domain;

    .line 123
    .line 124
    iget-object v11, v11, Lnet/thunderbird/core/common/net/Domain;->value:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v11}, Lcom/bumptech/glide/load/Option$1;->extractBaseDomain-nA3-jW4(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    :goto_2
    return-object v10

    .line 137
    :cond_6
    invoke-static {v11}, Lcom/bumptech/glide/load/Option$1;->extractBaseDomain-nA3-jW4(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_7

    .line 146
    .line 147
    move-object v2, v8

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const-string v13, "."

    .line 150
    .line 151
    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-static {v11, v14}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    const/16 v14, 0x2e

    .line 160
    .line 161
    const/4 v15, 0x6

    .line 162
    invoke-static {v11, v14, v5, v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    const/4 v15, -0x1

    .line 167
    if-ne v14, v15, :cond_8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    add-int/2addr v14, v7

    .line 171
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    new-instance v14, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v2}, Lnet/thunderbird/core/common/net/Domain;->constructor-impl(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    if-eqz v2, :cond_a

    .line 197
    .line 198
    new-instance v11, Lnet/thunderbird/core/common/net/Domain;

    .line 199
    .line 200
    invoke-direct {v11, v2}, Lnet/thunderbird/core/common/net/Domain;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_9

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    move-object v11, v8

    .line 211
    :goto_4
    if-eqz v11, :cond_a

    .line 212
    .line 213
    iget-object v2, v11, Lnet/thunderbird/core/common/net/Domain;->value:Ljava/lang/String;

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    move-object v2, v8

    .line 217
    :goto_5
    if-eqz v2, :cond_b

    .line 218
    .line 219
    new-instance v11, Lnet/thunderbird/core/common/net/Domain;

    .line 220
    .line 221
    invoke-direct {v11, v2}, Lnet/thunderbird/core/common/net/Domain;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_b
    move-object v11, v8

    .line 226
    :goto_6
    new-instance v2, Lnet/thunderbird/core/common/net/Domain;

    .line 227
    .line 228
    invoke-direct {v2, v12}, Lnet/thunderbird/core/common/net/Domain;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-array v12, v6, [Lnet/thunderbird/core/common/net/Domain;

    .line 232
    .line 233
    aput-object v11, v12, v5

    .line 234
    .line 235
    aput-object v2, v12, v7

    .line 236
    .line 237
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_10

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    check-cast v11, Lnet/thunderbird/core/common/net/Domain;

    .line 256
    .line 257
    iget-object v11, v11, Lnet/thunderbird/core/common/net/Domain;->value:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v12, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->urlProvider:Landroidx/work/Configuration$Builder;

    .line 260
    .line 261
    invoke-virtual {v12, v11, v1}, Landroidx/work/Configuration$Builder;->getAutoconfigUrls-s1GoCZM(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    check-cast v11, Lkotlin/collections/builders/ListBuilder;

    .line 266
    .line 267
    invoke-virtual {v11, v5}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    move-object/from16 v16, v2

    .line 272
    .line 273
    move-object v2, v1

    .line 274
    move-object v1, v11

    .line 275
    move-object v11, v10

    .line 276
    move-object v10, v4

    .line 277
    move-object v4, v3

    .line 278
    move-object/from16 v3, v16

    .line 279
    .line 280
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    if-eqz v12, :cond_f

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Lokhttp3/HttpUrl;

    .line 291
    .line 292
    iget-object v12, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->autoconfigFetcher:Lcom/beetstra/jutf7/Base64Util;

    .line 293
    .line 294
    iput-object v2, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$0:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 295
    .line 296
    iput-object v8, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$1:Ljava/lang/String;

    .line 297
    .line 298
    iput-object v10, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$2:Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;

    .line 299
    .line 300
    iput-object v3, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$7:Ljava/util/Iterator;

    .line 301
    .line 302
    iput-object v1, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->L$9:Ljava/util/Iterator;

    .line 303
    .line 304
    iput v6, v4, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1;->label:I

    .line 305
    .line 306
    invoke-virtual {v12, v11, v2, v4}, Lcom/beetstra/jutf7/Base64Util;->fetchAutoconfig(Lokhttp3/HttpUrl;Lnet/thunderbird/core/common/mail/EmailAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    if-ne v11, v9, :cond_c

    .line 311
    .line 312
    :goto_9
    return-object v9

    .line 313
    :cond_c
    move-object/from16 v16, v11

    .line 314
    .line 315
    move-object v11, v2

    .line 316
    move-object/from16 v2, v16

    .line 317
    .line 318
    :goto_a
    check-cast v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 319
    .line 320
    instance-of v12, v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 321
    .line 322
    if-eqz v12, :cond_e

    .line 323
    .line 324
    check-cast v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 325
    .line 326
    iget-boolean v0, v10, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;->isTrusted:Z

    .line 327
    .line 328
    if-eqz v0, :cond_d

    .line 329
    .line 330
    iget-boolean v0, v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 331
    .line 332
    if-eqz v0, :cond_d

    .line 333
    .line 334
    move v5, v7

    .line 335
    :cond_d
    const/16 v0, 0xb

    .line 336
    .line 337
    invoke-static {v2, v8, v8, v5, v0}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->copy$default(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lapp/k9mail/autodiscovery/api/ImapServerSettings;Lapp/k9mail/autodiscovery/api/SmtpServerSettings;ZI)Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    return-object v0

    .line 342
    :cond_e
    move-object/from16 v16, v11

    .line 343
    .line 344
    move-object v11, v2

    .line 345
    move-object/from16 v2, v16

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_f
    move-object v1, v2

    .line 349
    move-object v2, v3

    .line 350
    move-object v3, v4

    .line 351
    move-object v4, v10

    .line 352
    move-object v10, v11

    .line 353
    goto :goto_7

    .line 354
    :cond_10
    return-object v10
.end method


# virtual methods
.method public final initDiscovery(Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;-><init>(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lnet/thunderbird/core/common/mail/EmailAddress;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final mxLookup-s1GoCZM(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;-><init>(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->L$0:Ljava/lang/String;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v4

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->mxResolver:Lokio/Path$Companion;

    .line 56
    .line 57
    iput-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->L$0:Ljava/lang/String;

    .line 58
    .line 59
    iput v3, v0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$mxLookup$1;->label:I

    .line 60
    .line 61
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 62
    .line 63
    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 64
    .line 65
    new-instance v1, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v1, p0, p1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Lokio/Path$Companion;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 71
    .line 72
    invoke-direct {p0, v1, v4, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p0, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 80
    .line 81
    if-ne p2, p0, :cond_3

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_3
    :goto_1
    :try_start_2
    move-object p0, p2

    .line 85
    check-cast p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;

    .line 86
    .line 87
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;->mxNames:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move-object p2, v4

    .line 97
    :goto_2
    check-cast p2, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    return-object p2

    .line 100
    :goto_3
    new-array p2, v3, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p1, p2, v2

    .line 103
    .line 104
    const-string p1, "Invalid DNS name for domain: %s"

    .line 105
    .line 106
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :goto_4
    new-array p2, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p1, p2, v2

    .line 113
    .line 114
    const-string p1, "Failed to get MX record for domain: %s"

    .line 115
    .line 116
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_5
    return-object v4
.end method
