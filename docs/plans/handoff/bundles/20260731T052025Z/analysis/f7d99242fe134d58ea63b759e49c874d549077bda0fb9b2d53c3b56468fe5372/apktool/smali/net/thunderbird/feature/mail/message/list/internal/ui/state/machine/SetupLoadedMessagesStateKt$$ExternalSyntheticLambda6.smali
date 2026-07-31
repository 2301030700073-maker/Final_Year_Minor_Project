.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v1, p1

    .line 9
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v9, 0x7ef

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-static/range {v1 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    move-object v0, p1

    .line 30
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x7fff

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
