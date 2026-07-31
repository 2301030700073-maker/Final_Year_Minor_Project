.class public final Lexpo/modules/updates/logging/UpdatesLogger;
.super Ljava/lang/Object;
.source "UpdatesLogger.kt"

# interfaces
.implements Lexpo/modules/updates/logging/IUpdatesLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/logging/UpdatesLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesLogger.kt\nexpo/modules/updates/logging/UpdatesLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n1557#2:187\n1628#2,3:188\n*S KotlinDebug\n*F\n+ 1 UpdatesLogger.kt\nexpo/modules/updates/logging/UpdatesLogger\n*L\n152#1:187\n152#1:188,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ,\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ,\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ\u0018\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ,\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ,\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ$\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u00142\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ8\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u00142\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ$\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u00142\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ8\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u0016\u001a\u00060\u0013j\u0002`\u00142\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0016JO\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u0016\u001a\u00060\u0013j\u0002`\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0002\u0010!JC\u0010\"\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0002\u0010#R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "Lexpo/modules/updates/logging/IUpdatesLogger;",
        "filesDirectory",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "trace",
        "",
        "message",
        "",
        "code",
        "Lexpo/modules/updates/logging/UpdatesErrorCode;",
        "updateId",
        "assetId",
        "debug",
        "info",
        "warn",
        "error",
        "cause",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "fatal",
        "exception",
        "startTimer",
        "Lexpo/modules/core/logging/LoggerTimer;",
        "label",
        "logger",
        "Lexpo/modules/core/logging/Logger;",
        "logEntryWithCauseExceptionString",
        "level",
        "Lexpo/modules/core/logging/LogType;",
        "duration",
        "",
        "(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "logEntryString",
        "(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/logging/UpdatesLogger$Companion;

.field public static final EXPO_UPDATES_LOGGING_TAG:Ljava/lang/String; = "dev.expo.updates"

.field public static final MAX_FRAMES_IN_STACKTRACE:I = 0x14


# instance fields
.field private final logger:Lexpo/modules/core/logging/Logger;


# direct methods
.method public static synthetic $r8$lambda$WLTPOK9R5r3b5T08MbvZ_mYL2Gs(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/updates/logging/UpdatesLogger;->startTimer$lambda$0(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesLogger;->Companion:Lexpo/modules/updates/logging/UpdatesLogger$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    const-string v0, "filesDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lexpo/modules/core/logging/Logger;

    const/4 v1, 0x2

    .line 129
    new-array v1, v1, [Lexpo/modules/core/logging/LogHandler;

    sget-object v2, Lexpo/modules/core/logging/LogHandlers;->INSTANCE:Lexpo/modules/core/logging/LogHandlers;

    const-string v3, "dev.expo.updates"

    invoke-virtual {v2, v3}, Lexpo/modules/core/logging/LogHandlers;->createOSLogHandler(Ljava/lang/String;)Lexpo/modules/core/logging/LogHandler;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 130
    sget-object v2, Lexpo/modules/core/logging/LogHandlers;->INSTANCE:Lexpo/modules/core/logging/LogHandlers;

    invoke-virtual {v2, p1, v3}, Lexpo/modules/core/logging/LogHandlers;->createPersistentFileLogHandler(Ljava/io/File;Ljava/lang/String;)Lexpo/modules/core/logging/LogHandler;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 128
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-direct {v0, p1}, Lexpo/modules/core/logging/Logger;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    return-void
.end method

.method public static synthetic debug$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 37
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogger;->debug(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic debug$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 44
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/updates/logging/UpdatesLogger;->debug(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic error$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 86
    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic error$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 94
    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 91
    invoke-virtual/range {v0 .. v5}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic fatal$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 104
    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/updates/logging/UpdatesLogger;->fatal(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic fatal$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 112
    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 109
    invoke-virtual/range {v0 .. v5}, Lexpo/modules/updates/logging/UpdatesLogger;->fatal(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 53
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 60
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 167
    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogEntry;

    .line 170
    invoke-virtual {p2}, Lexpo/modules/updates/logging/UpdatesErrorCode;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-virtual {p3}, Lexpo/modules/core/logging/LogType;->getType()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 167
    invoke-direct/range {v1 .. v10}, Lexpo/modules/updates/logging/UpdatesLogEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    invoke-virtual {v0}, Lexpo/modules/updates/logging/UpdatesLogEntry;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final logEntryWithCauseExceptionString(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 147
    invoke-virtual {p3}, Lexpo/modules/updates/logging/UpdatesErrorCode;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {p4}, Lexpo/modules/core/logging/LogType;->getType()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->take([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 189
    check-cast v4, Ljava/lang/StackTraceElement;

    .line 152
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "toString(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_0
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 144
    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogEntry;

    move-object v1, v0

    move-object v4, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lexpo/modules/updates/logging/UpdatesLogEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 155
    invoke-virtual {v0}, Lexpo/modules/updates/logging/UpdatesLogEntry;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final startTimer$lambda$0(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7

    .line 121
    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    sget-object v3, Lexpo/modules/core/logging/LogType;->Timer:Lexpo/modules/core/logging/LogType;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic trace$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogger;->trace(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic trace$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 28
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/updates/logging/UpdatesLogger;->trace(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic warn$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 69
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogger;->warn(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public static synthetic warn$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 76
    sget-object p2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/updates/logging/UpdatesLogger;->warn(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, v0, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->debug(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v4, Lexpo/modules/core/logging/LogType;->Debug:Lexpo/modules/core/logging/LogType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lexpo/modules/core/logging/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 88
    invoke-virtual/range {v1 .. v6}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v5, Lexpo/modules/core/logging/LogType;->Error:Lexpo/modules/core/logging/LogType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryWithCauseExceptionString(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {v0, p1, p2, p3, p2}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final fatal(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 106
    invoke-virtual/range {v1 .. v6}, Lexpo/modules/updates/logging/UpdatesLogger;->fatal(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final fatal(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v5, Lexpo/modules/core/logging/LogType;->Fatal:Lexpo/modules/core/logging/LogType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryWithCauseExceptionString(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {v0, p1, p2, p3, p2}, Lexpo/modules/core/logging/Logger;->fatal$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v4, Lexpo/modules/core/logging/LogType;->Info:Lexpo/modules/core/logging/LogType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public startTimer(Ljava/lang/String;)Lexpo/modules/core/logging/LoggerTimer;
    .locals 2

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    new-instance v1, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->startTimer(Lkotlin/jvm/functions/Function1;)Lexpo/modules/core/logging/LoggerTimer;

    move-result-object p1

    return-object p1
.end method

.method public final trace(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->trace(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final trace(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v4, Lexpo/modules/core/logging/LogType;->Trace:Lexpo/modules/core/logging/LogType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lexpo/modules/core/logging/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, p2, v0, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->warn(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger;->logger:Lexpo/modules/core/logging/Logger;

    sget-object v4, Lexpo/modules/core/logging/LogType;->Warn:Lexpo/modules/core/logging/LogType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/logging/UpdatesLogger;->logEntryString(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Lexpo/modules/core/logging/LogType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {v0, p1, p2, p3, p2}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
