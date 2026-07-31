.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;

    .line 7
    .line 8
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;

    .line 18
    .line 19
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->remoteFolderCreatorFactory:Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

    .line 35
    .line 36
    iput v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->label:I

    .line 37
    .line 38
    invoke-interface {p1, v1, p0}, Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;->create(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v5, :cond_2

    .line 43
    .line 44
    move-object p1, v5

    .line 45
    :cond_2
    :goto_0
    return-object p1

    .line 46
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->label:I

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    if-ne v0, v6, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object p1, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$invoke$1$account$1;->label:I

    .line 71
    .line 72
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v5, :cond_5

    .line 77
    .line 78
    move-object p1, v5

    .line 79
    :cond_5
    :goto_1
    return-object p1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
