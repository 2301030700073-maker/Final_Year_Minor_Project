.class public final Lcom/fsck/k9/Preferences$getAccountsFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 14
    iput p4, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V
    .locals 0

    .line 15
    iput p4, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p3, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 17
    iput p4, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 13
    .line 14
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, p2, v1, v0}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 27
    .line 28
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 41
    .line 42
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;

    .line 43
    .line 44
    const/16 v0, 0x1b

    .line 45
    .line 46
    invoke-direct {p1, p0, v1, p2, v0}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 55
    .line 56
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    const/16 v0, 0x1a

    .line 59
    .line 60
    invoke-direct {p1, p0, p2, v1, v0}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_3
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 65
    .line 66
    move-object v3, v1

    .line 67
    check-cast v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    const/16 v6, 0x19

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v5, p2

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :pswitch_4
    move-object v7, p2

    .line 80
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 85
    .line 86
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    const/16 p2, 0x18

    .line 89
    .line 90
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :pswitch_5
    move-object v7, p2

    .line 95
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 96
    .line 97
    move-object v4, v1

    .line 98
    check-cast v4, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 99
    .line 100
    iget-object v5, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    move-object v6, v7

    .line 103
    const/16 v7, 0x17

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 107
    .line 108
    .line 109
    return-object v3

    .line 110
    :pswitch_6
    move-object v7, p2

    .line 111
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 112
    .line 113
    move-object v4, v1

    .line 114
    check-cast v4, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 115
    .line 116
    iget-object v5, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v6, v7

    .line 119
    const/16 v7, 0x16

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :pswitch_7
    move-object v7, p2

    .line 127
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 132
    .line 133
    check-cast v1, Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 134
    .line 135
    const/16 p2, 0x15

    .line 136
    .line 137
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 138
    .line 139
    .line 140
    return-object p1

    .line 141
    :pswitch_8
    move-object v7, p2

    .line 142
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 143
    .line 144
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 145
    .line 146
    const/16 p2, 0x14

    .line 147
    .line 148
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    return-object p0

    .line 154
    :pswitch_9
    move-object v7, p2

    .line 155
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 156
    .line 157
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;

    .line 158
    .line 159
    const/16 p2, 0x13

    .line 160
    .line 161
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_a
    move-object v7, p2

    .line 168
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 169
    .line 170
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 171
    .line 172
    const/16 p2, 0x12

    .line 173
    .line 174
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_b
    move-object v7, p2

    .line 181
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 186
    .line 187
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 188
    .line 189
    const/16 p2, 0x11

    .line 190
    .line 191
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 192
    .line 193
    .line 194
    return-object p1

    .line 195
    :pswitch_c
    move-object v7, p2

    .line 196
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 197
    .line 198
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 199
    .line 200
    move-object v4, p1

    .line 201
    check-cast v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 202
    .line 203
    move-object v5, v1

    .line 204
    check-cast v5, Lkotlinx/collections/immutable/ImmutableList;

    .line 205
    .line 206
    iget v6, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 207
    .line 208
    const/16 v8, 0x10

    .line 209
    .line 210
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 211
    .line 212
    .line 213
    return-object v3

    .line 214
    :pswitch_d
    move-object v7, p2

    .line 215
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 220
    .line 221
    check-cast v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 222
    .line 223
    const/16 p2, 0xf

    .line 224
    .line 225
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 226
    .line 227
    .line 228
    return-object p1

    .line 229
    :pswitch_e
    move-object v7, p2

    .line 230
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 231
    .line 232
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 235
    .line 236
    check-cast v1, Ljava/lang/String;

    .line 237
    .line 238
    const/16 p2, 0xe

    .line 239
    .line 240
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 241
    .line 242
    .line 243
    return-object p1

    .line 244
    :pswitch_f
    move-object v7, p2

    .line 245
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 246
    .line 247
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 250
    .line 251
    check-cast v1, Landroid/net/Uri;

    .line 252
    .line 253
    const/16 p2, 0xd

    .line 254
    .line 255
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 256
    .line 257
    .line 258
    return-object p1

    .line 259
    :pswitch_10
    move-object v7, p2

    .line 260
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 261
    .line 262
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 265
    .line 266
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 267
    .line 268
    const/16 p2, 0xc

    .line 269
    .line 270
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 271
    .line 272
    .line 273
    return-object p1

    .line 274
    :pswitch_11
    move-object v7, p2

    .line 275
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 280
    .line 281
    check-cast v1, Ljava/lang/String;

    .line 282
    .line 283
    const/16 p2, 0xb

    .line 284
    .line 285
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 286
    .line 287
    .line 288
    return-object p1

    .line 289
    :pswitch_12
    move-object v7, p2

    .line 290
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 291
    .line 292
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 293
    .line 294
    move-object v4, p1

    .line 295
    check-cast v4, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 296
    .line 297
    move-object v5, v1

    .line 298
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 299
    .line 300
    iget v6, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 301
    .line 302
    const/16 v8, 0xa

    .line 303
    .line 304
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 305
    .line 306
    .line 307
    return-object v3

    .line 308
    :pswitch_13
    move-object v7, p2

    .line 309
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 310
    .line 311
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 314
    .line 315
    check-cast v1, Landroid/app/PendingIntent;

    .line 316
    .line 317
    const/16 p2, 0x9

    .line 318
    .line 319
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 320
    .line 321
    .line 322
    return-object p1

    .line 323
    :pswitch_14
    move-object v7, p2

    .line 324
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 325
    .line 326
    check-cast v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 327
    .line 328
    const/16 p2, 0x8

    .line 329
    .line 330
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 331
    .line 332
    .line 333
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_15
    move-object v7, p2

    .line 337
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 338
    .line 339
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 342
    .line 343
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 344
    .line 345
    const/4 p2, 0x7

    .line 346
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 347
    .line 348
    .line 349
    return-object p1

    .line 350
    :pswitch_16
    move-object v7, p2

    .line 351
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 352
    .line 353
    check-cast v1, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;

    .line 354
    .line 355
    const/4 p2, 0x6

    .line 356
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 357
    .line 358
    .line 359
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 360
    .line 361
    return-object p0

    .line 362
    :pswitch_17
    move-object v7, p2

    .line 363
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 364
    .line 365
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    move-object v4, p1

    .line 368
    check-cast v4, Lcom/fsck/k9/notification/NotificationActionService;

    .line 369
    .line 370
    move-object v5, v1

    .line 371
    check-cast v5, Landroid/content/Intent;

    .line 372
    .line 373
    iget v6, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 374
    .line 375
    const/4 v8, 0x5

    .line 376
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 377
    .line 378
    .line 379
    return-object v3

    .line 380
    :pswitch_18
    move-object v7, p2

    .line 381
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 382
    .line 383
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 386
    .line 387
    check-cast v1, Lcom/fsck/k9/controller/push/PushController;

    .line 388
    .line 389
    const/4 p2, 0x4

    .line 390
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 391
    .line 392
    .line 393
    return-object p1

    .line 394
    :pswitch_19
    move-object v7, p2

    .line 395
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 396
    .line 397
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast p0, Lcom/fsck/k9/account/AccountRemover;

    .line 400
    .line 401
    check-cast v1, Ljava/lang/String;

    .line 402
    .line 403
    const/4 p2, 0x3

    .line 404
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 405
    .line 406
    .line 407
    return-object p1

    .line 408
    :pswitch_1a
    move-object v7, p2

    .line 409
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 410
    .line 411
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 414
    .line 415
    check-cast v1, Ljava/lang/String;

    .line 416
    .line 417
    const/4 p2, 0x2

    .line 418
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 419
    .line 420
    .line 421
    return-object p1

    .line 422
    :pswitch_1b
    move-object v7, p2

    .line 423
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 424
    .line 425
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;

    .line 428
    .line 429
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 430
    .line 431
    const/4 p2, 0x1

    .line 432
    invoke-direct {p1, p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 433
    .line 434
    .line 435
    return-object p1

    .line 436
    :pswitch_1c
    move-object v7, p2

    .line 437
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 438
    .line 439
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 440
    .line 441
    const/4 p2, 0x0

    .line 442
    invoke-direct {p0, v1, v7, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 443
    .line 444
    .line 445
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 446
    .line 447
    return-object p0

    .line 448
    nop

    .line 449
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 25
    .line 26
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 55
    .line 56
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 157
    .line 158
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 165
    .line 166
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 172
    .line 173
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 180
    .line 181
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 202
    .line 203
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    return-object v2

    .line 215
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 216
    .line 217
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 218
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 224
    .line 225
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 231
    .line 232
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 239
    .line 240
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 246
    .line 247
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 248
    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 254
    .line 255
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    return-object p0

    .line 260
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 261
    .line 262
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 263
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 276
    .line 277
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 278
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 284
    .line 285
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    return-object p0

    .line 290
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 291
    .line 292
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 293
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 299
    .line 300
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    return-object v2

    .line 304
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 305
    .line 306
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 307
    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 313
    .line 314
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    return-object p0

    .line 319
    :pswitch_14
    check-cast p1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 320
    .line 321
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 322
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 328
    .line 329
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    return-object p0

    .line 334
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 335
    .line 336
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 337
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 343
    .line 344
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    return-object p0

    .line 349
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 350
    .line 351
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 352
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 358
    .line 359
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    return-object p0

    .line 364
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 365
    .line 366
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 367
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 373
    .line 374
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    return-object v2

    .line 378
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 379
    .line 380
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 381
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 387
    .line 388
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    return-object p0

    .line 393
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 394
    .line 395
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 396
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 402
    .line 403
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    return-object p0

    .line 408
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 409
    .line 410
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 411
    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 417
    .line 418
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    return-object p0

    .line 423
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 424
    .line 425
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 426
    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 432
    .line 433
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    return-object p0

    .line 438
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 439
    .line 440
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 441
    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 447
    .line 448
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    return-object p0

    .line 453
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 37
    .line 38
    iget-object v3, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 39
    .line 40
    new-instance v5, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;

    .line 41
    .line 42
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    invoke-direct {v5, v2, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 50
    .line 51
    invoke-virtual {v3, v5, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-object v5, v1

    .line 55
    :goto_0
    return-object v5

    .line 56
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    if-ne v6, v4, :cond_2

    .line 63
    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 80
    .line 81
    iget-object v7, v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateGeneralSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 82
    .line 83
    iget-object v6, v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 84
    .line 85
    iget-object v8, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;

    .line 88
    .line 89
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    instance-of v9, v8, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateName;

    .line 95
    .line 96
    if-eqz v9, :cond_4

    .line 97
    .line 98
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {v2, v8, v3}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v6, v2, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;->updateAccountProfile(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    instance-of v3, v8, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateColor;

    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-direct {v2, v8, v4}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v6, v2, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;->updateAccountProfile(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    instance-of v3, v8, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;

    .line 123
    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {v3, v8, v2}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v6, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;->updateAccountProfile(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_1
    if-ne v0, v1, :cond_6

    .line 136
    .line 137
    move-object v5, v1

    .line 138
    goto :goto_3

    .line 139
    :cond_6
    :goto_2
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-object v5

    .line 146
    :pswitch_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    .line 148
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 151
    .line 152
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 153
    .line 154
    iget v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 155
    .line 156
    if-eqz v6, :cond_9

    .line 157
    .line 158
    if-ne v6, v4, :cond_8

    .line 159
    .line 160
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v0, p1

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_8
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 167
    .line 168
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v6, v2, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateAvatarImage:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 176
    .line 177
    iget-object v7, v2, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 178
    .line 179
    iget-object v8, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;

    .line 182
    .line 183
    iget-object v8, v8, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;->uri:Lcom/eygraber/uri/uris/StringUri;

    .line 184
    .line 185
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 186
    .line 187
    invoke-virtual {v6, v7, v8, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;->invoke(Lnet/thunderbird/feature/account/AccountId;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-ne v0, v3, :cond_a

    .line 192
    .line 193
    move-object v5, v3

    .line 194
    goto :goto_6

    .line 195
    :cond_a
    :goto_4
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 201
    .line 202
    if-eqz v3, :cond_b

    .line 203
    .line 204
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 205
    .line 206
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 209
    .line 210
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;

    .line 211
    .line 212
    invoke-direct {v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateSetting(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;)V

    .line 216
    .line 217
    .line 218
    :goto_5
    move-object v5, v1

    .line 219
    goto :goto_6

    .line 220
    :cond_b
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 221
    .line 222
    if-eqz v3, :cond_c

    .line 223
    .line 224
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 225
    .line 226
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 229
    .line 230
    invoke-static {v2, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 235
    .line 236
    .line 237
    :goto_6
    return-object v5

    .line 238
    :pswitch_2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 239
    .line 240
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 241
    .line 242
    if-eqz v2, :cond_e

    .line 243
    .line 244
    if-eq v2, v4, :cond_d

    .line 245
    .line 246
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 247
    .line 248
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_d
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    throw v0

    .line 257
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 263
    .line 264
    iget-object v2, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 265
    .line 266
    new-instance v3, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;

    .line 267
    .line 268
    iget-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 271
    .line 272
    invoke-direct {v3, v4, v5}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 273
    .line 274
    .line 275
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 276
    .line 277
    invoke-virtual {v2, v3, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-object v5, v1

    .line 281
    :goto_7
    return-object v5

    .line 282
    :pswitch_3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 283
    .line 284
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 285
    .line 286
    if-eqz v2, :cond_10

    .line 287
    .line 288
    if-ne v2, v4, :cond_f

    .line 289
    .line 290
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 295
    .line 296
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;

    .line 306
    .line 307
    iget-object v2, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_effect:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 308
    .line 309
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 310
    .line 311
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 312
    .line 313
    invoke-virtual {v2, v3, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-ne v0, v1, :cond_11

    .line 318
    .line 319
    move-object v5, v1

    .line 320
    goto :goto_9

    .line 321
    :cond_11
    :goto_8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 322
    .line 323
    :goto_9
    return-object v5

    .line 324
    :pswitch_4
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 325
    .line 326
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 327
    .line 328
    if-eqz v2, :cond_13

    .line 329
    .line 330
    if-ne v2, v4, :cond_12

    .line 331
    .line 332
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_12
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 337
    .line 338
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 348
    .line 349
    new-instance v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    invoke-direct {v6, v2, v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 352
    .line 353
    .line 354
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 359
    .line 360
    invoke-direct {v6, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 361
    .line 362
    .line 363
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    new-instance v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 368
    .line 369
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 372
    .line 373
    invoke-direct {v3, v6, v5}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 374
    .line 375
    .line 376
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 377
    .line 378
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-ne v0, v1, :cond_14

    .line 383
    .line 384
    move-object v5, v1

    .line 385
    goto :goto_b

    .line 386
    :cond_14
    :goto_a
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 387
    .line 388
    :goto_b
    return-object v5

    .line 389
    :pswitch_5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 390
    .line 391
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 392
    .line 393
    if-eqz v2, :cond_16

    .line 394
    .line 395
    if-ne v2, v4, :cond_15

    .line 396
    .line 397
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 402
    .line 403
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v2, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 413
    .line 414
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->_effect:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 415
    .line 416
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 417
    .line 418
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 419
    .line 420
    invoke-virtual {v2, v3, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    if-ne v0, v1, :cond_17

    .line 425
    .line 426
    move-object v5, v1

    .line 427
    goto :goto_d

    .line 428
    :cond_17
    :goto_c
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    .line 430
    :goto_d
    return-object v5

    .line 431
    :pswitch_6
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 432
    .line 433
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v3, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 436
    .line 437
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 438
    .line 439
    iget v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 440
    .line 441
    if-eqz v7, :cond_19

    .line 442
    .line 443
    if-ne v7, v4, :cond_18

    .line 444
    .line 445
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 450
    .line 451
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto :goto_f

    .line 455
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 459
    .line 460
    const/16 v7, 0x1f4

    .line 461
    .line 462
    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 463
    .line 464
    invoke-static {v7, v8}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 465
    .line 466
    .line 467
    move-result-wide v7

    .line 468
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 469
    .line 470
    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/JobKt;->delay-VtjQ1oo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-ne v0, v6, :cond_1a

    .line 475
    .line 476
    move-object v5, v6

    .line 477
    goto :goto_f

    .line 478
    :cond_1a
    :goto_e
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;

    .line 479
    .line 480
    invoke-direct {v0, v2, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v4, Lorg/slf4j/event/EventRecodingLogger;

    .line 486
    .line 487
    if-eqz v4, :cond_1b

    .line 488
    .line 489
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 492
    .line 493
    if-eqz v4, :cond_1b

    .line 494
    .line 495
    iget-object v6, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v6, Ljava/lang/String;

    .line 498
    .line 499
    invoke-static {v4, v6, v5, v0, v2}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 500
    .line 501
    .line 502
    :cond_1b
    iget-object v0, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v0, Ljava/util/Map;

    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 519
    .line 520
    if-eqz v0, :cond_1c

    .line 521
    .line 522
    iget-object v0, v0, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;->listeners:Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;

    .line 523
    .line 524
    iget-object v0, v0, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;->onEnter:Lkotlin/jvm/functions/Function3;

    .line 525
    .line 526
    if-eqz v0, :cond_1c

    .line 527
    .line 528
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->getCurrentStateSnapshot()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-interface {v0, v5, v5, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    :cond_1c
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 536
    .line 537
    :goto_f
    return-object v5

    .line 538
    :pswitch_7
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 539
    .line 540
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 541
    .line 542
    if-eqz v2, :cond_1e

    .line 543
    .line 544
    if-ne v2, v4, :cond_1d

    .line 545
    .line 546
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v0, p1

    .line 550
    .line 551
    goto :goto_10

    .line 552
    :cond_1d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 553
    .line 554
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    goto :goto_11

    .line 558
    :cond_1e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v2, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 564
    .line 565
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v3, Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 568
    .line 569
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 570
    .line 571
    invoke-static {v2, v3, v0}, Lnet/thunderbird/app/common/account/AccountCreator;->access$create(Lnet/thunderbird/app/common/account/AccountCreator;Lapp/k9mail/feature/account/common/domain/entity/Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-ne v0, v1, :cond_1f

    .line 576
    .line 577
    move-object v5, v1

    .line 578
    goto :goto_11

    .line 579
    :cond_1f
    :goto_10
    check-cast v0, Ljava/lang/String;

    .line 580
    .line 581
    new-instance v5, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Success;

    .line 582
    .line 583
    invoke-direct {v5, v0}, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Success;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    :goto_11
    return-object v5

    .line 587
    :pswitch_8
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 588
    .line 589
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 590
    .line 591
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 592
    .line 593
    if-eqz v3, :cond_21

    .line 594
    .line 595
    if-ne v3, v4, :cond_20

    .line 596
    .line 597
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    goto :goto_12

    .line 601
    :cond_20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 602
    .line 603
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    goto :goto_13

    .line 607
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 613
    .line 614
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 615
    .line 616
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 617
    .line 618
    invoke-interface {v3, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    if-ne v0, v2, :cond_22

    .line 623
    .line 624
    move-object v5, v2

    .line 625
    goto :goto_13

    .line 626
    :cond_22
    :goto_12
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 627
    .line 628
    :goto_13
    return-object v5

    .line 629
    :pswitch_9
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 632
    .line 633
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 634
    .line 635
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 636
    .line 637
    if-eqz v3, :cond_24

    .line 638
    .line 639
    if-ne v3, v4, :cond_23

    .line 640
    .line 641
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    goto :goto_14

    .line 645
    :cond_23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 646
    .line 647
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    goto :goto_15

    .line 651
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v3, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;

    .line 657
    .line 658
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 659
    .line 660
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 661
    .line 662
    invoke-virtual {v3, v1, v0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->flowCollect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    if-ne v0, v2, :cond_25

    .line 667
    .line 668
    move-object v5, v2

    .line 669
    goto :goto_15

    .line 670
    :cond_25
    :goto_14
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 671
    .line 672
    :goto_15
    return-object v5

    .line 673
    :pswitch_a
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 676
    .line 677
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 678
    .line 679
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 680
    .line 681
    if-eqz v3, :cond_27

    .line 682
    .line 683
    if-ne v3, v4, :cond_26

    .line 684
    .line 685
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    goto :goto_16

    .line 689
    :cond_26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 690
    .line 691
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto :goto_17

    .line 695
    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 699
    .line 700
    check-cast v3, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 701
    .line 702
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 703
    .line 704
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 705
    .line 706
    invoke-virtual {v3, v1, v0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->collectTo(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    if-ne v0, v2, :cond_28

    .line 711
    .line 712
    move-object v5, v2

    .line 713
    goto :goto_17

    .line 714
    :cond_28
    :goto_16
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 715
    .line 716
    :goto_17
    return-object v5

    .line 717
    :pswitch_b
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 718
    .line 719
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 720
    .line 721
    if-eqz v2, :cond_2a

    .line 722
    .line 723
    if-ne v2, v4, :cond_29

    .line 724
    .line 725
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    goto :goto_18

    .line 729
    :cond_29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 730
    .line 731
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    goto :goto_19

    .line 735
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 741
    .line 742
    sget v6, Lcom/skydoves/landscapist/ImageLoadKt;->$r8$clinit:I

    .line 743
    .line 744
    new-instance v6, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;

    .line 745
    .line 746
    invoke-direct {v6, v2, v5}, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 747
    .line 748
    .line 749
    new-instance v2, Lkotlinx/coroutines/flow/SafeFlow;

    .line 750
    .line 751
    invoke-direct {v2, v3, v6}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    new-instance v6, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$2;

    .line 755
    .line 756
    const/4 v7, 0x3

    .line 757
    invoke-direct {v6, v7, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 758
    .line 759
    .line 760
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 761
    .line 762
    invoke-direct {v5, v2, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 763
    .line 764
    .line 765
    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    sget-object v5, Lcom/skydoves/landscapist/platforms/PlatformKt;->platformCoroutineDispatcher:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 770
    .line 771
    invoke-static {v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    new-instance v5, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 776
    .line 777
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 780
    .line 781
    invoke-direct {v5, v3, v6}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 785
    .line 786
    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    if-ne v0, v1, :cond_2b

    .line 791
    .line 792
    move-object v5, v1

    .line 793
    goto :goto_19

    .line 794
    :cond_2b
    :goto_18
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 795
    .line 796
    :goto_19
    return-object v5

    .line 797
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 803
    .line 804
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v2, Lkotlinx/collections/immutable/ImmutableList;

    .line 807
    .line 808
    iget v0, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 809
    .line 810
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->setState(ILjava/util/List;)V

    .line 811
    .line 812
    .line 813
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 814
    .line 815
    return-object v0

    .line 816
    :pswitch_d
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 819
    .line 820
    iget-object v2, v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->uiStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 821
    .line 822
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 823
    .line 824
    iget v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 825
    .line 826
    if-eqz v6, :cond_2d

    .line 827
    .line 828
    if-ne v6, v4, :cond_2c

    .line 829
    .line 830
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    goto :goto_1a

    .line 834
    :cond_2c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 835
    .line 836
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    goto :goto_1b

    .line 840
    :cond_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 844
    .line 845
    check-cast v6, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 846
    .line 847
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2, v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 854
    .line 855
    const-wide/16 v6, 0xbb8

    .line 856
    .line 857
    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    if-ne v0, v3, :cond_2e

    .line 862
    .line 863
    move-object v5, v3

    .line 864
    goto :goto_1b

    .line 865
    :cond_2e
    :goto_1a
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Idle;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Idle;

    .line 866
    .line 867
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v2, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    iput-object v5, v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 874
    .line 875
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 876
    .line 877
    :goto_1b
    return-object v5

    .line 878
    :pswitch_e
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 881
    .line 882
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 883
    .line 884
    iget v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 885
    .line 886
    if-eqz v6, :cond_30

    .line 887
    .line 888
    if-ne v6, v4, :cond_2f

    .line 889
    .line 890
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .line 892
    .line 893
    goto :goto_1c

    .line 894
    :catch_0
    move-exception v0

    .line 895
    goto :goto_1d

    .line 896
    :cond_2f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 897
    .line 898
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    goto :goto_1f

    .line 902
    :cond_30
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$setExportingState(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;)V

    .line 906
    .line 907
    .line 908
    :try_start_1
    iget-object v5, v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 909
    .line 910
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v6, Ljava/lang/String;

    .line 913
    .line 914
    sget-object v7, Lcom/eygraber/uri/Uri;->Companion:Lcom/eygraber/uri/Uri$Companion;

    .line 915
    .line 916
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    new-instance v7, Lcom/eygraber/uri/uris/StringUri;

    .line 920
    .line 921
    invoke-direct {v7, v6}, Lcom/eygraber/uri/uris/StringUri;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 925
    .line 926
    check-cast v5, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 927
    .line 928
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    invoke-static {v5, v7, v0}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->export$suspendImpl(Lnet/thunderbird/core/logging/file/AndroidFileLogSink;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    if-ne v0, v2, :cond_31

    .line 936
    .line 937
    move-object v5, v2

    .line 938
    goto :goto_1f

    .line 939
    :cond_31
    :goto_1c
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;

    .line 940
    .line 941
    invoke-static {v1, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 942
    .line 943
    .line 944
    goto :goto_1e

    .line 945
    :goto_1d
    const-string v2, "Failed to write log to URI"

    .line 946
    .line 947
    new-array v3, v3, [Ljava/lang/Object;

    .line 948
    .line 949
    invoke-static {v0, v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    .line 951
    .line 952
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;

    .line 953
    .line 954
    invoke-static {v1, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V

    .line 955
    .line 956
    .line 957
    :goto_1e
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 958
    .line 959
    :goto_1f
    return-object v5

    .line 960
    :pswitch_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 961
    .line 962
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 963
    .line 964
    check-cast v2, Landroid/net/Uri;

    .line 965
    .line 966
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast v6, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 969
    .line 970
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 971
    .line 972
    iget v8, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 973
    .line 974
    if-eqz v8, :cond_33

    .line 975
    .line 976
    if-ne v8, v4, :cond_32

    .line 977
    .line 978
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 979
    .line 980
    .line 981
    goto :goto_21

    .line 982
    :catch_1
    move-exception v0

    .line 983
    goto :goto_23

    .line 984
    :cond_32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 985
    .line 986
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    goto :goto_24

    .line 990
    :cond_33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    invoke-static {v6}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$setExportingState(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;)V

    .line 994
    .line 995
    .line 996
    :try_start_3
    iget-object v8, v6, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->logFileWriter:Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 997
    .line 998
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 999
    .line 1000
    iget-object v9, v8, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1001
    .line 1002
    new-instance v10, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 1003
    .line 1004
    const/16 v11, 0xf

    .line 1005
    .line 1006
    invoke-direct {v10, v8, v2, v5, v11}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    if-ne v0, v7, :cond_34

    .line 1014
    .line 1015
    goto :goto_20

    .line 1016
    :cond_34
    move-object v0, v1

    .line 1017
    :goto_20
    if-ne v0, v7, :cond_35

    .line 1018
    .line 1019
    move-object v5, v7

    .line 1020
    goto :goto_24

    .line 1021
    :cond_35
    :goto_21
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;

    .line 1022
    .line 1023
    invoke-static {v6, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1024
    .line 1025
    .line 1026
    :goto_22
    move-object v5, v1

    .line 1027
    goto :goto_24

    .line 1028
    :goto_23
    const-string v5, "Failed to write log to URI: %s"

    .line 1029
    .line 1030
    new-array v4, v4, [Ljava/lang/Object;

    .line 1031
    .line 1032
    aput-object v2, v4, v3

    .line 1033
    .line 1034
    invoke-static {v0, v5, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;

    .line 1038
    .line 1039
    invoke-static {v6, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_22

    .line 1043
    :goto_24
    return-object v5

    .line 1044
    :pswitch_10
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 1047
    .line 1048
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1049
    .line 1050
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1051
    .line 1052
    if-eqz v3, :cond_37

    .line 1053
    .line 1054
    if-ne v3, v4, :cond_36

    .line 1055
    .line 1056
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v0, p1

    .line 1060
    .line 1061
    goto :goto_25

    .line 1062
    :cond_36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1063
    .line 1064
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_26

    .line 1068
    :cond_37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    iget-object v3, v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1072
    .line 1073
    new-instance v6, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 1074
    .line 1075
    iget-object v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1078
    .line 1079
    const/16 v8, 0x9

    .line 1080
    .line 1081
    invoke-direct {v6, v1, v7, v5, v8}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1082
    .line 1083
    .line 1084
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1085
    .line 1086
    invoke-static {v3, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    if-ne v0, v2, :cond_38

    .line 1091
    .line 1092
    move-object v5, v2

    .line 1093
    goto :goto_26

    .line 1094
    :cond_38
    :goto_25
    check-cast v0, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;

    .line 1095
    .line 1096
    iget-object v1, v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->foldersLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 1097
    .line 1098
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 1099
    .line 1100
    .line 1101
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1102
    .line 1103
    :goto_26
    return-object v5

    .line 1104
    :pswitch_11
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 1107
    .line 1108
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1109
    .line 1110
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1111
    .line 1112
    if-eqz v3, :cond_3a

    .line 1113
    .line 1114
    if-ne v3, v4, :cond_39

    .line 1115
    .line 1116
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1117
    .line 1118
    .line 1119
    move-object/from16 v0, p1

    .line 1120
    .line 1121
    goto :goto_27

    .line 1122
    :cond_39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1123
    .line 1124
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_28

    .line 1128
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v3, v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1132
    .line 1133
    new-instance v6, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 1134
    .line 1135
    iget-object v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast v7, Ljava/lang/String;

    .line 1138
    .line 1139
    const/16 v8, 0x8

    .line 1140
    .line 1141
    invoke-direct {v6, v1, v7, v5, v8}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1142
    .line 1143
    .line 1144
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1145
    .line 1146
    invoke-static {v3, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    if-ne v0, v2, :cond_3b

    .line 1151
    .line 1152
    move-object v5, v2

    .line 1153
    goto :goto_28

    .line 1154
    :cond_3b
    :goto_27
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1155
    .line 1156
    iget-object v1, v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 1157
    .line 1158
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 1159
    .line 1160
    .line 1161
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1162
    .line 1163
    :goto_28
    return-object v5

    .line 1164
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1168
    .line 1169
    check-cast v1, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 1170
    .line 1171
    iget-object v1, v1, Lcom/fsck/k9/ui/settings/SettingsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1172
    .line 1173
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1174
    .line 1175
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1176
    .line 1177
    iget v0, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1178
    .line 1179
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 1180
    .line 1181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    .line 1183
    .line 1184
    iget-object v3, v1, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 1185
    .line 1186
    monitor-enter v3

    .line 1187
    :try_start_4
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v4

    .line 1191
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v5

    .line 1195
    invoke-static {v2, v5, v4, v0}, Lcom/fsck/k9/Preferences;->moveToPosition(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;I)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->loadAccounts()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1202
    .line 1203
    .line 1204
    monitor-exit v3

    .line 1205
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->notifyAccountsChangeListeners()V

    .line 1206
    .line 1207
    .line 1208
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1209
    .line 1210
    return-object v0

    .line 1211
    :catchall_0
    move-exception v0

    .line 1212
    monitor-exit v3

    .line 1213
    throw v0

    .line 1214
    :pswitch_13
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1215
    .line 1216
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1217
    .line 1218
    if-eqz v2, :cond_3d

    .line 1219
    .line 1220
    if-ne v2, v4, :cond_3c

    .line 1221
    .line 1222
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1223
    .line 1224
    .line 1225
    goto :goto_29

    .line 1226
    :cond_3c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1227
    .line 1228
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    goto :goto_2a

    .line 1232
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1233
    .line 1234
    .line 1235
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v2, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 1238
    .line 1239
    iget-object v2, v2, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1240
    .line 1241
    new-instance v3, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$ShowCryptoKeys;

    .line 1242
    .line 1243
    iget-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1244
    .line 1245
    check-cast v5, Landroid/app/PendingIntent;

    .line 1246
    .line 1247
    invoke-direct {v3, v5}, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$ShowCryptoKeys;-><init>(Landroid/app/PendingIntent;)V

    .line 1248
    .line 1249
    .line 1250
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1251
    .line 1252
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    if-ne v0, v1, :cond_3e

    .line 1257
    .line 1258
    move-object v5, v1

    .line 1259
    goto :goto_2a

    .line 1260
    :cond_3e
    :goto_29
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1261
    .line 1262
    :goto_2a
    return-object v5

    .line 1263
    :pswitch_14
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1264
    .line 1265
    check-cast v1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 1266
    .line 1267
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1268
    .line 1269
    iget v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1270
    .line 1271
    if-eqz v3, :cond_40

    .line 1272
    .line 1273
    if-ne v3, v4, :cond_3f

    .line 1274
    .line 1275
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    goto :goto_2b

    .line 1279
    :cond_3f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1280
    .line 1281
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_2c

    .line 1285
    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 1289
    .line 1290
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v6, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 1293
    .line 1294
    const/16 v7, 0x11

    .line 1295
    .line 1296
    invoke-direct {v3, v1, v6, v5, v7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1297
    .line 1298
    .line 1299
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1300
    .line 1301
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1302
    .line 1303
    invoke-static {v3, v0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    if-ne v0, v2, :cond_41

    .line 1308
    .line 1309
    move-object v5, v2

    .line 1310
    goto :goto_2c

    .line 1311
    :cond_41
    :goto_2b
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1312
    .line 1313
    :goto_2c
    return-object v5

    .line 1314
    :pswitch_15
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1315
    .line 1316
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1317
    .line 1318
    if-eqz v2, :cond_43

    .line 1319
    .line 1320
    if-ne v2, v4, :cond_42

    .line 1321
    .line 1322
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1323
    .line 1324
    .line 1325
    goto :goto_2d

    .line 1326
    :cond_42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1327
    .line 1328
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    goto :goto_2e

    .line 1332
    :cond_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1333
    .line 1334
    .line 1335
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1336
    .line 1337
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 1338
    .line 1339
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1342
    .line 1343
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1344
    .line 1345
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    if-ne v0, v1, :cond_44

    .line 1350
    .line 1351
    move-object v5, v1

    .line 1352
    goto :goto_2e

    .line 1353
    :cond_44
    :goto_2d
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1354
    .line 1355
    :goto_2e
    return-object v5

    .line 1356
    :pswitch_16
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1357
    .line 1358
    check-cast v1, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;

    .line 1359
    .line 1360
    iget-object v2, v1, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;->displayInboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 1361
    .line 1362
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1363
    .line 1364
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1365
    .line 1366
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1367
    .line 1368
    iget v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1369
    .line 1370
    if-eqz v7, :cond_46

    .line 1371
    .line 1372
    if-ne v7, v4, :cond_45

    .line 1373
    .line 1374
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1375
    .line 1376
    .line 1377
    goto :goto_2f

    .line 1378
    :cond_45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1379
    .line 1380
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    goto :goto_30

    .line 1384
    :cond_46
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v2}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v7

    .line 1391
    check-cast v7, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1392
    .line 1393
    iget-boolean v7, v7, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowStarredCount:Z

    .line 1394
    .line 1395
    invoke-virtual {v2}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v2

    .line 1399
    check-cast v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 1400
    .line 1401
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 1402
    .line 1403
    iget-object v1, v1, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;->displayVisualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1404
    .line 1405
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 1406
    .line 1407
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1412
    .line 1413
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 1414
    .line 1415
    new-instance v8, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 1416
    .line 1417
    invoke-direct {v8, v2, v7, v1}, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;-><init>(ZZZ)V

    .line 1418
    .line 1419
    .line 1420
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1421
    .line 1422
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1423
    .line 1424
    invoke-interface {v3, v8, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    if-ne v0, v6, :cond_47

    .line 1429
    .line 1430
    move-object v5, v6

    .line 1431
    goto :goto_30

    .line 1432
    :cond_47
    :goto_2f
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1433
    .line 1434
    :goto_30
    return-object v5

    .line 1435
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1439
    .line 1440
    check-cast v1, Lcom/fsck/k9/notification/NotificationActionService;

    .line 1441
    .line 1442
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v2, Landroid/content/Intent;

    .line 1445
    .line 1446
    sget v5, Lcom/fsck/k9/notification/NotificationActionService;->$r8$clinit:I

    .line 1447
    .line 1448
    const-string v5, "Invalid message reference: %s"

    .line 1449
    .line 1450
    const-string v6, "messageReference"

    .line 1451
    .line 1452
    const-string v7, "messageReferences"

    .line 1453
    .line 1454
    const-string v8, "accountUuid"

    .line 1455
    .line 1456
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v8

    .line 1460
    if-nez v8, :cond_48

    .line 1461
    .line 1462
    const-string v2, "Missing account UUID."

    .line 1463
    .line 1464
    new-array v3, v3, [Ljava/lang/Object;

    .line 1465
    .line 1466
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    .line 1468
    .line 1469
    goto/16 :goto_35

    .line 1470
    .line 1471
    :cond_48
    iget-object v9, v1, Lcom/fsck/k9/notification/NotificationActionService;->preferences$delegate:Lkotlin/Lazy;

    .line 1472
    .line 1473
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v9

    .line 1477
    check-cast v9, Lcom/fsck/k9/Preferences;

    .line 1478
    .line 1479
    invoke-virtual {v9, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v11

    .line 1483
    if-nez v11, :cond_49

    .line 1484
    .line 1485
    const-string v2, "Could not find account for notification action."

    .line 1486
    .line 1487
    new-array v3, v3, [Ljava/lang/Object;

    .line 1488
    .line 1489
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    .line 1491
    .line 1492
    goto/16 :goto_35

    .line 1493
    .line 1494
    :cond_49
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v8

    .line 1498
    if-eqz v8, :cond_52

    .line 1499
    .line 1500
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 1501
    .line 1502
    .line 1503
    move-result v9

    .line 1504
    sparse-switch v9, :sswitch_data_0

    .line 1505
    .line 1506
    .line 1507
    goto/16 :goto_33

    .line 1508
    .line 1509
    :sswitch_0
    const-string v9, "ACTION_DISMISS"

    .line 1510
    .line 1511
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v8

    .line 1515
    if-nez v8, :cond_4a

    .line 1516
    .line 1517
    goto/16 :goto_33

    .line 1518
    .line 1519
    :cond_4a
    const-string v8, "Notification dismissed"

    .line 1520
    .line 1521
    new-array v9, v3, [Ljava/lang/Object;

    .line 1522
    .line 1523
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    .line 1525
    .line 1526
    goto/16 :goto_33

    .line 1527
    .line 1528
    :sswitch_1
    const-string v9, "ACTION_STAR"

    .line 1529
    .line 1530
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1531
    .line 1532
    .line 1533
    move-result v8

    .line 1534
    if-nez v8, :cond_4b

    .line 1535
    .line 1536
    goto/16 :goto_33

    .line 1537
    .line 1538
    :cond_4b
    const-string v8, "NotificationActionService starring messages"

    .line 1539
    .line 1540
    new-array v9, v3, [Ljava/lang/Object;

    .line 1541
    .line 1542
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v8

    .line 1549
    invoke-static {v8}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v8

    .line 1553
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v8

    .line 1557
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v9

    .line 1561
    if-eqz v9, :cond_52

    .line 1562
    .line 1563
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v9

    .line 1567
    check-cast v9, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1568
    .line 1569
    iget-wide v12, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 1570
    .line 1571
    iget-object v14, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 1572
    .line 1573
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v10

    .line 1577
    sget-object v15, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 1578
    .line 1579
    invoke-virtual/range {v10 .. v15}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;)V

    .line 1580
    .line 1581
    .line 1582
    goto :goto_31

    .line 1583
    :sswitch_2
    const-string v9, "ACTION_SPAM"

    .line 1584
    .line 1585
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v8

    .line 1589
    if-nez v8, :cond_4c

    .line 1590
    .line 1591
    goto/16 :goto_33

    .line 1592
    .line 1593
    :cond_4c
    const-string v8, "NotificationActionService moving messages to spam"

    .line 1594
    .line 1595
    new-array v9, v3, [Ljava/lang/Object;

    .line 1596
    .line 1597
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v8

    .line 1604
    invoke-static {v8}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v9

    .line 1608
    if-nez v9, :cond_4d

    .line 1609
    .line 1610
    new-array v9, v4, [Ljava/lang/Object;

    .line 1611
    .line 1612
    aput-object v8, v9, v3

    .line 1613
    .line 1614
    invoke-static {v5, v9}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_33

    .line 1618
    .line 1619
    :cond_4d
    invoke-virtual {v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v8

    .line 1623
    if-nez v8, :cond_4e

    .line 1624
    .line 1625
    const-string v8, "No spam folder configured"

    .line 1626
    .line 1627
    new-array v9, v3, [Ljava/lang/Object;

    .line 1628
    .line 1629
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1630
    .line 1631
    .line 1632
    goto/16 :goto_33

    .line 1633
    .line 1634
    :cond_4e
    iget-object v10, v1, Lcom/fsck/k9/notification/NotificationActionService;->interactionPreferences$delegate:Lkotlin/Lazy;

    .line 1635
    .line 1636
    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v10

    .line 1640
    check-cast v10, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 1641
    .line 1642
    invoke-virtual {v10}, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v10

    .line 1646
    check-cast v10, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 1647
    .line 1648
    iget-boolean v10, v10, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 1649
    .line 1650
    if-nez v10, :cond_52

    .line 1651
    .line 1652
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v10

    .line 1656
    invoke-virtual {v10, v11}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v10

    .line 1660
    invoke-interface {v10}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 1661
    .line 1662
    .line 1663
    move-result v10

    .line 1664
    if-eqz v10, :cond_52

    .line 1665
    .line 1666
    iget-wide v12, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 1667
    .line 1668
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v10

    .line 1672
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 1673
    .line 1674
    .line 1675
    move-result-wide v15

    .line 1676
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1677
    .line 1678
    .line 1679
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v14

    .line 1683
    invoke-virtual/range {v10 .. v16}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 1684
    .line 1685
    .line 1686
    goto/16 :goto_33

    .line 1687
    .line 1688
    :sswitch_3
    const-string v9, "ACTION_MARK_AS_READ"

    .line 1689
    .line 1690
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v8

    .line 1694
    if-nez v8, :cond_4f

    .line 1695
    .line 1696
    goto/16 :goto_33

    .line 1697
    .line 1698
    :cond_4f
    const-string v8, "NotificationActionService marking messages as read"

    .line 1699
    .line 1700
    new-array v9, v3, [Ljava/lang/Object;

    .line 1701
    .line 1702
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v8

    .line 1709
    invoke-static {v8}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v8

    .line 1713
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v8

    .line 1717
    :goto_32
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1718
    .line 1719
    .line 1720
    move-result v9

    .line 1721
    if-eqz v9, :cond_52

    .line 1722
    .line 1723
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v9

    .line 1727
    check-cast v9, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1728
    .line 1729
    iget-wide v12, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 1730
    .line 1731
    iget-object v14, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 1732
    .line 1733
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v10

    .line 1737
    sget-object v15, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 1738
    .line 1739
    invoke-virtual/range {v10 .. v15}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;)V

    .line 1740
    .line 1741
    .line 1742
    goto :goto_32

    .line 1743
    :sswitch_4
    const-string v9, "ACTION_ARCHIVE"

    .line 1744
    .line 1745
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1746
    .line 1747
    .line 1748
    move-result v8

    .line 1749
    if-nez v8, :cond_50

    .line 1750
    .line 1751
    goto :goto_33

    .line 1752
    :cond_50
    const-string v8, "NotificationActionService archiving messages"

    .line 1753
    .line 1754
    new-array v9, v3, [Ljava/lang/Object;

    .line 1755
    .line 1756
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v8

    .line 1763
    invoke-static {v8}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v8

    .line 1767
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v9

    .line 1771
    iget-object v9, v9, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 1772
    .line 1773
    invoke-virtual {v9, v8}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 1774
    .line 1775
    .line 1776
    goto :goto_33

    .line 1777
    :sswitch_5
    const-string v9, "ACTION_DELETE"

    .line 1778
    .line 1779
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1780
    .line 1781
    .line 1782
    move-result v8

    .line 1783
    if-nez v8, :cond_51

    .line 1784
    .line 1785
    goto :goto_33

    .line 1786
    :cond_51
    const-string v8, "NotificationActionService deleting messages"

    .line 1787
    .line 1788
    new-array v9, v3, [Ljava/lang/Object;

    .line 1789
    .line 1790
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v8

    .line 1797
    invoke-static {v8}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v8

    .line 1801
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v9

    .line 1805
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1806
    .line 1807
    .line 1808
    new-instance v10, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 1809
    .line 1810
    invoke-direct {v10, v9, v3}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v9, v8, v10}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 1814
    .line 1815
    .line 1816
    :cond_52
    :goto_33
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v8

    .line 1820
    if-eqz v8, :cond_54

    .line 1821
    .line 1822
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v2

    .line 1826
    invoke-static {v2}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v6

    .line 1830
    if-eqz v6, :cond_53

    .line 1831
    .line 1832
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v2

    .line 1836
    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 1837
    .line 1838
    invoke-virtual {v2, v11, v6}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 1839
    .line 1840
    .line 1841
    goto :goto_35

    .line 1842
    :cond_53
    new-array v4, v4, [Ljava/lang/Object;

    .line 1843
    .line 1844
    aput-object v2, v4, v3

    .line 1845
    .line 1846
    invoke-static {v5, v4}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    .line 1848
    .line 1849
    goto :goto_35

    .line 1850
    :cond_54
    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v3

    .line 1854
    if-eqz v3, :cond_55

    .line 1855
    .line 1856
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v2

    .line 1860
    invoke-static {v2}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v2

    .line 1864
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v2

    .line 1868
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1869
    .line 1870
    .line 1871
    move-result v3

    .line 1872
    if-eqz v3, :cond_56

    .line 1873
    .line 1874
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v3

    .line 1878
    check-cast v3, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1879
    .line 1880
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v4

    .line 1884
    iget-object v4, v4, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 1885
    .line 1886
    invoke-virtual {v4, v11, v3}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 1887
    .line 1888
    .line 1889
    goto :goto_34

    .line 1890
    :cond_55
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationActionService;->getMessagingController()Lcom/fsck/k9/controller/MessagingController;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v2

    .line 1894
    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 1895
    .line 1896
    invoke-virtual {v2, v11, v4}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 1897
    .line 1898
    .line 1899
    :cond_56
    :goto_35
    iget v0, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1900
    .line 1901
    invoke-virtual {v1, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 1902
    .line 1903
    .line 1904
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1905
    .line 1906
    return-object v0

    .line 1907
    :pswitch_18
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 1908
    .line 1909
    check-cast v1, Lcom/fsck/k9/controller/push/PushController;

    .line 1910
    .line 1911
    iget-object v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 1912
    .line 1913
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1914
    .line 1915
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1916
    .line 1917
    iget v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1918
    .line 1919
    if-eqz v7, :cond_58

    .line 1920
    .line 1921
    if-ne v7, v4, :cond_57

    .line 1922
    .line 1923
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1924
    .line 1925
    .line 1926
    goto :goto_36

    .line 1927
    :cond_57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1928
    .line 1929
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1930
    .line 1931
    .line 1932
    goto :goto_37

    .line 1933
    :cond_58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1934
    .line 1935
    .line 1936
    const-string v5, "..Starting to listen for push enabled changes in account: %s"

    .line 1937
    .line 1938
    iget-object v7, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 1939
    .line 1940
    new-array v8, v4, [Ljava/lang/Object;

    .line 1941
    .line 1942
    aput-object v7, v8, v3

    .line 1943
    .line 1944
    invoke-static {v5, v8}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    iget-object v10, v1, Lcom/fsck/k9/controller/push/PushController;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 1948
    .line 1949
    iget-object v11, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1950
    .line 1951
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1955
    .line 1956
    .line 1957
    iget-object v2, v10, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 1958
    .line 1959
    invoke-virtual {v2, v11}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v12

    .line 1963
    new-instance v9, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 1964
    .line 1965
    const/4 v13, 0x0

    .line 1966
    const/4 v14, 0x1

    .line 1967
    invoke-direct/range {v9 .. v14}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;I)V

    .line 1968
    .line 1969
    .line 1970
    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v2

    .line 1974
    const/4 v3, -0x1

    .line 1975
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v2

    .line 1979
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v2

    .line 1983
    iget-object v3, v10, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1984
    .line 1985
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v2

    .line 1989
    new-instance v3, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 1990
    .line 1991
    const/16 v5, 0xa

    .line 1992
    .line 1993
    invoke-direct {v3, v5, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1994
    .line 1995
    .line 1996
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 1997
    .line 1998
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v0

    .line 2002
    if-ne v0, v6, :cond_59

    .line 2003
    .line 2004
    move-object v5, v6

    .line 2005
    goto :goto_37

    .line 2006
    :cond_59
    :goto_36
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2007
    .line 2008
    :goto_37
    return-object v5

    .line 2009
    :pswitch_19
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 2010
    .line 2011
    check-cast v1, Ljava/lang/String;

    .line 2012
    .line 2013
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2014
    .line 2015
    iget v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2016
    .line 2017
    if-eqz v6, :cond_5b

    .line 2018
    .line 2019
    if-ne v6, v4, :cond_5a

    .line 2020
    .line 2021
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2022
    .line 2023
    .line 2024
    goto :goto_39

    .line 2025
    :catch_2
    move-exception v0

    .line 2026
    goto :goto_38

    .line 2027
    :cond_5a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2028
    .line 2029
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2030
    .line 2031
    .line 2032
    goto :goto_3a

    .line 2033
    :cond_5b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2034
    .line 2035
    .line 2036
    :try_start_6
    iget-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2037
    .line 2038
    check-cast v5, Lcom/fsck/k9/account/AccountRemover;

    .line 2039
    .line 2040
    iget-object v5, v5, Lcom/fsck/k9/account/AccountRemover;->avatarImageRepository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 2041
    .line 2042
    sget-object v6, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 2043
    .line 2044
    invoke-virtual {v6, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v6

    .line 2048
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2049
    .line 2050
    iget-object v5, v5, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;->localDataSource:Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;

    .line 2051
    .line 2052
    invoke-virtual {v5, v6, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->delete(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2056
    if-ne v0, v2, :cond_5c

    .line 2057
    .line 2058
    move-object v5, v2

    .line 2059
    goto :goto_3a

    .line 2060
    :goto_38
    const-string v2, "Failed to remove avatar for account %s"

    .line 2061
    .line 2062
    new-array v4, v4, [Ljava/lang/Object;

    .line 2063
    .line 2064
    aput-object v1, v4, v3

    .line 2065
    .line 2066
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    .line 2068
    .line 2069
    :cond_5c
    :goto_39
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2070
    .line 2071
    :goto_3a
    return-object v5

    .line 2072
    :pswitch_1a
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2073
    .line 2074
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2075
    .line 2076
    if-eqz v2, :cond_5e

    .line 2077
    .line 2078
    if-ne v2, v4, :cond_5d

    .line 2079
    .line 2080
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2081
    .line 2082
    .line 2083
    goto :goto_3b

    .line 2084
    :cond_5d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2085
    .line 2086
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2087
    .line 2088
    .line 2089
    goto :goto_3c

    .line 2090
    :cond_5e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2091
    .line 2092
    .line 2093
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 2094
    .line 2095
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 2096
    .line 2097
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2098
    .line 2099
    check-cast v6, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 2100
    .line 2101
    iget-object v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 2102
    .line 2103
    check-cast v7, Ljava/lang/String;

    .line 2104
    .line 2105
    const/16 v8, 0x17

    .line 2106
    .line 2107
    invoke-direct {v3, v6, v7, v5, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2108
    .line 2109
    .line 2110
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2111
    .line 2112
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v0

    .line 2116
    if-ne v0, v1, :cond_5f

    .line 2117
    .line 2118
    move-object v5, v1

    .line 2119
    goto :goto_3c

    .line 2120
    :cond_5f
    :goto_3b
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2121
    .line 2122
    :goto_3c
    return-object v5

    .line 2123
    :pswitch_1b
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2124
    .line 2125
    iget v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2126
    .line 2127
    if-eqz v2, :cond_61

    .line 2128
    .line 2129
    if-ne v2, v4, :cond_60

    .line 2130
    .line 2131
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2132
    .line 2133
    .line 2134
    goto :goto_3d

    .line 2135
    :cond_60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2136
    .line 2137
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2138
    .line 2139
    .line 2140
    goto :goto_3e

    .line 2141
    :cond_61
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2142
    .line 2143
    .line 2144
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 2145
    .line 2146
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 2147
    .line 2148
    iget-object v6, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2149
    .line 2150
    check-cast v6, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;

    .line 2151
    .line 2152
    iget-object v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 2153
    .line 2154
    check-cast v7, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 2155
    .line 2156
    const/16 v8, 0x16

    .line 2157
    .line 2158
    invoke-direct {v3, v6, v7, v5, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2159
    .line 2160
    .line 2161
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2162
    .line 2163
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v0

    .line 2167
    if-ne v0, v1, :cond_62

    .line 2168
    .line 2169
    move-object v5, v1

    .line 2170
    goto :goto_3e

    .line 2171
    :cond_62
    :goto_3d
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2172
    .line 2173
    :goto_3e
    return-object v5

    .line 2174
    :pswitch_1c
    iget-object v1, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->this$0:Ljava/lang/Object;

    .line 2175
    .line 2176
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 2177
    .line 2178
    iget-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2179
    .line 2180
    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2181
    .line 2182
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2183
    .line 2184
    iget v7, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2185
    .line 2186
    if-eqz v7, :cond_65

    .line 2187
    .line 2188
    if-eq v7, v4, :cond_64

    .line 2189
    .line 2190
    if-ne v7, v2, :cond_63

    .line 2191
    .line 2192
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2193
    .line 2194
    .line 2195
    goto :goto_41

    .line 2196
    :cond_63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2197
    .line 2198
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2199
    .line 2200
    .line 2201
    goto :goto_42

    .line 2202
    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2203
    .line 2204
    .line 2205
    goto :goto_3f

    .line 2206
    :cond_65
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2207
    .line 2208
    .line 2209
    invoke-static {v1}, Lcom/fsck/k9/Preferences;->access$getCompleteAccounts(Lcom/fsck/k9/Preferences;)Ljava/util/ArrayList;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v7

    .line 2213
    iput-object v3, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2214
    .line 2215
    iput v4, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2216
    .line 2217
    move-object v4, v3

    .line 2218
    check-cast v4, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2219
    .line 2220
    iget-object v4, v4, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2221
    .line 2222
    invoke-interface {v4, v7, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v4

    .line 2226
    if-ne v4, v6, :cond_66

    .line 2227
    .line 2228
    goto :goto_40

    .line 2229
    :cond_66
    :goto_3f
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;

    .line 2230
    .line 2231
    invoke-direct {v4, v3, v1}, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/fsck/k9/Preferences;)V

    .line 2232
    .line 2233
    .line 2234
    iget-object v7, v1, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2235
    .line 2236
    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 2237
    .line 2238
    .line 2239
    new-instance v7, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 2240
    .line 2241
    const/16 v8, 0x14

    .line 2242
    .line 2243
    invoke-direct {v7, v8, v1, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2244
    .line 2245
    .line 2246
    iput-object v5, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->L$0:Ljava/lang/Object;

    .line 2247
    .line 2248
    iput v2, v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;->label:I

    .line 2249
    .line 2250
    invoke-static {v3, v7, v0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v0

    .line 2254
    if-ne v0, v6, :cond_67

    .line 2255
    .line 2256
    :goto_40
    move-object v5, v6

    .line 2257
    goto :goto_42

    .line 2258
    :cond_67
    :goto_41
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2259
    .line 2260
    :goto_42
    return-object v5

    .line 2261
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

    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    :sswitch_data_0
    .sparse-switch
        -0x681dc42c -> :sswitch_5
        -0x249c1067 -> :sswitch_4
        -0x20366686 -> :sswitch_3
        -0x1f83d84e -> :sswitch_2
        -0x1f83c945 -> :sswitch_1
        0x6b9ec161 -> :sswitch_0
    .end sparse-switch
.end method
