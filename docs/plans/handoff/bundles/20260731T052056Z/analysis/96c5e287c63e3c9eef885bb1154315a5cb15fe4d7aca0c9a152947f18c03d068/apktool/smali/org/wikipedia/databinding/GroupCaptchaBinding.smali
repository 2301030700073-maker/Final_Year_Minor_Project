.class public final Lorg/wikipedia/databinding/GroupCaptchaBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final captchaImage:Landroid/widget/ImageView;

.field public final captchaImageProgress:Landroid/widget/ProgressBar;

.field public final captchaSubmitButton:Landroid/widget/Button;

.field public final captchaText:Lcom/google/android/material/textfield/TextInputLayout;

.field public final requestAccountText:Landroid/widget/TextView;

.field public final rootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaImage:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaImageProgress:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->requestAccountText:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/wikipedia/databinding/GroupCaptchaBinding;
    .locals 9

    .line 1
    const v0, 0x7f0900c8

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const v0, 0x7f0900c9

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0900ca

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v6, v1

    .line 33
    check-cast v6, Landroid/widget/Button;

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    const v0, 0x7f0900cb

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v7, v1

    .line 45
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    const v0, 0x7f090581

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v8, v1

    .line 57
    check-cast v8, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    new-instance v2, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 62
    .line 63
    move-object v3, p0

    .line 64
    check-cast v3, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/databinding/GroupCaptchaBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "Missing required view with ID: "

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method
