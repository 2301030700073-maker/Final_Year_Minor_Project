.class public final Lio/sentry/UncaughtExceptionHandlerIntegration;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
    }
.end annotation


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private hub:Lio/sentry/IHub;

.field private options:Lio/sentry/SentryOptions;

.field private registered:Z

.field private final threadAdapter:Lio/sentry/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-static {}, Lio/sentry/UncaughtExceptionHandler$Adapter;->getInstance()Lio/sentry/UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>(Lio/sentry/UncaughtExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/UncaughtExceptionHandler;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    .line 42
    const-string v0, "threadAdapter is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/UncaughtExceptionHandler;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    return-void
.end method

.method static getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 154
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    const/4 v1, 0x0

    .line 155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setHandled(Ljava/lang/Boolean;)V

    .line 156
    const-string v1, "UncaughtExceptionHandler"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 157
    new-instance v1, Lio/sentry/exception/ExceptionMechanismException;

    invoke-direct {v1, v0, p1, p0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 162
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    invoke-interface {v0}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v1}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 165
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UncaughtExceptionHandlerIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    .line 47
    iget-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Attempt to register a UncaughtExceptionHandlerIntegration twice."

    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    .line 57
    const-string v0, "Hub is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    .line 58
    const-string p1, "SentryOptions is required"

    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 61
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 65
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 62
    const-string v2, "UncaughtExceptionHandlerIntegration enabled: %s"

    invoke-interface {p1, p2, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 69
    invoke-interface {p1}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 72
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default UncaughtExceptionHandler class=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 73
    invoke-interface {p2, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    instance-of p2, p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    if-eqz p2, :cond_1

    .line 80
    check-cast p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 82
    iget-object p1, p1, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    .line 84
    :cond_1
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 88
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    invoke-interface {p1, p0}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 90
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 91
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "UncaughtExceptionHandlerIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string p1, "UncaughtExceptionHandler"

    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 99
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Uncaught exception received."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :try_start_0
    new-instance v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 104
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;-><init>(JLio/sentry/ILogger;)V

    .line 105
    invoke-static {p1, p2}, Lio/sentry/UncaughtExceptionHandlerIntegration;->getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, v1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 107
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v1}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 109
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    invoke-interface {v1}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->setFlushable(Lio/sentry/protocol/SentryId;)V

    .line 114
    :cond_0
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 116
    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    invoke-interface {v4, v2, v1}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 117
    sget-object v5, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 118
    invoke-static {v1}, Lio/sentry/util/HintUtils;->getEventDropReason(Lio/sentry/Hint;)Lio/sentry/hints/EventDropReason;

    move-result-object v1

    if-eqz v4, :cond_1

    .line 121
    sget-object v4, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    .line 122
    invoke-virtual {v4, v1}, Lio/sentry/hints/EventDropReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    invoke-virtual {v0}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->waitFlush()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 126
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Timed out waiting to flush event to disk before crashing. Event: %s"

    .line 130
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 127
    invoke-interface {v0, v1, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 134
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 135
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error sending uncaught exception to Sentry."

    .line 136
    invoke-interface {v1, v2, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Invoking inner uncaught exception handler."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isPrintUncaughtStackTrace()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
