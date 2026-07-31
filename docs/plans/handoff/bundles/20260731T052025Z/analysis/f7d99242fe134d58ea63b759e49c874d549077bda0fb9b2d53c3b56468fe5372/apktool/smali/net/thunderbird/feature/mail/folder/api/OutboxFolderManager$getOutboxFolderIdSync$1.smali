.class public final Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountId:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public label:I

.field public synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$accountId:Ljava/lang/Object;

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

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p3, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$accountId:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 13
    iput p4, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$accountId:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$accountId:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 9
    .line 10
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 23
    .line 24
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 25
    .line 26
    const/16 v0, 0xb

    .line 27
    .line 28
    invoke-direct {p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_1
    new-instance p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 35
    .line 36
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    invoke-direct {p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2
    new-instance p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 47
    .line 48
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    invoke-direct {p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_3
    new-instance p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 59
    .line 60
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-direct {p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_4
    new-instance p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 71
    .line 72
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 73
    .line 74
    const/4 v0, 0x7

    .line 75
    invoke-direct {p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_5
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 82
    .line 83
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    .line 86
    .line 87
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    const/4 v0, 0x6

    .line 90
    invoke-direct {p1, p0, p2, v1, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :pswitch_6
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 95
    .line 96
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 99
    .line 100
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :pswitch_7
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 108
    .line 109
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 112
    .line 113
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 114
    .line 115
    const/4 v0, 0x4

    .line 116
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :pswitch_8
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 121
    .line 122
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 125
    .line 126
    check-cast v1, Ljava/lang/String;

    .line 127
    .line 128
    const/4 v0, 0x3

    .line 129
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 130
    .line 131
    .line 132
    return-object p1

    .line 133
    :pswitch_9
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 134
    .line 135
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 138
    .line 139
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event;

    .line 140
    .line 141
    const/4 v0, 0x2

    .line 142
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :pswitch_a
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 147
    .line 148
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 151
    .line 152
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    invoke-direct {p1, p0, p2, v1, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 156
    .line 157
    .line 158
    return-object p1

    .line 159
    :pswitch_b
    new-instance p1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 160
    .line 161
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 164
    .line 165
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-direct {p1, p0, v1, p2, v0}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    return-object p1

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 26
    .line 27
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_2
    check-cast p1, Ljava/util/Map;

    .line 56
    .line 57
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_3
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 71
    .line 72
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_4
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 86
    .line 87
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 101
    .line 102
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 115
    .line 116
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 130
    .line 131
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 145
    .line 146
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 160
    .line 161
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 162
    .line 163
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 175
    .line 176
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 177
    .line 178
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 183
    .line 184
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    .line 190
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->$accountId:Ljava/lang/Object;

    .line 9
    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 22
    .line 23
    iget-object v1, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    iget v2, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    if-ne v2, v7, :cond_0

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v3, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v13, v4

    .line 44
    check-cast v13, Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v9, v2

    .line 51
    check-cast v9, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 52
    .line 53
    const/16 v19, 0x0

    .line 54
    .line 55
    const/16 v20, 0x3f7

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    invoke-static/range {v9 .. v20}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->copy$default(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZI)Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 79
    .line 80
    const-wide/16 v4, 0x96

    .line 81
    .line 82
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, v6, :cond_3

    .line 87
    .line 88
    move-object v3, v6

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v4, v0

    .line 95
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    const/16 v15, 0x2ff

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    invoke-static/range {v4 .. v15}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->copy$default(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZI)Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    :goto_1
    return-object v3

    .line 120
    :pswitch_0
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 123
    .line 124
    iget v9, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 125
    .line 126
    if-eqz v9, :cond_5

    .line 127
    .line 128
    if-ne v9, v7, :cond_4

    .line 129
    .line 130
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v3, v8

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v15, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount$invoke$1$listener$1;

    .line 143
    .line 144
    invoke-direct {v15, v1, v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount$invoke$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;I)V

    .line 145
    .line 146
    .line 147
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 148
    .line 149
    iget-object v4, v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;->messagingController:Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 150
    .line 151
    const/4 v14, 0x1

    .line 152
    move-object v10, v4

    .line 153
    check-cast v10, Lcom/fsck/k9/controller/MessagingController;

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    const/4 v12, 0x1

    .line 157
    const/4 v13, 0x1

    .line 158
    invoke-virtual/range {v10 .. v15}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 159
    .line 160
    .line 161
    iput-object v8, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 164
    .line 165
    new-instance v4, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {v4, v2}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v4, v0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v6, :cond_6

    .line 175
    .line 176
    move-object v3, v6

    .line 177
    :cond_6
    :goto_2
    return-object v3

    .line 178
    :pswitch_1
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 179
    .line 180
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Ljava/util/List;

    .line 183
    .line 184
    iget v9, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 185
    .line 186
    if-eqz v9, :cond_8

    .line 187
    .line 188
    if-ne v9, v7, :cond_7

    .line 189
    .line 190
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    move-object v3, v8

    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v5, v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 203
    .line 204
    new-instance v9, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 205
    .line 206
    const/4 v10, 0x6

    .line 207
    invoke-direct {v9, v10, v1}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 208
    .line 209
    .line 210
    const-string v10, "LoadMessagesLegacySideEffect"

    .line 211
    .line 212
    invoke-static {v5, v10, v8, v9, v2}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_9

    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    goto :goto_3

    .line 223
    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 224
    .line 225
    :goto_3
    iget-object v4, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 226
    .line 227
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;

    .line 228
    .line 229
    invoke-direct {v5, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;-><init>(FLjava/util/List;)V

    .line 230
    .line 231
    .line 232
    iput-object v8, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 233
    .line 234
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 235
    .line 236
    invoke-interface {v4, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-ne v0, v6, :cond_a

    .line 241
    .line 242
    move-object v3, v6

    .line 243
    :cond_a
    :goto_4
    return-object v3

    .line 244
    :pswitch_2
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Ljava/util/Map;

    .line 247
    .line 248
    iget v2, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 249
    .line 250
    if-eqz v2, :cond_c

    .line 251
    .line 252
    if-ne v2, v7, :cond_b

    .line 253
    .line 254
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_b
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    move-object v3, v8

    .line 262
    goto :goto_5

    .line 263
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 267
    .line 268
    iget-object v2, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 269
    .line 270
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SwipeActionsLoaded;

    .line 271
    .line 272
    invoke-direct {v4, v1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SwipeActionsLoaded;-><init>(Ljava/util/Map;)V

    .line 273
    .line 274
    .line 275
    iput-object v8, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 276
    .line 277
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 278
    .line 279
    invoke-interface {v2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-ne v0, v6, :cond_d

    .line 284
    .line 285
    move-object v3, v6

    .line 286
    :cond_d
    :goto_5
    return-object v3

    .line 287
    :pswitch_3
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 290
    .line 291
    iget v2, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 292
    .line 293
    if-eqz v2, :cond_f

    .line 294
    .line 295
    if-ne v2, v7, :cond_e

    .line 296
    .line 297
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_e
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    move-object v3, v8

    .line 305
    goto :goto_6

    .line 306
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 310
    .line 311
    iget-object v2, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 312
    .line 313
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 314
    .line 315
    invoke-direct {v4, v1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;-><init>(Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;)V

    .line 316
    .line 317
    .line 318
    iput-object v8, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 319
    .line 320
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 321
    .line 322
    invoke-interface {v2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-ne v0, v6, :cond_10

    .line 327
    .line 328
    move-object v3, v6

    .line 329
    :cond_10
    :goto_6
    return-object v3

    .line 330
    :pswitch_4
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 333
    .line 334
    iget v2, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 335
    .line 336
    if-eqz v2, :cond_12

    .line 337
    .line 338
    if-ne v2, v7, :cond_11

    .line 339
    .line 340
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_11
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    move-object v3, v8

    .line 348
    goto :goto_7

    .line 349
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    new-instance v9, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 353
    .line 354
    move-object v11, v4

    .line 355
    check-cast v11, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 356
    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x10

    .line 359
    .line 360
    const/4 v10, 0x2

    .line 361
    const-class v12, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 362
    .line 363
    const-string v13, "onCreateArchiveFolderSuccess"

    .line 364
    .line 365
    const-string v14, "onCreateArchiveFolderSuccess(Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 366
    .line 367
    invoke-direct/range {v9 .. v16}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 368
    .line 369
    .line 370
    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 371
    .line 372
    const/16 v16, 0x4

    .line 373
    .line 374
    const/16 v17, 0x5

    .line 375
    .line 376
    move-object v12, v11

    .line 377
    const/4 v11, 0x2

    .line 378
    const-class v13, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 379
    .line 380
    const-string v14, "onCreateArchiveFolderError"

    .line 381
    .line 382
    const-string v15, "onCreateArchiveFolderError(Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error;)V"

    .line 383
    .line 384
    invoke-direct/range {v10 .. v17}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 385
    .line 386
    .line 387
    iput-object v8, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 388
    .line 389
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 390
    .line 391
    invoke-static {v1, v9, v10, v0}, Lorg/minidns/util/Hex;->handleAsync(Lnet/thunderbird/core/outcome/Outcome;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-ne v0, v6, :cond_13

    .line 396
    .line 397
    move-object v3, v6

    .line 398
    :cond_13
    :goto_7
    return-object v3

    .line 399
    :pswitch_5
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 400
    .line 401
    if-eqz v1, :cond_15

    .line 402
    .line 403
    if-eq v1, v7, :cond_14

    .line 404
    .line 405
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    move-object v6, v8

    .line 409
    goto :goto_8

    .line 410
    :cond_14
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    throw v0

    .line 415
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    .line 421
    .line 422
    iget-object v1, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 423
    .line 424
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;

    .line 425
    .line 426
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 427
    .line 428
    const/4 v3, 0x4

    .line 429
    invoke-direct {v2, v3, v4}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 430
    .line 431
    .line 432
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 433
    .line 434
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    :goto_8
    return-object v6

    .line 438
    :pswitch_6
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 439
    .line 440
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 441
    .line 442
    if-eqz v1, :cond_17

    .line 443
    .line 444
    if-ne v1, v7, :cond_16

    .line 445
    .line 446
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_16
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    move-object v3, v8

    .line 454
    goto :goto_9

    .line 455
    :cond_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Lkotlinx/collections/immutable/ImmutableList;

    .line 463
    .line 464
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_19

    .line 473
    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    move-object v5, v2

    .line 479
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 480
    .line 481
    iget-boolean v5, v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 482
    .line 483
    if-eqz v5, :cond_18

    .line 484
    .line 485
    move-object v8, v2

    .line 486
    :cond_19
    check-cast v8, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 487
    .line 488
    if-eqz v8, :cond_1a

    .line 489
    .line 490
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListState;

    .line 493
    .line 494
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    check-cast v2, Lkotlinx/collections/immutable/ImmutableList;

    .line 499
    .line 500
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;

    .line 501
    .line 502
    const/4 v5, 0x0

    .line 503
    invoke-direct {v4, v8, v5}, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Z)V

    .line 504
    .line 505
    .line 506
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 507
    .line 508
    invoke-static {v1, v2, v4, v0}, Lokhttp3/Handshake$Companion;->access$scrollToMessage(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-ne v0, v6, :cond_1a

    .line 513
    .line 514
    move-object v3, v6

    .line 515
    :cond_1a
    :goto_9
    return-object v3

    .line 516
    :pswitch_7
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 517
    .line 518
    if-eqz v1, :cond_1c

    .line 519
    .line 520
    if-ne v1, v7, :cond_1b

    .line 521
    .line 522
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    move-object/from16 v0, p1

    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_1b
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    move-object v0, v8

    .line 532
    goto :goto_a

    .line 533
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 539
    .line 540
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 541
    .line 542
    check-cast v4, Lnet/thunderbird/feature/account/AccountId;

    .line 543
    .line 544
    invoke-virtual {v1, v4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 549
    .line 550
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    if-ne v0, v6, :cond_1d

    .line 555
    .line 556
    move-object v0, v6

    .line 557
    :cond_1d
    :goto_a
    return-object v0

    .line 558
    :pswitch_8
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 559
    .line 560
    if-eqz v1, :cond_1f

    .line 561
    .line 562
    if-ne v1, v7, :cond_1e

    .line 563
    .line 564
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v0, p1

    .line 568
    .line 569
    goto :goto_b

    .line 570
    :cond_1e
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    move-object v0, v8

    .line 574
    goto :goto_b

    .line 575
    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 581
    .line 582
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 583
    .line 584
    check-cast v4, Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v2, v4}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 591
    .line 592
    iget-object v3, v1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 593
    .line 594
    new-instance v4, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;

    .line 595
    .line 596
    invoke-direct {v4, v1, v2, v8, v7}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;-><init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V

    .line 597
    .line 598
    .line 599
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    if-ne v0, v6, :cond_20

    .line 604
    .line 605
    move-object v0, v6

    .line 606
    :cond_20
    :goto_b
    return-object v0

    .line 607
    :pswitch_9
    check-cast v4, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event;

    .line 608
    .line 609
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 612
    .line 613
    iget v2, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 614
    .line 615
    if-eqz v2, :cond_22

    .line 616
    .line 617
    if-ne v2, v7, :cond_21

    .line 618
    .line 619
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v0, p1

    .line 623
    .line 624
    goto :goto_d

    .line 625
    :cond_21
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    :goto_c
    move-object v3, v8

    .line 629
    goto :goto_e

    .line 630
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->updateSearchSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 634
    .line 635
    iget-object v5, v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 636
    .line 637
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;

    .line 638
    .line 639
    move-object v10, v4

    .line 640
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;

    .line 641
    .line 642
    iget v10, v10, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;->serverSearchLimit:I

    .line 643
    .line 644
    invoke-direct {v9, v10}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;-><init>(I)V

    .line 645
    .line 646
    .line 647
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 648
    .line 649
    invoke-virtual {v2, v5, v9, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-ne v0, v6, :cond_23

    .line 654
    .line 655
    move-object v3, v6

    .line 656
    goto :goto_e

    .line 657
    :cond_23
    :goto_d
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    instance-of v2, v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 663
    .line 664
    if-eqz v2, :cond_25

    .line 665
    .line 666
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 667
    .line 668
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v0, Lkotlin/Unit;

    .line 671
    .line 672
    check-cast v4, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;

    .line 673
    .line 674
    iget v0, v4, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;->serverSearchLimit:I

    .line 675
    .line 676
    invoke-static {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->access$selectOptionForServerSearchLimit(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;I)Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    iget-object v4, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 681
    .line 682
    :cond_24
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    move-object v1, v0

    .line 687
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 688
    .line 689
    invoke-static {v1, v8, v2, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v4, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_24

    .line 698
    .line 699
    goto :goto_e

    .line 700
    :cond_25
    instance-of v2, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 701
    .line 702
    if-eqz v2, :cond_26

    .line 703
    .line 704
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 705
    .line 706
    iget-object v0, v0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 709
    .line 710
    invoke-static {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 711
    .line 712
    .line 713
    goto :goto_e

    .line 714
    :cond_26
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 715
    .line 716
    .line 717
    goto :goto_c

    .line 718
    :goto_e
    return-object v3

    .line 719
    :pswitch_a
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 720
    .line 721
    if-eqz v1, :cond_28

    .line 722
    .line 723
    if-eq v1, v7, :cond_27

    .line 724
    .line 725
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    move-object v6, v8

    .line 729
    goto :goto_f

    .line 730
    :cond_27
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    throw v0

    .line 735
    :cond_28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 741
    .line 742
    iget-object v1, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 743
    .line 744
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;

    .line 745
    .line 746
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 747
    .line 748
    const/4 v3, 0x3

    .line 749
    invoke-direct {v2, v3, v4}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 750
    .line 751
    .line 752
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 753
    .line 754
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    :goto_f
    return-object v6

    .line 758
    :pswitch_b
    iget v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 759
    .line 760
    if-eqz v1, :cond_2a

    .line 761
    .line 762
    if-ne v1, v7, :cond_29

    .line 763
    .line 764
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    move-object/from16 v0, p1

    .line 768
    .line 769
    goto :goto_10

    .line 770
    :cond_29
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    move-object v0, v8

    .line 774
    goto :goto_10

    .line 775
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    iget-object v1, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->this$0:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 781
    .line 782
    check-cast v4, Lnet/thunderbird/feature/account/AccountId;

    .line 783
    .line 784
    iput v7, v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;->label:I

    .line 785
    .line 786
    invoke-virtual {v1, v4, v0}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    if-ne v0, v6, :cond_2b

    .line 791
    .line 792
    move-object v0, v6

    .line 793
    :cond_2b
    :goto_10
    return-object v0

    .line 794
    nop

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
