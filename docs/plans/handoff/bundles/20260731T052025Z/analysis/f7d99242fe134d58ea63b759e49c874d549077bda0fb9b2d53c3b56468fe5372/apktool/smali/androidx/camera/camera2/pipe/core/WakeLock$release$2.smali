.class public final Landroidx/camera/camera2/pipe/core/WakeLock$release$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p3, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 11
    .line 12
    const/16 v0, 0x12

    .line 13
    .line 14
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 19
    .line 20
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 21
    .line 22
    const/16 v0, 0x11

    .line 23
    .line 24
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 29
    .line 30
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 31
    .line 32
    const/16 v0, 0x10

    .line 33
    .line 34
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_2
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 39
    .line 40
    check-cast p0, Lapp/k9mail/K9App;

    .line 41
    .line 42
    const/16 v0, 0xf

    .line 43
    .line 44
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_3
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 49
    .line 50
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 51
    .line 52
    const/16 v0, 0xe

    .line 53
    .line 54
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 59
    .line 60
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 61
    .line 62
    const/16 v0, 0xd

    .line 63
    .line 64
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_5
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 69
    .line 70
    check-cast p0, Lcom/fsck/k9/mail/Address;

    .line 71
    .line 72
    const/16 v0, 0xc

    .line 73
    .line 74
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_6
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 79
    .line 80
    check-cast p0, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 81
    .line 82
    const/16 v0, 0xb

    .line 83
    .line 84
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_7
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 89
    .line 90
    check-cast p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 91
    .line 92
    const/16 v0, 0xa

    .line 93
    .line 94
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_8
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 99
    .line 100
    check-cast p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 101
    .line 102
    const/16 v0, 0x9

    .line 103
    .line 104
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_9
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 109
    .line 110
    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    .line 111
    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :pswitch_a
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 119
    .line 120
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 121
    .line 122
    const/4 v0, 0x7

    .line 123
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
    :pswitch_b
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 128
    .line 129
    check-cast p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 130
    .line 131
    const/4 v0, 0x6

    .line 132
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 133
    .line 134
    .line 135
    return-object p1

    .line 136
    :pswitch_c
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 137
    .line 138
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :pswitch_d
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 146
    .line 147
    check-cast p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 148
    .line 149
    const/4 v0, 0x4

    .line 150
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :pswitch_e
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 155
    .line 156
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 157
    .line 158
    const/4 v0, 0x3

    .line 159
    invoke-direct {p1, p2, p0, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :pswitch_f
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 164
    .line 165
    check-cast p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 166
    .line 167
    const/4 v0, 0x2

    .line 168
    invoke-direct {p1, p2, p0, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    return-object p1

    .line 172
    :pswitch_10
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 173
    .line 174
    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    .line 175
    .line 176
    const/4 v0, 0x1

    .line 177
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 178
    .line 179
    .line 180
    return-object p1

    .line 181
    :pswitch_11
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 182
    .line 183
    check-cast p0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_2
    check-cast p1, Ljava/util/Locale;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 66
    .line 67
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 81
    .line 82
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 95
    .line 96
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 110
    .line 111
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 125
    .line 126
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 140
    .line 141
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 142
    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :pswitch_9
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 155
    .line 156
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 157
    .line 158
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    return-object v1

    .line 168
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 169
    .line 170
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 171
    .line 172
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 177
    .line 178
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 183
    .line 184
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 185
    .line 186
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0

    .line 197
    :pswitch_c
    check-cast p1, Lkotlin/Unit;

    .line 198
    .line 199
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 200
    .line 201
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 206
    .line 207
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 212
    .line 213
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 214
    .line 215
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 220
    .line 221
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    return-object v1

    .line 225
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 226
    .line 227
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 228
    .line 229
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 234
    .line 235
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    return-object v1

    .line 239
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 240
    .line 241
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 242
    .line 243
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 248
    .line 249
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    return-object v1

    .line 253
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 254
    .line 255
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 256
    .line 257
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 262
    .line 263
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    return-object v1

    .line 267
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 268
    .line 269
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 270
    .line 271
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 276
    .line 277
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .locals 13

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 19
    .line 20
    iget-object p0, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 21
    .line 22
    move-object p1, p0

    .line 23
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 30
    .line 31
    iget-object p1, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 32
    .line 33
    iget-object v1, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    .line 35
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    .line 37
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 42
    .line 43
    invoke-interface {v1}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;->isDoNotShowDialogAgainChecked()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    xor-int/2addr v1, v4

    .line 48
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->showRecentChanges:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v10, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 54
    .line 55
    invoke-direct {v10, v3, v1}, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;-><init>(ZZ)V

    .line 56
    .line 57
    .line 58
    const/4 v11, 0x7

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const/4 v11, 0x0

    .line 67
    const/16 v12, 0x77

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    invoke-static/range {v5 .. v12}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 81
    .line 82
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    move-object p1, p0

    .line 87
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 88
    .line 89
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 90
    .line 91
    invoke-direct {p1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_0

    .line 99
    .line 100
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 114
    .line 115
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 116
    .line 117
    invoke-virtual {p0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccounts()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 128
    .line 129
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLog$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 130
    .line 131
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    check-cast p0, Lde/cketti/changelog/ChangeLog;

    .line 139
    .line 140
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lapp/k9mail/K9App;

    .line 149
    .line 150
    iget-object p0, p0, Lapp/k9mail/K9App;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 151
    .line 152
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 157
    .line 158
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    if-ge p1, v1, :cond_1

    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 167
    .line 168
    new-instance v0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    const/4 v1, 0x6

    .line 171
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    .line 176
    .line 177
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 188
    .line 189
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 213
    .line 214
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 215
    .line 216
    const/16 v4, 0x10

    .line 217
    .line 218
    invoke-direct {v2, p0, p1, v5, v4}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v1, v5, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 222
    .line 223
    .line 224
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 225
    .line 226
    return-object p0

    .line 227
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    const-class p1, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 237
    .line 238
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Lcom/fsck/k9/mail/Address;

    .line 241
    .line 242
    iget v0, p1, Lcom/fsck/k9/contacts/ContactPictureLoader;->pictureSizeInPx:I

    .line 243
    .line 244
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 245
    .line 246
    iget-object v2, p1, Lcom/fsck/k9/contacts/ContactPictureLoader;->context:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    new-instance v3, Lcom/fsck/k9/contacts/ContactImage;

    .line 257
    .line 258
    iget-object v6, p1, Lcom/fsck/k9/contacts/ContactPictureLoader;->backgroundCacheId:Ljava/lang/String;

    .line 259
    .line 260
    iget-object p1, p1, Lcom/fsck/k9/contacts/ContactPictureLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 261
    .line 262
    invoke-direct {v3, v4, v6, p1, p0}, Lcom/fsck/k9/contacts/ContactImage;-><init>(ZLjava/lang/String;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;Lcom/fsck/k9/mail/Address;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    new-instance p1, Lcom/bumptech/glide/request/RequestFutureTarget;

    .line 285
    .line 286
    invoke-direct {p1, v0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(II)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Lcom/bumptech/glide/util/Util;->DIRECT_EXECUTOR:Lcom/bumptech/glide/util/Executors$1;

    .line 290
    .line 291
    invoke-virtual {p0, p1, p1, p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 292
    .line 293
    .line 294
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestFutureTarget;->get()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :catch_0
    check-cast v5, Landroid/graphics/Bitmap;

    .line 299
    .line 300
    return-object v5

    .line 301
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast p0, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 307
    .line 308
    iget-object p0, p0, Lcom/fsck/k9/account/AccountOwnerNameProvider;->preferences:Lcom/fsck/k9/Preferences;

    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 319
    .line 320
    if-eqz p0, :cond_2

    .line 321
    .line 322
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSenderName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    :cond_2
    return-object v5

    .line 327
    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 333
    .line 334
    iget-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->checkPermission:Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 335
    .line 336
    sget-object v0, Lapp/k9mail/core/android/permissions/Permission;->Contacts:Lapp/k9mail/core/android/permissions/Permission;

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;->invoke(Lapp/k9mail/core/android/permissions/Permission;)Lapp/k9mail/core/android/permissions/PermissionState;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->checkPermission:Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 343
    .line 344
    sget-object v0, Lapp/k9mail/core/android/permissions/Permission;->Notifications:Lapp/k9mail/core/android/permissions/Permission;

    .line 345
    .line 346
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;->invoke(Lapp/k9mail/core/android/permissions/Permission;)Lapp/k9mail/core/android/permissions/PermissionState;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    new-array v0, v3, [Lapp/k9mail/core/android/permissions/PermissionState;

    .line 351
    .line 352
    aput-object p1, v0, v2

    .line 353
    .line 354
    aput-object p0, v0, v4

    .line 355
    .line 356
    return-object v0

    .line 357
    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 363
    .line 364
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 365
    .line 366
    check-cast p1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 367
    .line 368
    iget-object p1, p1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 369
    .line 370
    iget-object p1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 371
    .line 372
    if-eqz p1, :cond_5

    .line 373
    .line 374
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->folderFetcher:Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 375
    .line 376
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    iget-object v4, p1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 382
    .line 383
    const-string v6, "imap"

    .line 384
    .line 385
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_4

    .line 390
    .line 391
    new-instance v4, Landroidx/work/Configuration$Builder;

    .line 392
    .line 393
    invoke-direct {v4, v1, v0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    if-eqz v2, :cond_3

    .line 397
    .line 398
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->oAuth2TokenProviderFactory:Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 399
    .line 400
    if-eqz v1, :cond_3

    .line 401
    .line 402
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 403
    .line 404
    iget-object v1, v1, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;->context:Landroid/content/Context;

    .line 405
    .line 406
    invoke-direct {v6, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 407
    .line 408
    .line 409
    goto :goto_1

    .line 410
    :cond_3
    move-object v6, v5

    .line 411
    :goto_1
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->imapStoreFactory:Lcom/fsck/k9/mail/store/imap/ImapStore$Companion;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    new-instance v1, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 422
    .line 423
    invoke-direct {v1, p1, v4, v0, v6}, Lcom/fsck/k9/mail/store/imap/RealImapStore;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 424
    .line 425
    .line 426
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolders()Ljava/util/AbstractList;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    new-instance v0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 435
    .line 436
    const/16 v2, 0x9

    .line 437
    .line 438
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 439
    .line 440
    .line 441
    new-instance v2, Lkotlin/sequences/TakeWhileSequence;

    .line 442
    .line 443
    invoke-direct {v2, p1, v0, v3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 444
    .line 445
    .line 446
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object p1
    :try_end_1
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->closeAllConnections()V

    .line 451
    .line 452
    .line 453
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 454
    .line 455
    const/16 v1, 0xc

    .line 456
    .line 457
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 458
    .line 459
    .line 460
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    new-instance v1, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 466
    .line 467
    const/4 v2, 0x5

    .line 468
    invoke-direct {v1, v2, v0}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;

    .line 476
    .line 477
    sget-object v1, Lcom/fsck/k9/mail/FolderType;->ARCHIVE:Lcom/fsck/k9/mail/FolderType;

    .line 478
    .line 479
    invoke-static {p0, v1, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    sget-object v2, Lcom/fsck/k9/mail/FolderType;->DRAFTS:Lcom/fsck/k9/mail/FolderType;

    .line 484
    .line 485
    invoke-static {p0, v2, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    sget-object v3, Lcom/fsck/k9/mail/FolderType;->SENT:Lcom/fsck/k9/mail/FolderType;

    .line 490
    .line 491
    invoke-static {p0, v3, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    sget-object v4, Lcom/fsck/k9/mail/FolderType;->SPAM:Lcom/fsck/k9/mail/FolderType;

    .line 496
    .line 497
    invoke-static {p0, v4, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    sget-object v5, Lcom/fsck/k9/mail/FolderType;->TRASH:Lcom/fsck/k9/mail/FolderType;

    .line 502
    .line 503
    invoke-static {p0, v5, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->access$mapByFolderType(Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lcom/fsck/k9/mail/FolderType;Ljava/util/List;)Ljava/util/ArrayList;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 508
    .line 509
    .line 510
    move-object v5, v0

    .line 511
    goto :goto_6

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    move-object p0, v0

    .line 514
    goto :goto_5

    .line 515
    :catch_1
    move-exception v0

    .line 516
    move-object p0, v0

    .line 517
    goto :goto_2

    .line 518
    :catch_2
    move-exception v0

    .line 519
    move-object p0, v0

    .line 520
    goto :goto_3

    .line 521
    :catch_3
    move-exception v0

    .line 522
    move-object p0, v0

    .line 523
    goto :goto_4

    .line 524
    :goto_2
    :try_start_2
    new-instance p1, Lcom/fsck/k9/mail/folders/FolderFetcherException;

    .line 525
    .line 526
    invoke-direct {p1, p0, v5}, Lcom/fsck/k9/mail/folders/FolderFetcherException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw p1

    .line 530
    :goto_3
    iget-object p1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 531
    .line 532
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    check-cast p1, Ljava/lang/String;

    .line 537
    .line 538
    new-instance v0, Lcom/fsck/k9/mail/folders/FolderFetcherException;

    .line 539
    .line 540
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/folders/FolderFetcherException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v0

    .line 544
    :goto_4
    iget-object p1, p0, Lcom/fsck/k9/mail/AuthenticationFailedException;->messageFromServer:Ljava/lang/String;

    .line 545
    .line 546
    new-instance v0, Lcom/fsck/k9/mail/folders/FolderFetcherException;

    .line 547
    .line 548
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/folders/FolderFetcherException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    :goto_5
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->closeAllConnections()V

    .line 553
    .line 554
    .line 555
    throw p0

    .line 556
    :cond_4
    const-string p0, "Failed requirement."

    .line 557
    .line 558
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    goto :goto_6

    .line 562
    :cond_5
    const-string p0, "No incoming server settings available"

    .line 563
    .line 564
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :goto_6
    return-object v5

    .line 568
    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    sget-object p1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 572
    .line 573
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    .line 576
    .line 577
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string v2, "Constraints changed for "

    .line 584
    .line 585
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p0

    .line 595
    invoke-virtual {v0, p1, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 599
    .line 600
    return-object p0

    .line 601
    :pswitch_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 607
    .line 608
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 609
    .line 610
    .line 611
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 612
    .line 613
    return-object p0

    .line 614
    :pswitch_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 620
    .line 621
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->context:Landroid/content/Context;

    .line 622
    .line 623
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->selectedTextType:Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 624
    .line 625
    invoke-static {p1, v0}, Landroidx/webkit/internal/ApiHelperForP;->createTextClassificationSession(Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;)Landroid/view/textclassifier/TextClassifier;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->textClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 630
    .line 631
    return-object p1

    .line 632
    :pswitch_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 638
    .line 639
    iput-object v5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 640
    .line 641
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 642
    .line 643
    return-object p0

    .line 644
    :pswitch_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 650
    .line 651
    invoke-virtual {p0, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    .line 652
    .line 653
    .line 654
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 655
    .line 656
    return-object p0

    .line 657
    :pswitch_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 663
    .line 664
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 665
    .line 666
    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-eqz p1, :cond_6

    .line 671
    .line 672
    const-string p0, "CXCP"

    .line 673
    .line 674
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result p0

    .line 678
    if-eqz p0, :cond_10

    .line 679
    .line 680
    const-string p0, "CXCP"

    .line 681
    .line 682
    const-string p1, "UseCaseCamera is closed before starting the CameraGraph, skipping setup."

    .line 683
    .line 684
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    goto/16 :goto_a

    .line 688
    .line 689
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 692
    .line 693
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 694
    .line 695
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 702
    .line 703
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 704
    .line 705
    iget-object v1, v0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 706
    .line 707
    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    iput-object v2, v1, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 712
    .line 713
    iget-object v1, v0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 714
    .line 715
    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const-string v2, "Camera graph updated from "

    .line 720
    .line 721
    iget-object v3, v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 722
    .line 723
    monitor-enter v3

    .line 724
    :try_start_3
    const-string v4, "CXCP"

    .line 725
    .line 726
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_7

    .line 731
    .line 732
    const-string v4, "CXCP"

    .line 733
    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    iget-object v2, v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 740
    .line 741
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v2, " to "

    .line 745
    .line 746
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    goto :goto_7

    .line 760
    :catchall_1
    move-exception v0

    .line 761
    move-object p0, v0

    .line 762
    goto/16 :goto_b

    .line 763
    .line 764
    :cond_7
    :goto_7
    iget-object v2, v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 765
    .line 766
    sget-object v4, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 767
    .line 768
    if-eq v2, v4, :cond_8

    .line 769
    .line 770
    sget-object v2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 771
    .line 772
    invoke-virtual {v1, v2, v5}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v4, v5}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 776
    .line 777
    .line 778
    :cond_8
    iput-object v0, v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 779
    .line 780
    iput-object v4, v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 781
    .line 782
    monitor-exit v3

    .line 783
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->start()V

    .line 784
    .line 785
    .line 786
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 787
    .line 788
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 789
    .line 790
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 791
    .line 792
    iget-object v0, v0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 793
    .line 794
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Ljava/util/Map;

    .line 799
    .line 800
    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 803
    .line 804
    iget-object v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 805
    .line 806
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    check-cast v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 811
    .line 812
    iget-object v3, v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 813
    .line 814
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    check-cast v3, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 819
    .line 820
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    if-eqz v3, :cond_9

    .line 825
    .line 826
    iget-object v2, v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 827
    .line 828
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    check-cast v2, Landroidx/camera/core/impl/SessionConfig;

    .line 833
    .line 834
    goto :goto_8

    .line 835
    :cond_9
    move-object v2, v5

    .line 836
    :goto_8
    if-nez v2, :cond_a

    .line 837
    .line 838
    goto :goto_9

    .line 839
    :cond_a
    iget-object v3, v2, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 840
    .line 841
    iget-object v3, v3, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/ArrayList;

    .line 842
    .line 843
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    if-eqz v4, :cond_c

    .line 866
    .line 867
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v4

    .line 871
    move-object v6, v4

    .line 872
    check-cast v6, Landroidx/camera/core/impl/DeferrableSurface;

    .line 873
    .line 874
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v6

    .line 878
    if-nez v6, :cond_b

    .line 879
    .line 880
    move-object v5, v4

    .line 881
    :cond_c
    check-cast v5, Landroidx/camera/core/impl/DeferrableSurface;

    .line 882
    .line 883
    if-nez v5, :cond_d

    .line 884
    .line 885
    goto :goto_9

    .line 886
    :cond_d
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 887
    .line 888
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getStreamIdsFromSurfaces(Ljava/util/List;)Ljava/util/LinkedHashSet;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    check-cast v1, Landroidx/camera/camera2/pipe/StreamId;

    .line 901
    .line 902
    :goto_9
    const-string v1, "CXCP"

    .line 903
    .line 904
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 905
    .line 906
    .line 907
    move-result v1

    .line 908
    if-eqz v1, :cond_e

    .line 909
    .line 910
    const-string v1, "CXCP"

    .line 911
    .line 912
    const-string v2, "Setting up Surfaces with UseCaseSurfaceManager"

    .line 913
    .line 914
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .line 916
    .line 917
    :cond_e
    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 920
    .line 921
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 922
    .line 923
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    check-cast v1, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 928
    .line 929
    iget-object v1, v1, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 930
    .line 931
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    check-cast v1, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 936
    .line 937
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-eqz v1, :cond_f

    .line 942
    .line 943
    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 946
    .line 947
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 948
    .line 949
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 954
    .line 955
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    .line 957
    .line 958
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 961
    .line 962
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 963
    .line 964
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object p0

    .line 968
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 969
    .line 970
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    .line 972
    .line 973
    invoke-static {v1, p1, p0, v0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync$default(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;

    .line 974
    .line 975
    .line 976
    move-result-object p0

    .line 977
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$1$3;->INSTANCE:Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$1$3;

    .line 978
    .line 979
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 980
    .line 981
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 982
    .line 983
    .line 984
    goto :goto_a

    .line 985
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 986
    .line 987
    .line 988
    move-result p0

    .line 989
    if-eqz p0, :cond_10

    .line 990
    .line 991
    const-string p0, "CXCP"

    .line 992
    .line 993
    const-string p1, "Unable to create capture session due to conflicting configurations"

    .line 994
    .line 995
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .line 997
    .line 998
    :cond_10
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 999
    .line 1000
    return-object p0

    .line 1001
    :goto_b
    monitor-exit v3

    .line 1002
    throw p0

    .line 1003
    :pswitch_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1004
    .line 1005
    .line 1006
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 1009
    .line 1010
    iget-object p0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 1011
    .line 1012
    if-eqz p0, :cond_11

    .line 1013
    .line 1014
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->close()V

    .line 1015
    .line 1016
    .line 1017
    :cond_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1018
    .line 1019
    return-object p0

    .line 1020
    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    .line 1026
    .line 1027
    if-eqz p0, :cond_12

    .line 1028
    .line 1029
    iget-object p1, p0, Landroidx/camera/core/impl/SessionConfig;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 1030
    .line 1031
    if-eqz p1, :cond_12

    .line 1032
    .line 1033
    invoke-interface {p1, p0}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->onError(Landroidx/camera/core/impl/SessionConfig;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1037
    .line 1038
    return-object p0

    .line 1039
    :pswitch_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;->this$0:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast p0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 1045
    .line 1046
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 1047
    .line 1048
    check-cast p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1049
    .line 1050
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1054
    .line 1055
    return-object p0

    .line 1056
    nop

    .line 1057
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
