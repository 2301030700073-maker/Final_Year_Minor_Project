.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $dispatchEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic $message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleFavourite;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleFavourite;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_1
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 31
    .line 32
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_2
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
