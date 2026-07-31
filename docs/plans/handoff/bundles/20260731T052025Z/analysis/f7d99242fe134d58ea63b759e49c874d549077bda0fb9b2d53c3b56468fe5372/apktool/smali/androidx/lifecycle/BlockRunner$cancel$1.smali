.class public final Landroidx/lifecycle/BlockRunner$cancel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/lifecycle/BlockRunner$cancel$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$cancel$1;->this$0:Ljava/lang/Object;

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
    iget p1, p0, Landroidx/lifecycle/BlockRunner$cancel$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$cancel$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 11
    .line 12
    const/16 v0, 0x1a

    .line 13
    .line 14
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 19
    .line 20
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 21
    .line 22
    const/16 v0, 0x19

    .line 23
    .line 24
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 29
    .line 30
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 31
    .line 32
    const/16 v0, 0x18

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_2
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 39
    .line 40
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 41
    .line 42
    const/16 v0, 0x17

    .line 43
    .line 44
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_3
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 49
    .line 50
    check-cast p0, Landroidx/compose/ui/focus/FocusRequester;

    .line 51
    .line 52
    const/16 v0, 0x16

    .line 53
    .line 54
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 59
    .line 60
    check-cast p0, Lnet/thunderbird/core/common/exception/ExceptionHandler;

    .line 61
    .line 62
    const/16 v0, 0x15

    .line 63
    .line 64
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_5
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 69
    .line 70
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 71
    .line 72
    const/16 v0, 0x14

    .line 73
    .line 74
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_6
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 79
    .line 80
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 81
    .line 82
    const/16 v0, 0x13

    .line 83
    .line 84
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_7
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 89
    .line 90
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 91
    .line 92
    const/16 v0, 0x12

    .line 93
    .line 94
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_8
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 99
    .line 100
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 101
    .line 102
    const/16 v0, 0x11

    .line 103
    .line 104
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_9
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 109
    .line 110
    check-cast p0, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 111
    .line 112
    const/16 v0, 0x10

    .line 113
    .line 114
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :pswitch_a
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 119
    .line 120
    check-cast p0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 121
    .line 122
    const/16 v0, 0xf

    .line 123
    .line 124
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :pswitch_b
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 129
    .line 130
    check-cast p0, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 131
    .line 132
    const/16 v0, 0xe

    .line 133
    .line 134
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :pswitch_c
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 139
    .line 140
    check-cast p0, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 141
    .line 142
    const/16 v0, 0xd

    .line 143
    .line 144
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_d
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 149
    .line 150
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 151
    .line 152
    const/16 v0, 0xc

    .line 153
    .line 154
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :pswitch_e
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 159
    .line 160
    check-cast p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 161
    .line 162
    const/16 v0, 0xb

    .line 163
    .line 164
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 165
    .line 166
    .line 167
    return-object p1

    .line 168
    :pswitch_f
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 169
    .line 170
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 171
    .line 172
    const/16 v0, 0xa

    .line 173
    .line 174
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 175
    .line 176
    .line 177
    return-object p1

    .line 178
    :pswitch_10
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 179
    .line 180
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 181
    .line 182
    const/16 v0, 0x9

    .line 183
    .line 184
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    return-object p1

    .line 188
    :pswitch_11
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 189
    .line 190
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 191
    .line 192
    const/16 v0, 0x8

    .line 193
    .line 194
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 195
    .line 196
    .line 197
    return-object p1

    .line 198
    :pswitch_12
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 199
    .line 200
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 201
    .line 202
    const/4 v0, 0x7

    .line 203
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 204
    .line 205
    .line 206
    return-object p1

    .line 207
    :pswitch_13
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 208
    .line 209
    check-cast p0, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 210
    .line 211
    const/4 v0, 0x6

    .line 212
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 213
    .line 214
    .line 215
    return-object p1

    .line 216
    :pswitch_14
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 217
    .line 218
    check-cast p0, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 219
    .line 220
    const/4 v0, 0x5

    .line 221
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 222
    .line 223
    .line 224
    return-object p1

    .line 225
    :pswitch_15
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 226
    .line 227
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 228
    .line 229
    const/4 v0, 0x4

    .line 230
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 231
    .line 232
    .line 233
    return-object p1

    .line 234
    :pswitch_16
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 235
    .line 236
    check-cast p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 237
    .line 238
    const/4 v0, 0x3

    .line 239
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 240
    .line 241
    .line 242
    return-object p1

    .line 243
    :pswitch_17
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 244
    .line 245
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 246
    .line 247
    const/4 v0, 0x2

    .line 248
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 249
    .line 250
    .line 251
    return-object p1

    .line 252
    :pswitch_18
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 253
    .line 254
    check-cast p0, Landroidx/room/InvalidationTracker;

    .line 255
    .line 256
    const/4 v0, 0x1

    .line 257
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 258
    .line 259
    .line 260
    return-object p1

    .line 261
    :pswitch_19
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 262
    .line 263
    check-cast p0, Lcom/eygraber/uri/Uri$Builder;

    .line 264
    .line 265
    const/4 v0, 0x0

    .line 266
    invoke-direct {p1, p0, p2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 267
    .line 268
    .line 269
    return-object p1

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/BlockRunner$cancel$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_e
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :pswitch_f
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 194
    .line 195
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :pswitch_10
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 216
    .line 217
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :pswitch_12
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_13
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 238
    .line 239
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :pswitch_14
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 260
    .line 261
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :pswitch_16
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 271
    .line 272
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :pswitch_17
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 282
    .line 283
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :pswitch_18
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 293
    .line 294
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :pswitch_19
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$cancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    check-cast p0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 304
    .line 305
    invoke-virtual {p0, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const-wide/16 v4, 0x1f4

    .line 8
    .line 9
    const/16 v6, 0xa

    .line 10
    .line 11
    const/16 v7, 0xe

    .line 12
    .line 13
    const/16 v8, 0x1a

    .line 14
    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x0

    .line 17
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    const-string v12, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    .line 23
    iget-object v14, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v15, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v14, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 31
    .line 32
    iget-object v1, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    .line 34
    iget v3, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    if-ne v3, v15, :cond_0

    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    move-object v11, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v14, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->getAccountFolders:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 55
    .line 56
    iget-object v4, v14, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 57
    .line 58
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 59
    .line 60
    iget-object v5, v3, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 61
    .line 62
    new-instance v6, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 63
    .line 64
    const/16 v9, 0x16

    .line 65
    .line 66
    invoke-direct {v6, v3, v4, v2, v9}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-ne v0, v13, :cond_2

    .line 74
    .line 75
    move-object v11, v13

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 87
    .line 88
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v3, v0

    .line 91
    check-cast v3, Ljava/util/List;

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v4, v0

    .line 98
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 99
    .line 100
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 101
    .line 102
    invoke-direct {v4, v10, v3, v2, v8}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;-><init>(ZLjava/util/List;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 117
    .line 118
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/domain/AccountFolderError;

    .line 121
    .line 122
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    move-object v4, v3

    .line 127
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 128
    .line 129
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 130
    .line 131
    iget-object v5, v0, Lnet/thunderbird/feature/mail/message/list/domain/AccountFolderError;->exception:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 132
    .line 133
    iget-object v5, v5, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 134
    .line 135
    invoke-direct {v4, v10, v2, v5, v7}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;-><init>(ZLjava/util/List;Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :goto_2
    return-object v11

    .line 150
    :pswitch_0
    check-cast v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 151
    .line 152
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    if-ne v1, v15, :cond_7

    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object/from16 v0, p1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    move-object v11, v2

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 173
    .line 174
    iget-object v3, v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 175
    .line 176
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 177
    .line 178
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;->invoke(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-ne v0, v13, :cond_9

    .line 183
    .line 184
    move-object v11, v13

    .line 185
    goto :goto_5

    .line 186
    :cond_9
    :goto_4
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 192
    .line 193
    if-eqz v1, :cond_b

    .line 194
    .line 195
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 196
    .line 197
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 200
    .line 201
    iget v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 202
    .line 203
    invoke-static {v14, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->access$selectOptionForServerSearchLimit(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;I)Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v3, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 208
    .line 209
    :cond_a
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v4, v0

    .line 214
    check-cast v4, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 215
    .line 216
    invoke-static {v4, v2, v1, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v3, v0, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_b
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 228
    .line 229
    if-eqz v1, :cond_c

    .line 230
    .line 231
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 232
    .line 233
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 236
    .line 237
    invoke-static {v14, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :goto_5
    return-object v11

    .line 246
    :pswitch_1
    check-cast v14, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 247
    .line 248
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 249
    .line 250
    if-eqz v1, :cond_e

    .line 251
    .line 252
    if-ne v1, v15, :cond_d

    .line 253
    .line 254
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v0, p1

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_d
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_6
    move-object v11, v2

    .line 264
    goto :goto_8

    .line 265
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v14, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 269
    .line 270
    iget-object v3, v14, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 271
    .line 272
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 273
    .line 274
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;->invoke(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-ne v0, v13, :cond_f

    .line 279
    .line 280
    move-object v11, v13

    .line 281
    goto :goto_8

    .line 282
    :cond_f
    :goto_7
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 283
    .line 284
    new-instance v1, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    const/4 v3, 0x7

    .line 287
    invoke-direct {v1, v3, v14}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 294
    .line 295
    if-eqz v3, :cond_10

    .line 296
    .line 297
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 298
    .line 299
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 300
    .line 301
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_10
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 306
    .line 307
    if-eqz v1, :cond_11

    .line 308
    .line 309
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 310
    .line 311
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 314
    .line 315
    invoke-static {v14, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 316
    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 320
    .line 321
    .line 322
    goto :goto_6

    .line 323
    :goto_8
    return-object v11

    .line 324
    :pswitch_2
    check-cast v14, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 325
    .line 326
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 327
    .line 328
    if-eqz v1, :cond_13

    .line 329
    .line 330
    if-ne v1, v15, :cond_12

    .line 331
    .line 332
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v0, p1

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_12
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :goto_9
    move-object v11, v2

    .line 342
    goto :goto_b

    .line 343
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v14, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 347
    .line 348
    iget-object v3, v14, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 349
    .line 350
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 351
    .line 352
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;->invoke(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    if-ne v0, v13, :cond_14

    .line 357
    .line 358
    move-object v11, v13

    .line 359
    goto :goto_b

    .line 360
    :cond_14
    :goto_a
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 361
    .line 362
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;

    .line 363
    .line 364
    invoke-direct {v1, v14, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    instance-of v3, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 371
    .line 372
    if-eqz v3, :cond_15

    .line 373
    .line 374
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 375
    .line 376
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_15
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 383
    .line 384
    if-eqz v1, :cond_16

    .line 385
    .line 386
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 387
    .line 388
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 391
    .line 392
    invoke-static {v14, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 393
    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_16
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 397
    .line 398
    .line 399
    goto :goto_9

    .line 400
    :goto_b
    return-object v11

    .line 401
    :pswitch_3
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 402
    .line 403
    if-eqz v1, :cond_18

    .line 404
    .line 405
    if-ne v1, v15, :cond_17

    .line 406
    .line 407
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_17
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    move-object v11, v2

    .line 415
    goto :goto_d

    .line 416
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 420
    .line 421
    const-wide/16 v1, 0xc8

    .line 422
    .line 423
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    if-ne v0, v13, :cond_19

    .line 428
    .line 429
    move-object v11, v13

    .line 430
    goto :goto_d

    .line 431
    :cond_19
    :goto_c
    check-cast v14, Landroidx/compose/ui/focus/FocusRequester;

    .line 432
    .line 433
    invoke-static {v14}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 434
    .line 435
    .line 436
    :goto_d
    return-object v11

    .line 437
    :pswitch_4
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 438
    .line 439
    if-eqz v1, :cond_1b

    .line 440
    .line 441
    if-ne v1, v15, :cond_1a

    .line 442
    .line 443
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_f

    .line 447
    :cond_1a
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    move-object v11, v2

    .line 451
    goto :goto_f

    .line 452
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    check-cast v14, Lnet/thunderbird/core/common/exception/ExceptionHandler;

    .line 456
    .line 457
    iget-object v1, v14, Lnet/thunderbird/core/common/exception/ExceptionHandler;->syncDebugFileLogSink$delegate:Lkotlin/Lazy;

    .line 458
    .line 459
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 464
    .line 465
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 466
    .line 467
    check-cast v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 468
    .line 469
    iget-object v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->accumulatedLogs:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-nez v2, :cond_1c

    .line 476
    .line 477
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->writeToLogFile(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    goto :goto_e

    .line 482
    :cond_1c
    move-object v0, v11

    .line 483
    :goto_e
    if-ne v0, v13, :cond_1d

    .line 484
    .line 485
    move-object v11, v13

    .line 486
    :cond_1d
    :goto_f
    return-object v11

    .line 487
    :pswitch_5
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 488
    .line 489
    if-eqz v1, :cond_1f

    .line 490
    .line 491
    if-ne v1, v15, :cond_1e

    .line 492
    .line 493
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_1e
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move-object v11, v2

    .line 501
    goto :goto_10

    .line 502
    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    check-cast v14, Lkotlinx/coroutines/flow/Flow;

    .line 506
    .line 507
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 508
    .line 509
    invoke-static {v14, v0}, Lkotlinx/coroutines/flow/FlowKt;->collect(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-ne v0, v13, :cond_20

    .line 514
    .line 515
    move-object v11, v13

    .line 516
    :cond_20
    :goto_10
    return-object v11

    .line 517
    :pswitch_6
    check-cast v14, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 518
    .line 519
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 520
    .line 521
    if-eqz v1, :cond_22

    .line 522
    .line 523
    if-ne v1, v15, :cond_21

    .line 524
    .line 525
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    move-object/from16 v0, p1

    .line 529
    .line 530
    goto :goto_11

    .line 531
    :cond_21
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    move-object v11, v2

    .line 535
    goto/16 :goto_18

    .line 536
    .line 537
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 541
    .line 542
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 543
    .line 544
    new-instance v3, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 545
    .line 546
    invoke-direct {v3, v14, v2, v7}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 547
    .line 548
    .line 549
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 550
    .line 551
    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-ne v0, v13, :cond_23

    .line 556
    .line 557
    move-object v11, v13

    .line 558
    goto/16 :goto_18

    .line 559
    .line 560
    :cond_23
    :goto_11
    check-cast v0, Ljava/util/List;

    .line 561
    .line 562
    new-instance v1, Ljava/util/ArrayList;

    .line 563
    .line 564
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 569
    .line 570
    .line 571
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_24

    .line 580
    .line 581
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 586
    .line 587
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    new-instance v5, Ljava/lang/Integer;

    .line 592
    .line 593
    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 594
    .line 595
    .line 596
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 597
    .line 598
    new-instance v4, Lkotlin/Pair;

    .line 599
    .line 600
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    goto :goto_12

    .line 607
    :cond_24
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    iput-object v1, v14, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->accountsMap:Ljava/util/Map;

    .line 612
    .line 613
    iget-object v1, v14, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 614
    .line 615
    if-eqz v1, :cond_26

    .line 616
    .line 617
    iget-boolean v2, v1, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;->includeGeneralSettings:Z

    .line 618
    .line 619
    if-eqz v2, :cond_25

    .line 620
    .line 621
    goto :goto_13

    .line 622
    :cond_25
    move v2, v10

    .line 623
    goto :goto_14

    .line 624
    :cond_26
    :goto_13
    move v2, v15

    .line 625
    :goto_14
    sget-object v3, Lcom/fsck/k9/ui/settings/export/SettingsListItem$GeneralSettings;->INSTANCE:Lcom/fsck/k9/ui/settings/export/SettingsListItem$GeneralSettings;

    .line 626
    .line 627
    iput-boolean v2, v3, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 628
    .line 629
    new-instance v2, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .line 637
    .line 638
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_29

    .line 647
    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 653
    .line 654
    new-instance v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 655
    .line 656
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v7

    .line 664
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    invoke-direct {v5, v6, v7, v8}, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    if-eqz v1, :cond_28

    .line 672
    .line 673
    iget-object v6, v1, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;->selectedAccountUuids:Ljava/util/Set;

    .line 674
    .line 675
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 676
    .line 677
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    if-eqz v4, :cond_27

    .line 682
    .line 683
    goto :goto_16

    .line 684
    :cond_27
    move v4, v10

    .line 685
    goto :goto_17

    .line 686
    :cond_28
    :goto_16
    move v4, v15

    .line 687
    :goto_17
    iput-boolean v4, v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 688
    .line 689
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    goto :goto_15

    .line 693
    :cond_29
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    iget-object v1, v14, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 702
    .line 703
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    iput-object v0, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 707
    .line 708
    invoke-virtual {v1}, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->updateExportButtonFromSelection()V

    .line 709
    .line 710
    .line 711
    iget-object v0, v14, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 712
    .line 713
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    :goto_18
    return-object v11

    .line 717
    :pswitch_7
    check-cast v14, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 718
    .line 719
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 720
    .line 721
    if-eqz v1, :cond_2b

    .line 722
    .line 723
    if-ne v1, v15, :cond_2a

    .line 724
    .line 725
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    move-object/from16 v0, p1

    .line 729
    .line 730
    goto :goto_19

    .line 731
    :cond_2a
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    move-object v11, v2

    .line 735
    goto :goto_1a

    .line 736
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 740
    .line 741
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 742
    .line 743
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 744
    .line 745
    invoke-direct {v3, v14, v2, v10}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lkotlin/coroutines/Continuation;I)V

    .line 746
    .line 747
    .line 748
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 749
    .line 750
    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    if-ne v0, v13, :cond_2c

    .line 755
    .line 756
    move-object v11, v13

    .line 757
    goto :goto_1a

    .line 758
    :cond_2c
    :goto_19
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 759
    .line 760
    invoke-virtual {v14, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 761
    .line 762
    .line 763
    :goto_1a
    return-object v11

    .line 764
    :pswitch_8
    check-cast v14, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 765
    .line 766
    iget-object v1, v14, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 767
    .line 768
    iget v3, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 769
    .line 770
    if-eqz v3, :cond_2e

    .line 771
    .line 772
    if-ne v3, v15, :cond_2d

    .line 773
    .line 774
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    goto :goto_1b

    .line 778
    :cond_2d
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    move-object v11, v2

    .line 782
    goto :goto_1c

    .line 783
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 787
    .line 788
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    const-wide/16 v2, 0x4b0

    .line 792
    .line 793
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    if-ne v0, v13, :cond_2f

    .line 798
    .line 799
    move-object v11, v13

    .line 800
    goto :goto_1c

    .line 801
    :cond_2f
    :goto_1b
    iget-object v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

    .line 802
    .line 803
    const/4 v6, 0x0

    .line 804
    if-eqz v0, :cond_32

    .line 805
    .line 806
    sget-object v2, Lcom/fsck/k9/view/StatusIndicator$Status;->PROGRESS:Lcom/fsck/k9/view/StatusIndicator$Status;

    .line 807
    .line 808
    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 809
    .line 810
    .line 811
    iget-object v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

    .line 812
    .line 813
    if-eqz v0, :cond_31

    .line 814
    .line 815
    sget-object v1, Lcom/fsck/k9/view/StatusIndicator$Status;->IDLE:Lcom/fsck/k9/view/StatusIndicator$Status;

    .line 816
    .line 817
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, v14, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->viewModel:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 821
    .line 822
    iget-object v3, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupMessageLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 823
    .line 824
    iget-object v0, v14, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 825
    .line 826
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    iget-object v5, v14, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 834
    .line 835
    if-eqz v5, :cond_30

    .line 836
    .line 837
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    iget-object v0, v3, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;->eventScope:Lkotlinx/coroutines/CoroutineScope;

    .line 841
    .line 842
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 843
    .line 844
    const/16 v7, 0x18

    .line 845
    .line 846
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 847
    .line 848
    .line 849
    const/4 v1, 0x3

    .line 850
    invoke-static {v0, v6, v6, v2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 851
    .line 852
    .line 853
    :goto_1c
    return-object v11

    .line 854
    :cond_30
    const-string v0, "account"

    .line 855
    .line 856
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    throw v6

    .line 860
    :cond_31
    const-string v0, "transferProgressSending"

    .line 861
    .line 862
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v6

    .line 866
    :cond_32
    const-string v0, "transferProgressGenerating"

    .line 867
    .line 868
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v6

    .line 872
    :pswitch_9
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 873
    .line 874
    if-eqz v1, :cond_35

    .line 875
    .line 876
    if-eq v1, v15, :cond_34

    .line 877
    .line 878
    if-ne v1, v9, :cond_33

    .line 879
    .line 880
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    goto :goto_1f

    .line 884
    :cond_33
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    move-object v11, v2

    .line 888
    goto :goto_1f

    .line 889
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 890
    .line 891
    .line 892
    goto :goto_1d

    .line 893
    :cond_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 897
    .line 898
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    if-ne v1, v13, :cond_36

    .line 903
    .line 904
    goto :goto_1e

    .line 905
    :cond_36
    :goto_1d
    check-cast v14, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 906
    .line 907
    iput v9, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 908
    .line 909
    sget-object v1, Lcom/fsck/k9/ui/base/loader/LoaderState$Loading;->INSTANCE:Lcom/fsck/k9/ui/base/loader/LoaderState$Loading;

    .line 910
    .line 911
    invoke-virtual {v14, v1, v0}, Landroidx/lifecycle/LiveDataScopeImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    if-ne v0, v13, :cond_37

    .line 916
    .line 917
    :goto_1e
    move-object v11, v13

    .line 918
    :cond_37
    :goto_1f
    return-object v11

    .line 919
    :pswitch_a
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 920
    .line 921
    if-eqz v1, :cond_39

    .line 922
    .line 923
    if-ne v1, v15, :cond_38

    .line 924
    .line 925
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    goto :goto_20

    .line 929
    :cond_38
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    move-object v11, v2

    .line 933
    goto :goto_20

    .line 934
    :cond_39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    check-cast v14, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 938
    .line 939
    iget-object v1, v14, Lcom/fsck/k9/ui/base/AppLanguageManager;->_appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 940
    .line 941
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    invoke-static {v2}, Landroidx/camera/camera2/compat/Api24Compat;->getCurrentLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 957
    .line 958
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    if-ne v0, v13, :cond_3a

    .line 963
    .line 964
    move-object v11, v13

    .line 965
    :cond_3a
    :goto_20
    return-object v11

    .line 966
    :pswitch_b
    check-cast v14, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 967
    .line 968
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 969
    .line 970
    if-eqz v1, :cond_3c

    .line 971
    .line 972
    if-ne v1, v15, :cond_3b

    .line 973
    .line 974
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    goto :goto_21

    .line 978
    :cond_3b
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    move-object v11, v2

    .line 982
    goto :goto_21

    .line 983
    :cond_3c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 984
    .line 985
    .line 986
    iget-object v5, v14, Lcom/fsck/k9/controller/push/AccountPushController;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 987
    .line 988
    iget-object v6, v14, Lcom/fsck/k9/controller/push/AccountPushController;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 989
    .line 990
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 994
    .line 995
    .line 996
    iget-object v1, v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 997
    .line 998
    invoke-virtual {v1, v6}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    new-instance v4, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 1003
    .line 1004
    const/4 v8, 0x0

    .line 1005
    const/4 v9, 0x0

    .line 1006
    invoke-direct/range {v4 .. v9}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    const/4 v2, -0x1

    .line 1014
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    iget-object v2, v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1023
    .line 1024
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 1029
    .line 1030
    invoke-direct {v2, v3, v14}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1034
    .line 1035
    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    if-ne v0, v13, :cond_3d

    .line 1040
    .line 1041
    move-object v11, v13

    .line 1042
    :cond_3d
    :goto_21
    return-object v11

    .line 1043
    :pswitch_c
    check-cast v14, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 1044
    .line 1045
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1046
    .line 1047
    if-eqz v1, :cond_3f

    .line 1048
    .line 1049
    if-eq v1, v15, :cond_3e

    .line 1050
    .line 1051
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    move-object v13, v2

    .line 1055
    goto :goto_22

    .line 1056
    :cond_3e
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    throw v0

    .line 1061
    :cond_3f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1062
    .line 1063
    .line 1064
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 1065
    .line 1066
    iget-object v1, v14, Lcom/fsck/k9/activity/MessageHomeActivity;->foldableStateObserver$delegate:Lkotlin/Lazy;

    .line 1067
    .line 1068
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    check-cast v1, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 1073
    .line 1074
    iget-object v1, v1, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->foldableState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 1075
    .line 1076
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 1077
    .line 1078
    const/16 v3, 0x8

    .line 1079
    .line 1080
    invoke-direct {v2, v3, v14}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1084
    .line 1085
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1086
    .line 1087
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    :goto_22
    return-object v13

    .line 1091
    :pswitch_d
    check-cast v14, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 1092
    .line 1093
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1094
    .line 1095
    if-eqz v1, :cond_41

    .line 1096
    .line 1097
    if-ne v1, v15, :cond_40

    .line 1098
    .line 1099
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1100
    .line 1101
    .line 1102
    goto :goto_23

    .line 1103
    :cond_40
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    move-object v11, v2

    .line 1107
    goto :goto_23

    .line 1108
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    iget-object v1, v14, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;->importAppFetcher:Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 1112
    .line 1113
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->context:Landroid/content/Context;

    .line 1114
    .line 1115
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->SUPPORTED_APPS:Ljava/util/List;

    .line 1120
    .line 1121
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v3

    .line 1125
    new-instance v4, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 1126
    .line 1127
    invoke-direct {v4, v2, v8}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 1131
    .line 1132
    invoke-direct {v2, v3, v10, v4}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 1133
    .line 1134
    .line 1135
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 1136
    .line 1137
    const/16 v4, 0x1c

    .line 1138
    .line 1139
    invoke-direct {v3, v4, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    new-instance v1, Lkotlin/sequences/TakeWhileSequence;

    .line 1143
    .line 1144
    invoke-direct {v1, v2, v3, v9}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 1145
    .line 1146
    .line 1147
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    iget-object v2, v14, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;->_appInfoFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1156
    .line 1157
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1158
    .line 1159
    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    if-ne v11, v13, :cond_42

    .line 1163
    .line 1164
    move-object v11, v13

    .line 1165
    :cond_42
    :goto_23
    return-object v11

    .line 1166
    :pswitch_e
    check-cast v14, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 1167
    .line 1168
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1169
    .line 1170
    if-eqz v1, :cond_44

    .line 1171
    .line 1172
    if-ne v1, v15, :cond_43

    .line 1173
    .line 1174
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1175
    .line 1176
    .line 1177
    move-object/from16 v0, p1

    .line 1178
    .line 1179
    goto :goto_25

    .line 1180
    :cond_43
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    :goto_24
    move-object v11, v2

    .line 1184
    goto/16 :goto_29

    .line 1185
    .line 1186
    :cond_44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object v1, v14, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1190
    .line 1191
    new-instance v3, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 1192
    .line 1193
    invoke-direct {v3, v14, v2, v6}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1194
    .line 1195
    .line 1196
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1197
    .line 1198
    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    if-ne v0, v13, :cond_45

    .line 1203
    .line 1204
    move-object v11, v13

    .line 1205
    goto :goto_29

    .line 1206
    :cond_45
    :goto_25
    check-cast v0, [Lapp/k9mail/core/android/permissions/PermissionState;

    .line 1207
    .line 1208
    aget-object v1, v0, v10

    .line 1209
    .line 1210
    aget-object v0, v0, v15

    .line 1211
    .line 1212
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1213
    .line 1214
    .line 1215
    move-result v1

    .line 1216
    if-eqz v1, :cond_4d

    .line 1217
    .line 1218
    sget-object v3, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Granted:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 1219
    .line 1220
    sget-object v4, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Unknown:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 1221
    .line 1222
    if-eq v1, v15, :cond_47

    .line 1223
    .line 1224
    if-ne v1, v9, :cond_46

    .line 1225
    .line 1226
    move-object/from16 v17, v4

    .line 1227
    .line 1228
    goto :goto_26

    .line 1229
    :cond_46
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_24

    .line 1233
    :cond_47
    move-object/from16 v17, v3

    .line 1234
    .line 1235
    :goto_26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1236
    .line 1237
    .line 1238
    move-result v1

    .line 1239
    if-eqz v1, :cond_48

    .line 1240
    .line 1241
    if-eq v1, v15, :cond_4a

    .line 1242
    .line 1243
    if-ne v1, v9, :cond_49

    .line 1244
    .line 1245
    :cond_48
    move-object/from16 v18, v4

    .line 1246
    .line 1247
    goto :goto_27

    .line 1248
    :cond_49
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_24

    .line 1252
    :cond_4a
    move-object/from16 v18, v3

    .line 1253
    .line 1254
    :goto_27
    sget-object v1, Lapp/k9mail/core/android/permissions/PermissionState;->GrantedImplicitly:Lapp/k9mail/core/android/permissions/PermissionState;

    .line 1255
    .line 1256
    if-eq v0, v1, :cond_4b

    .line 1257
    .line 1258
    move/from16 v19, v15

    .line 1259
    .line 1260
    goto :goto_28

    .line 1261
    :cond_4b
    move/from16 v19, v10

    .line 1262
    .line 1263
    :goto_28
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    .line 1265
    .line 1266
    iget-object v0, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1267
    .line 1268
    :cond_4c
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    move-object/from16 v16, v1

    .line 1273
    .line 1274
    check-cast v16, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 1275
    .line 1276
    const/16 v20, 0x0

    .line 1277
    .line 1278
    const/16 v21, 0x10

    .line 1279
    .line 1280
    invoke-static/range {v16 .. v21}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->copy$default(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;ZZI)Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v1

    .line 1288
    if-eqz v1, :cond_4c

    .line 1289
    .line 1290
    invoke-virtual {v14}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->updateNextButtonState()V

    .line 1291
    .line 1292
    .line 1293
    goto :goto_29

    .line 1294
    :cond_4d
    const-string v0, "Unexpected case"

    .line 1295
    .line 1296
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_24

    .line 1300
    :goto_29
    return-object v11

    .line 1301
    :pswitch_f
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1302
    .line 1303
    if-eqz v1, :cond_4f

    .line 1304
    .line 1305
    if-ne v1, v15, :cond_4e

    .line 1306
    .line 1307
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_2a

    .line 1311
    :cond_4e
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    move-object v11, v2

    .line 1315
    goto :goto_2b

    .line 1316
    :cond_4f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1317
    .line 1318
    .line 1319
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1320
    .line 1321
    const-wide/16 v3, 0x64

    .line 1322
    .line 1323
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    if-ne v0, v13, :cond_50

    .line 1328
    .line 1329
    move-object v11, v13

    .line 1330
    goto :goto_2b

    .line 1331
    :cond_50
    :goto_2a
    check-cast v14, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 1332
    .line 1333
    iget-object v1, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1334
    .line 1335
    :cond_51
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    move-object v3, v0

    .line 1340
    check-cast v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 1341
    .line 1342
    sget-object v4, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;->Waiting:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 1343
    .line 1344
    invoke-static {v3, v4, v2, v9}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->copy$default(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;I)Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    if-eqz v0, :cond_51

    .line 1353
    .line 1354
    :goto_2b
    return-object v11

    .line 1355
    :pswitch_10
    check-cast v14, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 1356
    .line 1357
    iget-object v1, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1358
    .line 1359
    iget v3, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1360
    .line 1361
    if-eqz v3, :cond_54

    .line 1362
    .line 1363
    if-eq v3, v15, :cond_53

    .line 1364
    .line 1365
    if-ne v3, v9, :cond_52

    .line 1366
    .line 1367
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1368
    .line 1369
    .line 1370
    goto/16 :goto_31

    .line 1371
    .line 1372
    :cond_52
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    :goto_2c
    move-object v11, v2

    .line 1376
    goto/16 :goto_32

    .line 1377
    .line 1378
    :cond_53
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1379
    .line 1380
    .line 1381
    move-object/from16 v3, p1

    .line 1382
    .line 1383
    goto :goto_2d

    .line 1384
    :cond_54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1388
    .line 1389
    invoke-static {v14, v0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->access$loadSpecialFolderOptions(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v3

    .line 1393
    if-ne v3, v13, :cond_55

    .line 1394
    .line 1395
    goto/16 :goto_30

    .line 1396
    .line 1397
    :cond_55
    :goto_2d
    check-cast v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;

    .line 1398
    .line 1399
    if-nez v3, :cond_56

    .line 1400
    .line 1401
    goto/16 :goto_32

    .line 1402
    .line 1403
    :cond_56
    new-instance v6, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 1404
    .line 1405
    const/16 v7, 0x18

    .line 1406
    .line 1407
    invoke-direct {v6, v7, v3}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v14, v6}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 1411
    .line 1412
    .line 1413
    iget-object v6, v14, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->validateSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 1414
    .line 1415
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1416
    .line 1417
    .line 1418
    iget-object v6, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 1419
    .line 1420
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v6

    .line 1424
    instance-of v6, v6, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 1425
    .line 1426
    if-nez v6, :cond_58

    .line 1427
    .line 1428
    iget-object v6, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 1429
    .line 1430
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v6

    .line 1434
    instance-of v6, v6, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 1435
    .line 1436
    if-nez v6, :cond_58

    .line 1437
    .line 1438
    iget-object v6, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 1439
    .line 1440
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v6

    .line 1444
    instance-of v6, v6, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 1445
    .line 1446
    if-nez v6, :cond_58

    .line 1447
    .line 1448
    iget-object v6, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 1449
    .line 1450
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v6

    .line 1454
    instance-of v6, v6, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 1455
    .line 1456
    if-nez v6, :cond_58

    .line 1457
    .line 1458
    iget-object v3, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 1459
    .line 1460
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v3

    .line 1464
    instance-of v3, v3, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 1465
    .line 1466
    if-eqz v3, :cond_57

    .line 1467
    .line 1468
    goto :goto_2e

    .line 1469
    :cond_57
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v3

    .line 1473
    goto :goto_2f

    .line 1474
    :cond_58
    :goto_2e
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1475
    .line 1476
    sget-object v6, Lapp/k9mail/feature/account/setup/domain/DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption;

    .line 1477
    .line 1478
    invoke-direct {v3, v6, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1479
    .line 1480
    .line 1481
    :goto_2f
    instance-of v6, v3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1482
    .line 1483
    if-eqz v6, :cond_5a

    .line 1484
    .line 1485
    :cond_59
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    move-object v2, v0

    .line 1490
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 1491
    .line 1492
    const/4 v6, 0x0

    .line 1493
    const/16 v7, 0x9

    .line 1494
    .line 1495
    const/4 v3, 0x0

    .line 1496
    const/4 v4, 0x0

    .line 1497
    const/4 v5, 0x0

    .line 1498
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    if-eqz v0, :cond_59

    .line 1507
    .line 1508
    goto :goto_32

    .line 1509
    :cond_5a
    instance-of v3, v3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1510
    .line 1511
    if-eqz v3, :cond_5d

    .line 1512
    .line 1513
    :cond_5b
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    move-object v15, v2

    .line 1518
    check-cast v15, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 1519
    .line 1520
    const/16 v19, 0x0

    .line 1521
    .line 1522
    const/16 v20, 0x1b

    .line 1523
    .line 1524
    const/16 v16, 0x0

    .line 1525
    .line 1526
    const/16 v17, 0x1

    .line 1527
    .line 1528
    const/16 v18, 0x0

    .line 1529
    .line 1530
    invoke-static/range {v15 .. v20}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    invoke-virtual {v1, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v2

    .line 1538
    if-eqz v2, :cond_5b

    .line 1539
    .line 1540
    invoke-virtual {v14}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->saveSpecialFolderSettings()V

    .line 1541
    .line 1542
    .line 1543
    iput v9, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1544
    .line 1545
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v0

    .line 1549
    if-ne v0, v13, :cond_5c

    .line 1550
    .line 1551
    :goto_30
    move-object v11, v13

    .line 1552
    goto :goto_32

    .line 1553
    :cond_5c
    :goto_31
    invoke-virtual {v14}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->navigateNext$6()V

    .line 1554
    .line 1555
    .line 1556
    goto :goto_32

    .line 1557
    :cond_5d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1558
    .line 1559
    .line 1560
    goto/16 :goto_2c

    .line 1561
    .line 1562
    :goto_32
    return-object v11

    .line 1563
    :pswitch_11
    move-object v1, v14

    .line 1564
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 1565
    .line 1566
    iget v3, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1567
    .line 1568
    if-eqz v3, :cond_5f

    .line 1569
    .line 1570
    if-ne v3, v15, :cond_5e

    .line 1571
    .line 1572
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1573
    .line 1574
    .line 1575
    move-object/from16 v0, p1

    .line 1576
    .line 1577
    goto :goto_33

    .line 1578
    :cond_5e
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    move-object v11, v2

    .line 1582
    goto :goto_34

    .line 1583
    :cond_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1584
    .line 1585
    .line 1586
    iget-object v3, v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->accountOwnerNameProvider:Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 1587
    .line 1588
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1589
    .line 1590
    iget-object v4, v3, Lcom/fsck/k9/account/AccountOwnerNameProvider;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1591
    .line 1592
    new-instance v5, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 1593
    .line 1594
    const/16 v6, 0xb

    .line 1595
    .line 1596
    invoke-direct {v5, v3, v2, v6}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1597
    .line 1598
    .line 1599
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v0

    .line 1603
    if-ne v0, v13, :cond_60

    .line 1604
    .line 1605
    move-object v11, v13

    .line 1606
    goto :goto_34

    .line 1607
    :cond_60
    :goto_33
    check-cast v0, Ljava/lang/String;

    .line 1608
    .line 1609
    if-nez v0, :cond_61

    .line 1610
    .line 1611
    const-string v0, ""

    .line 1612
    .line 1613
    :cond_61
    move-object v3, v0

    .line 1614
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1615
    .line 1616
    .line 1617
    iget-object v4, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1618
    .line 1619
    :cond_62
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    move-object v5, v0

    .line 1624
    check-cast v5, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 1625
    .line 1626
    iget-object v5, v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 1627
    .line 1628
    check-cast v5, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 1629
    .line 1630
    iget-object v5, v5, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 1631
    .line 1632
    invoke-static {v5}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->toDisplayOptionsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v5

    .line 1636
    iget-object v6, v5, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 1637
    .line 1638
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 1639
    .line 1640
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1641
    .line 1642
    .line 1643
    move-result v6

    .line 1644
    if-nez v6, :cond_63

    .line 1645
    .line 1646
    new-instance v6, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 1647
    .line 1648
    const/4 v7, 0x6

    .line 1649
    invoke-direct {v6, v3, v7}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 1650
    .line 1651
    .line 1652
    const/4 v7, 0x5

    .line 1653
    invoke-static {v5, v2, v6, v2, v7}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v5

    .line 1657
    :cond_63
    invoke-virtual {v4, v0, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-eqz v0, :cond_62

    .line 1662
    .line 1663
    :goto_34
    return-object v11

    .line 1664
    :pswitch_12
    move-object v1, v14

    .line 1665
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 1666
    .line 1667
    iget-object v3, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 1668
    .line 1669
    iget-object v4, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1670
    .line 1671
    iget v5, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1672
    .line 1673
    if-eqz v5, :cond_65

    .line 1674
    .line 1675
    if-ne v5, v15, :cond_64

    .line 1676
    .line 1677
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1678
    .line 1679
    .line 1680
    move-object/from16 v0, p1

    .line 1681
    .line 1682
    goto :goto_36

    .line 1683
    :cond_64
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1684
    .line 1685
    .line 1686
    :goto_35
    move-object v11, v2

    .line 1687
    goto/16 :goto_3a

    .line 1688
    .line 1689
    :cond_65
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1690
    .line 1691
    .line 1692
    :cond_66
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v5

    .line 1696
    move-object/from16 v16, v5

    .line 1697
    .line 1698
    check-cast v16, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1699
    .line 1700
    const/16 v25, 0x0

    .line 1701
    .line 1702
    const/16 v26, 0x2ff

    .line 1703
    .line 1704
    const/16 v17, 0x0

    .line 1705
    .line 1706
    const/16 v18, 0x0

    .line 1707
    .line 1708
    const/16 v19, 0x0

    .line 1709
    .line 1710
    const/16 v20, 0x0

    .line 1711
    .line 1712
    const/16 v21, 0x0

    .line 1713
    .line 1714
    const/16 v22, 0x0

    .line 1715
    .line 1716
    const/16 v23, 0x0

    .line 1717
    .line 1718
    const/16 v24, 0x1

    .line 1719
    .line 1720
    invoke-static/range {v16 .. v26}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v6

    .line 1724
    invoke-virtual {v4, v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v5

    .line 1728
    if-eqz v5, :cond_66

    .line 1729
    .line 1730
    iget-object v5, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->getAutoDiscovery:Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 1731
    .line 1732
    iget-object v6, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1733
    .line 1734
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v6

    .line 1738
    check-cast v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1739
    .line 1740
    iget-object v6, v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 1741
    .line 1742
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 1743
    .line 1744
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1745
    .line 1746
    invoke-virtual {v5, v6, v0}, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;->execute(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v0

    .line 1750
    if-ne v0, v13, :cond_67

    .line 1751
    .line 1752
    move-object v11, v13

    .line 1753
    goto/16 :goto_3a

    .line 1754
    .line 1755
    :cond_67
    :goto_36
    check-cast v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 1756
    .line 1757
    sget-object v5, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;->INSTANCE:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;

    .line 1758
    .line 1759
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1760
    .line 1761
    .line 1762
    move-result v5

    .line 1763
    if-eqz v5, :cond_69

    .line 1764
    .line 1765
    :cond_68
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v0

    .line 1769
    move-object v12, v0

    .line 1770
    check-cast v12, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1771
    .line 1772
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1773
    .line 1774
    .line 1775
    const/16 v21, 0x0

    .line 1776
    .line 1777
    const/16 v22, 0x2f6

    .line 1778
    .line 1779
    sget-object v13, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->MANUAL_SETUP:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 1780
    .line 1781
    const/4 v14, 0x0

    .line 1782
    const/4 v15, 0x0

    .line 1783
    const/16 v16, 0x0

    .line 1784
    .line 1785
    const/16 v17, 0x0

    .line 1786
    .line 1787
    const/16 v18, 0x0

    .line 1788
    .line 1789
    const/16 v19, 0x0

    .line 1790
    .line 1791
    const/16 v20, 0x0

    .line 1792
    .line 1793
    invoke-static/range {v12 .. v22}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v1

    .line 1797
    invoke-virtual {v4, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1798
    .line 1799
    .line 1800
    move-result v0

    .line 1801
    if-eqz v0, :cond_68

    .line 1802
    .line 1803
    goto/16 :goto_3a

    .line 1804
    .line 1805
    :cond_69
    instance-of v5, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 1806
    .line 1807
    if-eqz v5, :cond_6e

    .line 1808
    .line 1809
    check-cast v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 1810
    .line 1811
    iget-object v2, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 1812
    .line 1813
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1814
    .line 1815
    .line 1816
    iget-object v5, v2, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->authenticationTypes:Ljava/util/List;

    .line 1817
    .line 1818
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v5

    .line 1822
    sget-object v6, Lapp/k9mail/autodiscovery/api/AuthenticationType;->OAuth2:Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 1823
    .line 1824
    if-ne v5, v6, :cond_6a

    .line 1825
    .line 1826
    move v10, v15

    .line 1827
    :cond_6a
    if-eqz v10, :cond_6b

    .line 1828
    .line 1829
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 1830
    .line 1831
    new-instance v5, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 1832
    .line 1833
    iget-object v2, v2, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->hostname:Ljava/lang/String;

    .line 1834
    .line 1835
    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1836
    .line 1837
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v3

    .line 1841
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1842
    .line 1843
    iget-object v3, v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 1844
    .line 1845
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 1846
    .line 1847
    const/16 v6, 0x3c

    .line 1848
    .line 1849
    invoke-direct {v5, v6, v2, v3}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1850
    .line 1851
    .line 1852
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 1853
    .line 1854
    invoke-virtual {v1, v5}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->initState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;)V

    .line 1855
    .line 1856
    .line 1857
    :cond_6b
    :goto_37
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v1

    .line 1861
    move-object/from16 v16, v1

    .line 1862
    .line 1863
    check-cast v16, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1864
    .line 1865
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    if-eqz v10, :cond_6c

    .line 1869
    .line 1870
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->OAUTH:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 1871
    .line 1872
    :goto_38
    move-object/from16 v17, v2

    .line 1873
    .line 1874
    goto :goto_39

    .line 1875
    :cond_6c
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->PASSWORD:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 1876
    .line 1877
    goto :goto_38

    .line 1878
    :goto_39
    xor-int/lit8 v25, v10, 0x1

    .line 1879
    .line 1880
    const/16 v24, 0x0

    .line 1881
    .line 1882
    const/16 v26, 0xf6

    .line 1883
    .line 1884
    const/16 v18, 0x0

    .line 1885
    .line 1886
    const/16 v19, 0x0

    .line 1887
    .line 1888
    const/16 v21, 0x0

    .line 1889
    .line 1890
    const/16 v22, 0x0

    .line 1891
    .line 1892
    const/16 v23, 0x0

    .line 1893
    .line 1894
    move-object/from16 v20, v0

    .line 1895
    .line 1896
    invoke-static/range {v16 .. v26}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v0

    .line 1900
    invoke-virtual {v4, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v0

    .line 1904
    if-eqz v0, :cond_6d

    .line 1905
    .line 1906
    goto :goto_3a

    .line 1907
    :cond_6d
    move-object/from16 v0, v20

    .line 1908
    .line 1909
    goto :goto_37

    .line 1910
    :cond_6e
    instance-of v3, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NetworkError;

    .line 1911
    .line 1912
    if-eqz v3, :cond_6f

    .line 1913
    .line 1914
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error$NetworkError;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error$NetworkError;

    .line 1915
    .line 1916
    invoke-static {v1, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->access$updateError(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;)V

    .line 1917
    .line 1918
    .line 1919
    goto :goto_3a

    .line 1920
    :cond_6f
    instance-of v0, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$UnexpectedException;

    .line 1921
    .line 1922
    if-eqz v0, :cond_70

    .line 1923
    .line 1924
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error$UnknownError;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error$UnknownError;

    .line 1925
    .line 1926
    invoke-static {v1, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->access$updateError(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;)V

    .line 1927
    .line 1928
    .line 1929
    goto :goto_3a

    .line 1930
    :cond_70
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1931
    .line 1932
    .line 1933
    goto/16 :goto_35

    .line 1934
    .line 1935
    :goto_3a
    return-object v11

    .line 1936
    :pswitch_13
    check-cast v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 1937
    .line 1938
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1939
    .line 1940
    if-eqz v1, :cond_72

    .line 1941
    .line 1942
    if-ne v1, v15, :cond_71

    .line 1943
    .line 1944
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    move-object/from16 v0, p1

    .line 1948
    .line 1949
    goto :goto_3b

    .line 1950
    :cond_71
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1951
    .line 1952
    .line 1953
    move-object v11, v2

    .line 1954
    goto :goto_3c

    .line 1955
    :cond_72
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1956
    .line 1957
    .line 1958
    iget-object v1, v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;->accountStateLoader:Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 1959
    .line 1960
    iget-object v2, v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 1961
    .line 1962
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1963
    .line 1964
    invoke-virtual {v1, v2, v0}, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->execute(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v0

    .line 1968
    if-ne v0, v13, :cond_73

    .line 1969
    .line 1970
    move-object v11, v13

    .line 1971
    goto :goto_3c

    .line 1972
    :cond_73
    :goto_3b
    move-object v1, v0

    .line 1973
    check-cast v1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 1974
    .line 1975
    iget-object v3, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1976
    .line 1977
    :cond_74
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v0

    .line 1981
    move-object v2, v0

    .line 1982
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 1983
    .line 1984
    invoke-static {v1}, Landroidx/work/OperationKt;->toOutgoingServerSettingsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v2

    .line 1988
    invoke-virtual {v3, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1989
    .line 1990
    .line 1991
    move-result v0

    .line 1992
    if-eqz v0, :cond_74

    .line 1993
    .line 1994
    :goto_3c
    return-object v11

    .line 1995
    :pswitch_14
    check-cast v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 1996
    .line 1997
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 1998
    .line 1999
    if-eqz v1, :cond_76

    .line 2000
    .line 2001
    if-ne v1, v15, :cond_75

    .line 2002
    .line 2003
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2004
    .line 2005
    .line 2006
    move-object/from16 v0, p1

    .line 2007
    .line 2008
    goto :goto_3d

    .line 2009
    :cond_75
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2010
    .line 2011
    .line 2012
    move-object v11, v2

    .line 2013
    goto :goto_3e

    .line 2014
    :cond_76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2015
    .line 2016
    .line 2017
    iget-object v1, v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;->accountStateLoader:Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 2018
    .line 2019
    iget-object v2, v14, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 2020
    .line 2021
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2022
    .line 2023
    invoke-virtual {v1, v2, v0}, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->execute(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    if-ne v0, v13, :cond_77

    .line 2028
    .line 2029
    move-object v11, v13

    .line 2030
    goto :goto_3e

    .line 2031
    :cond_77
    :goto_3d
    move-object v1, v0

    .line 2032
    check-cast v1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 2033
    .line 2034
    iget-object v4, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2035
    .line 2036
    :cond_78
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v0

    .line 2040
    move-object v2, v0

    .line 2041
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 2042
    .line 2043
    invoke-static {v1}, Landroidx/work/Data$Companion;->toIncomingServerSettingsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v2

    .line 2047
    invoke-virtual {v4, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2048
    .line 2049
    .line 2050
    move-result v0

    .line 2051
    if-eqz v0, :cond_78

    .line 2052
    .line 2053
    :goto_3e
    return-object v11

    .line 2054
    :pswitch_15
    check-cast v14, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 2055
    .line 2056
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2057
    .line 2058
    if-eqz v1, :cond_7a

    .line 2059
    .line 2060
    if-ne v1, v15, :cond_79

    .line 2061
    .line 2062
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2063
    .line 2064
    .line 2065
    goto :goto_3f

    .line 2066
    :cond_79
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    move-object v11, v2

    .line 2070
    goto :goto_3f

    .line 2071
    :cond_7a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2072
    .line 2073
    .line 2074
    iget-object v1, v14, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->windowInfoTracker:Landroidx/window/layout/FoldingFeature$State;

    .line 2075
    .line 2076
    iget-object v4, v14, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->activity:Landroid/app/Activity;

    .line 2077
    .line 2078
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2082
    .line 2083
    .line 2084
    new-instance v5, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 2085
    .line 2086
    invoke-direct {v5, v1, v4, v2, v3}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2087
    .line 2088
    .line 2089
    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v1

    .line 2093
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2094
    .line 2095
    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 2096
    .line 2097
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v1

    .line 2101
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v1

    .line 2105
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 2106
    .line 2107
    const/4 v7, 0x5

    .line 2108
    invoke-direct {v2, v7, v14}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 2109
    .line 2110
    .line 2111
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2112
    .line 2113
    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    if-ne v0, v13, :cond_7b

    .line 2118
    .line 2119
    move-object v11, v13

    .line 2120
    :cond_7b
    :goto_3f
    return-object v11

    .line 2121
    :pswitch_16
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2122
    .line 2123
    if-eqz v1, :cond_7d

    .line 2124
    .line 2125
    if-ne v1, v15, :cond_7c

    .line 2126
    .line 2127
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2128
    .line 2129
    .line 2130
    move-object/from16 v0, p1

    .line 2131
    .line 2132
    goto :goto_40

    .line 2133
    :cond_7c
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2134
    .line 2135
    .line 2136
    move-object v0, v2

    .line 2137
    goto :goto_40

    .line 2138
    :cond_7d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2139
    .line 2140
    .line 2141
    check-cast v14, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2142
    .line 2143
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2144
    .line 2145
    invoke-static {v14, v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->access$setupAndRunConstraintTrackingWork(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v0

    .line 2149
    if-ne v0, v13, :cond_7e

    .line 2150
    .line 2151
    move-object v0, v13

    .line 2152
    :cond_7e
    :goto_40
    return-object v0

    .line 2153
    :pswitch_17
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2154
    .line 2155
    if-eqz v1, :cond_80

    .line 2156
    .line 2157
    if-ne v1, v15, :cond_7f

    .line 2158
    .line 2159
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2160
    .line 2161
    .line 2162
    goto :goto_41

    .line 2163
    :cond_7f
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2164
    .line 2165
    .line 2166
    move-object v11, v2

    .line 2167
    goto :goto_41

    .line 2168
    :cond_80
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2169
    .line 2170
    .line 2171
    check-cast v14, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2172
    .line 2173
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2174
    .line 2175
    invoke-virtual {v14, v0}, Landroidx/room/TriggerBasedInvalidationTracker;->syncTriggers$room_runtime_release(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v0

    .line 2179
    if-ne v0, v13, :cond_81

    .line 2180
    .line 2181
    move-object v11, v13

    .line 2182
    :cond_81
    :goto_41
    return-object v11

    .line 2183
    :pswitch_18
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2184
    .line 2185
    if-eqz v1, :cond_83

    .line 2186
    .line 2187
    if-ne v1, v15, :cond_82

    .line 2188
    .line 2189
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2190
    .line 2191
    .line 2192
    goto :goto_42

    .line 2193
    :cond_82
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2194
    .line 2195
    .line 2196
    move-object v11, v2

    .line 2197
    goto :goto_42

    .line 2198
    :cond_83
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2199
    .line 2200
    .line 2201
    check-cast v14, Landroidx/room/InvalidationTracker;

    .line 2202
    .line 2203
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2204
    .line 2205
    invoke-virtual {v14, v0}, Landroidx/room/InvalidationTracker;->sync$room_runtime_release(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v0

    .line 2209
    if-ne v0, v13, :cond_84

    .line 2210
    .line 2211
    move-object v11, v13

    .line 2212
    :cond_84
    :goto_42
    return-object v11

    .line 2213
    :pswitch_19
    check-cast v14, Lcom/eygraber/uri/Uri$Builder;

    .line 2214
    .line 2215
    iget v1, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2216
    .line 2217
    if-eqz v1, :cond_86

    .line 2218
    .line 2219
    if-ne v1, v15, :cond_85

    .line 2220
    .line 2221
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2222
    .line 2223
    .line 2224
    goto :goto_43

    .line 2225
    :cond_85
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2226
    .line 2227
    .line 2228
    move-object v11, v2

    .line 2229
    goto :goto_44

    .line 2230
    :cond_86
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2231
    .line 2232
    .line 2233
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2234
    .line 2235
    .line 2236
    iput v15, v0, Landroidx/lifecycle/BlockRunner$cancel$1;->label:I

    .line 2237
    .line 2238
    const-wide/16 v3, 0x1388

    .line 2239
    .line 2240
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v0

    .line 2244
    if-ne v0, v13, :cond_87

    .line 2245
    .line 2246
    move-object v11, v13

    .line 2247
    goto :goto_44

    .line 2248
    :cond_87
    :goto_43
    iget-object v0, v14, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 2249
    .line 2250
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData;

    .line 2251
    .line 2252
    iget v0, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 2253
    .line 2254
    if-lez v0, :cond_88

    .line 2255
    .line 2256
    goto :goto_44

    .line 2257
    :cond_88
    iget-object v0, v14, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 2258
    .line 2259
    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2260
    .line 2261
    if-eqz v0, :cond_89

    .line 2262
    .line 2263
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 2264
    .line 2265
    .line 2266
    :cond_89
    iput-object v2, v14, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 2267
    .line 2268
    :goto_44
    return-object v11

    .line 2269
    :pswitch_data_0
    .packed-switch 0x0
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
