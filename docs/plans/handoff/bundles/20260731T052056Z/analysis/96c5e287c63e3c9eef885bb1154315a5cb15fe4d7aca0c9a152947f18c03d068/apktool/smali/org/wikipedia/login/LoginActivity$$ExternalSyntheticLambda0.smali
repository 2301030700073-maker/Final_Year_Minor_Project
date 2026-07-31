.class public final synthetic Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/login/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/LoginActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/login/LoginActivity;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/login/LoginActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->onLoginSuccess()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 30
    .line 31
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 45
    .line 46
    const-string v1, "binding"

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "username"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    const-string v1, "password"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    const p1, 0x7f1200d8

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->doLogin()V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v2

    .line 113
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v2

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
