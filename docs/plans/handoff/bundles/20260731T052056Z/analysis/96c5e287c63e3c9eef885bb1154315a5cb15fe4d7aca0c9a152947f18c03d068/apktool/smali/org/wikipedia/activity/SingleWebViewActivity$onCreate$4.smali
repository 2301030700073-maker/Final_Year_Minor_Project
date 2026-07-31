.class public final Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onProgressChanged$com$hcaptcha$sdk$HCaptchaWebViewHelper$HCaptchaWebChromeClient(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    if-eqz p3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x7

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v2, "android.intent.action.VIEW"

    .line 35
    .line 36
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .line 38
    .line 39
    const/high16 v2, 0x10000000

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->this$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lcoil3/ImageLoader$Builder;

    .line 47
    .line 48
    iget-object v2, v2, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    :goto_0
    return p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 24
    .line 25
    iput-object p3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 26
    .line 27
    new-instance p3, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {p3, p4, p2}, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;I)V

    .line 30
    .line 31
    .line 32
    const p2, 0x104000a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    invoke-direct {p2, p4, p3}, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;I)V

    .line 42
    .line 43
    .line 44
    const/high16 v0, 0x1040000

    .line 45
    .line 46
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;

    .line 50
    .line 51
    invoke-direct {p2, p3, p4}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 55
    .line 56
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 57
    .line 58
    .line 59
    return p3

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 7
    .line 8
    .line 9
    :pswitch_0
    return-void

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
