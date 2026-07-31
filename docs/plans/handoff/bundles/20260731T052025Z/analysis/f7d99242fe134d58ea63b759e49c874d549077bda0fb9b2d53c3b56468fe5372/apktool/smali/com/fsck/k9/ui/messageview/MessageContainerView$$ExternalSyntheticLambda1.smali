.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

.field public final synthetic f$1:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

.field public final synthetic f$2:Lcom/fsck/k9/mailstore/MessageViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$2:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$2:Lcom/fsck/k9/mailstore/MessageViewInfo;

    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$2:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1, v3, v2, p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$pdJ3dw3PcgmWZaGeEPct20tLjQQ(ILandroidx/compose/runtime/Composer;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    invoke-static {p2, p1, v3, v2, p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$nxUTfgxbH73fr8z4zbj7qNQ-lic(ILandroidx/compose/runtime/Composer;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
