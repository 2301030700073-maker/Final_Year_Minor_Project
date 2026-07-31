.class public final Lcom/fsck/k9/job/SyncDebugWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final baseLogger:Lnet/thunderbird/core/logging/Logger;

.field public final fileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/logging/file/FileLogSink;Lnet/thunderbird/core/logging/composite/CompositeLogSink;Landroidx/work/WorkerParameters;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p5}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/fsck/k9/job/SyncDebugWorker;->baseLogger:Lnet/thunderbird/core/logging/Logger;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/fsck/k9/job/SyncDebugWorker;->fileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/fsck/k9/job/SyncDebugWorker;->syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/fsck/k9/job/SyncDebugWorker;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;-><init>(Lcom/fsck/k9/job/SyncDebugWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    iget-object v4, p0, Lcom/fsck/k9/job/SyncDebugWorker;->fileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v5, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object p1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 59
    .line 60
    const-string v1, "exportUriString"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    new-instance p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 69
    .line 70
    invoke-direct {p1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    sget-object v1, Lcom/eygraber/uri/Uri;->Companion:Lcom/eygraber/uri/Uri$Companion;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/eygraber/uri/uris/StringUri;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Lcom/eygraber/uri/uris/StringUri;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput v5, v0, Lcom/fsck/k9/job/SyncDebugWorker$doWork$1;->label:I

    .line 85
    .line 86
    move-object p1, v4

    .line 87
    check-cast p1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1, v0}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->export$suspendImpl(Lnet/thunderbird/core/logging/file/AndroidFileLogSink;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 97
    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    new-instance v0, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v0, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/fsck/k9/job/SyncDebugWorker;->baseLogger:Lnet/thunderbird/core/logging/Logger;

    .line 112
    .line 113
    invoke-static {v1, v2, p1, v0, v5}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 117
    .line 118
    invoke-direct {p1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 119
    .line 120
    .line 121
    :goto_3
    iget-object v0, p0, Lcom/fsck/k9/job/SyncDebugWorker;->syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 122
    .line 123
    check-cast v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;

    .line 124
    .line 125
    iget-object v0, v0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->manager:Lokhttp3/Headers$Builder;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/job/SyncDebugWorker;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 142
    .line 143
    move-object v0, p0

    .line 144
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v0, v4, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 151
    .line 152
    const/4 v1, 0x5

    .line 153
    invoke-static {v0, v3, v3, v3, v1}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->copy$default(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;ZZZI)Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    const/4 v10, 0x0

    .line 158
    const/16 v11, 0x5f

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    invoke-static/range {v4 .. v11}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-object p1
.end method
