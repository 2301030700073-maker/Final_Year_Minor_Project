.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, p0, v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handleChooseFolderResult$1(Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;Lkotlin/jvm/functions/Function2;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-direct {v0, p0, v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handleChooseFolderResult$1(Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;Lkotlin/jvm/functions/Function2;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
