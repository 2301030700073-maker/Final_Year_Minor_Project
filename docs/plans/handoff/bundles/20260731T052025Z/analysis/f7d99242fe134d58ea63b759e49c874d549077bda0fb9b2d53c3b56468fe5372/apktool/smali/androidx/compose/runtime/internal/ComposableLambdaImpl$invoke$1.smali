.class public final synthetic Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error;

    .line 12
    .line 13
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 16
    .line 17
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 18
    .line 19
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    sget-object v3, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$AccountNotFound;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$AccountNotFound;

    .line 22
    .line 23
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/16 v5, 0xd

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 35
    .line 36
    new-array v3, v7, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p1, v3, v6

    .line 39
    .line 40
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 41
    .line 42
    const p1, 0x7f1205cf

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1, v3}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {p2, p1, v5}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v4, v4, p2, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_0
    instance-of v3, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;

    .line 64
    .line 65
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v8, Lnet/thunderbird/feature/mail/folder/api/FolderServerId;

    .line 68
    .line 69
    invoke-direct {v8, v3}, Lnet/thunderbird/feature/mail/folder/api/FolderServerId;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v8, v3, v6

    .line 78
    .line 79
    aput-object p1, v3, v7

    .line 80
    .line 81
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 82
    .line 83
    const p1, 0x7f1205d3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1, v3}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-direct {p2, p1, v5}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v4, v4, p2, v7}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    instance-of v3, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$UnhandledError;

    .line 100
    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$UnhandledError;

    .line 104
    .line 105
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$UnhandledError;->throwable:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 106
    .line 107
    iget-object v3, p1, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 108
    .line 109
    new-array v8, v7, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v3, v8, v6

    .line 112
    .line 113
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 114
    .line 115
    const v3, 0x7f1205e5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v3, v8}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance v3, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v3, p2, v5}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v4, p1, v3, v7}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 128
    .line 129
    .line 130
    move-object p1, p2

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$InvalidFolderName;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$InvalidFolderName;

    .line 137
    .line 138
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$InvalidFolderName;->folderName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    const p1, 0x7f1205d1

    .line 147
    .line 148
    .line 149
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    new-array v0, v7, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p1, v0, v6

    .line 159
    .line 160
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 161
    .line 162
    const p1, 0x7f1205d4

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$LocalFolderCreationError;

    .line 171
    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$LocalFolderCreationError;

    .line 175
    .line 176
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$LocalFolderCreationError;->folderName:Ljava/lang/String;

    .line 177
    .line 178
    new-array v0, v7, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object p1, v0, v6

    .line 181
    .line 182
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 183
    .line 184
    const p1, 0x7f1205d2

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 192
    .line 193
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    move-object v0, p2

    .line 198
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    instance-of v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 204
    .line 205
    if-eqz v3, :cond_6

    .line 206
    .line 207
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 208
    .line 209
    invoke-static {v0, v4, v4, p1, v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_6
    invoke-virtual {p0, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_5

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 221
    .line 222
    .line 223
    move-object v2, v4

    .line 224
    :goto_1
    return-object v2

    .line 225
    :pswitch_0
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 226
    .line 227
    check-cast p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-object v2

    .line 233
    :pswitch_1
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 234
    .line 235
    check-cast p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-object v2

    .line 241
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    .line 242
    .line 243
    iget-wide v5, p1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 244
    .line 245
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 246
    .line 247
    move-object v4, p0

    .line 248
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 249
    .line 250
    iget-object p0, v4, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 251
    .line 252
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 257
    .line 258
    const/4 v8, 0x1

    .line 259
    const/4 v7, 0x0

    .line 260
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;I)V

    .line 261
    .line 262
    .line 263
    invoke-static {p0, v7, v7, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 264
    .line 265
    .line 266
    return-object v2

    .line 267
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    .line 268
    .line 269
    iget-wide v5, p1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 270
    .line 271
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 272
    .line 273
    move-object v4, p0

    .line 274
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 275
    .line 276
    iget-object p0, v4, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 277
    .line 278
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 283
    .line 284
    const/4 v8, 0x2

    .line 285
    const/4 v7, 0x0

    .line 286
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;I)V

    .line 287
    .line 288
    .line 289
    invoke-static {p0, v7, v7, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 290
    .line 291
    .line 292
    return-object v2

    .line 293
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 294
    .line 295
    check-cast p2, Ljava/lang/Number;

    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 302
    .line 303
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    return-object v2

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
