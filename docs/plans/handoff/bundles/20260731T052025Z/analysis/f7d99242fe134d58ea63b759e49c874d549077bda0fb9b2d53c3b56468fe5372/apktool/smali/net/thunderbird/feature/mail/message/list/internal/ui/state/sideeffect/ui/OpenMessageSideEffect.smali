.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;
.super Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 7
    iput p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 9
    .line 10
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 11
    .line 12
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    instance-of p0, p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    instance-of p0, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_0
    return v0

    .line 37
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 38
    .line 39
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 40
    .line 41
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    instance-of p0, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    move v0, v1

    .line 61
    :cond_1
    return v0

    .line 62
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 63
    .line 64
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 65
    .line 66
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    instance-of p0, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 84
    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 88
    .line 89
    invoke-virtual {p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->isReady()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    move v0, v1

    .line 96
    :cond_2
    return v0

    .line 97
    :pswitch_2
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 98
    .line 99
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 100
    .line 101
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    instance-of p0, p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 117
    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    instance-of p0, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 121
    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    move v0, v1

    .line 125
    :cond_3
    return v0

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/MutatorMutex$mutate$2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 295
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 296
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 297
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 298
    :pswitch_2
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatchUiEffect:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    sget-object v2, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;

    .line 8
    .line 9
    sget-object v3, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;

    .line 10
    .line 11
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    const/high16 v6, -0x80000000

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    packed-switch p2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    instance-of p2, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    move-object p2, p4

    .line 27
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;

    .line 28
    .line 29
    iget p3, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;->label:I

    .line 30
    .line 31
    and-int v0, p3, v6

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sub-int/2addr p3, v6

    .line 36
    iput p3, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;->label:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;

    .line 40
    .line 41
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 42
    .line 43
    invoke-direct {p2, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p0, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;->result:Ljava/lang/Object;

    .line 47
    .line 48
    iget p3, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;->label:I

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    if-ne p3, v7, :cond_1

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v8

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    move-object v8, p1

    .line 71
    check-cast v8, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 72
    .line 73
    :cond_3
    if-nez v8, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 77
    .line 78
    iget-object p1, v8, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 81
    .line 82
    .line 83
    iput v7, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/ToggleMessageSideEffect$consume$1;->label:I

    .line 84
    .line 85
    invoke-interface {v1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v5, :cond_5

    .line 90
    .line 91
    move-object v2, v5

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    :goto_1
    move-object v2, v3

    .line 94
    :goto_2
    return-object v2

    .line 95
    :pswitch_0
    instance-of p1, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    move-object p1, p4

    .line 100
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;

    .line 101
    .line 102
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;->label:I

    .line 103
    .line 104
    and-int v1, p2, v6

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    sub-int/2addr p2, v6

    .line 109
    iput p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;->label:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;

    .line 113
    .line 114
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 115
    .line 116
    invoke-direct {p1, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;->result:Ljava/lang/Object;

    .line 120
    .line 121
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;->label:I

    .line 122
    .line 123
    if-eqz p2, :cond_8

    .line 124
    .line 125
    if-ne p2, v7, :cond_7

    .line 126
    .line 127
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v2, v8

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 144
    .line 145
    if-eqz p0, :cond_a

    .line 146
    .line 147
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ScrollToMessage;

    .line 148
    .line 149
    invoke-direct {p2, p0}, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ScrollToMessage;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 150
    .line 151
    .line 152
    iput v7, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/SetMessageActiveSideEffect$consume$1;->label:I

    .line 153
    .line 154
    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-ne p0, v5, :cond_9

    .line 159
    .line 160
    move-object v2, v5

    .line 161
    goto :goto_5

    .line 162
    :cond_9
    :goto_4
    move-object v2, v3

    .line 163
    :cond_a
    :goto_5
    return-object v2

    .line 164
    :pswitch_1
    instance-of p1, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    move-object p1, p4

    .line 169
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;

    .line 170
    .line 171
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;->label:I

    .line 172
    .line 173
    and-int p3, p2, v6

    .line 174
    .line 175
    if-eqz p3, :cond_b

    .line 176
    .line 177
    sub-int/2addr p2, v6

    .line 178
    iput p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;->label:I

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_b
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;

    .line 182
    .line 183
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 184
    .line 185
    invoke-direct {p1, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 186
    .line 187
    .line 188
    :goto_6
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;->result:Ljava/lang/Object;

    .line 189
    .line 190
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;->label:I

    .line 191
    .line 192
    if-eqz p2, :cond_d

    .line 193
    .line 194
    if-ne p2, v7, :cond_c

    .line 195
    .line 196
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_c
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    move-object v3, v8

    .line 204
    goto :goto_7

    .line 205
    :cond_d
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iput v7, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/AllConfigurationsReadySideEffect$consume$1;->label:I

    .line 209
    .line 210
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$AllConfigsReady;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$AllConfigsReady;

    .line 211
    .line 212
    invoke-interface {v1, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    if-ne p0, v5, :cond_e

    .line 217
    .line 218
    move-object v3, v5

    .line 219
    :cond_e
    :goto_7
    return-object v3

    .line 220
    :pswitch_2
    instance-of p1, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;

    .line 221
    .line 222
    if-eqz p1, :cond_f

    .line 223
    .line 224
    move-object p1, p4

    .line 225
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;

    .line 226
    .line 227
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;->label:I

    .line 228
    .line 229
    and-int v1, p2, v6

    .line 230
    .line 231
    if-eqz v1, :cond_f

    .line 232
    .line 233
    sub-int/2addr p2, v6

    .line 234
    iput p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;->label:I

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_f
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;

    .line 238
    .line 239
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 240
    .line 241
    invoke-direct {p1, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 242
    .line 243
    .line 244
    :goto_8
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;->result:Ljava/lang/Object;

    .line 245
    .line 246
    iget p2, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;->label:I

    .line 247
    .line 248
    if-eqz p2, :cond_11

    .line 249
    .line 250
    if-ne p2, v7, :cond_10

    .line 251
    .line 252
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_10
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_9
    move-object v3, v8

    .line 260
    goto :goto_a

    .line 261
    :cond_11
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 269
    .line 270
    if-eqz p0, :cond_12

    .line 271
    .line 272
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$OpenMessage;

    .line 273
    .line 274
    invoke-direct {p2, p0}, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$OpenMessage;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 275
    .line 276
    .line 277
    iput v7, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$consume$1;->label:I

    .line 278
    .line 279
    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    if-ne p0, v5, :cond_13

    .line 284
    .line 285
    move-object v3, v5

    .line 286
    goto :goto_a

    .line 287
    :cond_12
    const-string p0, "onClickMessageSideEffect: activeMessage must not be null"

    .line 288
    .line 289
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_13
    :goto_a
    return-object v3

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
