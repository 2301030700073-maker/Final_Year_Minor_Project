.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Landroid/widget/RadioGroup;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;->f$1:Landroid/widget/RadioGroup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;->f$1:Landroid/widget/RadioGroup;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 v1, -0x2

    .line 18
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
.end method
