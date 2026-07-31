.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/common/action/SwipeAction;

.field public final synthetic f$2:Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;II)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

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
    .locals 5

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x31

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p0, v4, v3, p1, p2}, Lokio/Options$Companion;->MessageItemSwipeBackground(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, v4, v3, p1, p2}, Lokio/Options$Companion;->MessageItemSwipeBackground(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
