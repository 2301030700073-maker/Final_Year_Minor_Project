.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;
.super Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final createArchiveFolder:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final getAccountFolders:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final setArchiveFolder:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lnet/thunderbird/core/common/resources/StringsResourceManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 2

    .line 1
    move-object v0, p7

    .line 2
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 9
    .line 10
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 11
    .line 12
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->shouldShowSetupArchiveFolderDialog:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 33
    .line 34
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 35
    .line 36
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->getAccountFolders:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 37
    .line 38
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->createArchiveFolder:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 39
    .line 40
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->setArchiveFolder:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 41
    .line 42
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 43
    .line 44
    iput-object p7, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 45
    .line 46
    return-void
.end method

.method public static final access$onCreateArchiveFolderSuccess(Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 7
    .line 8
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    instance-of v3, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move-object v3, p2

    .line 15
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;

    .line 16
    .line 17
    iget v4, v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;->label:I

    .line 18
    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    and-int v6, v4, v5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sub-int/2addr v4, v5

    .line 26
    iput v4, v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;->label:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;

    .line 30
    .line 31
    invoke-direct {v3, p0, p2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p2, v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    iget v4, v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;->label:I

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    if-ne v4, v7, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$LocalFolderCreated;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$LocalFolderCreated;

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    const/16 v4, 0xb

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object p1, p0

    .line 74
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    instance-of p2, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 80
    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 84
    .line 85
    const p2, 0x7f1205d5

    .line 86
    .line 87
    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 90
    .line 91
    invoke-virtual {v3, p2}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p1, v6, p2, v6, v4}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_4
    invoke-virtual {v2, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    new-instance p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    const/16 p1, 0x1d

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v6, v6, p0, v5}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_5
    sget-object p2, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$Created;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$Created;

    .line 118
    .line 119
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_9

    .line 124
    .line 125
    :cond_6
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    move-object p2, p1

    .line 130
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    instance-of v8, p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 136
    .line 137
    if-eqz v8, :cond_7

    .line 138
    .line 139
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 140
    .line 141
    const v8, 0x7f1205d6

    .line 142
    .line 143
    .line 144
    move-object v9, v1

    .line 145
    check-cast v9, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 146
    .line 147
    invoke-virtual {v9, v8}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-static {p2, v6, v8, v6, v4}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    :cond_7
    invoke-virtual {v2, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 162
    .line 163
    const/16 p1, 0x64

    .line 164
    .line 165
    sget-object p2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 166
    .line 167
    invoke-static {p1, p2}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 168
    .line 169
    .line 170
    move-result-wide p1

    .line 171
    iput v7, v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel$onCreateArchiveFolderSuccess$1;->label:I

    .line 172
    .line 173
    invoke-static {p1, p2, v3}, Lkotlinx/coroutines/JobKt;->delay-VtjQ1oo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 178
    .line 179
    if-ne p1, p2, :cond_8

    .line 180
    .line 181
    return-object p2

    .line 182
    :cond_8
    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    move-object p2, p1

    .line 187
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    invoke-direct {p2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;-><init>(Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    new-instance p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    invoke-direct {p0, v7}, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v6, v6, p0, v5}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_9
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$SyncStarted;

    .line 219
    .line 220
    if-eqz p0, :cond_c

    .line 221
    .line 222
    :cond_a
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    move-object p2, p0

    .line 227
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    instance-of v3, p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 233
    .line 234
    if-eqz v3, :cond_b

    .line 235
    .line 236
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 237
    .line 238
    const v3, 0x7f1205d0

    .line 239
    .line 240
    .line 241
    move-object v7, v1

    .line 242
    check-cast v7, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 243
    .line 244
    invoke-virtual {v7, v3}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {p2, v6, v3, v6, v4}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    :cond_b
    invoke-virtual {v2, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    if-eqz p0, :cond_a

    .line 257
    .line 258
    new-instance p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    const/16 p2, 0xc

    .line 261
    .line 262
    invoke-direct {p0, p2, p1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v6, v6, p0, v5}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_c
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$UpdatingSpecialFolders;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$UpdatingSpecialFolders;

    .line 270
    .line 271
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    if-eqz p0, :cond_f

    .line 276
    .line 277
    :cond_d
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    move-object p1, p0

    .line 282
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    instance-of p2, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 288
    .line 289
    if-eqz p2, :cond_e

    .line 290
    .line 291
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 292
    .line 293
    const p2, 0x7f1205d8

    .line 294
    .line 295
    .line 296
    move-object v0, v1

    .line 297
    check-cast v0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 298
    .line 299
    invoke-virtual {v0, p2}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-static {p1, v6, p2, v6, v4}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    :cond_e
    invoke-virtual {v2, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_d

    .line 312
    .line 313
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 317
    .line 318
    .line 319
    return-object v6
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$MoveNext;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$MoveNext;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    const-string v2, "The \'"

    .line 14
    .line 15
    iget-object v3, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 16
    .line 17
    iget-object v4, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object p1, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 29
    .line 30
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    move-object p1, p0

    .line 39
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    invoke-direct {p1, v0, v9, v9}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-object v0, p1

    .line 68
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    const/16 v3, 0x1e

    .line 77
    .line 78
    invoke-direct {v0, v2, v9, v9, v3}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;-><init>(ZLjava/util/List;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 92
    .line 93
    const/16 v2, 0x1a

    .line 94
    .line 95
    invoke-direct {v0, p0, v9, v2}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v9, v9, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const-string p0, "\' state doesn\'t support the MoveNext event"

    .line 103
    .line 104
    invoke-static {p1, p0, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iget-object p1, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    .line 118
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 123
    .line 124
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    move-object v8, p1

    .line 129
    check-cast v8, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 130
    .line 131
    iget-object v7, v8, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->selectedFolder:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 132
    .line 133
    if-eqz v7, :cond_5

    .line 134
    .line 135
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v5, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 140
    .line 141
    const/4 v10, 0x6

    .line 142
    move-object v6, p0

    .line 143
    invoke-direct/range {v5 .. v10}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v9, v9, v5, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_5
    const-string p0, "The selected folder is null. This should not happen."

    .line 151
    .line 152
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    const-string p0, "\' state doesn\'t support the OnDoneClicked event"

    .line 157
    .line 158
    invoke-static {p1, p0, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_7
    move-object v6, p0

    .line 163
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDismissClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDismissClicked;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_8

    .line 170
    .line 171
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 176
    .line 177
    const/16 v0, 0x12

    .line 178
    .line 179
    invoke-direct {p1, v6, v9, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 180
    .line 181
    .line 182
    invoke-static {p0, v9, v9, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_8
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoNotShowDialogAgainChanged;

    .line 187
    .line 188
    if-eqz p0, :cond_b

    .line 189
    .line 190
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoNotShowDialogAgainChanged;

    .line 191
    .line 192
    iget-boolean p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoNotShowDialogAgainChanged;->isChecked:Z

    .line 193
    .line 194
    :cond_9
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    move-object v0, p1

    .line 199
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    instance-of v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 205
    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;-><init>(Z)V

    .line 211
    .line 212
    .line 213
    :cond_a
    invoke-virtual {v4, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_b
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnCreateFolderClicked;

    .line 222
    .line 223
    if-eqz p0, :cond_e

    .line 224
    .line 225
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnCreateFolderClicked;

    .line 226
    .line 227
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnCreateFolderClicked;->newFolderName:Ljava/lang/String;

    .line 228
    .line 229
    :cond_c
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    move-object v0, p1

    .line 234
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    instance-of v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 240
    .line 241
    const/4 v2, 0x2

    .line 242
    if-eqz v1, :cond_d

    .line 243
    .line 244
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 245
    .line 246
    const v1, 0x7f1205d7

    .line 247
    .line 248
    .line 249
    iget-object v3, v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 250
    .line 251
    check-cast v3, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 252
    .line 253
    invoke-virtual {v3, v1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v0, p0, v1, v9, v2}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    :cond_d
    invoke-virtual {v4, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_c

    .line 266
    .line 267
    iget-object p1, v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->createArchiveFolder:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    iget-object v0, v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-instance v1, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 281
    .line 282
    invoke-direct {v1, p0, p1, v0, v9}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;)V

    .line 283
    .line 284
    .line 285
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 286
    .line 287
    const/4 p1, 0x0

    .line 288
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 292
    .line 293
    const/4 v0, 0x7

    .line 294
    invoke-direct {p1, v6, v9, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 298
    .line 299
    invoke-direct {v0, p0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 300
    .line 301
    .line 302
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_e
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnFolderSelected;

    .line 311
    .line 312
    if-eqz p0, :cond_11

    .line 313
    .line 314
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnFolderSelected;

    .line 315
    .line 316
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnFolderSelected;->folder:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 317
    .line 318
    :cond_f
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    move-object v0, p1

    .line 323
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    instance-of v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 329
    .line 330
    if-eqz v1, :cond_10

    .line 331
    .line 332
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 333
    .line 334
    const/16 v1, 0x17

    .line 335
    .line 336
    invoke-static {v0, p0, v9, v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :cond_10
    invoke-virtual {v4, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_f

    .line 345
    .line 346
    :goto_0
    return-void

    .line 347
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 348
    .line 349
    .line 350
    return-void
.end method
