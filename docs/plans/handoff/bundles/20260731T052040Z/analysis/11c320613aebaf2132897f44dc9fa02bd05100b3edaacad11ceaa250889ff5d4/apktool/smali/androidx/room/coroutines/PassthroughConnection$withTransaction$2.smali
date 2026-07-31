.class public final Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $type:Landroidx/room/Transactor$SQLiteTransactionType;

.field label:I

.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iput v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v2, p0}, Landroidx/room/coroutines/PassthroughConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-ne p0, p1, :cond_2

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_2
    return-object p0
.end method
