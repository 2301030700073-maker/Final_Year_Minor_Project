.class public final Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $event:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

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
    iget p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :pswitch_3
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_4
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_5
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_6
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_7
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_8
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 11
    .line 12
    iget-object v6, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event;

    .line 13
    .line 14
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-ne v1, v4, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    move-object v3, v8

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 41
    .line 42
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 43
    .line 44
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMaxPushFolders;

    .line 45
    .line 46
    move-object v10, v6

    .line 47
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;

    .line 48
    .line 49
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;->maxFolderToCheckWithPushChanges:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 50
    .line 51
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMaxPushFolders;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-ne v0, v3, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    :goto_1
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 79
    .line 80
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lkotlin/Unit;

    .line 83
    .line 84
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 85
    .line 86
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v8, v0

    .line 91
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 92
    .line 93
    move-object v2, v6

    .line 94
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;

    .line 95
    .line 96
    iget-object v2, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMaxFolderToCheckWithPushChange;->maxFolderToCheckWithPushChanges:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    const/16 v20, 0x5ff

    .line 101
    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    const/4 v15, 0x0

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    move-object/from16 v18, v2

    .line 114
    .line 115
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    :goto_2
    move-object v3, v7

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 132
    .line 133
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 136
    .line 137
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :goto_3
    return-object v3

    .line 146
    :pswitch_0
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 147
    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    if-ne v1, v4, :cond_6

    .line 151
    .line 152
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v0, p1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    move-object v3, v8

    .line 162
    goto :goto_7

    .line 163
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 167
    .line 168
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 169
    .line 170
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateExpungePolicy;

    .line 171
    .line 172
    move-object v10, v6

    .line 173
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;

    .line 174
    .line 175
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;->eraseDeletedMessageOnServer:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 176
    .line 177
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateExpungePolicy;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 183
    .line 184
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne v0, v3, :cond_8

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_8
    :goto_5
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 197
    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 201
    .line 202
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Lkotlin/Unit;

    .line 205
    .line 206
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 207
    .line 208
    :cond_9
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object v8, v0

    .line 213
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 214
    .line 215
    move-object v2, v6

    .line 216
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;

    .line 217
    .line 218
    iget-object v2, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnEraseDeletedMessageOnServerChange;->eraseDeletedMessageOnServer:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    const/16 v20, 0x6ff

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    const/4 v11, 0x0

    .line 227
    const/4 v12, 0x0

    .line 228
    const/4 v13, 0x0

    .line 229
    const/4 v14, 0x0

    .line 230
    const/4 v15, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    move-object/from16 v17, v2

    .line 236
    .line 237
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    :goto_6
    move-object v3, v7

    .line 248
    goto :goto_7

    .line 249
    :cond_a
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 250
    .line 251
    if-eqz v1, :cond_b

    .line 252
    .line 253
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 254
    .line 255
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 258
    .line 259
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :goto_7
    return-object v3

    .line 268
    :pswitch_1
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 269
    .line 270
    if-eqz v1, :cond_d

    .line 271
    .line 272
    if-ne v1, v4, :cond_c

    .line 273
    .line 274
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v0, p1

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_8
    move-object v3, v8

    .line 284
    goto :goto_b

    .line 285
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 289
    .line 290
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 291
    .line 292
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateDeletePolicy;

    .line 293
    .line 294
    move-object v10, v6

    .line 295
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;

    .line 296
    .line 297
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;->whenIDeleteAMessage:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 298
    .line 299
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 300
    .line 301
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateDeletePolicy;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 305
    .line 306
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-ne v0, v3, :cond_e

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_e
    :goto_9
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 319
    .line 320
    if-eqz v1, :cond_10

    .line 321
    .line 322
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 323
    .line 324
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Lkotlin/Unit;

    .line 327
    .line 328
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 329
    .line 330
    :cond_f
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    move-object v8, v0

    .line 335
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 336
    .line 337
    move-object v2, v6

    .line 338
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;

    .line 339
    .line 340
    iget-object v2, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnWhenIDeleteAMessageChange;->whenIDeleteAMessage:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 341
    .line 342
    const/16 v19, 0x0

    .line 343
    .line 344
    const/16 v20, 0x77f

    .line 345
    .line 346
    const/4 v9, 0x0

    .line 347
    const/4 v10, 0x0

    .line 348
    const/4 v11, 0x0

    .line 349
    const/4 v12, 0x0

    .line 350
    const/4 v13, 0x0

    .line 351
    const/4 v14, 0x0

    .line 352
    const/4 v15, 0x0

    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    const/16 v18, 0x0

    .line 356
    .line 357
    move-object/from16 v16, v2

    .line 358
    .line 359
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_f

    .line 368
    .line 369
    :goto_a
    move-object v3, v7

    .line 370
    goto :goto_b

    .line 371
    :cond_10
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 372
    .line 373
    if-eqz v1, :cond_11

    .line 374
    .line 375
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 376
    .line 377
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 380
    .line 381
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 382
    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :goto_b
    return-object v3

    .line 390
    :pswitch_2
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 391
    .line 392
    if-eqz v1, :cond_13

    .line 393
    .line 394
    if-ne v1, v4, :cond_12

    .line 395
    .line 396
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v0, p1

    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_12
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :goto_c
    move-object v3, v8

    .line 406
    goto :goto_f

    .line 407
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 411
    .line 412
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 413
    .line 414
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMarkAsReadWhenDeleted;

    .line 415
    .line 416
    move-object v10, v6

    .line 417
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;

    .line 418
    .line 419
    iget-boolean v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;->markAsReadWhenDeleted:Z

    .line 420
    .line 421
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMarkAsReadWhenDeleted;-><init>(Z)V

    .line 422
    .line 423
    .line 424
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 425
    .line 426
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-ne v0, v3, :cond_14

    .line 431
    .line 432
    goto :goto_f

    .line 433
    :cond_14
    :goto_d
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 439
    .line 440
    if-eqz v1, :cond_16

    .line 441
    .line 442
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 443
    .line 444
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v0, Lkotlin/Unit;

    .line 447
    .line 448
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 449
    .line 450
    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    move-object v8, v0

    .line 455
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 456
    .line 457
    move-object v2, v6

    .line 458
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;

    .line 459
    .line 460
    iget-boolean v15, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnMarkAsReadWhenDeletedToggle;->markAsReadWhenDeleted:Z

    .line 461
    .line 462
    const/16 v19, 0x0

    .line 463
    .line 464
    const/16 v20, 0x7bf

    .line 465
    .line 466
    const/4 v9, 0x0

    .line 467
    const/4 v10, 0x0

    .line 468
    const/4 v11, 0x0

    .line 469
    const/4 v12, 0x0

    .line 470
    const/4 v13, 0x0

    .line 471
    const/4 v14, 0x0

    .line 472
    const/16 v16, 0x0

    .line 473
    .line 474
    const/16 v17, 0x0

    .line 475
    .line 476
    const/16 v18, 0x0

    .line 477
    .line 478
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_15

    .line 487
    .line 488
    :goto_e
    move-object v3, v7

    .line 489
    goto :goto_f

    .line 490
    :cond_16
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 491
    .line 492
    if-eqz v1, :cond_17

    .line 493
    .line 494
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 495
    .line 496
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 499
    .line 500
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 501
    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_17
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 505
    .line 506
    .line 507
    goto :goto_c

    .line 508
    :goto_f
    return-object v3

    .line 509
    :pswitch_3
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 510
    .line 511
    if-eqz v1, :cond_19

    .line 512
    .line 513
    if-ne v1, v4, :cond_18

    .line 514
    .line 515
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    move-object/from16 v0, p1

    .line 519
    .line 520
    goto :goto_11

    .line 521
    :cond_18
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :goto_10
    move-object v3, v8

    .line 525
    goto :goto_13

    .line 526
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 530
    .line 531
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 532
    .line 533
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncServerDeletions;

    .line 534
    .line 535
    move-object v10, v6

    .line 536
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;

    .line 537
    .line 538
    iget-boolean v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;->syncServerDeletions:Z

    .line 539
    .line 540
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncServerDeletions;-><init>(Z)V

    .line 541
    .line 542
    .line 543
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 544
    .line 545
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    if-ne v0, v3, :cond_1a

    .line 550
    .line 551
    goto :goto_13

    .line 552
    :cond_1a
    :goto_11
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 558
    .line 559
    if-eqz v1, :cond_1c

    .line 560
    .line 561
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 562
    .line 563
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v0, Lkotlin/Unit;

    .line 566
    .line 567
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 568
    .line 569
    :cond_1b
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    move-object v8, v0

    .line 574
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 575
    .line 576
    move-object v2, v6

    .line 577
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;

    .line 578
    .line 579
    iget-boolean v14, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncServerDeletionsToggle;->syncServerDeletions:Z

    .line 580
    .line 581
    const/16 v19, 0x0

    .line 582
    .line 583
    const/16 v20, 0x7df

    .line 584
    .line 585
    const/4 v9, 0x0

    .line 586
    const/4 v10, 0x0

    .line 587
    const/4 v11, 0x0

    .line 588
    const/4 v12, 0x0

    .line 589
    const/4 v13, 0x0

    .line 590
    const/4 v15, 0x0

    .line 591
    const/16 v16, 0x0

    .line 592
    .line 593
    const/16 v17, 0x0

    .line 594
    .line 595
    const/16 v18, 0x0

    .line 596
    .line 597
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    if-eqz v0, :cond_1b

    .line 606
    .line 607
    :goto_12
    move-object v3, v7

    .line 608
    goto :goto_13

    .line 609
    :cond_1c
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 610
    .line 611
    if-eqz v1, :cond_1d

    .line 612
    .line 613
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 614
    .line 615
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 618
    .line 619
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 620
    .line 621
    .line 622
    goto :goto_12

    .line 623
    :cond_1d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 624
    .line 625
    .line 626
    goto :goto_10

    .line 627
    :goto_13
    return-object v3

    .line 628
    :pswitch_4
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 629
    .line 630
    if-eqz v1, :cond_1f

    .line 631
    .line 632
    if-ne v1, v4, :cond_1e

    .line 633
    .line 634
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    move-object/from16 v0, p1

    .line 638
    .line 639
    goto :goto_15

    .line 640
    :cond_1e
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :goto_14
    move-object v3, v8

    .line 644
    goto :goto_17

    .line 645
    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 649
    .line 650
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 651
    .line 652
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFolderPollFrequency;

    .line 653
    .line 654
    move-object v10, v6

    .line 655
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;

    .line 656
    .line 657
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;->folderPollFrequency:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 658
    .line 659
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 660
    .line 661
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFolderPollFrequency;-><init>(I)V

    .line 666
    .line 667
    .line 668
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 669
    .line 670
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    if-ne v0, v3, :cond_20

    .line 675
    .line 676
    goto :goto_17

    .line 677
    :cond_20
    :goto_15
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 683
    .line 684
    if-eqz v1, :cond_22

    .line 685
    .line 686
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 687
    .line 688
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v0, Lkotlin/Unit;

    .line 691
    .line 692
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 693
    .line 694
    :cond_21
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    move-object v8, v0

    .line 699
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 700
    .line 701
    move-object v2, v6

    .line 702
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;

    .line 703
    .line 704
    iget-object v13, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFolderPollFrequencyChange;->folderPollFrequency:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 705
    .line 706
    const/16 v19, 0x0

    .line 707
    .line 708
    const/16 v20, 0x7ef

    .line 709
    .line 710
    const/4 v9, 0x0

    .line 711
    const/4 v10, 0x0

    .line 712
    const/4 v11, 0x0

    .line 713
    const/4 v12, 0x0

    .line 714
    const/4 v14, 0x0

    .line 715
    const/4 v15, 0x0

    .line 716
    const/16 v16, 0x0

    .line 717
    .line 718
    const/16 v17, 0x0

    .line 719
    .line 720
    const/16 v18, 0x0

    .line 721
    .line 722
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    if-eqz v0, :cond_21

    .line 731
    .line 732
    :goto_16
    move-object v3, v7

    .line 733
    goto :goto_17

    .line 734
    :cond_22
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 735
    .line 736
    if-eqz v1, :cond_23

    .line 737
    .line 738
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 739
    .line 740
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 743
    .line 744
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 745
    .line 746
    .line 747
    goto :goto_16

    .line 748
    :cond_23
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 749
    .line 750
    .line 751
    goto :goto_14

    .line 752
    :goto_17
    return-object v3

    .line 753
    :pswitch_5
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 754
    .line 755
    if-eqz v1, :cond_25

    .line 756
    .line 757
    if-ne v1, v4, :cond_24

    .line 758
    .line 759
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v0, p1

    .line 763
    .line 764
    goto :goto_19

    .line 765
    :cond_24
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    :goto_18
    move-object v3, v8

    .line 769
    goto :goto_1b

    .line 770
    :cond_25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 774
    .line 775
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 776
    .line 777
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFetchMessageUpTo;

    .line 778
    .line 779
    move-object v10, v6

    .line 780
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;

    .line 781
    .line 782
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;->fetchMessageUpTo:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 783
    .line 784
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 785
    .line 786
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    move-result v10

    .line 790
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFetchMessageUpTo;-><init>(I)V

    .line 791
    .line 792
    .line 793
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 794
    .line 795
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    if-ne v0, v3, :cond_26

    .line 800
    .line 801
    goto :goto_1b

    .line 802
    :cond_26
    :goto_19
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 808
    .line 809
    if-eqz v1, :cond_28

    .line 810
    .line 811
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 812
    .line 813
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v0, Lkotlin/Unit;

    .line 816
    .line 817
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 818
    .line 819
    :cond_27
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    move-object v8, v0

    .line 824
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 825
    .line 826
    move-object v2, v6

    .line 827
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;

    .line 828
    .line 829
    iget-object v12, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnFetchMessageUpToChange;->fetchMessageUpTo:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 830
    .line 831
    const/16 v19, 0x0

    .line 832
    .line 833
    const/16 v20, 0x7f7

    .line 834
    .line 835
    const/4 v9, 0x0

    .line 836
    const/4 v10, 0x0

    .line 837
    const/4 v11, 0x0

    .line 838
    const/4 v13, 0x0

    .line 839
    const/4 v14, 0x0

    .line 840
    const/4 v15, 0x0

    .line 841
    const/16 v16, 0x0

    .line 842
    .line 843
    const/16 v17, 0x0

    .line 844
    .line 845
    const/16 v18, 0x0

    .line 846
    .line 847
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    if-eqz v0, :cond_27

    .line 856
    .line 857
    :goto_1a
    move-object v3, v7

    .line 858
    goto :goto_1b

    .line 859
    :cond_28
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 860
    .line 861
    if-eqz v1, :cond_29

    .line 862
    .line 863
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 864
    .line 865
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 868
    .line 869
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 870
    .line 871
    .line 872
    goto :goto_1a

    .line 873
    :cond_29
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 874
    .line 875
    .line 876
    goto :goto_18

    .line 877
    :goto_1b
    return-object v3

    .line 878
    :pswitch_6
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 879
    .line 880
    if-eqz v1, :cond_2b

    .line 881
    .line 882
    if-ne v1, v4, :cond_2a

    .line 883
    .line 884
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    move-object/from16 v0, p1

    .line 888
    .line 889
    goto :goto_1d

    .line 890
    :cond_2a
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    :goto_1c
    move-object v3, v8

    .line 894
    goto :goto_1f

    .line 895
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 899
    .line 900
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 901
    .line 902
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncMessageFrom;

    .line 903
    .line 904
    move-object v10, v6

    .line 905
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;

    .line 906
    .line 907
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;->syncMessageFrom:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 908
    .line 909
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 910
    .line 911
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 912
    .line 913
    .line 914
    move-result v10

    .line 915
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncMessageFrom;-><init>(I)V

    .line 916
    .line 917
    .line 918
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 919
    .line 920
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    if-ne v0, v3, :cond_2c

    .line 925
    .line 926
    goto :goto_1f

    .line 927
    :cond_2c
    :goto_1d
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 928
    .line 929
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    .line 931
    .line 932
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 933
    .line 934
    if-eqz v1, :cond_2e

    .line 935
    .line 936
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 937
    .line 938
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v0, Lkotlin/Unit;

    .line 941
    .line 942
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 943
    .line 944
    :cond_2d
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    move-object v8, v0

    .line 949
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 950
    .line 951
    move-object v2, v6

    .line 952
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;

    .line 953
    .line 954
    iget-object v11, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnSyncMessageFromChange;->syncMessageFrom:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 955
    .line 956
    const/16 v19, 0x0

    .line 957
    .line 958
    const/16 v20, 0x7fb

    .line 959
    .line 960
    const/4 v9, 0x0

    .line 961
    const/4 v10, 0x0

    .line 962
    const/4 v12, 0x0

    .line 963
    const/4 v13, 0x0

    .line 964
    const/4 v14, 0x0

    .line 965
    const/4 v15, 0x0

    .line 966
    const/16 v16, 0x0

    .line 967
    .line 968
    const/16 v17, 0x0

    .line 969
    .line 970
    const/16 v18, 0x0

    .line 971
    .line 972
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 973
    .line 974
    .line 975
    move-result-object v2

    .line 976
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-eqz v0, :cond_2d

    .line 981
    .line 982
    :goto_1e
    move-object v3, v7

    .line 983
    goto :goto_1f

    .line 984
    :cond_2e
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 985
    .line 986
    if-eqz v1, :cond_2f

    .line 987
    .line 988
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 989
    .line 990
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 991
    .line 992
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 993
    .line 994
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 995
    .line 996
    .line 997
    goto :goto_1e

    .line 998
    :cond_2f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 999
    .line 1000
    .line 1001
    goto :goto_1c

    .line 1002
    :goto_1f
    return-object v3

    .line 1003
    :pswitch_7
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 1004
    .line 1005
    if-eqz v1, :cond_31

    .line 1006
    .line 1007
    if-ne v1, v4, :cond_30

    .line 1008
    .line 1009
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    move-object/from16 v0, p1

    .line 1013
    .line 1014
    goto :goto_21

    .line 1015
    :cond_30
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    :goto_20
    move-object v3, v8

    .line 1019
    goto :goto_23

    .line 1020
    :cond_31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 1024
    .line 1025
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 1026
    .line 1027
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateIdleRefreshMinutes;

    .line 1028
    .line 1029
    move-object v10, v6

    .line 1030
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;

    .line 1031
    .line 1032
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;->refreshIdleConnectionFrequency:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1033
    .line 1034
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1035
    .line 1036
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1037
    .line 1038
    .line 1039
    move-result v10

    .line 1040
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateIdleRefreshMinutes;-><init>(I)V

    .line 1041
    .line 1042
    .line 1043
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 1044
    .line 1045
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    if-ne v0, v3, :cond_32

    .line 1050
    .line 1051
    goto :goto_23

    .line 1052
    :cond_32
    :goto_21
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 1053
    .line 1054
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    .line 1056
    .line 1057
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1058
    .line 1059
    if-eqz v1, :cond_34

    .line 1060
    .line 1061
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1062
    .line 1063
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast v0, Lkotlin/Unit;

    .line 1066
    .line 1067
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1068
    .line 1069
    :cond_33
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    move-object v8, v0

    .line 1074
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 1075
    .line 1076
    move-object v2, v6

    .line 1077
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;

    .line 1078
    .line 1079
    iget-object v2, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnRefreshIdleConnectionFrequencyChange;->refreshIdleConnectionFrequency:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1080
    .line 1081
    const/16 v20, 0x3ff

    .line 1082
    .line 1083
    const/4 v9, 0x0

    .line 1084
    const/4 v10, 0x0

    .line 1085
    const/4 v11, 0x0

    .line 1086
    const/4 v12, 0x0

    .line 1087
    const/4 v13, 0x0

    .line 1088
    const/4 v14, 0x0

    .line 1089
    const/4 v15, 0x0

    .line 1090
    const/16 v16, 0x0

    .line 1091
    .line 1092
    const/16 v17, 0x0

    .line 1093
    .line 1094
    const/16 v18, 0x0

    .line 1095
    .line 1096
    move-object/from16 v19, v2

    .line 1097
    .line 1098
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    if-eqz v0, :cond_33

    .line 1107
    .line 1108
    :goto_22
    move-object v3, v7

    .line 1109
    goto :goto_23

    .line 1110
    :cond_34
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1111
    .line 1112
    if-eqz v1, :cond_35

    .line 1113
    .line 1114
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1115
    .line 1116
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 1119
    .line 1120
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_22

    .line 1124
    :cond_35
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_20

    .line 1128
    :goto_23
    return-object v3

    .line 1129
    :pswitch_8
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 1130
    .line 1131
    if-eqz v1, :cond_37

    .line 1132
    .line 1133
    if-ne v1, v4, :cond_36

    .line 1134
    .line 1135
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1136
    .line 1137
    .line 1138
    move-object/from16 v0, p1

    .line 1139
    .line 1140
    goto :goto_25

    .line 1141
    :cond_36
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    :goto_24
    move-object v3, v8

    .line 1145
    goto :goto_27

    .line 1146
    :cond_37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v1, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->updateFetchingMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 1150
    .line 1151
    iget-object v2, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 1152
    .line 1153
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateLocalFolderSize;

    .line 1154
    .line 1155
    move-object v10, v6

    .line 1156
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;

    .line 1157
    .line 1158
    iget-object v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;->localFolderSize:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1159
    .line 1160
    iget-object v10, v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1161
    .line 1162
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v10

    .line 1166
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateLocalFolderSize;-><init>(I)V

    .line 1167
    .line 1168
    .line 1169
    iput v4, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$event$1;->label:I

    .line 1170
    .line 1171
    invoke-virtual {v1, v2, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    if-ne v0, v3, :cond_38

    .line 1176
    .line 1177
    goto :goto_27

    .line 1178
    :cond_38
    :goto_25
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1184
    .line 1185
    if-eqz v1, :cond_3a

    .line 1186
    .line 1187
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1188
    .line 1189
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 1190
    .line 1191
    check-cast v0, Lkotlin/Unit;

    .line 1192
    .line 1193
    iget-object v1, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1194
    .line 1195
    :cond_39
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    move-object v8, v0

    .line 1200
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 1201
    .line 1202
    move-object v2, v6

    .line 1203
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;

    .line 1204
    .line 1205
    iget-object v10, v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Event$OnLocalFolderSizeChange;->localFolderSize:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1206
    .line 1207
    const/16 v19, 0x0

    .line 1208
    .line 1209
    const/16 v20, 0x7fd

    .line 1210
    .line 1211
    const/4 v9, 0x0

    .line 1212
    const/4 v11, 0x0

    .line 1213
    const/4 v12, 0x0

    .line 1214
    const/4 v13, 0x0

    .line 1215
    const/4 v14, 0x0

    .line 1216
    const/4 v15, 0x0

    .line 1217
    const/16 v16, 0x0

    .line 1218
    .line 1219
    const/16 v17, 0x0

    .line 1220
    .line 1221
    const/16 v18, 0x0

    .line 1222
    .line 1223
    invoke-static/range {v8 .. v20}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    if-eqz v0, :cond_39

    .line 1232
    .line 1233
    :goto_26
    move-object v3, v7

    .line 1234
    goto :goto_27

    .line 1235
    :cond_3a
    instance-of v1, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1236
    .line 1237
    if-eqz v1, :cond_3b

    .line 1238
    .line 1239
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 1240
    .line 1241
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 1244
    .line 1245
    invoke-static {v5, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_26

    .line 1249
    :cond_3b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1250
    .line 1251
    .line 1252
    goto :goto_24

    .line 1253
    :goto_27
    return-object v3

    .line 1254
    nop

    .line 1255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
