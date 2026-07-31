.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iput p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->f$2:I

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
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    or-int/lit8 p2, v2, 0x1

    .line 20
    .line 21
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p0, p1, p2}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->HeaderRow(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    or-int/lit8 p2, v2, 0x1

    .line 30
    .line 31
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, p1, p2}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->HeaderRowSmall(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

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
