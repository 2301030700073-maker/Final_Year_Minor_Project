.class public final Lorg/wikipedia/page/PageFragment$openInNewTab$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "%20"

    .line 4
    .line 5
    const-string v2, "+"

    .line 6
    .line 7
    const-string v3, "UTF-8"

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    iget-object v6, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v0, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-ne v0, v7, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v8, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 39
    .line 40
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 41
    .line 42
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget-object v10, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 51
    .line 52
    invoke-virtual {v10}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v11, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 57
    .line 58
    iget-object v11, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :try_start_0
    invoke-static {v6, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iput v7, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    move-object v2, v4

    .line 79
    move-object v4, v1

    .line 80
    move-object v1, v2

    .line 81
    move-object v5, p0

    .line 82
    move-object v2, v10

    .line 83
    move-object v3, v11

    .line 84
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-ne v0, v9, :cond_2

    .line 89
    .line 90
    move-object v8, v9

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-object v8, v0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object v8

    .line 99
    :pswitch_0
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 100
    .line 101
    iget v0, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    if-ne v0, v7, :cond_3

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object v8, p1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 120
    .line 121
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 122
    .line 123
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    sget-object v10, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 132
    .line 133
    invoke-virtual {v10}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    iget-object v11, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 138
    .line 139
    iget-object v11, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :try_start_1
    invoke-static {v6, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    iput v7, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 157
    .line 158
    const-string v3, "save"

    .line 159
    .line 160
    move-object v6, p0

    .line 161
    move-object v5, v1

    .line 162
    move-object v1, v4

    .line 163
    move-object v2, v10

    .line 164
    move-object v4, v11

    .line 165
    invoke-interface/range {v0 .. v6}, Lorg/wikipedia/dataclient/RestService;->getMediaList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-ne v0, v9, :cond_5

    .line 170
    .line 171
    move-object v8, v9

    .line 172
    goto :goto_1

    .line 173
    :cond_5
    move-object v8, v0

    .line 174
    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 176
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-object v8

    .line 180
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 181
    .line 182
    iget v1, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 183
    .line 184
    if-eqz v1, :cond_7

    .line 185
    .line 186
    if-ne v1, v7, :cond_6

    .line 187
    .line 188
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    move-object v0, p1

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move-object v0, v8

    .line 197
    goto :goto_2

    .line 198
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 202
    .line 203
    sget-object v1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 204
    .line 205
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    iput v7, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 214
    .line 215
    invoke-interface {v1, v2, p0}, Lorg/wikipedia/dataclient/Service;->getProtectionWithUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-ne v1, v0, :cond_8

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    move-object v0, v1

    .line 223
    :goto_2
    return-object v0

    .line 224
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 225
    .line 226
    iget v1, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 227
    .line 228
    if-eqz v1, :cond_a

    .line 229
    .line 230
    if-ne v1, v7, :cond_9

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move-object v1, p1

    .line 236
    goto :goto_3

    .line 237
    :cond_9
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 245
    .line 246
    sget-object v1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 247
    .line 248
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iput v7, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 257
    .line 258
    const-string v3, "commonswiki"

    .line 259
    .line 260
    invoke-interface {v1, v2, v3, p0}, Lorg/wikipedia/dataclient/Service;->getEntitiesByTitleSuspend(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-ne v1, v0, :cond_b

    .line 265
    .line 266
    move-object v8, v0

    .line 267
    goto :goto_4

    .line 268
    :cond_b
    :goto_3
    check-cast v1, Lorg/wikipedia/dataclient/wikidata/Entities;

    .line 269
    .line 270
    iget-object v0, v1, Lorg/wikipedia/dataclient/wikidata/Entities;->entities:Ljava/util/Map;

    .line 271
    .line 272
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Ljava/lang/Iterable;

    .line 277
    .line 278
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    move-object v8, v0

    .line 283
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 284
    .line 285
    :goto_4
    return-object v8

    .line 286
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 287
    .line 288
    iget v1, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 289
    .line 290
    if-eqz v1, :cond_d

    .line 291
    .line 292
    if-ne v1, v7, :cond_c

    .line 293
    .line 294
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    move-object v1, p1

    .line 298
    goto :goto_5

    .line 299
    :cond_c
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 307
    .line 308
    iget-object v1, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 309
    .line 310
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    iput v7, p0, Lorg/wikipedia/page/PageFragment$openInNewTab$2;->label:I

    .line 319
    .line 320
    invoke-interface {v1, v8, v2, p0}, Lorg/wikipedia/dataclient/Service;->getInfoByPageIdsOrTitles(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-ne v1, v0, :cond_e

    .line 325
    .line 326
    move-object v8, v0

    .line 327
    goto :goto_6

    .line 328
    :cond_e
    :goto_5
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 329
    .line 330
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 331
    .line 332
    if-eqz v0, :cond_11

    .line 333
    .line 334
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-eqz v0, :cond_11

    .line 339
    .line 340
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 341
    .line 342
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_10

    .line 357
    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    move-object v3, v2

    .line 363
    check-cast v3, Lorg/wikipedia/page/tabs/Tab;

    .line 364
    .line 365
    invoke-virtual {v3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_f

    .line 374
    .line 375
    move-object v8, v2

    .line 376
    :cond_10
    check-cast v8, Lorg/wikipedia/page/tabs/Tab;

    .line 377
    .line 378
    if-eqz v8, :cond_11

    .line 379
    .line 380
    invoke-virtual {v8}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_11

    .line 385
    .line 386
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iput-object v2, v1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 393
    .line 394
    iput-object v0, v1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 395
    .line 396
    :cond_11
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 397
    .line 398
    :goto_6
    return-object v8

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
