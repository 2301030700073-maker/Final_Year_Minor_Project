.class public final Lorg/wikipedia/login/LoginClient$login$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $captchaId:Ljava/lang/String;

.field public final synthetic $captchaWord:Ljava/lang/String;

.field public final synthetic $cb:Lorg/wikipedia/login/LoginClient$LoginCallback;

.field public final synthetic $emailAuthCode:Ljava/lang/String;

.field public final synthetic $isContinuation:Ljava/lang/Boolean;

.field public final synthetic $password:Ljava/lang/String;

.field public final synthetic $retypedPassword:Ljava/lang/String;

.field public final synthetic $token:Ljava/lang/String;

.field public final synthetic $twoFactorCode:Ljava/lang/String;

.field public final synthetic $userName:Ljava/lang/String;

.field public final synthetic $wiki:Lorg/wikipedia/dataclient/WikiSite;

.field public I$0:I

.field public L$0:Ljava/lang/String;

.field public L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/login/LoginClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/login/LoginClient$login$2;->$token:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/login/LoginClient$login$2;->this$0:Lorg/wikipedia/login/LoginClient;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/login/LoginClient$login$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/login/LoginClient$login$2;->$isContinuation:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/login/LoginClient$login$2;->$userName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/wikipedia/login/LoginClient$login$2;->$password:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lorg/wikipedia/login/LoginClient$login$2;->$retypedPassword:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lorg/wikipedia/login/LoginClient$login$2;->$twoFactorCode:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lorg/wikipedia/login/LoginClient$login$2;->$emailAuthCode:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lorg/wikipedia/login/LoginClient$login$2;->$captchaId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lorg/wikipedia/login/LoginClient$login$2;->$captchaWord:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p12, p0, Lorg/wikipedia/login/LoginClient$login$2;->$cb:Lorg/wikipedia/login/LoginClient$LoginCallback;

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14

    .line 1
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$2;

    .line 2
    .line 3
    iget-object v11, p0, Lorg/wikipedia/login/LoginClient$login$2;->$captchaWord:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v12, p0, Lorg/wikipedia/login/LoginClient$login$2;->$cb:Lorg/wikipedia/login/LoginClient$LoginCallback;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/login/LoginClient$login$2;->$token:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/login/LoginClient$login$2;->this$0:Lorg/wikipedia/login/LoginClient;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/wikipedia/login/LoginClient$login$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/login/LoginClient$login$2;->$isContinuation:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/wikipedia/login/LoginClient$login$2;->$userName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lorg/wikipedia/login/LoginClient$login$2;->$password:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p0, Lorg/wikipedia/login/LoginClient$login$2;->$retypedPassword:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v8, p0, Lorg/wikipedia/login/LoginClient$login$2;->$twoFactorCode:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v9, p0, Lorg/wikipedia/login/LoginClient$login$2;->$emailAuthCode:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v10, p0, Lorg/wikipedia/login/LoginClient$login$2;->$captchaId:Ljava/lang/String;

    .line 26
    .line 27
    move-object/from16 v13, p2

    .line 28
    .line 29
    invoke-direct/range {v0 .. v13}, Lorg/wikipedia/login/LoginClient$login$2;-><init>(Ljava/lang/String;Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/login/LoginClient$login$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/login/LoginClient$login$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/login/LoginClient$login$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 6
    .line 7
    iget-object v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->$password:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v14, 0x2

    .line 10
    const/4 v15, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->$cb:Lorg/wikipedia/login/LoginClient$LoginCallback;

    .line 13
    .line 14
    iget-object v4, v11, Lorg/wikipedia/login/LoginClient$login$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v5

    .line 26
    :pswitch_0
    iget-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    iget-object v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    move/from16 v16, v15

    .line 36
    .line 37
    goto/16 :goto_c

    .line 38
    .line 39
    :pswitch_1
    iget v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 40
    .line 41
    iget-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    check-cast v7, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    iget-object v8, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move/from16 v21, v0

    .line 55
    .line 56
    move-object v14, v2

    .line 57
    move-object/from16 v22, v3

    .line 58
    .line 59
    move-object/from16 v18, v7

    .line 60
    .line 61
    move-object v7, v8

    .line 62
    move/from16 v16, v15

    .line 63
    .line 64
    move-object/from16 v0, p1

    .line 65
    .line 66
    move-object v15, v4

    .line 67
    goto/16 :goto_a

    .line 68
    .line 69
    :pswitch_2
    iget v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 70
    .line 71
    iget-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v2

    .line 83
    move/from16 v16, v15

    .line 84
    .line 85
    move-object v15, v4

    .line 86
    move-object/from16 v4, p1

    .line 87
    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :pswitch_3
    iget-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    move-object/from16 v21, v3

    .line 98
    .line 99
    move-object v15, v4

    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :pswitch_4
    iget-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    iget-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    iget-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v1, v2

    .line 112
    move-object/from16 v21, v3

    .line 113
    .line 114
    move/from16 v16, v15

    .line 115
    .line 116
    move-object v2, v0

    .line 117
    move-object v15, v4

    .line 118
    move-object/from16 v0, p1

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v0, p1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 132
    .line 133
    new-array v0, v1, [Ljava/lang/Object;

    .line 134
    .line 135
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 136
    .line 137
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const v7, 0x7f120625

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1, v6, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6, v1, v0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    .line 162
    sput-boolean v15, Lorg/wikipedia/login/LoginClient;->enqueueForceEmailAuth:Z

    .line 163
    .line 164
    :cond_0
    iget-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->$token:Ljava/lang/String;

    .line 165
    .line 166
    if-nez v0, :cond_2

    .line 167
    .line 168
    iput v15, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 169
    .line 170
    iget-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->this$0:Lorg/wikipedia/login/LoginClient;

    .line 171
    .line 172
    invoke-virtual {v0, v4, v11}, Lorg/wikipedia/login/LoginClient;->getLoginToken(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-ne v0, v13, :cond_1

    .line 177
    .line 178
    goto/16 :goto_b

    .line 179
    .line 180
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 181
    .line 182
    :cond_2
    move-object v9, v0

    .line 183
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 189
    .line 190
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    iget-object v8, v11, Lorg/wikipedia/login/LoginClient$login$2;->$isContinuation:Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_3

    .line 203
    .line 204
    move-object v10, v7

    .line 205
    goto :goto_1

    .line 206
    :cond_3
    move-object v10, v5

    .line 207
    :goto_1
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_4

    .line 212
    .line 213
    move-object v8, v5

    .line 214
    goto :goto_2

    .line 215
    :cond_4
    const-string v7, "https://wikipedia.org/"

    .line 216
    .line 217
    move-object v8, v7

    .line 218
    :goto_2
    iput-object v9, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 219
    .line 220
    iput-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 221
    .line 222
    iput-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 223
    .line 224
    iput v14, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 225
    .line 226
    move v7, v1

    .line 227
    iget-object v1, v11, Lorg/wikipedia/login/LoginClient$login$2;->$userName:Ljava/lang/String;

    .line 228
    .line 229
    move-object v12, v3

    .line 230
    iget-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->$retypedPassword:Ljava/lang/String;

    .line 231
    .line 232
    move-object/from16 v16, v4

    .line 233
    .line 234
    iget-object v4, v11, Lorg/wikipedia/login/LoginClient$login$2;->$twoFactorCode:Ljava/lang/String;

    .line 235
    .line 236
    move-object/from16 v17, v5

    .line 237
    .line 238
    iget-object v5, v11, Lorg/wikipedia/login/LoginClient$login$2;->$emailAuthCode:Ljava/lang/String;

    .line 239
    .line 240
    move-object/from16 v18, v0

    .line 241
    .line 242
    move-object v0, v6

    .line 243
    iget-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->$captchaId:Ljava/lang/String;

    .line 244
    .line 245
    move/from16 v19, v7

    .line 246
    .line 247
    iget-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->$captchaWord:Ljava/lang/String;

    .line 248
    .line 249
    move-object/from16 v20, v12

    .line 250
    .line 251
    const/16 v12, 0x400

    .line 252
    .line 253
    move-object/from16 v21, v16

    .line 254
    .line 255
    move/from16 v16, v15

    .line 256
    .line 257
    move-object/from16 v15, v21

    .line 258
    .line 259
    move-object/from16 v21, v20

    .line 260
    .line 261
    invoke-static/range {v0 .. v12}, Lorg/wikipedia/dataclient/Service$-CC;->postLogIn$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    move-object v1, v2

    .line 266
    if-ne v0, v13, :cond_5

    .line 267
    .line 268
    goto/16 :goto_b

    .line 269
    .line 270
    :cond_5
    move-object v7, v9

    .line 271
    move-object/from16 v2, v18

    .line 272
    .line 273
    move-object v6, v2

    .line 274
    :goto_3
    check-cast v0, Lorg/wikipedia/login/LoginResponse;

    .line 275
    .line 276
    invoke-virtual {v0, v1, v15}, Lorg/wikipedia/login/LoginResponse;->toLoginResult(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/login/LoginResult;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 281
    .line 282
    move-object v0, v6

    .line 283
    const/4 v2, 0x0

    .line 284
    :goto_4
    if-ge v2, v14, :cond_20

    .line 285
    .line 286
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 287
    .line 288
    if-eqz v3, :cond_1f

    .line 289
    .line 290
    check-cast v3, Lorg/wikipedia/login/LoginResult;

    .line 291
    .line 292
    const-string v4, "PASS"

    .line 293
    .line 294
    iget-object v3, v3, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_9

    .line 301
    .line 302
    iget-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->$userName:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-lez v3, :cond_9

    .line 309
    .line 310
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 311
    .line 312
    invoke-static {v15}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const/4 v3, 0x0

    .line 317
    iput-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 318
    .line 319
    iput-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 320
    .line 321
    iput-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 322
    .line 323
    iput-object v3, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 324
    .line 325
    iput v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 326
    .line 327
    const/4 v2, 0x3

    .line 328
    iput v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 329
    .line 330
    invoke-interface {v1, v11}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-ne v1, v13, :cond_6

    .line 335
    .line 336
    goto/16 :goto_b

    .line 337
    .line 338
    :cond_6
    :goto_5
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 339
    .line 340
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 341
    .line 342
    if-eqz v1, :cond_8

    .line 343
    .line 344
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 345
    .line 346
    if-eqz v1, :cond_8

    .line 347
    .line 348
    iget v2, v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    .line 349
    .line 350
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v3, Lorg/wikipedia/login/LoginResult;

    .line 353
    .line 354
    iput v2, v3, Lorg/wikipedia/login/LoginResult;->userId:I

    .line 355
    .line 356
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    .line 357
    .line 358
    if-eqz v1, :cond_7

    .line 359
    .line 360
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    goto :goto_6

    .line 365
    :cond_7
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 366
    .line 367
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iput-object v1, v3, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    .line 371
    .line 372
    invoke-virtual {v15}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v4, "Found user ID "

    .line 379
    .line 380
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v2, " for "

    .line 387
    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    sget-object v2, Lorg/wikipedia/util/log/L;->LEVEL_V:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 399
    .line 400
    const/4 v3, 0x0

    .line 401
    invoke-virtual {v2, v1, v3}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    .line 403
    .line 404
    :cond_8
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Lorg/wikipedia/login/LoginResult;

    .line 407
    .line 408
    move-object/from16 v3, v21

    .line 409
    .line 410
    invoke-interface {v3, v0}, Lorg/wikipedia/login/LoginClient$LoginCallback;->success(Lorg/wikipedia/login/LoginResult;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_13

    .line 414
    .line 415
    :cond_9
    move-object/from16 v3, v21

    .line 416
    .line 417
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 420
    .line 421
    iget-object v4, v4, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 422
    .line 423
    const-string v5, "UI"

    .line 424
    .line 425
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_12

    .line 430
    .line 431
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 434
    .line 435
    iget-object v4, v4, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 436
    .line 437
    if-eqz v4, :cond_c

    .line 438
    .line 439
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 440
    .line 441
    invoke-static {v15}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    iput-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 446
    .line 447
    iput-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 448
    .line 449
    const/4 v6, 0x0

    .line 450
    iput-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 451
    .line 452
    iput-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 453
    .line 454
    iput v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 455
    .line 456
    const/4 v6, 0x4

    .line 457
    iput v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 458
    .line 459
    invoke-interface {v5, v4, v11}, Lorg/wikipedia/dataclient/Service;->parseText(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    if-ne v4, v13, :cond_a

    .line 464
    .line 465
    goto/16 :goto_b

    .line 466
    .line 467
    :cond_a
    move-object v6, v0

    .line 468
    move v0, v2

    .line 469
    :goto_7
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    .line 470
    .line 471
    if-eqz v4, :cond_b

    .line 472
    .line 473
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    move-object v4, v6

    .line 478
    :goto_8
    move-object v9, v7

    .line 479
    goto :goto_9

    .line 480
    :cond_b
    move v2, v0

    .line 481
    move-object v0, v6

    .line 482
    :cond_c
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 485
    .line 486
    iget-object v4, v4, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 487
    .line 488
    move-object v9, v4

    .line 489
    move-object v4, v0

    .line 490
    move v0, v2

    .line 491
    move-object v2, v9

    .line 492
    goto :goto_8

    .line 493
    :goto_9
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 494
    .line 495
    instance-of v6, v5, Lorg/wikipedia/login/LoginOATHResult;

    .line 496
    .line 497
    if-eqz v6, :cond_d

    .line 498
    .line 499
    check-cast v5, Lorg/wikipedia/login/LoginResult;

    .line 500
    .line 501
    new-instance v0, Lorg/wikipedia/login/LoginFailedException;

    .line 502
    .line 503
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const/4 v6, 0x0

    .line 507
    invoke-interface {v3, v5, v0, v6, v9}, Lorg/wikipedia/login/LoginClient$LoginCallback;->uiPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_13

    .line 511
    .line 512
    :cond_d
    const/4 v6, 0x0

    .line 513
    instance-of v7, v5, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 514
    .line 515
    if-eqz v7, :cond_e

    .line 516
    .line 517
    check-cast v5, Lorg/wikipedia/login/LoginResult;

    .line 518
    .line 519
    new-instance v0, Lorg/wikipedia/login/LoginFailedException;

    .line 520
    .line 521
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {v3, v5, v0, v6, v9}, Lorg/wikipedia/login/LoginClient$LoginCallback;->uiPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_13

    .line 528
    .line 529
    :cond_e
    instance-of v6, v5, Lorg/wikipedia/login/LoginResetPasswordResult;

    .line 530
    .line 531
    if-eqz v6, :cond_f

    .line 532
    .line 533
    invoke-interface {v3, v9}, Lorg/wikipedia/login/LoginClient$LoginCallback;->passwordResetPrompt(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_13

    .line 537
    .line 538
    :cond_f
    instance-of v5, v5, Lorg/wikipedia/login/LoginModuleSelectResult;

    .line 539
    .line 540
    if-eqz v5, :cond_11

    .line 541
    .line 542
    if-nez v0, :cond_11

    .line 543
    .line 544
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 545
    .line 546
    invoke-static {v15}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 551
    .line 552
    iput-object v9, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 553
    .line 554
    iput-object v4, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 555
    .line 556
    const/4 v6, 0x0

    .line 557
    iput-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 558
    .line 559
    iput-object v4, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 560
    .line 561
    iput v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 562
    .line 563
    const/4 v5, 0x5

    .line 564
    iput v5, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 565
    .line 566
    move-object v5, v1

    .line 567
    const/4 v1, 0x0

    .line 568
    move v6, v0

    .line 569
    move-object v0, v2

    .line 570
    const/4 v2, 0x0

    .line 571
    move-object/from16 v20, v3

    .line 572
    .line 573
    const/4 v3, 0x0

    .line 574
    move-object v7, v4

    .line 575
    const/4 v4, 0x0

    .line 576
    move-object v8, v5

    .line 577
    const/4 v5, 0x0

    .line 578
    move v12, v6

    .line 579
    const/4 v6, 0x0

    .line 580
    move-object/from16 v18, v7

    .line 581
    .line 582
    const/4 v7, 0x0

    .line 583
    move-object/from16 v19, v8

    .line 584
    .line 585
    const/4 v8, 0x0

    .line 586
    move/from16 v21, v12

    .line 587
    .line 588
    const/16 v12, 0xff

    .line 589
    .line 590
    move-object/from16 v14, v19

    .line 591
    .line 592
    move-object/from16 v22, v20

    .line 593
    .line 594
    invoke-static/range {v0 .. v12}, Lorg/wikipedia/dataclient/Service$-CC;->postLogIn$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-ne v0, v13, :cond_10

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_10
    move-object v7, v9

    .line 602
    move-object/from16 v6, v18

    .line 603
    .line 604
    :goto_a
    check-cast v0, Lorg/wikipedia/login/LoginResponse;

    .line 605
    .line 606
    invoke-virtual {v0, v14, v15}, Lorg/wikipedia/login/LoginResponse;->toLoginResult(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/login/LoginResult;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 611
    .line 612
    add-int/lit8 v2, v21, 0x1

    .line 613
    .line 614
    move-object v1, v14

    .line 615
    move-object/from16 v0, v18

    .line 616
    .line 617
    move-object/from16 v21, v22

    .line 618
    .line 619
    const/4 v14, 0x2

    .line 620
    goto/16 :goto_4

    .line 621
    .line 622
    :cond_11
    move-object/from16 v22, v3

    .line 623
    .line 624
    move-object/from16 v18, v4

    .line 625
    .line 626
    new-instance v0, Lorg/wikipedia/login/LoginFailedException;

    .line 627
    .line 628
    move-object/from16 v7, v18

    .line 629
    .line 630
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v1, Lorg/wikipedia/login/LoginResult;

    .line 633
    .line 634
    iget-object v1, v1, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 635
    .line 636
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    move-object/from16 v3, v22

    .line 640
    .line 641
    invoke-interface {v3, v0}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_13

    .line 645
    .line 646
    :cond_12
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 647
    .line 648
    invoke-static {v15}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    iput-object v7, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$0:Ljava/lang/String;

    .line 653
    .line 654
    iput-object v0, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 655
    .line 656
    const/4 v6, 0x0

    .line 657
    iput-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 658
    .line 659
    iput-object v6, v11, Lorg/wikipedia/login/LoginClient$login$2;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 660
    .line 661
    iput v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->I$0:I

    .line 662
    .line 663
    const/4 v2, 0x6

    .line 664
    iput v2, v11, Lorg/wikipedia/login/LoginClient$login$2;->label:I

    .line 665
    .line 666
    invoke-interface {v1, v11}, Lorg/wikipedia/dataclient/Service;->getAuthManagerForLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    if-ne v1, v13, :cond_13

    .line 671
    .line 672
    :goto_b
    return-object v13

    .line 673
    :cond_13
    move-object v2, v7

    .line 674
    :goto_c
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 675
    .line 676
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 677
    .line 678
    if-eqz v1, :cond_14

    .line 679
    .line 680
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->captchaId()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    goto :goto_d

    .line 685
    :cond_14
    const/4 v5, 0x0

    .line 686
    :goto_d
    if-eqz v1, :cond_1c

    .line 687
    .line 688
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->hasHCaptchaRequest()Z

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    move/from16 v6, v16

    .line 693
    .line 694
    if-ne v4, v6, :cond_1c

    .line 695
    .line 696
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 699
    .line 700
    iget-object v4, v4, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 701
    .line 702
    const-string v6, ""

    .line 703
    .line 704
    if-nez v4, :cond_15

    .line 705
    .line 706
    move-object v4, v6

    .line 707
    :cond_15
    const-string v7, "captcha"

    .line 708
    .line 709
    const/4 v8, 0x0

    .line 710
    invoke-static {v4, v7, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eqz v4, :cond_1c

    .line 715
    .line 716
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 719
    .line 720
    iget-object v4, v4, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 721
    .line 722
    if-nez v4, :cond_16

    .line 723
    .line 724
    move-object v4, v6

    .line 725
    :cond_16
    const-string v7, "error"

    .line 726
    .line 727
    invoke-static {v4, v7, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    if-nez v4, :cond_1c

    .line 732
    .line 733
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast v4, Lorg/wikipedia/login/LoginResult;

    .line 736
    .line 737
    new-instance v5, Lorg/wikipedia/login/LoginFailedException;

    .line 738
    .line 739
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 740
    .line 741
    check-cast v0, Lorg/wikipedia/login/LoginResult;

    .line 742
    .line 743
    iget-object v0, v0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 744
    .line 745
    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    .line 749
    .line 750
    if-eqz v0, :cond_1a

    .line 751
    .line 752
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;->requests:Ljava/util/List;

    .line 753
    .line 754
    if-eqz v0, :cond_1a

    .line 755
    .line 756
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-eqz v1, :cond_19

    .line 765
    .line 766
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    move-object v7, v1

    .line 771
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 772
    .line 773
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->metadata:Ljava/util/Map;

    .line 774
    .line 775
    if-eqz v7, :cond_18

    .line 776
    .line 777
    const-string/jumbo v8, "type"

    .line 778
    .line 779
    .line 780
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    check-cast v7, Ljava/lang/String;

    .line 785
    .line 786
    goto :goto_e

    .line 787
    :cond_18
    const/4 v7, 0x0

    .line 788
    :goto_e
    const-string v8, "hcaptcha"

    .line 789
    .line 790
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v7

    .line 794
    if-eqz v7, :cond_17

    .line 795
    .line 796
    goto :goto_f

    .line 797
    :cond_19
    const/4 v1, 0x0

    .line 798
    :goto_f
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 799
    .line 800
    if-eqz v1, :cond_1a

    .line 801
    .line 802
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->metadata:Ljava/util/Map;

    .line 803
    .line 804
    if-eqz v0, :cond_1a

    .line 805
    .line 806
    const-string v1, "key"

    .line 807
    .line 808
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    check-cast v0, Ljava/lang/String;

    .line 813
    .line 814
    goto :goto_10

    .line 815
    :cond_1a
    const/4 v0, 0x0

    .line 816
    :goto_10
    if-nez v0, :cond_1b

    .line 817
    .line 818
    goto :goto_11

    .line 819
    :cond_1b
    move-object v6, v0

    .line 820
    :goto_11
    invoke-interface {v3, v4, v5, v6, v2}, Lorg/wikipedia/login/LoginClient$LoginCallback;->hCaptchaPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    goto :goto_13

    .line 824
    :cond_1c
    if-eqz v5, :cond_1e

    .line 825
    .line 826
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-nez v1, :cond_1d

    .line 831
    .line 832
    goto :goto_12

    .line 833
    :cond_1d
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v1, Lorg/wikipedia/login/LoginResult;

    .line 836
    .line 837
    new-instance v4, Lorg/wikipedia/login/LoginFailedException;

    .line 838
    .line 839
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v0, Lorg/wikipedia/login/LoginResult;

    .line 842
    .line 843
    iget-object v0, v0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 844
    .line 845
    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-interface {v3, v1, v4, v5, v2}, Lorg/wikipedia/login/LoginClient$LoginCallback;->uiPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto :goto_13

    .line 852
    :cond_1e
    :goto_12
    new-instance v1, Lorg/wikipedia/login/LoginFailedException;

    .line 853
    .line 854
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 855
    .line 856
    check-cast v0, Lorg/wikipedia/login/LoginResult;

    .line 857
    .line 858
    iget-object v2, v0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 859
    .line 860
    iget-object v0, v0, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 861
    .line 862
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-interface {v3, v1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    .line 866
    .line 867
    .line 868
    goto :goto_13

    .line 869
    :cond_1f
    const-string v0, "Login failed. Unexpected response."

    .line 870
    .line 871
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    const/16 v17, 0x0

    .line 875
    .line 876
    return-object v17

    .line 877
    :cond_20
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 878
    .line 879
    return-object v0

    .line 880
    nop

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
