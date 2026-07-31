.class public final synthetic Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->f$1:Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

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
    iget v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->f$1:Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    iget-object v0, v2, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 19
    .line 20
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
