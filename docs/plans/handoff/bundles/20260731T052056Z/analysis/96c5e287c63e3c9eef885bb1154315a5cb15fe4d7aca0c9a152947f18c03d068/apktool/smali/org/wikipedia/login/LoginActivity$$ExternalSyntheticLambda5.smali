.class public final synthetic Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x6

    .line 6
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/login/ResetPasswordActivity;

    .line 12
    .line 13
    sget p1, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 14
    .line 15
    if-ne p2, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->validateThenLogin$1()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    return v0

    .line 23
    :pswitch_0
    check-cast p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 p3, 0x42

    .line 32
    .line 33
    if-eq p1, p3, :cond_2

    .line 34
    .line 35
    :cond_1
    if-ne p2, v2, :cond_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->clickNextButton()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return v1

    .line 47
    :pswitch_1
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 48
    .line 49
    if-ne p2, v2, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 52
    .line 53
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditSaveButton:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    .line 62
    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/wikipedia/media/AvPlayer;->onSaveClick()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    sget p0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 72
    .line 73
    move v0, v1

    .line 74
    :cond_5
    :goto_1
    return v0

    .line 75
    :pswitch_2
    check-cast p0, Lorg/wikipedia/login/LoginActivity;

    .line 76
    .line 77
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 78
    .line 79
    if-ne p2, v2, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->validateThenLogin()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move v0, v1

    .line 86
    :goto_2
    return v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
