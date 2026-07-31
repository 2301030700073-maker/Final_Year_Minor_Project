.class public final Lorg/wikipedia/captcha/CaptchaHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

.field public captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

.field public clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final isModal:Z

.field public final prevTitle:Ljava/lang/String;

.field public final primaryView:Landroid/view/View;

.field public token:Ljava/lang/String;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V
    .locals 10

    move/from16 v0, p8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 102
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLcom/caverock/androidsvg/SVGAndroidRenderer;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    .line 15
    .line 16
    iput-object p5, p0, Lorg/wikipedia/captcha/CaptchaHandler;->prevTitle:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p7, p0, Lorg/wikipedia/captcha/CaptchaHandler;->isModal:Z

    .line 19
    .line 20
    iput-object p8, p0, Lorg/wikipedia/captcha/CaptchaHandler;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 21
    .line 22
    invoke-static {p3}, Lorg/wikipedia/databinding/GroupCaptchaBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p2, Lorg/wikipedia/databinding/GroupCaptchaBinding;->requestAccountText:Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 29
    .line 30
    iget-object p4, p2, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 31
    .line 32
    invoke-virtual {p4, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const/16 p5, 0x8

    .line 36
    .line 37
    const/4 p8, 0x0

    .line 38
    if-eqz p6, :cond_1

    .line 39
    .line 40
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p6

    .line 44
    if-nez p6, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p6, p8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    move p6, p5

    .line 50
    :goto_1
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    sget-object p4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 54
    .line 55
    const p4, 0x7f1201af

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 70
    .line 71
    new-instance p4, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/16 p6, 0xb

    .line 74
    .line 75
    invoke-direct {p4, p6, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p4}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    .line 83
    .line 84
    if-eqz p7, :cond_2

    .line 85
    .line 86
    move p5, p8

    .line 87
    :cond_2
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p2, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaImage:Landroid/widget/ImageView;

    .line 91
    .line 92
    new-instance p2, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 p3, 0x5

    .line 95
    invoke-direct {p2, p3, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final cancelCaptcha()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->hideCaptcha()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final captchaWord()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object v1
.end method

.method public final handleCaptcha(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v8, 0xfe

    .line 12
    .line 13
    const-string v2, "fancy_captcha_show"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Landroidx/paging/HintHandler;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v3, 0x23

    .line 46
    .line 47
    if-lt v1, v3, :cond_2

    .line 48
    .line 49
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/16 v3, 0x1e

    .line 56
    .line 57
    if-lt v1, v3, :cond_3

    .line 58
    .line 59
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 60
    .line 61
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/16 v3, 0x1a

    .line 66
    .line 67
    if-lt v1, v3, :cond_4

    .line 68
    .line 69
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 70
    .line 71
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 76
    .line 77
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    iget-boolean p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->isModal:Z

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    sget p1, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 93
    .line 94
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iget-object v2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_1
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    const-string v2, ""

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaImage:Landroid/widget/ImageView;

    .line 128
    .line 129
    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->url()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-string v2, "/w/"

    .line 144
    .line 145
    const-string v3, "index.php"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    iget-object v1, v1, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 156
    .line 157
    const-string v2, "?title=Special:Captcha/image&wpCaptchaId="

    .line 158
    .line 159
    invoke-static {p0, v2, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const/16 v1, 0x8

    .line 164
    .line 165
    invoke-static {p1, p0, v0, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final hideCaptcha()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/captcha/CaptchaHandler;->setErrorText(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->isModal:Z

    .line 6
    .line 7
    iget-object v2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lorg/wikipedia/captcha/CaptchaHandler;->prevTitle:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget v1, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 25
    .line 26
    iget-object v1, v2, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p0, v2, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final requestNewCaptcha()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaImageProgress:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/captcha/CaptchaHandler;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 21
    .line 22
    const/16 v3, 0x18

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v2, v3, p0, v4}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v0, v1, v4, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    return-void
.end method

.method public final setErrorText(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    :goto_0
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 32
    .line 33
    const v0, 0x7f1201ac

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
