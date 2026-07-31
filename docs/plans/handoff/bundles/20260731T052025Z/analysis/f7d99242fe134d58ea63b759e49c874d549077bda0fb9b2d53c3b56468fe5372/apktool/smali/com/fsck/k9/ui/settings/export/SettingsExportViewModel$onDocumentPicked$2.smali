.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentUri:Landroid/net/Uri;

.field public final synthetic $includeGeneralSettings:Z

.field public final synthetic $selectedAccounts:Ljava/util/Set;

.field public J$0:J

.field public label:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$includeGeneralSettings:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$selectedAccounts:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$contentUri:Landroid/net/Uri;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$selectedAccounts:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$contentUri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$includeGeneralSettings:Z

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->this$0:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 4
    .line 5
    iget-object v7, v2, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    iget-object v8, v2, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 8
    .line 9
    iget v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->label:I

    .line 10
    .line 11
    sget-object v9, Lcom/fsck/k9/ui/settings/export/ButtonState;->GONE:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 12
    .line 13
    const/4 v10, 0x2

    .line 14
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v13, 0x1

    .line 17
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-eq v1, v13, :cond_1

    .line 22
    .line 23
    if-ne v1, v10, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    move-object v15, v11

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object v15, v11

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return-object v0

    .line 40
    :cond_1
    iget-wide v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->J$0:J

    .line 41
    .line 42
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    move-object v15, v11

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :try_start_2
    iget-boolean v3, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$includeGeneralSettings:Z

    .line 51
    .line 52
    iget-object v4, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$selectedAccounts:Ljava/util/Set;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->$contentUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    move-object v15, v11

    .line 57
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 62
    .line 63
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 64
    .line 65
    move-object v6, v1

    .line 66
    new-instance v1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;

    .line 67
    .line 68
    move-object/from16 v16, v6

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    move-object/from16 v12, v16

    .line 72
    .line 73
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    iput-wide v10, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->J$0:J

    .line 77
    .line 78
    iput v13, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->label:I

    .line 79
    .line 80
    invoke-static {v12, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-ne v1, v14, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move-wide v1, v10

    .line 88
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    sub-long/2addr v3, v1

    .line 93
    const-wide/16 v1, 0x3e8

    .line 94
    .line 95
    cmp-long v5, v3, v1

    .line 96
    .line 97
    if-gez v5, :cond_4

    .line 98
    .line 99
    sub-long/2addr v1, v3

    .line 100
    iput-wide v3, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->J$0:J

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    iput v3, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;->label:I

    .line 104
    .line 105
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-ne v0, v14, :cond_4

    .line 110
    .line 111
    :goto_1
    return-object v14

    .line 112
    :catch_1
    move-exception v0

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iput-object v9, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    iput-boolean v1, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 121
    .line 122
    iput-boolean v13, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 123
    .line 124
    iput-boolean v13, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 125
    .line 126
    sget-object v0, Lcom/fsck/k9/ui/settings/export/StatusText;->EXPORT_SUCCESS:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 127
    .line 128
    iput-object v0, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 129
    .line 130
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 131
    .line 132
    .line 133
    return-object v15

    .line 134
    :goto_3
    const-string v1, "Error writing settings file"

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    new-array v3, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v0, v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iput-object v9, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 146
    .line 147
    iput-boolean v2, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 148
    .line 149
    iput-boolean v2, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 150
    .line 151
    iput-boolean v13, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 152
    .line 153
    sget-object v0, Lcom/fsck/k9/ui/settings/export/StatusText;->EXPORT_FAILURE:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 154
    .line 155
    iput-object v0, v8, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v15
.end method
