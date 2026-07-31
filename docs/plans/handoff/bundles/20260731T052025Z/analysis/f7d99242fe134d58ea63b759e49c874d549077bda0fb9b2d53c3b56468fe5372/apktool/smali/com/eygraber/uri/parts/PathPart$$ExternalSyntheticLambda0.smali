.class public final synthetic Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    iput p2, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path$Companion;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    const-string v0, "Failed to create remote folder \'"

    .line 15
    .line 16
    const-string v1, "\'"

    .line 17
    .line 18
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_1
    const-string v0, "Imap Prefix ("

    .line 24
    .line 25
    const-string v1, ") detected, updating folder\'s server_id"

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 33
    .line 34
    const-string v0, "Couldn\'t select folder for "

    .line 35
    .line 36
    const-string v1, " as LocalSearch is null."

    .line 37
    .line 38
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v0, v4

    .line 46
    .line 47
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p0, v0, v4

    .line 55
    .line 56
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_5
    new-array v0, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p0, v0, v4

    .line 64
    .line 65
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_6
    new-array v0, v3, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p0, v0, v4

    .line 73
    .line 74
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_7
    new-array v0, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p0, v0, v4

    .line 82
    .line 83
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :pswitch_8
    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p0, v0, v4

    .line 91
    .line 92
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :pswitch_9
    return-object p0

    .line 97
    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lorg/minidns/hla/DnssecResolverApi;->INSTANCE:Lorg/minidns/hla/DnssecResolverApi;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object v3, Lorg/minidns/record/Record$TYPE;->DATA_LUT:Ljava/util/HashMap;

    .line 110
    .line 111
    const-class v5, Lorg/minidns/record/MX;

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lorg/minidns/record/Record$TYPE;

    .line 118
    .line 119
    new-instance v5, Lorg/minidns/dnsmessage/Question;

    .line 120
    .line 121
    invoke-direct {v5, p0, v3}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, v0, Lorg/minidns/hla/DnssecResolverApi;->dnssecClient:Lorg/minidns/dnssec/DnssecClient;

    .line 125
    .line 126
    invoke-virtual {p0, v5}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/jsoup/internal/SoftPool;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Ljava/util/Set;

    .line 133
    .line 134
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 137
    .line 138
    iget-object p0, p0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 141
    .line 142
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 143
    .line 144
    invoke-virtual {p0, v5}, Lorg/minidns/dnsmessage/DnsMessage;->getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/HashSet;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-nez p0, :cond_0

    .line 149
    .line 150
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :goto_0
    if-nez v0, :cond_1

    .line 158
    .line 159
    move v0, v4

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    check-cast p0, Ljava/lang/Iterable;

    .line 173
    .line 174
    new-instance v6, Landroidx/viewpager/widget/ViewPager$1;

    .line 175
    .line 176
    invoke-direct {v6, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_4

    .line 197
    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lorg/minidns/record/MX;

    .line 203
    .line 204
    iget-object v6, v6, Lorg/minidns/record/MX;->target:Lorg/minidns/dnsname/DnsName;

    .line 205
    .line 206
    invoke-virtual {v6}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    :try_start_0
    invoke-static {v6}, Lnet/thunderbird/core/common/net/Domain;->constructor-impl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catch_0
    move-object v6, v2

    .line 218
    :goto_3
    if-eqz v6, :cond_3

    .line 219
    .line 220
    new-instance v7, Lnet/thunderbird/core/common/net/Domain;

    .line 221
    .line 222
    invoke-direct {v7, v6}, Lnet/thunderbird/core/common/net/Domain;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_3
    move-object v7, v2

    .line 227
    :goto_4
    if-eqz v7, :cond_2

    .line 228
    .line 229
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    new-instance p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;

    .line 234
    .line 235
    sget-object v6, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 236
    .line 237
    if-ne v3, v6, :cond_7

    .line 238
    .line 239
    if-ne v3, v6, :cond_5

    .line 240
    .line 241
    move-object v4, v2

    .line 242
    goto :goto_5

    .line 243
    :cond_5
    new-instance v4, Lorg/minidns/MiniDnsException$IdMismatch;

    .line 244
    .line 245
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const-string v6, "Asking for "

    .line 254
    .line 255
    const-string v7, " yielded an error response "

    .line 256
    .line 257
    invoke-static {v6, v5, v7, v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_5
    if-nez v4, :cond_6

    .line 265
    .line 266
    move v4, v0

    .line 267
    goto :goto_6

    .line 268
    :cond_6
    const-string p0, "Can not perform operation because the DNS resolution was unsuccessful"

    .line 269
    .line 270
    invoke-static {p0, v4}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_7
    :goto_6
    invoke-direct {p0, v1, v4}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupResult;-><init>(Ljava/util/ArrayList;Z)V

    .line 275
    .line 276
    .line 277
    move-object v2, p0

    .line 278
    :goto_7
    return-object v2

    .line 279
    :pswitch_b
    new-instance v0, Landroidx/navigation/NavDeepLink;

    .line 280
    .line 281
    invoke-direct {v0, p0, v2, v2}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_c
    if-nez p0, :cond_8

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_8
    new-instance v0, Lokio/PriorityQueue;

    .line 289
    .line 290
    invoke-direct {v0, v1, v4}, Lokio/PriorityQueue;-><init>(IB)V

    .line 291
    .line 292
    .line 293
    :goto_8
    const/16 v1, 0x2f

    .line 294
    .line 295
    const/4 v2, 0x4

    .line 296
    invoke-static {p0, v1, v4, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    const/4 v2, -0x1

    .line 301
    if-le v1, v2, :cond_a

    .line 302
    .line 303
    if-ge v4, v1, :cond_9

    .line 304
    .line 305
    sget-object v2, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 306
    .line 307
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v2}, Lcom/eygraber/uri/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Lokio/PriorityQueue;->add(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_9
    add-int/lit8 v4, v1, 0x1

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-ge v4, v1, :cond_b

    .line 326
    .line 327
    sget-object v1, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 328
    .line 329
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-static {p0}, Lcom/eygraber/uri/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    invoke-virtual {v0, p0}, Lokio/PriorityQueue;->add(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_b
    iget-object p0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast p0, [Ljava/lang/String;

    .line 343
    .line 344
    if-eqz p0, :cond_c

    .line 345
    .line 346
    new-instance v1, Lcom/eygraber/uri/PathSegments;

    .line 347
    .line 348
    iget v0, v0, Lokio/PriorityQueue;->size:I

    .line 349
    .line 350
    invoke-direct {v1, v0, p0}, Lcom/eygraber/uri/PathSegments;-><init>(I[Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_c
    :goto_9
    sget-object v1, Lcom/eygraber/uri/PathSegments;->EMPTY:Lcom/eygraber/uri/PathSegments;

    .line 355
    .line 356
    :goto_a
    return-object v1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
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
