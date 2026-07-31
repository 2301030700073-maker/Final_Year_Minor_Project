.class public final synthetic Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/fsck/k9/view/MessageWebView;

.field public final synthetic f$3:Landroid/print/PrintManager;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$8;Ljava/lang/String;Lcom/fsck/k9/view/MessageWebView;Landroid/print/PrintManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/view/MessageWebView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$3:Landroid/print/PrintManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onPageFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ": "

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/view/MessageWebView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;->f$3:Landroid/print/PrintManager;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 34
    .line 35
    .line 36
    return-void
.end method
