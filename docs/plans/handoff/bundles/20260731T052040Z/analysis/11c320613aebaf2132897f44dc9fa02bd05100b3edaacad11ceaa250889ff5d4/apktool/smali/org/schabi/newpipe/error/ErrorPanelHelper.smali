.class public final Lorg/schabi/newpipe/error/ErrorPanelHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final errorActionButton:Landroid/widget/Button;

.field public final errorDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

.field public final errorOpenInBrowserButton:Landroid/widget/Button;

.field public final errorPanelRoot:Landroid/view/View;

.field public final errorRetryButton:Landroid/widget/Button;

.field public final errorServiceExplanationTextView:Landroid/widget/TextView;

.field public final errorServiceInfoTextView:Landroid/widget/TextView;

.field public final errorTextView:Landroid/widget/TextView;

.field public final fragment:Lorg/schabi/newpipe/BaseFragment;

.field public final retryShouldBeShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->Companion:Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;

    .line 7
    .line 8
    const-class v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/BaseFragment;Landroid/view/View;Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->fragment:Lorg/schabi/newpipe/BaseFragment;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    .line 17
    .line 18
    const p1, 0x7f0a015b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 29
    .line 30
    const p2, 0x7f0a0159

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast p2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    .line 43
    .line 44
    const p2, 0x7f0a0158

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast p2, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceInfoTextView:Landroid/widget/TextView;

    .line 57
    .line 58
    const p2, 0x7f0a0157

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceExplanationTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    const p2, 0x7f0a0155

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast p2, Landroid/widget/Button;

    .line 83
    .line 84
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 85
    .line 86
    const p2, 0x7f0a015c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast p2, Landroid/widget/Button;

    .line 97
    .line 98
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 99
    .line 100
    const v0, 0x7f0a015a

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast p1, Landroid/widget/Button;

    .line 111
    .line 112
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    if-eqz p3, :cond_0

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move v0, p1

    .line 120
    :goto_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->retryShouldBeShown:Z

    .line 121
    .line 122
    if-eqz p3, :cond_1

    .line 123
    .line 124
    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 125
    .line 126
    invoke-direct {v0, p2, p1}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    const-wide/16 p1, 0x12c

    .line 130
    .line 131
    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/Observable;->debounce(J)Lio/reactivex/rxjava3/internal/operators/observable/ObservableDebounceTimed;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 144
    .line 145
    const/16 v0, 0x1b

    .line 146
    .line 147
    invoke-direct {p2, p3, v0}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    sget-object p3, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 151
    .line 152
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 153
    .line 154
    invoke-direct {v0, p2, p3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 161
    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public final ensureDefaultVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceInfoTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceExplanationTextView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final showError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->ensureDefaultVisibility()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->getText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lkotlin/math/MathKt;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1, v2}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    const v3, 0x7f130411

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-boolean v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-direct {v0, p0, p1, v3}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    const v3, 0x7f13016b

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-boolean v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->retryShouldBeShown:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    move v0, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 v0, 0x8

    .line 81
    .line 82
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-direct {v1, p0, p1, v2}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    const/4 v10, 0x0

    .line 106
    const/16 v11, 0x1c

    .line 107
    .line 108
    iget-object v3, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    const-wide/16 v5, 0x12c

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const-wide/16 v8, 0x0

    .line 115
    .line 116
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
