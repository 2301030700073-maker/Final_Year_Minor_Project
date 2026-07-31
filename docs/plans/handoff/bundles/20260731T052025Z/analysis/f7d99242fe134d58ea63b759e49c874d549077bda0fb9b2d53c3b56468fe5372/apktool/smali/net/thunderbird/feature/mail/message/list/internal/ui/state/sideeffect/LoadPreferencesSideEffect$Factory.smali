.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final getMessageListPreferences:Ljava/lang/Object;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->getMessageListPreferences:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
    .locals 9

    .line 1
    iget p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->getMessageListPreferences:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 11
    .line 12
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1, p2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;-><init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/ui/messagelist/MessageListFragment;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    move-object v6, v1

    .line 19
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 20
    .line 21
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 25
    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;-><init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_1
    move-object v4, p2

    .line 33
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;

    .line 34
    .line 35
    check-cast v1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 36
    .line 37
    invoke-direct {p0, v4, v0, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_2
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;

    .line 44
    .line 45
    move-object v7, v1

    .line 46
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    iget-object v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 50
    .line 51
    move-object v5, v4

    .line 52
    move-object v4, v3

    .line 53
    move-object v3, p1

    .line 54
    invoke-direct/range {v3 .. v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;-><init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
