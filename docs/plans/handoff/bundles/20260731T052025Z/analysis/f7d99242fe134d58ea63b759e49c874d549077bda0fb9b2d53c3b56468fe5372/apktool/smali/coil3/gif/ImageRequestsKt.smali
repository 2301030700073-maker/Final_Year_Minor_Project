.class public final Lcoil3/gif/ImageRequestsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field private static final animatedTransformationKey:Lcoil3/Extras$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil3/Extras$Key<",
            "Lcoil3/gif/AnimatedTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final animationEndCallbackKey:Lcoil3/Extras$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil3/Extras$Key<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field

.field private static final animationStartCallbackKey:Lcoil3/Extras$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil3/Extras$Key<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field

.field private static final repeatCountKey:Lcoil3/Extras$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil3/Extras$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 12
    .line 13
    new-instance v0, Lcoil3/Extras$Key;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 20
    .line 21
    new-instance v0, Lcoil3/Extras$Key;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 27
    .line 28
    new-instance v0, Lcoil3/Extras$Key;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 34
    .line 35
    return-void
.end method

.method public static final animatedTransformation(Lcoil3/request/ImageRequest$Builder;Lcoil3/gif/AnimatedTransformation;)Lcoil3/request/ImageRequest$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final getAnimatedTransformation(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Lcoil3/gif/AnimatedTransformation;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object p0, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getAnimatedTransformation(Lcoil3/request/ImageRequest;)Lcoil3/gif/AnimatedTransformation;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcoil3/gif/AnimatedTransformation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final getAnimatedTransformation(Lcoil3/request/Options;)Lcoil3/gif/AnimatedTransformation;
    .locals 1

    .line 10
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/gif/AnimatedTransformation;

    return-object p0
.end method

.method public static synthetic getAnimatedTransformation$annotations(Lcoil3/Extras$Key$Companion;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAnimatedTransformation$annotations(Lcoil3/request/ImageRequest;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic getAnimatedTransformation$annotations(Lcoil3/request/Options;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static final getAnimationEndCallback(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object p0, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getAnimationEndCallback(Lcoil3/request/ImageRequest;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            ")",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final getAnimationEndCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/Options;",
            ")",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final getAnimationStartCallback(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object p0, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getAnimationStartCallback(Lcoil3/request/ImageRequest;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            ")",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final getAnimationStartCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/Options;",
            ")",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final getRepeatCount(Lcoil3/request/ImageRequest;)I
    .locals 1

    .line 1
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final getRepeatCount(Lcoil3/request/Options;)I
    .locals 1

    .line 14
    sget-object v0, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getRepeatCount(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object p0, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final onAnimationEnd(Lcoil3/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function0;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest$Builder;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lcoil3/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final onAnimationStart(Lcoil3/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function0;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest$Builder;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lcoil3/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final repeatCount(Lcoil3/ImageLoader$Builder;I)Lcoil3/ImageLoader$Builder;
    .locals 4

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const-string v3, "Invalid repeatCount: "

    if-lt v0, v1, :cond_1

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const/4 v0, -0x1

    if-lt p1, v0, :cond_2

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0

    .line 51
    :cond_2
    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final repeatCount(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Invalid repeatCount: "

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    const/4 v0, -0x1

    .line 23
    if-lt p1, v0, :cond_2

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method
