.class public final Lexpo/modules/updates/UpdatesModule$Companion;
.super Ljava/lang/Object;
.source "UpdatesModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/UpdatesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0080@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JC\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2)\u0010\u0013\u001a%\u0012\u001b\u0012\u0019\u0018\u00010\u0015j\u0004\u0018\u0001`\u0019\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00120\u0014H\u0080@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesModule$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "readLogEntries",
        "",
        "Landroid/os/Bundle;",
        "filesDirectory",
        "Ljava/io/File;",
        "maxAge",
        "",
        "readLogEntries$expo_updates_release",
        "(Ljava/io/File;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearLogEntries",
        "",
        "completionHandler",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/ParameterName;",
        "name",
        "_",
        "Lkotlin/Exception;",
        "clearLogEntries$expo_updates_release",
        "(Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/UpdatesModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearLogEntries$expo_updates_release(Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    new-instance p3, Lexpo/modules/updates/logging/UpdatesLogReader;

    invoke-direct {p3, p1}, Lexpo/modules/updates/logging/UpdatesLogReader;-><init>(Ljava/io/File;)V

    .line 198
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 197
    invoke-virtual {p3, p1, p2}, Lexpo/modules/updates/logging/UpdatesLogReader;->purgeLogEntries(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V

    .line 201
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final readLogEntries$expo_updates_release(Ljava/io/File;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;-><init>(Ljava/io/File;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
