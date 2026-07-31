.class public final Lcom/fsck/k9/message/MessageBuilder$2;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/message/MessageBuilder;

.field public final synthetic val$data:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/message/MessageBuilder;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$data:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$data:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/fsck/k9/message/MessageBuilder;->buildMessageOnActivityResult(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->deliverResult()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
