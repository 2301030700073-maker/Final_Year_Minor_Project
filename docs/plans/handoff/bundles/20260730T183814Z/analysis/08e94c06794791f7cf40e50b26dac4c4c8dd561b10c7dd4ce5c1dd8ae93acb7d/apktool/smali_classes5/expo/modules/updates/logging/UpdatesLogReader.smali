.class public final Lexpo/modules/updates/logging/UpdatesLogReader;
.super Ljava/lang/Object;
.source "UpdatesLogReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/logging/UpdatesLogReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesLogReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesLogReader.kt\nexpo/modules/updates/logging/UpdatesLogReader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n774#2:61\n865#2,2:62\n*S KotlinDebug\n*F\n+ 1 UpdatesLogReader.kt\nexpo/modules/updates/logging/UpdatesLogReader\n*L\n37#1:61\n37#1:62,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J;\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2)\u0010\n\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u000cj\u0004\u0018\u0001`\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00070\u000bJ\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\tJ\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\tH\u0002R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/updates/logging/UpdatesLogReader;",
        "",
        "filesDirectory",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "purgeLogEntries",
        "",
        "olderThan",
        "Ljava/util/Date;",
        "completionHandler",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/ParameterName;",
        "name",
        "_",
        "Lkotlin/Exception;",
        "getLogEntries",
        "",
        "",
        "newerThan",
        "persistentLog",
        "Lexpo/modules/core/logging/PersistentFileLog;",
        "isEntryStringLaterThanTimestamp",
        "",
        "entryString",
        "timestamp",
        "",
        "epochFromDateOrOneDayAgo",
        "date",
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
.field public static final Companion:Lexpo/modules/updates/logging/UpdatesLogReader$Companion;

.field private static final ONE_DAY_MILLISECONDS:I = 0x15180


# instance fields
.field private final persistentLog:Lexpo/modules/core/logging/PersistentFileLog;


# direct methods
.method public static synthetic $r8$lambda$emgtxngls_ujC9f_JxrByBoEuFM(Lexpo/modules/updates/logging/UpdatesLogReader;JLjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/updates/logging/UpdatesLogReader;->purgeLogEntries$lambda$0(Lexpo/modules/updates/logging/UpdatesLogReader;JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/logging/UpdatesLogReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/logging/UpdatesLogReader;->Companion:Lexpo/modules/updates/logging/UpdatesLogReader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-string v0, "filesDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lexpo/modules/core/logging/PersistentFileLog;

    const-string v1, "dev.expo.updates"

    invoke-direct {v0, v1, p1}, Lexpo/modules/core/logging/PersistentFileLog;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogReader;->persistentLog:Lexpo/modules/core/logging/PersistentFileLog;

    return-void
.end method

.method private final epochFromDateOrOneDayAgo(Ljava/util/Date;)J
    .locals 4

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const v2, 0x15180

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 52
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 53
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final isEntryStringLaterThanTimestamp(Ljava/lang/String;J)Z
    .locals 3

    .line 43
    sget-object v0, Lexpo/modules/updates/logging/UpdatesLogEntry;->Companion:Lexpo/modules/updates/logging/UpdatesLogEntry$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/logging/UpdatesLogEntry$Companion;->create(Ljava/lang/String;)Lexpo/modules/updates/logging/UpdatesLogEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getTimestamp()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic purgeLogEntries$default(Lexpo/modules/updates/logging/UpdatesLogReader;Ljava/util/Date;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 20
    new-instance p1, Ljava/util/Date;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    const v0, 0x15180

    int-to-long v0, v0

    sub-long/2addr p3, v0

    invoke-direct {p1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogReader;->purgeLogEntries(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final purgeLogEntries$lambda$0(Lexpo/modules/updates/logging/UpdatesLogReader;JLjava/lang/String;)Z
    .locals 1

    const-string v0, "entryString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p3, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogReader;->isEntryStringLaterThanTimestamp(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getLogEntries(Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "newerThan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/updates/logging/UpdatesLogReader;->epochFromDateOrOneDayAgo(Ljava/util/Date;)J

    move-result-wide v0

    .line 36
    iget-object p1, p0, Lexpo/modules/updates/logging/UpdatesLogReader;->persistentLog:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-virtual {p1}, Lexpo/modules/core/logging/PersistentFileLog;->readEntries()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-direct {p0, v4, v0, v1}, Lexpo/modules/updates/logging/UpdatesLogReader;->isEntryStringLaterThanTimestamp(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public final purgeLogEntries(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "olderThan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lexpo/modules/updates/logging/UpdatesLogReader;->epochFromDateOrOneDayAgo(Ljava/util/Date;)J

    move-result-wide v0

    .line 24
    iget-object p1, p0, Lexpo/modules/updates/logging/UpdatesLogReader;->persistentLog:Lexpo/modules/core/logging/PersistentFileLog;

    new-instance v2, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/logging/UpdatesLogReader;J)V

    invoke-virtual {p1, v2, p2}, Lexpo/modules/core/logging/PersistentFileLog;->purgeEntriesNotMatchingFilter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
