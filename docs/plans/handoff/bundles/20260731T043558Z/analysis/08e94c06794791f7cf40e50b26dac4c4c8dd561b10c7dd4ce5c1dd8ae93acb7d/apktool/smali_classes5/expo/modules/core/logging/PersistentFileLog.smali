.class public final Lexpo/modules/core/logging/PersistentFileLog;
.super Ljava/lang/Object;
.source "PersistentFileLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/core/logging/PersistentFileLog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentFileLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1#2:146\n774#3:147\n865#3,2:148\n774#3:150\n865#3,2:151\n*S KotlinDebug\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog\n*L\n126#1:147\n126#1:148,2\n71#1:150\n71#1:151,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u0000 $2\u00020\u0001:\u0001$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tJ;\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032+\u0008\u0002\u0010\r\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u000fj\u0004\u0018\u0001`\u0013\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b0\u000eJT\u0010\u0014\u001a\u00020\u000b2!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00160\u000e2)\u0010\r\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u0017j\u0004\u0018\u0001`\u0018\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b0\u000eJ1\u0010\u0019\u001a\u00020\u000b2)\u0010\r\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u000fj\u0004\u0018\u0001`\u0013\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b0\u000eJ\u0008\u0010\u001b\u001a\u00020\u000bH\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0003H\u0002J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0016\u0010!\u001a\u00020\u000b2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0008\u0010#\u001a\u00020\u000bH\u0002R\u000e\u0010\u001a\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/core/logging/PersistentFileLog;",
        "",
        "category",
        "",
        "filesDirectory",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/lang/String;Ljava/io/File;)V",
        "readEntries",
        "",
        "appendEntry",
        "",
        "entry",
        "completionHandler",
        "Lkotlin/Function1;",
        "Ljava/lang/Error;",
        "Lkotlin/ParameterName;",
        "name",
        "_",
        "Lkotlin/Error;",
        "purgeEntriesNotMatchingFilter",
        "filter",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "clearEntries",
        "filePath",
        "ensureFileExists",
        "getFileSize",
        "",
        "appendTextToFile",
        "text",
        "readFileLinesSync",
        "writeFileLinesSync",
        "entries",
        "deleteFileSync",
        "Companion",
        "expo-modules-core_release"
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
.field public static final Companion:Lexpo/modules/core/logging/PersistentFileLog$Companion;

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "dev.expo.modules.core.logging"

.field private static final queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;


# instance fields
.field private final filePath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4uI5l5QT4P0S6KjvpoxhHhrrYic(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog;->purgeEntriesNotMatchingFilter$lambda$2(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A-yoyvpHuhMgWR1X_AI883a_S8M(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry$lambda$1(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sjes81QN9eTGWM05RQN-pnJbk6U(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/core/logging/PersistentFileLog;->clearEntries$lambda$3(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r1T3A4elsjN5q7_LoQGqLiEAFiM(Ljava/lang/Error;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry$lambda$0(Ljava/lang/Error;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/core/logging/PersistentFileLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/core/logging/PersistentFileLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/core/logging/PersistentFileLog;->Companion:Lexpo/modules/core/logging/PersistentFileLog$Companion;

    .line 141
    new-instance v0, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    invoke-direct {v0}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;-><init>()V

    sput-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDirectory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/dev.expo.modules.core.logging."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic appendEntry$default(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 43
    new-instance p2, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final appendEntry$lambda$0(Ljava/lang/Error;)Lkotlin/Unit;
    .locals 0

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final appendEntry$lambda$1(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 5

    const-string v0, "\n"

    .line 46
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->ensureFileExists()V

    .line 47
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->getFileSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_0
    invoke-direct {p0, p1}, Lexpo/modules/core/logging/PersistentFileLog;->appendTextToFile(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 54
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/Error;

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 56
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final appendTextToFile(Ljava/lang/String;)V
    .locals 3

    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "defaultCharset(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lkotlin/io/FilesKt;->appendText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private static final clearEntries$lambda$3(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 86
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->deleteFileSync()V

    const/4 p0, 0x0

    .line 87
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final deleteFileSync()V
    .locals 2

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private final ensureFileExists()V
    .locals 4

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create file at path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final getFileSize()J
    .locals 6

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    .line 113
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 114
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-wide v2
.end method

.method private static final purgeEntriesNotMatchingFilter$lambda$2(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 4

    .line 69
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->ensureFileExists()V

    .line 70
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->readFileLinesSync()Ljava/util/List;

    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Iterable;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 72
    invoke-direct {p0, v1}, Lexpo/modules/core/logging/PersistentFileLog;->writeFileLinesSync(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 73
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final readFileLinesSync()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "defaultCharset(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 148
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 126
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 148
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final writeFileLinesSync(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, "\n"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "defaultCharset(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public final appendEntry(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final clearEntries(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final purgeEntriesNotMatchingFilter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lexpo/modules/core/logging/PersistentFileLog;->queue:Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;

    new-instance v1, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/PersistentFileLogSerialDispatchQueue;->add(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final readEntries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0}, Lexpo/modules/core/logging/PersistentFileLog;->readFileLinesSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
