.class public final Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $account:Ljava/lang/Object;

.field public final synthetic $newPosition:I

.field public final synthetic $r8$classId:I

.field public label:I

.field public synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Animatable;ILandroidx/compose/material3/SegmentedButtonContentMeasurePolicy;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    iput p2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    iput-object p3, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/settings/SettingsViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ILkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    iput p3, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 17
    iput p4, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    iput p2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 11
    .line 12
    check-cast v2, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, v2, v1, p2, v0}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 26
    .line 27
    invoke-direct {p1, v1, p0, v2, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_1
    new-instance p1, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 36
    .line 37
    check-cast v2, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    .line 38
    .line 39
    invoke-direct {p1, p0, v1, v2, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(Landroidx/compose/animation/core/Animatable;ILandroidx/compose/material3/SegmentedButtonContentMeasurePolicy;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_2
    new-instance p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 44
    .line 45
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, v2, v1, p2, v0}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    new-instance p1, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 59
    .line 60
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 61
    .line 62
    invoke-direct {p1, p0, v2, v1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(Lcom/fsck/k9/ui/settings/SettingsViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ILkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget v2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    .line 5
    .line 6
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    iget-object v8, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$account:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v8, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 24
    .line 25
    iget v10, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 26
    .line 27
    if-eqz v10, :cond_2

    .line 28
    .line 29
    if-eq v10, v5, :cond_1

    .line 30
    .line 31
    if-ne v10, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v6, v9

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v8, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 47
    .line 48
    new-instance v10, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v11, 0x3

    .line 51
    invoke-direct {v10, v2, v11}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 52
    .line 53
    .line 54
    const-string v11, "DefaultNotificationDismisser"

    .line 55
    .line 56
    invoke-static {v3, v11, v9, v10, v1}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v8, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 60
    .line 61
    check-cast v3, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-RiqCqwk(I)Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    new-instance v1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$NoOperation;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 75
    .line 76
    invoke-direct {v2, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object v9, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput v5, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 82
    .line 83
    invoke-interface {v0, v2, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-ne v0, v7, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v8, v2}, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->dismiss(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v9, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput v1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 97
    .line 98
    invoke-static {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-ne v0, v7, :cond_4

    .line 103
    .line 104
    :goto_1
    move-object v6, v7

    .line 105
    :cond_4
    :goto_2
    return-object v6

    .line 106
    :pswitch_0
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    if-ne v0, v5, :cond_5

    .line 111
    .line 112
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v6, v9

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    int-to-long v0, v2

    .line 125
    iput v5, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 126
    .line 127
    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-ne v0, v7, :cond_7

    .line 132
    .line 133
    move-object v6, v7

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 138
    .line 139
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :goto_4
    return-object v6

    .line 143
    :pswitch_1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    if-ne v0, v5, :cond_8

    .line 148
    .line 149
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v6, v9

    .line 157
    goto :goto_5

    .line 158
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    .line 169
    .line 170
    check-cast v8, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    .line 171
    .line 172
    iget-object v2, v8, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;->animationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 173
    .line 174
    iput v5, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    const/16 v5, 0xc

    .line 178
    .line 179
    move-object v4, p0

    .line 180
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-ne v0, v7, :cond_a

    .line 185
    .line 186
    move-object v6, v7

    .line 187
    :cond_a
    :goto_5
    return-object v6

    .line 188
    :pswitch_2
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 189
    .line 190
    if-eqz v0, :cond_c

    .line 191
    .line 192
    if-ne v0, v5, :cond_b

    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_b
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move-object v6, v9

    .line 202
    goto :goto_6

    .line 203
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 209
    .line 210
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListState;

    .line 211
    .line 212
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    invoke-direct {v1, v3, v0, v8}, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v8, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 225
    .line 226
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 227
    .line 228
    iput v5, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 229
    .line 230
    const/16 v3, 0x64

    .line 231
    .line 232
    invoke-static {v1, v2, v3, v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->animateScrollToItem(Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;IILandroidx/compose/ui/unit/Density;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-ne v0, v7, :cond_d

    .line 237
    .line 238
    move-object v6, v7

    .line 239
    :cond_d
    :goto_6
    return-object v6

    .line 240
    :pswitch_3
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 241
    .line 242
    if-eqz v0, :cond_10

    .line 243
    .line 244
    if-eq v0, v5, :cond_f

    .line 245
    .line 246
    if-ne v0, v1, :cond_e

    .line 247
    .line 248
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move-object v6, v9

    .line 256
    goto :goto_9

    .line 257
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iput v5, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 265
    .line 266
    const-wide/16 v2, 0x1f4

    .line 267
    .line 268
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-ne v0, v7, :cond_11

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_11
    :goto_7
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 276
    .line 277
    new-instance v9, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->this$0:Ljava/lang/Object;

    .line 280
    .line 281
    move-object v10, v2

    .line 282
    check-cast v10, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 283
    .line 284
    move-object v11, v8

    .line 285
    check-cast v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 286
    .line 287
    const/4 v13, 0x0

    .line 288
    const/16 v14, 0xa

    .line 289
    .line 290
    iget v12, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->$newPosition:I

    .line 291
    .line 292
    invoke-direct/range {v9 .. v14}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 293
    .line 294
    .line 295
    iput v1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;->label:I

    .line 296
    .line 297
    invoke-static {v0, v9, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-ne v0, v7, :cond_12

    .line 302
    .line 303
    :goto_8
    move-object v6, v7

    .line 304
    :cond_12
    :goto_9
    return-object v6

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
