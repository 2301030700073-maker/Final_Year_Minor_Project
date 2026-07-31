.class public final Lnet/thunderbird/core/logging/DefaultLogger;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/Logger;


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final sink:Lnet/thunderbird/core/logging/LogSink;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/LogSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/logging/DefaultLogger;->sink:Lnet/thunderbird/core/logging/LogSink;

    .line 5
    .line 6
    sget-object p1, Lkotlin/time/Clock$System;->INSTANCE:Lkotlin/time/Clock$System;

    .line 7
    .line 8
    iput-object p1, p0, Lnet/thunderbird/core/logging/DefaultLogger;->clock:Lkotlin/time/Clock;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->DEBUG:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lnet/thunderbird/core/logging/DefaultLogger;->log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->ERROR:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lnet/thunderbird/core/logging/DefaultLogger;->log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->INFO:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lnet/thunderbird/core/logging/DefaultLogger;->log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/logging/DefaultLogger;->sink:Lnet/thunderbird/core/logging/LogSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lnet/thunderbird/core/logging/LogSink;->canLog(Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/logging/DefaultLogger;->clock:Lkotlin/time/Clock;

    .line 10
    .line 11
    invoke-interface {p0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    new-instance v1, Lnet/thunderbird/core/logging/LogEvent;

    .line 20
    .line 21
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    move-object v4, p0

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move-object v5, p3

    .line 31
    invoke-direct/range {v1 .. v7}, Lnet/thunderbird/core/logging/LogEvent;-><init>(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lnet/thunderbird/core/logging/LogSink;->log(Lnet/thunderbird/core/logging/LogEvent;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->VERBOSE:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lnet/thunderbird/core/logging/DefaultLogger;->log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->WARN:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lnet/thunderbird/core/logging/DefaultLogger;->log(Lnet/thunderbird/core/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
