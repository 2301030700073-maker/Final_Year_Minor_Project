.class public final Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;
.super Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    const-string v0, "bridge"

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p2, p2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    int-to-float p2, p2

    .line 50
    invoke-static {p2}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-int/lit8 p2, p2, 0x10

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "pcs.c1.Page.setMargins({ top:\'0px\', bottom:\'"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, "px\' })"

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->callback()Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 p2, 0x0

    .line 83
    invoke-interface {p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;->showProgressBar$1(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p2
.end method
