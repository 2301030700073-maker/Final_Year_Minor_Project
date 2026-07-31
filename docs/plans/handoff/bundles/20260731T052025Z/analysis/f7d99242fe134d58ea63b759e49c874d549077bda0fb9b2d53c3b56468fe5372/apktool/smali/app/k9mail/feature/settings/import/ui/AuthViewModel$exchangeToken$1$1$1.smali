.class public final Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

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
    iget p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;->this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 14
    .line 15
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, v0}, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->execute(Ljava/lang/String;Ljava/lang/String;)Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 34
    .line 35
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
