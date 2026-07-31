.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;
.super Ljava/lang/Object;
.source "LottieAnimationViewPropertyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLottieAnimationViewPropertyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LottieAnimationViewPropertyManager.kt\ncom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,268:1\n1#2:269\n739#3,9:270\n37#4,2:279\n*S KotlinDebug\n*F\n+ 1 LottieAnimationViewPropertyManager.kt\ncom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager\n*L\n258#1:270,9\n259#1:279,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010S\u001a\u00020TJ\u0018\u0010U\u001a\u00020T2\u0006\u0010V\u001a\u00020W2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\r\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000f\"\u0004\u0008\u001a\u0010\u0011R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010!\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001e\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u0010:\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u000f\"\u0004\u0008<\u0010\u0011R\u001c\u0010=\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u000f\"\u0004\u0008?\u0010\u0011R\u001c\u0010@\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u000f\"\u0004\u0008B\u0010\u0011R\u001e\u0010C\u001a\u0004\u0018\u00010DX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010I\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001e\u0010J\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008K\u0010\u001d\"\u0004\u0008L\u0010\u001fR\u001e\u0010M\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008N\u0010\u001d\"\u0004\u0008O\u0010\u001fR\u001e\u0010P\u001a\u0004\u0018\u00010DX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010I\u001a\u0004\u0008Q\u0010F\"\u0004\u0008R\u0010H\u00a8\u0006X"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
        "",
        "view",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "<init>",
        "(Lcom/airbnb/lottie/LottieAnimationView;)V",
        "viewWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "TAG",
        "",
        "animationNameDirty",
        "",
        "value",
        "animationName",
        "getAnimationName",
        "()Ljava/lang/String;",
        "setAnimationName",
        "(Ljava/lang/String;)V",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "getScaleType",
        "()Landroid/widget/ImageView$ScaleType;",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "imageAssetsFolder",
        "getImageAssetsFolder",
        "setImageAssetsFolder",
        "enableMergePaths",
        "getEnableMergePaths",
        "()Ljava/lang/Boolean;",
        "setEnableMergePaths",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "enableSafeMode",
        "getEnableSafeMode",
        "setEnableSafeMode",
        "colorFilters",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "getColorFilters",
        "()Lcom/facebook/react/bridge/ReadableArray;",
        "setColorFilters",
        "(Lcom/facebook/react/bridge/ReadableArray;)V",
        "textFilters",
        "getTextFilters",
        "setTextFilters",
        "renderMode",
        "Lcom/airbnb/lottie/RenderMode;",
        "getRenderMode",
        "()Lcom/airbnb/lottie/RenderMode;",
        "setRenderMode",
        "(Lcom/airbnb/lottie/RenderMode;)V",
        "layerType",
        "",
        "getLayerType",
        "()Ljava/lang/Integer;",
        "setLayerType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "animationJson",
        "getAnimationJson",
        "setAnimationJson",
        "animationURL",
        "getAnimationURL",
        "setAnimationURL",
        "sourceDotLottie",
        "getSourceDotLottie",
        "setSourceDotLottie",
        "progress",
        "",
        "getProgress",
        "()Ljava/lang/Float;",
        "setProgress",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "loop",
        "getLoop",
        "setLoop",
        "autoPlay",
        "getAutoPlay",
        "setAutoPlay",
        "speed",
        "getSpeed",
        "setSpeed",
        "commitChanges",
        "",
        "parseColorFilter",
        "colorFilter",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "lottie-react-native_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animationJson:Ljava/lang/String;

.field private animationName:Ljava/lang/String;

.field private animationNameDirty:Z

.field private animationURL:Ljava/lang/String;

.field private autoPlay:Ljava/lang/Boolean;

.field private colorFilters:Lcom/facebook/react/bridge/ReadableArray;

.field private enableMergePaths:Ljava/lang/Boolean;

.field private enableSafeMode:Ljava/lang/Boolean;

.field private imageAssetsFolder:Ljava/lang/String;

.field private layerType:Ljava/lang/Integer;

.field private loop:Ljava/lang/Boolean;

.field private progress:Ljava/lang/Float;

.field private renderMode:Lcom/airbnb/lottie/RenderMode;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private sourceDotLottie:Ljava/lang/String;

.field private speed:Ljava/lang/Float;

.field private textFilters:Lcom/facebook/react/bridge/ReadableArray;

.field private final viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "lottie-react-native"

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 73
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    check-cast v0, Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    return-void
.end method

.method private final parseColorFilter(Lcom/facebook/react/bridge/ReadableMap;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 4

    .line 249
    const-string v0, "color"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_0

    .line 250
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    :goto_0
    const-string v1, "keypath"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".**"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "."

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "quote(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 272
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 278
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 280
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 259
    check-cast p1, [Ljava/lang/String;

    .line 260
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 262
    new-instance p1, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    check-cast p1, Landroid/graphics/ColorFilter;

    .line 263
    new-instance v0, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 265
    sget-object p1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v1, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method


# virtual methods
.method public final commitChanges()V
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->textFilters:Lcom/facebook/react/bridge/ReadableArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 108
    new-instance v3, Lcom/airbnb/lottie/TextDelegate;

    invoke-direct {v3, v0}, Lcom/airbnb/lottie/TextDelegate;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 109
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    .line 110
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    const-string v7, "find"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    const-string/jumbo v8, "replace"

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-virtual {v3, v7, v6}, Lcom/airbnb/lottie/TextDelegate;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationURL:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 125
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v4}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_2
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationURL:Ljava/lang/String;

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 135
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v4}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    .line 141
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    return-void

    .line 145
    :cond_7
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v4, v3

    :cond_8
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 149
    const-string v2, "file"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 152
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v4}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    goto :goto_4

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "URI path is null for asset: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 159
    :cond_a
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 161
    :goto_4
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    return-void

    .line 166
    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 169
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 166
    const-string/jumbo v6, "raw"

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Animation for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not found in raw resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/util/RNLog;->e(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_c
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 178
    iput-boolean v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    .line 179
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    .line 182
    :cond_d
    iget-boolean v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    if-eqz v1, :cond_e

    .line 183
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 184
    iput-boolean v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    .line 187
    :cond_e
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    if-eqz v1, :cond_f

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 189
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    .line 192
    :cond_f
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    goto :goto_5

    :cond_10
    move v1, v2

    .line 193
    :goto_5
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 194
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    .line 197
    :cond_11
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->autoPlay:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 198
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_12

    .line 199
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 203
    :cond_12
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    if-eqz v1, :cond_13

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 205
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    .line 208
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_14

    .line 209
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 213
    :cond_14
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->renderMode:Lcom/airbnb/lottie/RenderMode;

    if-eqz v1, :cond_15

    .line 214
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 215
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 218
    :cond_15
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->layerType:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 220
    :cond_16
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 221
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 222
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    .line 225
    :cond_17
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 227
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    .line 230
    :cond_18
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableSafeMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSafeMode(Z)V

    .line 232
    iput-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableSafeMode:Ljava/lang/Boolean;

    .line 235
    :cond_19
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v1, :cond_1b

    .line 236
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 237
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    :goto_6
    if-ge v2, v3, :cond_1b

    .line 238
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_7

    .line 239
    :cond_1a
    invoke-direct {p0, v4, v0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->parseColorFilter(Lcom/facebook/react/bridge/ReadableMap;Lcom/airbnb/lottie/LottieAnimationView;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public final getAnimationJson()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnimationName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnimationURL()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoPlay()Ljava/lang/Boolean;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->autoPlay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getColorFilters()Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    return-object v0
.end method

.method public final getEnableMergePaths()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableSafeMode()Ljava/lang/Boolean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableSafeMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayerType()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->layerType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLoop()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getProgress()Ljava/lang/Float;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->renderMode:Lcom/airbnb/lottie/RenderMode;

    return-object v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getSourceDotLottie()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeed()Ljava/lang/Float;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    return-object v0
.end method

.method public final getTextFilters()Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->textFilters:Lcom/facebook/react/bridge/ReadableArray;

    return-object v0
.end method

.method public final setAnimationJson(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    return-void
.end method

.method public final setAnimationName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    return-void
.end method

.method public final setAnimationURL(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationURL:Ljava/lang/String;

    return-void
.end method

.method public final setAutoPlay(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->autoPlay:Ljava/lang/Boolean;

    return-void
.end method

.method public final setColorFilters(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method

.method public final setEnableMergePaths(Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableSafeMode(Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableSafeMode:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public final setLayerType(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->layerType:Ljava/lang/Integer;

    return-void
.end method

.method public final setLoop(Ljava/lang/Boolean;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method public final setProgress(Ljava/lang/Float;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    return-void
.end method

.method public final setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->renderMode:Lcom/airbnb/lottie/RenderMode;

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final setSourceDotLottie(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->sourceDotLottie:Ljava/lang/String;

    return-void
.end method

.method public final setSpeed(Ljava/lang/Float;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    return-void
.end method

.method public final setTextFilters(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->textFilters:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method
