.class public final Lexpo/modules/updates/db/DatabaseHolder;
.super Ljava/lang/Object;
.source "DatabaseHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/db/DatabaseHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseHolder.kt\nexpo/modules/updates/db/DatabaseHolder\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,34:1\n120#2,10:35\n*S KotlinDebug\n*F\n+ 1 DatabaseHolder.kt\nexpo/modules/updates/db/DatabaseHolder\n*L\n25#1:35,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u000b\u001a\u0002H\u000c\"\u0004\u0008\u0000\u0010\u000c2\"\u0010\r\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "",
        "mDatabase",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "<init>",
        "(Lexpo/modules/updates/db/UpdatesDatabase;)V",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "database",
        "getDatabase",
        "()Lexpo/modules/updates/db/UpdatesDatabase;",
        "withDatabase",
        "T",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lexpo/modules/updates/db/DatabaseHolder$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final database:Lexpo/modules/updates/db/UpdatesDatabase;

.field private final mDatabase:Lexpo/modules/updates/db/UpdatesDatabase;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/db/DatabaseHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/db/DatabaseHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/db/DatabaseHolder;->Companion:Lexpo/modules/updates/db/DatabaseHolder$Companion;

    .line 31
    const-string v0, "DatabaseHolder"

    sput-object v0, Lexpo/modules/updates/db/DatabaseHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 2

    const-string v0, "mDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/db/DatabaseHolder;->mDatabase:Lexpo/modules/updates/db/UpdatesDatabase;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/db/DatabaseHolder;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 17
    new-instance p1, Lexpo/modules/updates/db/DatabaseHolder$database$1;

    invoke-direct {p1, p0, v1}, Lexpo/modules/updates/db/DatabaseHolder$database$1;-><init>(Lexpo/modules/updates/db/DatabaseHolder;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p1, v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/db/UpdatesDatabase;

    iput-object p1, p0, Lexpo/modules/updates/db/DatabaseHolder;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    return-void
.end method

.method public static final synthetic access$getMDatabase$p(Lexpo/modules/updates/db/DatabaseHolder;)Lexpo/modules/updates/db/UpdatesDatabase;
    .locals 0

    .line 13
    iget-object p0, p0, Lexpo/modules/updates/db/DatabaseHolder;->mDatabase:Lexpo/modules/updates/db/UpdatesDatabase;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lexpo/modules/updates/db/DatabaseHolder;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 13
    iget-object p0, p0, Lexpo/modules/updates/db/DatabaseHolder;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method


# virtual methods
.method public final getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/updates/db/DatabaseHolder;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    return-object v0
.end method

.method public final withDatabase(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lexpo/modules/updates/db/UpdatesDatabase;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;

    iget v1, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;-><init>(Lexpo/modules/updates/db/DatabaseHolder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 24
    iget v2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/updates/db/DatabaseHolder;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p2, p0, Lexpo/modules/updates/db/DatabaseHolder;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 40
    iput-object p0, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 26
    :goto_1
    :try_start_1
    iget-object v2, v4, Lexpo/modules/updates/db/DatabaseHolder;->mDatabase:Lexpo/modules/updates/db/UpdatesDatabase;

    iput-object p2, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/updates/db/DatabaseHolder$withDatabase$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 44
    :goto_2
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_3
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method
