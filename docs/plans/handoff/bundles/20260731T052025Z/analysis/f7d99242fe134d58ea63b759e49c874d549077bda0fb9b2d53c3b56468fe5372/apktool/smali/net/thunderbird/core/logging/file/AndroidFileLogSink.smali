.class public final Lnet/thunderbird/core/logging/file/AndroidFileLogSink;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/file/FileLogSink;


# instance fields
.field public final accumulatedLogs:Ljava/util/ArrayList;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

.field public final level:Lnet/thunderbird/core/logging/LogLevel;

.field public final logFile:Ljava/io/File;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/file/DefaultFileManager;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lnet/thunderbird/core/logging/LogLevel;->DEBUG:Lnet/thunderbird/core/logging/LogLevel;

    .line 12
    .line 13
    iput-object v1, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->level:Lnet/thunderbird/core/logging/LogLevel;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {v0, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 30
    .line 31
    new-instance p2, Ljava/io/File;

    .line 32
    .line 33
    const-string v0, ".txt"

    .line 34
    .line 35
    const-string v1, "thunderbird-sync-debug"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->logFile:Ljava/io/File;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->accumulatedLogs:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 54
    .line 55
    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 59
    .line 60
    new-instance p0, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static export$suspendImpl(Lnet/thunderbird/core/logging/file/AndroidFileLogSink;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;-><init>(Lnet/thunderbird/core/logging/file/AndroidFileLogSink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$0:Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    iget-object p1, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$1:Lcom/eygraber/uri/uris/StringUri;

    .line 53
    .line 54
    iget-object p0, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$0:Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->accumulatedLogs:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    iput-object p0, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$0:Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 72
    .line 73
    iput-object p1, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$1:Lcom/eygraber/uri/uris/StringUri;

    .line 74
    .line 75
    iput v4, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->writeToLogFile(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p2, v5, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    iget-object p2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->logFile:Ljava/io/File;

    .line 85
    .line 86
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Lorg/slf4j/helpers/Util;->toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v1, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 95
    .line 96
    iput-object p0, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$0:Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 97
    .line 98
    iput-object v2, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->L$1:Lcom/eygraber/uri/uris/StringUri;

    .line 99
    .line 100
    iput v3, v0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$export$1;->label:I

    .line 101
    .line 102
    invoke-virtual {v1, p2, p1}, Lnet/thunderbird/core/file/DefaultFileManager;->copy(Lcom/eygraber/uri/Uri;Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-ne p2, v5, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v5

    .line 109
    :cond_5
    :goto_3
    check-cast p2, Lnet/thunderbird/core/outcome/Outcome;

    .line 110
    .line 111
    instance-of p1, p2, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    new-instance p1, Ljava/io/FileOutputStream;

    .line 116
    .line 117
    iget-object p0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->logFile:Ljava/io/File;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    sget p0, Lkotlinx/io/JvmCoreKt;->$r8$clinit:I

    .line 123
    .line 124
    new-instance p0, Lkotlinx/io/OutputStreamSink;

    .line 125
    .line 126
    invoke-direct {p0, p1}, Lkotlinx/io/OutputStreamSink;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    new-instance p2, Lkotlinx/io/Buffer;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .line 136
    invoke-virtual {p0, p2, v0, v1}, Lkotlinx/io/OutputStreamSink;->write(Lkotlinx/io/Buffer;J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lkotlinx/io/OutputStreamSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lkotlinx/io/OutputStreamSink;->close()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 146
    .line 147
    .line 148
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p0

    .line 151
    :catchall_0
    move-exception p2

    .line 152
    invoke-virtual {p0}, Lkotlinx/io/OutputStreamSink;->close()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 156
    .line 157
    .line 158
    throw p2

    .line 159
    :cond_6
    check-cast p2, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 160
    .line 161
    iget-object p0, p2, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 162
    .line 163
    const-string p1, "Error copying log to destination: "

    .line 164
    .line 165
    invoke-static {p0, p1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v2
.end method


# virtual methods
.method public final bridge canLog(Lnet/thunderbird/core/logging/LogLevel;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$canLog(Lnet/thunderbird/core/logging/LogSink;Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getLevel()Lnet/thunderbird/core/logging/LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->level:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final log(Lnet/thunderbird/core/logging/LogEvent;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v2, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iget-object p0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 11
    .line 12
    invoke-static {p0, v2, v2, v0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final writeToLogFile(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->accumulatedLogs:Ljava/util/ArrayList;

    .line 2
    .line 3
    instance-of v1, p1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;

    .line 9
    .line 10
    iget v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;-><init>(Lnet/thunderbird/core/logging/file/AndroidFileLogSink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object v3, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$1:Lkotlinx/io/OutputStreamSink;

    .line 42
    .line 43
    iget-object v1, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$0:Ljava/io/FileOutputStream;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    move-object p1, v1

    .line 49
    move-object v7, v2

    .line 50
    move-object v8, v3

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v6

    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/io/FileOutputStream;

    .line 66
    .line 67
    iget-object v2, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->logFile:Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {p1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 70
    .line 71
    .line 72
    sget v2, Lkotlinx/io/JvmCoreKt;->$r8$clinit:I

    .line 73
    .line 74
    new-instance v2, Lkotlinx/io/OutputStreamSink;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Lkotlinx/io/OutputStreamSink;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    :try_start_1
    iget-object p0, p0, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 85
    .line 86
    iput-object p1, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$0:Ljava/io/FileOutputStream;

    .line 87
    .line 88
    iput-object v2, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$1:Lkotlinx/io/OutputStreamSink;

    .line 89
    .line 90
    iput-object v4, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    iput-object p0, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 93
    .line 94
    iput v3, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink$writeToLogFile$1;->label:I

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 100
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 101
    .line 102
    if-ne v1, v3, :cond_3

    .line 103
    .line 104
    return-object v3

    .line 105
    :cond_3
    move-object v8, v2

    .line 106
    move-object v7, v4

    .line 107
    :goto_1
    :try_start_2
    const-string v1, "\n"

    .line 108
    .line 109
    const-string v3, "\n"

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const/16 v5, 0x3a

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    .line 123
    .line 124
    :try_start_3
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance p0, Lkotlinx/io/Buffer;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v0}, Lkotlinx/io/Sink$-CC;->write$default(Lkotlinx/io/Buffer;[B)V

    .line 146
    .line 147
    .line 148
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 149
    .line 150
    invoke-interface {v8, p0, v0, v1}, Lkotlinx/io/RawSink;->write(Lkotlinx/io/Buffer;J)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v8}, Lkotlinx/io/RawSink;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    .line 155
    .line 156
    invoke-interface {v8}, Lkotlinx/io/RawSink;->close()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    move-object p0, v0

    .line 167
    move-object v1, p1

    .line 168
    move-object v3, v8

    .line 169
    goto :goto_2

    .line 170
    :catchall_2
    move-exception v0

    .line 171
    :try_start_4
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :catchall_3
    move-exception v0

    .line 176
    move-object p0, v0

    .line 177
    move-object v1, p1

    .line 178
    move-object v3, v2

    .line 179
    :goto_2
    invoke-interface {v3}, Lkotlinx/io/RawSink;->close()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 183
    .line 184
    .line 185
    throw p0
.end method
