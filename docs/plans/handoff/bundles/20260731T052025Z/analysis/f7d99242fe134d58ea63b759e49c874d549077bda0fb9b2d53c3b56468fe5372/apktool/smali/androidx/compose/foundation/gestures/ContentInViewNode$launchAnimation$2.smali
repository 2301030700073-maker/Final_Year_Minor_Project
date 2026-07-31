.class public final Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationState:Ljava/lang/Object;

.field public final synthetic $bringIntoViewSpec:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $viewportAdjustmentForReverseScroll:J

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$animationState:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$bringIntoViewSpec:Ljava/lang/Object;

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$animationState:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$bringIntoViewSpec:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$bringIntoViewSpec:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$animationState:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 11
    .line 12
    move-object v4, v2

    .line 13
    check-cast v4, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    check-cast v5, Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 19
    .line 20
    move-object v8, p2

    .line 21
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v3, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    return-object v3

    .line 27
    :pswitch_0
    move-object v8, p2

    .line 28
    new-instance v4, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v5, p2

    .line 33
    check-cast v5, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 34
    .line 35
    move-object v6, v2

    .line 36
    check-cast v6, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 37
    .line 38
    move-object v7, v1

    .line 39
    check-cast v7, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 42
    .line 43
    move-object v10, v8

    .line 44
    move-wide v8, v0

    .line 45
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, v4, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    return-object v4

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$bringIntoViewSpec:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    iget-object v6, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$animationState:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v6, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 26
    .line 27
    iget v10, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 28
    .line 29
    const/4 v11, 0x4

    .line 30
    const/4 v12, 0x3

    .line 31
    const/4 v13, 0x2

    .line 32
    if-eqz v10, :cond_5

    .line 33
    .line 34
    if-eq v10, v7, :cond_4

    .line 35
    .line 36
    if-eq v10, v13, :cond_3

    .line 37
    .line 38
    if-eq v10, v12, :cond_0

    .line 39
    .line 40
    if-ne v10, v11, :cond_2

    .line 41
    .line 42
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    move-object v5, v8

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v5, v9

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_3
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v4, v3

    .line 62
    move-object/from16 v3, p1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v3, p1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v7, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 79
    .line 80
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 81
    .line 82
    sget-object v4, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 83
    .line 84
    new-instance v7, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 85
    .line 86
    invoke-direct {v7, v6, v3, v9, v11}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v7, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-ne v3, v5, :cond_6

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_6
    :goto_0
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 98
    .line 99
    iget-object v4, v6, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 100
    .line 101
    iput-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v3, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 104
    .line 105
    iput v13, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 106
    .line 107
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 108
    .line 109
    sget-object v7, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 110
    .line 111
    new-instance v14, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 112
    .line 113
    const/16 v20, 0x0

    .line 114
    .line 115
    const/4 v15, 0x4

    .line 116
    iget-wide v11, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 117
    .line 118
    move-object/from16 v19, v3

    .line 119
    .line 120
    move-object/from16 v18, v4

    .line 121
    .line 122
    move-wide/from16 v16, v11

    .line 123
    .line 124
    invoke-direct/range {v14 .. v20}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v7, v14, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    if-ne v3, v5, :cond_7

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    move-object/from16 v4, v19

    .line 135
    .line 136
    :goto_1
    check-cast v3, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 137
    .line 138
    iget-wide v11, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 139
    .line 140
    if-nez v3, :cond_8

    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "Folder with ID "

    .line 145
    .line 146
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, " not found"

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iput-object v9, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v9, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 169
    .line 170
    const/4 v13, 0x3

    .line 171
    iput v13, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 172
    .line 173
    sget-object v2, Lcom/fsck/k9/ui/managefolders/FolderNotFound;->INSTANCE:Lcom/fsck/k9/ui/managefolders/FolderNotFound;

    .line 174
    .line 175
    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/LiveDataScopeImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-ne v0, v5, :cond_1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_8
    iput-object v4, v6, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 183
    .line 184
    iput-wide v11, v6, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderId:J

    .line 185
    .line 186
    new-instance v2, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;

    .line 187
    .line 188
    iget-object v7, v3, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 189
    .line 190
    new-instance v11, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;

    .line 191
    .line 192
    iget-object v6, v6, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 193
    .line 194
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 195
    .line 196
    invoke-direct {v11, v6, v4, v3}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, v7, v11}, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;-><init>(Lnet/thunderbird/feature/mail/folder/api/Folder;Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;)V

    .line 200
    .line 201
    .line 202
    iput-object v9, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v9, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 205
    .line 206
    const/4 v10, 0x4

    .line 207
    iput v10, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 208
    .line 209
    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/LiveDataScopeImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-ne v0, v5, :cond_1

    .line 214
    .line 215
    :goto_2
    return-object v5

    .line 216
    :pswitch_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->this$0:Ljava/lang/Object;

    .line 217
    .line 218
    move-object v12, v1

    .line 219
    check-cast v12, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 220
    .line 221
    iget-object v1, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 222
    .line 223
    iget v10, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 224
    .line 225
    if-eqz v10, :cond_a

    .line 226
    .line 227
    if-ne v10, v7, :cond_9

    .line 228
    .line 229
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    goto :goto_6

    .line 235
    :catch_0
    move-exception v0

    .line 236
    move-object v9, v0

    .line 237
    goto :goto_5

    .line 238
    :cond_9
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    move-object v5, v9

    .line 242
    goto :goto_4

    .line 243
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->L$0:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 249
    .line 250
    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 255
    .line 256
    .line 257
    move-result-object v16

    .line 258
    :try_start_1
    iput-boolean v7, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 259
    .line 260
    iget-object v4, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 261
    .line 262
    sget-object v10, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 263
    .line 264
    move-object v11, v10

    .line 265
    new-instance v10, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;

    .line 266
    .line 267
    check-cast v6, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 268
    .line 269
    move-object v13, v3

    .line 270
    check-cast v13, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 271
    .line 272
    iget-wide v14, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->$viewportAdjustmentForReverseScroll:J

    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    move-object v3, v11

    .line 277
    move-object v11, v6

    .line 278
    invoke-direct/range {v10 .. v17}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;-><init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 279
    .line 280
    .line 281
    iput v7, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;->label:I

    .line 282
    .line 283
    invoke-virtual {v4, v3, v10, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-ne v0, v5, :cond_b

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_b
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->resumeAndRemoveAll()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .line 292
    .line 293
    iput-boolean v2, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 294
    .line 295
    invoke-virtual {v1, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->cancelAndRemoveAll(Ljava/util/concurrent/CancellationException;)V

    .line 296
    .line 297
    .line 298
    iput-boolean v2, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 299
    .line 300
    move-object v5, v8

    .line 301
    :goto_4
    return-object v5

    .line 302
    :goto_5
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :goto_6
    iput-boolean v2, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 304
    .line 305
    invoke-virtual {v1, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->cancelAndRemoveAll(Ljava/util/concurrent/CancellationException;)V

    .line 306
    .line 307
    .line 308
    iput-boolean v2, v12, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 309
    .line 310
    throw v0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
