.class public final Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;
.super Ljava/lang/Object;
.source "SplashScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J(\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;",
        "",
        "<init>",
        "()V",
        "REACT_CLASS",
        "",
        "launchScreenReference",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Dialog;",
        "isShowing",
        "",
        "()Z",
        "setShowing",
        "(Z)V",
        "onCreate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "getCacheImageUrl",
        "context",
        "Landroid/content/Context;",
        "loadImage",
        "imageView",
        "Landroid/widget/ImageView;",
        "callback",
        "Lcom/squareup/picasso/Callback;",
        "loadAlternateSplashImage",
        "preloadImage",
        "downloadImage",
        "url",
        "(Ljava/lang/String;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isAlternateSplashScreenEnabled",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;-><init>()V

    return-void
.end method

.method private final getCacheImageUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->isAlternateSplashScreenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/SplashScreenKt;->getCacheUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final isAlternateSplashScreenEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 106
    sget-object v0, Lcom/allproperty/android/consumer/modules/FeatureHelper;->Companion:Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;->getRemoteConfig()Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    move-result-object v0

    sget v1, Lcom/allproperty/android/consumer/R$string;->splash_start_date:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/allproperty/android/consumer/modules/FeatureHelper;->Companion:Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;

    invoke-virtual {v1}, Lcom/allproperty/android/consumer/modules/FeatureHelper$Companion;->getRemoteConfig()Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    move-result-object v1

    sget v4, Lcom/allproperty/android/consumer/R$string;->splash_end_date:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 115
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 116
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move v2, p1

    :catch_0
    :cond_1
    :goto_0
    return v2
.end method

.method private final loadAlternateSplashImage(Landroid/widget/ImageView;Landroid/app/Activity;)V
    .locals 1

    .line 78
    check-cast p2, Landroid/content/Context;

    new-instance v0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;

    invoke-direct {v0, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;-><init>(Landroid/widget/ImageView;)V

    check-cast v0, Lcom/squareup/picasso/Callback;

    invoke-direct {p0, p2, p1, v0}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method private final loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 3

    .line 62
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->getCacheImageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/squareup/picasso/NetworkPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    if-nez p2, :cond_0

    .line 65
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance p1, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;

    invoke-direct {p1, p3}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;-><init>(Lcom/squareup/picasso/Callback;)V

    check-cast p1, Lcom/squareup/picasso/Callback;

    invoke-virtual {v0, p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    :cond_1
    return-void
.end method

.method static synthetic loadImage$default(Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method


# virtual methods
.method public final downloadImage(Ljava/lang/String;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$downloadImage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$downloadImage$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final isShowing()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/allproperty/android/consumer/modules/SplashScreen;->access$isShowing$cp()Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/allproperty/android/consumer/R$style;->SplashScreenTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    sget v1, Lcom/allproperty/android/consumer/R$layout;->launch_screen:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 47
    sget v1, Lcom/allproperty/android/consumer/R$id;->alternate_image:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadAlternateSplashImage(Landroid/widget/ImageView;Landroid/app/Activity;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/SplashScreen;->access$setLaunchScreenReference$cp(Ljava/lang/ref/WeakReference;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->setShowing(Z)V

    return-void
.end method

.method public final preloadImage(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadImage$default(Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public final setShowing(Z)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/SplashScreen;->access$setShowing$cp(Z)V

    return-void
.end method
