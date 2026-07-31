.class public final synthetic Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/error/ErrorPanelHelper;

.field public final synthetic f$1:Lorg/schabi/newpipe/error/ErrorInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p1, v0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    .line 32
    .line 33
    const-class v2, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 34
    .line 35
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "recaptcha_url_extra"

    .line 39
    .line 40
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->fragment:Lorg/schabi/newpipe/BaseFragment;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
