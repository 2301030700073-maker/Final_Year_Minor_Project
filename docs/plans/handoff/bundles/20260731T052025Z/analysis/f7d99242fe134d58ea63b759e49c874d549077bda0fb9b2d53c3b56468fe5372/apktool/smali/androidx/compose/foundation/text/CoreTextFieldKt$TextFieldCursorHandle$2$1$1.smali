.class public final Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $manager:Ljava/lang/Object;

.field public final synthetic $observer:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_pointerInput:Ljava/lang/Object;

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$this_pointerInput:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$observer:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$manager:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$this_pointerInput:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$observer:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$manager:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$manager:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$observer:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$this_pointerInput:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    move-object v6, v3

    .line 20
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    move-object v7, v2

    .line 23
    check-cast v7, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 24
    .line 25
    move-object v8, v1

    .line 26
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    move-object v9, p2

    .line 29
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    return-object v4

    .line 33
    :pswitch_0
    move-object v9, p2

    .line 34
    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 35
    .line 36
    move-object v6, v3

    .line 37
    check-cast v6, Lnet/thunderbird/core/logging/Logger;

    .line 38
    .line 39
    move-object v7, v2

    .line 40
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 41
    .line 42
    move-object v8, v1

    .line 43
    check-cast v8, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 44
    .line 45
    const/4 v10, 0x1

    .line 46
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    return-object v5

    .line 52
    :pswitch_1
    move-object v9, p2

    .line 53
    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 54
    .line 55
    move-object v6, v3

    .line 56
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 57
    .line 58
    move-object v7, v2

    .line 59
    check-cast v7, Landroidx/compose/foundation/text/TextDragObserver;

    .line 60
    .line 61
    move-object v8, v1

    .line 62
    check-cast v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    return-object v5

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$this_pointerInput:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$observer:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->$manager:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    check-cast v5, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/Set;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/Iterable;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 94
    .line 95
    iget-object v1, v5, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->bannerGlobalVisuals:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 96
    .line 97
    iget-object v2, v5, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->internalState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->toInAppNotificationData(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v4, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerGlobalNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 107
    .line 108
    invoke-virtual {v5, v4}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->isEnabled(Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    iget-object v4, v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerGlobalVisual:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 115
    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Lnet/thunderbird/core/common/collections/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    move-object v8, v4

    .line 126
    check-cast v8, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 127
    .line 128
    iget-object v9, v1, Lnet/thunderbird/core/common/collections/PriorityQueue;->heap:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 135
    .line 136
    const/4 v10, 0x6

    .line 137
    invoke-static {v8, v9, v7, v10}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->copy$default(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;I)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v2, v4, v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move-object v4, v1

    .line 152
    check-cast v4, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 153
    .line 154
    iget-object v4, v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 155
    .line 156
    sget-object v8, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerInlineNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 157
    .line 158
    invoke-virtual {v5, v8}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->isEnabled(Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-nez v8, :cond_4

    .line 163
    .line 164
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 176
    .line 177
    iget-object v9, v8, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 178
    .line 179
    invoke-interface {v9, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-nez v9, :cond_5

    .line 184
    .line 185
    iget-object v9, v8, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 186
    .line 187
    invoke-static {v9, v4}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v4}, Lokio/Okio;->toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    const/4 v9, 0x5

    .line 196
    invoke-static {v8, v7, v4, v9}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->copy$default(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;I)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    goto :goto_2

    .line 201
    :cond_5
    move-object v4, v8

    .line 202
    :goto_2
    invoke-virtual {v2, v1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_3

    .line 207
    .line 208
    :cond_6
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object v1, v0

    .line 213
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 214
    .line 215
    sget-object v1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->SnackbarNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 216
    .line 217
    invoke-virtual {v5, v1}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->isEnabled(Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_7

    .line 222
    .line 223
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_7
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 235
    .line 236
    :goto_3
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_8
    check-cast p0, Ljava/util/Set;

    .line 245
    .line 246
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Ljava/util/Set;

    .line 251
    .line 252
    check-cast p1, Ljava/lang/Iterable;

    .line 253
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_a

    .line 268
    .line 269
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    move-object v2, v1

    .line 274
    check-cast v2, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 275
    .line 276
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_9

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_d

    .line 295
    .line 296
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->toInAppNotificationData(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 310
    .line 311
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 316
    .line 317
    if-eqz v1, :cond_c

    .line 318
    .line 319
    invoke-virtual {v5, v1}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->dismiss(Lnet/thunderbird/feature/notification/api/ui/host/visual/InAppNotificationVisual;)V

    .line 320
    .line 321
    .line 322
    :cond_c
    iget-object v0, v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerGlobalVisual:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 323
    .line 324
    if-eqz v0, :cond_b

    .line 325
    .line 326
    invoke-virtual {v5, v0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->dismiss(Lnet/thunderbird/feature/notification/api/ui/host/visual/InAppNotificationVisual;)V

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_d
    invoke-interface {v6, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    return-object v3

    .line 334
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 337
    .line 338
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 342
    .line 343
    new-instance p1, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 344
    .line 345
    const/16 v0, 0x9

    .line 346
    .line 347
    invoke-direct {p1, v0, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v0, 0x2

    .line 351
    const-string v8, "MessageListViewModel"

    .line 352
    .line 353
    invoke-static {v4, v8, v7, p1, v0}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 354
    .line 355
    .line 356
    instance-of p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 357
    .line 358
    if-eqz p1, :cond_14

    .line 359
    .line 360
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 361
    .line 362
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 363
    .line 364
    if-eqz p0, :cond_e

    .line 365
    .line 366
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_e

    .line 371
    .line 372
    move v0, v1

    .line 373
    goto :goto_7

    .line 374
    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    move v0, v1

    .line 379
    :cond_f
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-eqz v4, :cond_11

    .line 384
    .line 385
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 390
    .line 391
    iget-boolean v4, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 392
    .line 393
    if-eqz v4, :cond_f

    .line 394
    .line 395
    add-int/lit8 v0, v0, 0x1

    .line 396
    .line 397
    if-ltz v0, :cond_10

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_10
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwCountOverflow()V

    .line 401
    .line 402
    .line 403
    throw v7

    .line 404
    :cond_11
    :goto_7
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 405
    .line 406
    if-lez v0, :cond_13

    .line 407
    .line 408
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;

    .line 409
    .line 410
    check-cast v6, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 411
    .line 412
    new-instance v4, Ljava/lang/Integer;

    .line 413
    .line 414
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 415
    .line 416
    .line 417
    new-array v7, v2, [Ljava/lang/Object;

    .line 418
    .line 419
    aput-object v4, v7, v1

    .line 420
    .line 421
    check-cast v6, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 422
    .line 423
    const v4, 0x7f1201c6

    .line 424
    .line 425
    .line 426
    invoke-virtual {v6, v4, v7}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 431
    .line 432
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    if-ne v0, p0, :cond_12

    .line 437
    .line 438
    move v1, v2

    .line 439
    :cond_12
    invoke-direct {p1, v4, v1}, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;-><init>(Ljava/lang/String;Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_13
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;

    .line 444
    .line 445
    :goto_8
    invoke-virtual {v5, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    :cond_14
    return-object v3

    .line 449
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;->L$0:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 455
    .line 456
    new-instance p1, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;

    .line 457
    .line 458
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 459
    .line 460
    check-cast v5, Landroidx/compose/foundation/text/TextDragObserver;

    .line 461
    .line 462
    invoke-direct {p1, v4, v5, v7, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;I)V

    .line 463
    .line 464
    .line 465
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 466
    .line 467
    invoke-static {p0, v7, v0, p1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 468
    .line 469
    .line 470
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 471
    .line 472
    check-cast v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 473
    .line 474
    const/16 v1, 0x15

    .line 475
    .line 476
    invoke-direct {p1, v4, v6, v7, v1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 477
    .line 478
    .line 479
    invoke-static {p0, v7, v0, p1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 480
    .line 481
    .line 482
    return-object v3

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
