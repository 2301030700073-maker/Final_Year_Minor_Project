.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $dispatchEvent$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $items:Lkotlinx/collections/immutable/ImmutableList;

.field public final synthetic $showAccountIndicator$inlined:Z

.field public final synthetic $state$inlined:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

.field public final synthetic $swipeActions$inlined:Lkotlinx/collections/immutable/PersistentMap;


# direct methods
.method public constructor <init>(Lkotlinx/collections/immutable/ImmutableList;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$items:Lkotlinx/collections/immutable/ImmutableList;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$swipeActions$inlined:Lkotlinx/collections/immutable/PersistentMap;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$state$inlined:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$dispatchEvent$inlined:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-boolean p5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$showAccountIndicator$inlined:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p4, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    and-int/lit8 v0, p4, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object v0, p3

    .line 22
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x2

    .line 33
    :goto_0
    or-int/2addr p1, p4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, p4

    .line 36
    :goto_1
    and-int/lit8 p4, p4, 0x30

    .line 37
    .line 38
    if-nez p4, :cond_3

    .line 39
    .line 40
    move-object p4, p3

    .line 41
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-eqz p4, :cond_2

    .line 48
    .line 49
    const/16 p4, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 p4, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr p1, p4

    .line 55
    :cond_3
    and-int/lit16 p4, p1, 0x93

    .line 56
    .line 57
    const/16 v0, 0x92

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-eq p4, v0, :cond_4

    .line 62
    .line 63
    move p4, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move p4, v1

    .line 66
    :goto_3
    and-int/2addr p1, v2

    .line 67
    move-object v7, p3

    .line 68
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    invoke-virtual {v7, p1, p4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$items:Lkotlinx/collections/immutable/ImmutableList;

    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v2, p1

    .line 83
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 84
    .line 85
    const p1, -0x889da1f

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 92
    .line 93
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 94
    .line 95
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$swipeActions$inlined:Lkotlinx/collections/immutable/PersistentMap;

    .line 96
    .line 97
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 103
    .line 104
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$state$inlined:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 105
    .line 106
    invoke-interface {p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getPreferences()Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    :goto_4
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;

    .line 117
    .line 118
    iget-boolean p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$showAccountIndicator$inlined:Z

    .line 119
    .line 120
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;->$dispatchEvent$inlined:Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    invoke-direct {p2, v2, p3, p1, v4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;ZLnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;)V

    .line 123
    .line 124
    .line 125
    const p0, -0x31fabe65

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    const/16 v8, 0x6000

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-static/range {v2 .. v8}, Lokhttp3/CacheControl$Companion;->MessageListSwipeableItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/action/SwipeActions;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p0
.end method
