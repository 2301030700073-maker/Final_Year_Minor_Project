.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda9;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda9;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 6
    .line 7
    check-cast p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 30
    .line 31
    sget-object v3, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
