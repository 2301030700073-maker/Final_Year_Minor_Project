.class final Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdatesModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/UpdatesModule$Companion;->readLogEntries$expo_updates_release(Ljava/io/File;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Landroid/os/Bundle;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesModule.kt\nexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,217:1\n1611#2,9:218\n1863#2:227\n1864#2:229\n1620#2:230\n1557#2:231\n1628#2,2:232\n1630#2:236\n1#3:228\n37#4,2:234\n*S KotlinDebug\n*F\n+ 1 UpdatesModule.kt\nexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2\n*L\n175#1:218,9\n175#1:227\n175#1:229\n175#1:230\n176#1:231\n176#1:232,2\n176#1:236\n175#1:228\n189#1:234,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/os/Bundle;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.updates.UpdatesModule$Companion$readLogEntries$2"
    f = "UpdatesModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $filesDirectory:Ljava/io/File;

.field final synthetic $maxAge:J

.field label:I


# direct methods
.method constructor <init>(Ljava/io/File;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$filesDirectory:Ljava/io/File;

    iput-wide p2, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$maxAge:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$filesDirectory:Ljava/io/File;

    iget-wide v1, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$maxAge:J

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;-><init>(Ljava/io/File;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 170
    iget v0, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    new-instance p1, Lexpo/modules/updates/logging/UpdatesLogReader;

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$filesDirectory:Ljava/io/File;

    invoke-direct {p1, v0}, Lexpo/modules/updates/logging/UpdatesLogReader;-><init>(Ljava/io/File;)V

    .line 172
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 173
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lexpo/modules/updates/UpdatesModule$Companion$readLogEntries$2;->$maxAge:J

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 174
    invoke-virtual {p1, v1}, Lexpo/modules/updates/logging/UpdatesLogReader;->getLogEntries(Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 227
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 226
    check-cast v1, Ljava/lang/String;

    .line 175
    sget-object v2, Lexpo/modules/updates/logging/UpdatesLogEntry;->Companion:Lexpo/modules/updates/logging/UpdatesLogEntry$Companion;

    invoke-virtual {v2, v1}, Lexpo/modules/updates/logging/UpdatesLogEntry$Companion;->create(Ljava/lang/String;)Lexpo/modules/updates/logging/UpdatesLogEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 218
    check-cast v0, Ljava/lang/Iterable;

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 232
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 233
    check-cast v1, Lexpo/modules/updates/logging/UpdatesLogEntry;

    .line 177
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v3, "timestamp"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
    const-string v3, "message"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "code"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "level"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getUpdateId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "updateId"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getUpdateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getAssetId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 186
    const-string v3, "assetId"

    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_3
    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getStacktrace()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 189
    invoke-virtual {v1}, Lexpo/modules/updates/logging/UpdatesLogEntry;->getStacktrace()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v3, 0x0

    .line 235
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 189
    const-string v3, "stacktrace"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_5
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 170
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
