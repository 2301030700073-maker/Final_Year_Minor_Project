.class public final synthetic Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/createaccount/CreateAccountActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "binding"

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const-string/jumbo v3, "yir"

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/16 v7, 0xf6

    .line 26
    .line 27
    const-string v1, "click"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "forgot_password_link"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 38
    .line 39
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    aput-object v0, v1, v2

    .line 52
    .line 53
    const v0, 0x7f120249

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_0
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/16 v7, 0xf6

    .line 84
    .line 85
    const-string v1, "click"

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    const-string v4, "privacy_policy_link"

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 93
    .line 94
    .line 95
    :cond_1
    const p1, 0x7f120702

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_1
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    .line 118
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    const/16 v11, 0xf6

    .line 126
    .line 127
    const-string v5, "click"

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    const-string v8, "login_button"

    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    const/16 v0, 0xee

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    const-string v2, "login_click"

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    const-string v4, "explore_prompt"

    .line 153
    .line 154
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    const/4 p1, 0x3

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_2
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 166
    .line 167
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    const/4 v6, 0x0

    .line 174
    const/16 v7, 0xf6

    .line 175
    .line 176
    const-string v1, "click"

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    const-string v4, "fancy_captcha_submit"

    .line 181
    .line 182
    const/4 v5, 0x0

    .line 183
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateThenCreateAccount()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_3
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 191
    .line 192
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    const/16 v11, 0xf6

    .line 200
    .line 201
    const-string v5, "click"

    .line 202
    .line 203
    const/4 v6, 0x0

    .line 204
    const/4 v7, 0x0

    .line 205
    const-string v8, "create_account_button"

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 209
    .line 210
    .line 211
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_6

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    const/16 v0, 0xee

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    const-string v2, "create_account_click"

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    const-string v4, "explore_prompt"

    .line 227
    .line 228
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateThenCreateAccount()V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_4
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 236
    .line 237
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-eqz v3, :cond_7

    .line 242
    .line 243
    const/4 v9, 0x0

    .line 244
    const/16 v10, 0xf6

    .line 245
    .line 246
    const-string v4, "click"

    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    const/4 v6, 0x0

    .line 250
    const-string v7, "error_retry_button"

    .line 251
    .line 252
    const/4 v8, 0x0

    .line 253
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 254
    .line 255
    .line 256
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 257
    .line 258
    if-eqz p0, :cond_8

    .line 259
    .line 260
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 263
    .line 264
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :pswitch_5
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 273
    .line 274
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    if-eqz v3, :cond_9

    .line 279
    .line 280
    const/4 v9, 0x0

    .line 281
    const/16 v10, 0xf6

    .line 282
    .line 283
    const-string v4, "click"

    .line 284
    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v6, 0x0

    .line 287
    const-string v7, "error_back_button"

    .line 288
    .line 289
    const/4 v8, 0x0

    .line 290
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 291
    .line 292
    .line 293
    :cond_9
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 294
    .line 295
    if-eqz p1, :cond_b

    .line 296
    .line 297
    iget-object p1, p1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 300
    .line 301
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 305
    .line 306
    if-eqz p0, :cond_a

    .line 307
    .line 308
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->requestNewCaptcha()V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_a
    const-string p0, "captchaHandler"

    .line 313
    .line 314
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :pswitch_6
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 323
    .line 324
    const p1, 0x7f1200e0

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
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
