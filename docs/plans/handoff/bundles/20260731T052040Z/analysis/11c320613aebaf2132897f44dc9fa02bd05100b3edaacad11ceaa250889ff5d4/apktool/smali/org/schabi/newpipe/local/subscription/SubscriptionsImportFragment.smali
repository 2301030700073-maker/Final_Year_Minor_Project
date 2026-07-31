.class public Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field currentServiceId:I

.field public infoTextView:Landroid/widget/TextView;

.field public inputButton:Landroid/widget/Button;

.field public inputText:Landroid/widget/EditText;

.field public instructionsString:I

.field public relatedUrl:Ljava/lang/String;

.field public final requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public supportedSources:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 6
    .line 7
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final initListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const p2, 0x7f0a01dc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/widget/Button;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    .line 11
    .line 12
    const p2, 0x7f0a01dd

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/EditText;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    .line 22
    .line 23
    const p2, 0x7f0a01db

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    .line 35
    .line 36
    sget-object p2, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    const v2, 0x7f130223

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    .line 60
    .line 61
    iget p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 62
    .line 63
    sget-object v3, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 64
    .line 65
    if-ne p2, v1, :cond_0

    .line 66
    .line 67
    const p2, 0x7f13021e

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p2, -0x1

    .line 72
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const p1, 0x7f130216

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    .line 105
    .line 106
    new-array v3, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object p1, v3, v0

    .line 109
    .line 110
    invoke-virtual {p0, p2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const-string p1, ""

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/List;

    .line 21
    .line 22
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Style;->getRelatedUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    .line 29
    .line 30
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 31
    .line 32
    sget-object v2, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq p1, v2, :cond_0

    .line 38
    .line 39
    move p1, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const p1, 0x7f13021d

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const p1, 0x7f130224

    .line 46
    .line 47
    .line 48
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 52
    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    .line 57
    .line 58
    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    .line 59
    .line 60
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 69
    .line 70
    if-eq p1, v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    .line 74
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 75
    .line 76
    new-array v3, v0, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const v7, 0x7f1301f3

    .line 83
    .line 84
    .line 85
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 86
    .line 87
    const-string v5, "Service does not support importing subscriptions"

    .line 88
    .line 89
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d005d

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f130223

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setInfoText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v0, 0x1c

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Landroid/text/Spannable;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Landroid/text/Spannable;

    .line 28
    .line 29
    invoke-static {p1, v1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of p1, p1, Landroid/text/method/LinkMovementMethod;

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method
