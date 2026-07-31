.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/room/InvalidationTracker$implementation$1;

.field public final synthetic f$1:Landroidx/room/InvalidationTracker$implementation$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->f$0:Landroidx/room/InvalidationTracker$implementation$1;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->f$1:Landroidx/room/InvalidationTracker$implementation$1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->f$1:Landroidx/room/InvalidationTracker$implementation$1;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;->f$0:Landroidx/room/InvalidationTracker$implementation$1;

    .line 6
    .line 7
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

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
    iget-object p2, p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2, p0, v1}, Lorg/jsoup/nodes/NodeUtils;->toggleSelectMessages(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Ljava/util/List;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p2, p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;->messages:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1, p2, p0, v1}, Lorg/jsoup/nodes/NodeUtils;->toggleSelectMessages(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Ljava/util/List;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
