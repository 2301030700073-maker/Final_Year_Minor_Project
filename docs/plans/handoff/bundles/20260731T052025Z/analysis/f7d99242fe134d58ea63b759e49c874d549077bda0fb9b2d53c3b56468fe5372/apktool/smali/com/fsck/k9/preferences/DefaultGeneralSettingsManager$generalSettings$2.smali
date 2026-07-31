.class public final Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 10
    iput p3, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Throwable;

    .line 12
    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 20
    .line 21
    const/16 v0, 0xd

    .line 22
    .line 23
    invoke-direct {p1, p0, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_0
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 33
    .line 34
    check-cast p2, Lde/cketti/changelog/ChangeLog;

    .line 35
    .line 36
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 39
    .line 40
    const/16 v0, 0xc

    .line 41
    .line 42
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_1
    check-cast p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 55
    .line 56
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 57
    .line 58
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 61
    .line 62
    const/16 v0, 0xb

    .line 63
    .line 64
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 77
    .line 78
    check-cast p2, Ljava/util/Map;

    .line 79
    .line 80
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 81
    .line 82
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 83
    .line 84
    const/16 v0, 0xa

    .line 85
    .line 86
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_3
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 99
    .line 100
    check-cast p2, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 101
    .line 102
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 105
    .line 106
    const/16 v0, 0x9

    .line 107
    .line 108
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_4
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 121
    .line 122
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 123
    .line 124
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 125
    .line 126
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 127
    .line 128
    const/16 v0, 0x8

    .line 129
    .line 130
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :pswitch_5
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 143
    .line 144
    check-cast p2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 145
    .line 146
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 149
    .line 150
    const/4 v0, 0x7

    .line 151
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :pswitch_6
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 164
    .line 165
    check-cast p2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 166
    .line 167
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 168
    .line 169
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 170
    .line 171
    const/4 v0, 0x6

    .line 172
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :pswitch_7
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 185
    .line 186
    check-cast p2, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 187
    .line 188
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 191
    .line 192
    const/4 v0, 0x5

    .line 193
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    return-object p0

    .line 205
    :pswitch_8
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 206
    .line 207
    check-cast p2, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 208
    .line 209
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 210
    .line 211
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 212
    .line 213
    const/4 v0, 0x4

    .line 214
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :pswitch_9
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 227
    .line 228
    check-cast p2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 229
    .line 230
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 231
    .line 232
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 233
    .line 234
    invoke-direct {p0, v1, p3, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_a
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 247
    .line 248
    check-cast p2, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 249
    .line 250
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 253
    .line 254
    const/4 v0, 0x2

    .line 255
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 256
    .line 257
    .line 258
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 261
    .line 262
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 268
    .line 269
    check-cast p2, Ljava/lang/Throwable;

    .line 270
    .line 271
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 272
    .line 273
    new-instance p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 274
    .line 275
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 278
    .line 279
    const/4 v0, 0x1

    .line 280
    invoke-direct {p1, p0, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 281
    .line 282
    .line 283
    iput-object p2, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    return-object v2

    .line 289
    :pswitch_c
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 290
    .line 291
    check-cast p2, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 292
    .line 293
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 294
    .line 295
    new-instance p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 296
    .line 297
    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 304
    .line 305
    invoke-virtual {p0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    return-object p0

    .line 310
    nop

    .line 311
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 21
    .line 22
    new-instance p1, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/16 v3, 0xe

    .line 25
    .line 26
    invoke-direct {p1, v3, v0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    const-string v3, "LoadMessagesLegacySideEffect"

    .line 31
    .line 32
    invoke-static {p0, v3, v2, p1, v0}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lde/cketti/changelog/ChangeLog;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lkotlin/Pair;

    .line 48
    .line 49
    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v7, p0

    .line 61
    check-cast v7, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const/16 v13, 0x7df

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    invoke-static/range {v1 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/util/List;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/16 p1, 0xa

    .line 95
    .line 96
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/16 v1, 0x10

    .line 105
    .line 106
    if-ge p1, v1, :cond_0

    .line 107
    .line 108
    move p1, v1

    .line 109
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    move-object v2, v0

    .line 129
    check-cast v2, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 130
    .line 131
    iget-object v2, v2, Lnet/thunderbird/core/featureflag/FeatureFlag;->key:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v3, Lnet/thunderbird/core/featureflag/FeatureFlagKey;

    .line 134
    .line 135
    invoke-direct {v3, v2}, Lnet/thunderbird/core/featureflag/FeatureFlagKey;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Ljava/lang/Iterable;

    .line 160
    .line 161
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_2

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    new-instance v3, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Lnet/thunderbird/core/featureflag/FeatureFlagKey;

    .line 188
    .line 189
    iget-object v4, v4, Lnet/thunderbird/core/featureflag/FeatureFlagKey;->key:Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-direct {v3, v4, v0}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_2
    invoke-static {v1, p1}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 214
    .line 215
    move-object v1, v0

    .line 216
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 217
    .line 218
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 219
    .line 220
    move-object v6, p0

    .line 221
    check-cast v6, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 222
    .line 223
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    const/4 v7, 0x7

    .line 230
    const/4 v3, 0x0

    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const/4 v7, 0x0

    .line 237
    const/16 v8, 0x77

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v6, 0x0

    .line 241
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_4
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 247
    .line 248
    move-object v1, v0

    .line 249
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 252
    .line 253
    move-object v5, p0

    .line 254
    check-cast v5, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 255
    .line 256
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    const/16 v7, 0xb

    .line 263
    .line 264
    const/4 v3, 0x0

    .line 265
    const/4 v4, 0x0

    .line 266
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    const/4 v7, 0x0

    .line 271
    const/16 v8, 0x77

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    const/4 v5, 0x0

    .line 275
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    return-object p0

    .line 280
    :pswitch_5
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 281
    .line 282
    move-object v1, v0

    .line 283
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 284
    .line 285
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 286
    .line 287
    move-object v4, p0

    .line 288
    check-cast v4, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 289
    .line 290
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    const/16 v7, 0xd

    .line 297
    .line 298
    const/4 v3, 0x0

    .line 299
    const/4 v5, 0x0

    .line 300
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    const/4 v7, 0x0

    .line 305
    const/16 v8, 0x77

    .line 306
    .line 307
    const/4 v2, 0x0

    .line 308
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :pswitch_6
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 314
    .line 315
    move-object v1, v0

    .line 316
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 317
    .line 318
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 319
    .line 320
    move-object v3, p0

    .line 321
    check-cast v3, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 322
    .line 323
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 327
    .line 328
    const/4 v6, 0x0

    .line 329
    const/16 v7, 0xe

    .line 330
    .line 331
    const/4 v4, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    const/4 v7, 0x0

    .line 338
    const/16 v8, 0x77

    .line 339
    .line 340
    const/4 v2, 0x0

    .line 341
    const/4 v3, 0x0

    .line 342
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    return-object p0

    .line 347
    :pswitch_7
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 348
    .line 349
    move-object v1, v0

    .line 350
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 351
    .line 352
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 353
    .line 354
    move-object v4, p0

    .line 355
    check-cast v4, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 356
    .line 357
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    const/16 v8, 0x77

    .line 362
    .line 363
    const/4 v2, 0x0

    .line 364
    const/4 v3, 0x0

    .line 365
    const/4 v5, 0x0

    .line 366
    const/4 v6, 0x0

    .line 367
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    return-object p0

    .line 372
    :pswitch_8
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 373
    .line 374
    move-object v1, v0

    .line 375
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 376
    .line 377
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 378
    .line 379
    move-object v3, p0

    .line 380
    check-cast v3, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 381
    .line 382
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    const/4 v7, 0x0

    .line 386
    const/16 v8, 0x7b

    .line 387
    .line 388
    const/4 v2, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    const/4 v5, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    return-object p0

    .line 397
    :pswitch_9
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 398
    .line 399
    move-object v1, v0

    .line 400
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 401
    .line 402
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 403
    .line 404
    move-object v7, p0

    .line 405
    check-cast v7, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 406
    .line 407
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    const/4 v6, 0x0

    .line 411
    const/16 v8, 0x3f

    .line 412
    .line 413
    const/4 v2, 0x0

    .line 414
    const/4 v3, 0x0

    .line 415
    const/4 v4, 0x0

    .line 416
    const/4 v5, 0x0

    .line 417
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    return-object p0

    .line 422
    :pswitch_a
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 423
    .line 424
    move-object v1, v0

    .line 425
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 426
    .line 427
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 428
    .line 429
    move-object v2, p0

    .line 430
    check-cast v2, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 431
    .line 432
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    const/4 v7, 0x0

    .line 436
    const/16 v8, 0x7d

    .line 437
    .line 438
    const/4 v3, 0x0

    .line 439
    const/4 v4, 0x0

    .line 440
    const/4 v5, 0x0

    .line 441
    const/4 v6, 0x0

    .line 442
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :pswitch_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    iget-object p1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast p1, Ljava/lang/Throwable;

    .line 453
    .line 454
    const-string v0, "Error in camera ID flow collection."

    .line 455
    .line 456
    const-string v3, "PipePresenceSrc"

    .line 457
    .line 458
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .line 460
    .line 461
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 464
    .line 465
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 466
    .line 467
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_3

    .line 474
    .line 475
    invoke-virtual {p0, v2, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->updateState(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 476
    .line 477
    .line 478
    goto :goto_2

    .line 479
    :cond_3
    const-string p0, "Ignoring error because monitoring is stopped."

    .line 480
    .line 481
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    new-instance p1, Ljava/lang/Integer;

    .line 486
    .line 487
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 488
    .line 489
    .line 490
    :goto_2
    return-object v1

    .line 491
    :pswitch_c
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$0:Ljava/lang/Object;

    .line 492
    .line 493
    move-object v1, v0

    .line 494
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 495
    .line 496
    iget-object p0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;->L$1:Ljava/lang/Object;

    .line 497
    .line 498
    move-object v5, p0

    .line 499
    check-cast v5, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 500
    .line 501
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    const/4 v7, 0x0

    .line 505
    const/16 v8, 0x6f

    .line 506
    .line 507
    const/4 v2, 0x0

    .line 508
    const/4 v3, 0x0

    .line 509
    const/4 v4, 0x0

    .line 510
    const/4 v6, 0x0

    .line 511
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    return-object p0

    .line 516
    nop

    .line 517
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
