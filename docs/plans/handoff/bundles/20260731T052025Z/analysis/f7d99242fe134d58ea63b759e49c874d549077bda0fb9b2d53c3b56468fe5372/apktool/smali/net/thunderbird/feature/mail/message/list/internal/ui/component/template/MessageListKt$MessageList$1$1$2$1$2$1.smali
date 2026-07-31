.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $dispatchEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic $message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusExit;

    .line 18
    .line 19
    invoke-direct {p1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusExit;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;

    .line 32
    .line 33
    invoke-direct {p1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v0, p0, v2, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setOnEnter(Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-direct {v0, p0, v2, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setOnExit(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
