.class public final Lnet/thunderbird/core/logging/legacy/Log;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/Logger;


# static fields
.field public static final INSTANCE:Lnet/thunderbird/core/logging/legacy/Log;

.field public static logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/core/logging/legacy/Log;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/core/logging/legacy/Log;->INSTANCE:Lnet/thunderbird/core/logging/legacy/Log;

    .line 7
    .line 8
    return-void
.end method

.method public static final varargs d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 17
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    move-result-object v0

    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p1, p2, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, p0, v1, p1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 17
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    move-result-object v0

    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, p0, v1, p1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    :try_start_0
    array-length v0, p1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/16 v6, 0x3f

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v1, p1

    .line 33
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " (Error formatting message: "

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ", args: "

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ")"

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static getLogger()Lnet/thunderbird/core/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/logging/legacy/Log;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "logger"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public static final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/io/Sink$-CC;->info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 18
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    move-result-object v0

    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static final varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-direct {v1, p1, p2, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {v0, p2, p0, v1, p1}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final varargs w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 16
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    move-result-object v0

    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 p1, 0x1

    invoke-static {v0, p0, v1, p1}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-static {v0, p0, v1, v2}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
