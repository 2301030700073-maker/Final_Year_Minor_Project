.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentUri:Landroid/net/Uri;

.field public I$0:I

.field public J$0:J

.field public L$1:Lcom/fsck/k9/preferences/ImportResults;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->this$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->$contentUri:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;

    .line 2
    .line 3
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->this$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->$contentUri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->this$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 4
    .line 5
    iget-object v7, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    iget-object v8, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 8
    .line 9
    iget v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->label:I

    .line 10
    .line 11
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x2

    .line 15
    const/4 v12, 0x1

    .line 16
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-eq v1, v12, :cond_1

    .line 21
    .line 22
    if-ne v1, v11, :cond_0

    .line 23
    .line 24
    iget v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->I$0:I

    .line 25
    .line 26
    iget-boolean v3, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->Z$0:Z

    .line 27
    .line 28
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->L$1:Lcom/fsck/k9/preferences/ImportResults;

    .line 29
    .line 30
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    return-object v0

    .line 45
    :cond_1
    iget-wide v3, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->J$0:J

    .line 46
    .line 47
    iget v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->I$0:I

    .line 48
    .line 49
    iget-boolean v5, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->Z$0:Z

    .line 50
    .line 51
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    move-wide v10, v3

    .line 55
    move v3, v5

    .line 56
    move v4, v1

    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getContainsGeneralSettings()Z

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-eqz v14, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getIncludeGeneralSettings()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    move v4, v12

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v4, v10

    .line 78
    :goto_0
    iget-object v1, v8, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 85
    .line 86
    new-instance v5, Lkotlin/sequences/FilteringSequence;

    .line 87
    .line 88
    invoke-direct {v5, v1, v12, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/16 v3, 0x13

    .line 94
    .line 95
    invoke-direct {v1, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 99
    .line 100
    invoke-direct {v3, v5, v12, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    invoke-direct {v1, v2, v10}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;I)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Lkotlin/sequences/TakeWhileSequence;

    .line 109
    .line 110
    invoke-direct {v5, v3, v1, v11}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v5}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v3, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->$contentUri:Landroid/net/Uri;

    .line 124
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v10

    .line 129
    iget-object v1, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 130
    .line 131
    move-object v6, v1

    .line 132
    new-instance v1, Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$2$1;

    .line 133
    .line 134
    move-object/from16 v16, v6

    .line 135
    .line 136
    const/4 v6, 0x0

    .line 137
    move-object/from16 v15, v16

    .line 138
    .line 139
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$2$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;ZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 140
    .line 141
    .line 142
    iput-boolean v14, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->Z$0:Z

    .line 143
    .line 144
    iput v4, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->I$0:I

    .line 145
    .line 146
    iput-wide v10, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->J$0:J

    .line 147
    .line 148
    iput v12, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->label:I

    .line 149
    .line 150
    invoke-static {v15, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-ne v1, v13, :cond_4

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move v3, v14

    .line 158
    :goto_1
    check-cast v1, Lcom/fsck/k9/preferences/ImportResults;

    .line 159
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    sub-long/2addr v5, v10

    .line 165
    new-instance v10, Ljava/lang/Long;

    .line 166
    .line 167
    invoke-direct {v10, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    const-wide/16 v10, 0x1f4

    .line 175
    .line 176
    cmp-long v14, v5, v10

    .line 177
    .line 178
    if-gez v14, :cond_6

    .line 179
    .line 180
    sub-long/2addr v10, v5

    .line 181
    iput-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->L$1:Lcom/fsck/k9/preferences/ImportResults;

    .line 182
    .line 183
    iput-boolean v3, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->Z$0:Z

    .line 184
    .line 185
    iput v4, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->I$0:I

    .line 186
    .line 187
    iput-wide v5, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->J$0:J

    .line 188
    .line 189
    const/4 v15, 0x2

    .line 190
    iput v15, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;->label:I

    .line 191
    .line 192
    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-ne v0, v13, :cond_5

    .line 197
    .line 198
    :goto_2
    return-object v13

    .line 199
    :cond_5
    move-object v0, v1

    .line 200
    move v1, v4

    .line 201
    :goto_3
    move v4, v1

    .line 202
    move-object v1, v0

    .line 203
    :cond_6
    if-eqz v4, :cond_7

    .line 204
    .line 205
    move v10, v12

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    const/4 v10, 0x0

    .line 208
    :goto_4
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {v0, v3, v2, v1, v10}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;-><init>(ZLapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Lcom/fsck/k9/preferences/ImportResults;Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v8}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    .line 218
    .line 219
    return-object v9

    .line 220
    :goto_5
    iget-object v1, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 221
    .line 222
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 223
    .line 224
    const/16 v3, 0x10

    .line 225
    .line 226
    invoke-direct {v2, v3}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 227
    .line 228
    .line 229
    const-string v3, "SettingsImportViewModel"

    .line 230
    .line 231
    invoke-interface {v1, v3, v0, v2}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showImportErrorText()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-object v9
.end method
