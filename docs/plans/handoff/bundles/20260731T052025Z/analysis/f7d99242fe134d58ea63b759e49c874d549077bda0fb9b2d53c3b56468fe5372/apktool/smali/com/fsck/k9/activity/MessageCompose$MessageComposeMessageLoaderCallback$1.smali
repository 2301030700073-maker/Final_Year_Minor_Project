.class public final Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/beetstra/jutf7/Base64Util;


# direct methods
.method public synthetic constructor <init>(Lcom/beetstra/jutf7/Base64Util;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;->this$1:Lcom/beetstra/jutf7/Base64Util;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;->this$1:Lcom/beetstra/jutf7/Base64Util;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 12
    .line 13
    const v0, 0x7f120624

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 27
    .line 28
    const v0, 0x7f120621

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
