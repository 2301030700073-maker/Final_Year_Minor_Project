.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/logging/Logger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
    .locals 1

    .line 1
    iget p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;

    .line 9
    .line 10
    const/4 p3, 0x3

    .line 11
    invoke-direct {p1, p0, p2, p3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, p3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-direct {p1, p0, p2, p3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, p3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
