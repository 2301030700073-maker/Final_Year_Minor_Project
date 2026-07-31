.class public final Lexpo/modules/image/ExpoImageViewWrapper;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "ExpoImageViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/ExpoImageViewWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoImageViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoImageViewWrapper.kt\nexpo/modules/image/ExpoImageViewWrapper\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 GlideExtensions.kt\nexpo/modules/image/GlideExtensionsKt\n+ 6 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 7 Trace.kt\nandroidx/tracing/TraceKt\n*L\n1#1,629:1\n27#2,3:630\n27#2,3:633\n27#2,3:636\n27#2,3:639\n27#2,3:642\n256#3,2:645\n256#3,2:647\n256#3,2:649\n256#3,2:688\n1863#4,2:651\n43#5,5:653\n43#5,5:658\n54#5,5:663\n32#5,5:672\n21#5,5:677\n25#6:668\n54#6:682\n25#6:684\n27#7,3:669\n31#7:683\n27#7,3:685\n31#7:690\n*S KotlinDebug\n*F\n+ 1 ExpoImageViewWrapper.kt\nexpo/modules/image/ExpoImageViewWrapper\n*L\n72#1:630,3\n73#1:633,3\n74#1:636,3\n75#1:639,3\n76#1:642,3\n578#1:645,2\n579#1:647,2\n353#1:649,2\n323#1:688,2\n387#1:651,2\n410#1:653,5\n413#1:658,5\n416#1:663,5\n540#1:672,5\n560#1:677,5\n483#1:668\n565#1:682\n253#1:684\n483#1:669,3\n483#1:683\n253#1:685,3\n253#1:690\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00b5\u00012\u00020\u0001:\u0002\u00b5\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0090\u0001\u001a\u00020 2\u0007\u0010\u0091\u0001\u001a\u00020cJ\u0012\u0010\u0099\u0001\u001a\u00020 2\u0007\u0010\u009a\u0001\u001a\u00020\u0014H\u0002J\u001b\u0010\u009b\u0001\u001a\u00020 2\u0008\u0010\u009a\u0001\u001a\u00030\u009c\u00012\u0006\u0010C\u001a\u00020cH\u0002J%\u0010\u009d\u0001\u001a\u00020c2\u0007\u0010\u009e\u0001\u001a\u00020\u001c2\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\t\u0008\u0002\u0010\u00a1\u0001\u001a\u00020cJ.\u0010\u00a2\u0001\u001a\u00020 2\u0007\u0010\u009a\u0001\u001a\u00020\u00142\u0007\u0010\u009e\u0001\u001a\u00020\u001c2\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0007\u0010\u00a1\u0001\u001a\u00020cH\u0002J\u0018\u0010<\u001a\u0004\u0018\u0001062\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020605H\u0002J-\u0010\u00a3\u0001\u001a\u00020 2\u0007\u0010\u00a4\u0001\u001a\u00020D2\u0007\u0010\u00a5\u0001\u001a\u00020D2\u0007\u0010\u00a6\u0001\u001a\u00020D2\u0007\u0010\u00a7\u0001\u001a\u00020DH\u0014J\n\u0010\u00a8\u0001\u001a\u00030\u00a9\u0001H\u0002J\u0007\u0010\u00aa\u0001\u001a\u00020 J,\u0010\u00ab\u0001\u001a\u00020c2\t\u0010\u00ac\u0001\u001a\u0004\u0018\u0001062\n\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u0096\u00012\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0002J\u0013\u0010\u00af\u0001\u001a\u00030\u00b0\u00012\u0007\u0010\u009e\u0001\u001a\u00020\u001cH\u0002J\t\u0010\u0098\u0001\u001a\u00020 H\u0002J%\u0010\u00b1\u0001\u001a\u00020 2\t\u0008\u0002\u0010\u00b2\u0001\u001a\u00020c2\t\u0008\u0002\u0010\u00b3\u0001\u001a\u00020cH\u0000\u00a2\u0006\u0003\u0008\u00b4\u0001R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\n\n\u0002\u0008\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008!\u0010\"R!\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010$\u001a\u0004\u0008\'\u0010\"R!\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010$\u001a\u0004\u0008+\u0010\"R!\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010$\u001a\u0004\u0008/\u0010\"R!\u00101\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010$\u001a\u0004\u00082\u0010\"R \u00104\u001a\u0008\u0012\u0004\u0012\u00020605X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0016\u0010;\u001a\u0004\u0018\u0001068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R \u0010>\u001a\u0008\u0012\u0004\u0012\u00020605X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00108\"\u0004\u0008@\u0010:R\u0016\u0010A\u001a\u0004\u0018\u0001068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010=R*\u0010E\u001a\u0004\u0018\u00010D2\u0008\u0010C\u001a\u0004\u0018\u00010D@@X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010J\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001c\u0010K\u001a\u0004\u0018\u00010LX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR$\u0010R\u001a\u00020Q2\u0006\u0010C\u001a\u00020Q@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR$\u0010W\u001a\u00020Q2\u0006\u0010C\u001a\u00020Q@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010T\"\u0004\u0008Y\u0010VR$\u0010[\u001a\u00020Z2\u0006\u0010C\u001a\u00020Z@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R*\u0010`\u001a\u0004\u0018\u00010D2\u0008\u0010C\u001a\u0004\u0018\u00010D@@X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010J\u001a\u0004\u0008a\u0010G\"\u0004\u0008b\u0010IR$\u0010d\u001a\u00020c2\u0006\u0010C\u001a\u00020c@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR$\u0010i\u001a\u00020c2\u0006\u0010C\u001a\u00020c@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010f\"\u0004\u0008k\u0010hR(\u0010m\u001a\u0004\u0018\u00010l2\u0008\u0010C\u001a\u0004\u0018\u00010l@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR(\u0010r\u001a\u0004\u0018\u00010l2\u0008\u0010C\u001a\u0004\u0018\u00010l@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010o\"\u0004\u0008t\u0010qR$\u0010u\u001a\u00020c2\u0006\u0010C\u001a\u00020c@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010f\"\u0004\u0008w\u0010hR$\u0010y\u001a\u00020x2\u0006\u0010C\u001a\u00020x@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u001b\u0010~\u001a\u00020cX\u0080\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010f\"\u0005\u0008\u0080\u0001\u0010hR\u001d\u0010\u0081\u0001\u001a\u00020cX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010f\"\u0005\u0008\u0083\u0001\u0010hR \u0010\u0084\u0001\u001a\u00030\u0085\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R \u0010\u008a\u0001\u001a\u00030\u008b\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001d\u0010\u0092\u0001\u001a\u00020cX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0093\u0001\u0010f\"\u0005\u0008\u0094\u0001\u0010hR\u0012\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0097\u0001\u001a\u00020cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0098\u0001\u001a\u00020cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b6\u0001"
    }
    d2 = {
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "requestManager",
        "Lcom/bumptech/glide/RequestManager;",
        "getRequestManager$expo_image_release",
        "()Lcom/bumptech/glide/RequestManager;",
        "requestManager$1",
        "progressListener",
        "Lexpo/modules/image/events/OkHttpProgressListener;",
        "firstView",
        "Lexpo/modules/image/ExpoImageView;",
        "secondView",
        "mainHandler",
        "Landroid/os/Handler;",
        "activeView",
        "getActiveView",
        "()Lexpo/modules/image/ExpoImageView;",
        "firstTarget",
        "Lexpo/modules/image/ImageViewWrapperTarget;",
        "secondTarget",
        "onLoadStart",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "",
        "getOnLoadStart$expo_image_release",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onLoadStart$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "onProgress",
        "Lexpo/modules/image/records/ImageProgressEvent;",
        "getOnProgress$expo_image_release",
        "onProgress$delegate",
        "onError",
        "Lexpo/modules/image/records/ImageErrorEvent;",
        "getOnError$expo_image_release",
        "onError$delegate",
        "onLoad",
        "Lexpo/modules/image/records/ImageLoadEvent;",
        "getOnLoad$expo_image_release",
        "onLoad$delegate",
        "onDisplay",
        "getOnDisplay$expo_image_release",
        "onDisplay$delegate",
        "sources",
        "",
        "Lexpo/modules/image/records/Source;",
        "getSources$expo_image_release",
        "()Ljava/util/List;",
        "setSources$expo_image_release",
        "(Ljava/util/List;)V",
        "bestSource",
        "getBestSource",
        "()Lexpo/modules/image/records/Source;",
        "placeholders",
        "getPlaceholders$expo_image_release",
        "setPlaceholders$expo_image_release",
        "bestPlaceholder",
        "getBestPlaceholder",
        "value",
        "",
        "blurRadius",
        "getBlurRadius$expo_image_release",
        "()Ljava/lang/Integer;",
        "setBlurRadius$expo_image_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "transition",
        "Lexpo/modules/image/records/ImageTransition;",
        "getTransition$expo_image_release",
        "()Lexpo/modules/image/records/ImageTransition;",
        "setTransition$expo_image_release",
        "(Lexpo/modules/image/records/ImageTransition;)V",
        "Lexpo/modules/image/enums/ContentFit;",
        "contentFit",
        "getContentFit$expo_image_release",
        "()Lexpo/modules/image/enums/ContentFit;",
        "setContentFit$expo_image_release",
        "(Lexpo/modules/image/enums/ContentFit;)V",
        "placeholderContentFit",
        "getPlaceholderContentFit$expo_image_release",
        "setPlaceholderContentFit$expo_image_release",
        "Lexpo/modules/image/records/ContentPosition;",
        "contentPosition",
        "getContentPosition$expo_image_release",
        "()Lexpo/modules/image/records/ContentPosition;",
        "setContentPosition$expo_image_release",
        "(Lexpo/modules/image/records/ContentPosition;)V",
        "tintColor",
        "getTintColor$expo_image_release",
        "setTintColor$expo_image_release",
        "",
        "isFocusableProp",
        "isFocusableProp$expo_image_release",
        "()Z",
        "setFocusableProp$expo_image_release",
        "(Z)V",
        "accessible",
        "getAccessible$expo_image_release",
        "setAccessible$expo_image_release",
        "",
        "accessibilityLabel",
        "getAccessibilityLabel$expo_image_release",
        "()Ljava/lang/String;",
        "setAccessibilityLabel$expo_image_release",
        "(Ljava/lang/String;)V",
        "recyclingKey",
        "getRecyclingKey",
        "setRecyclingKey",
        "allowDownscaling",
        "getAllowDownscaling$expo_image_release",
        "setAllowDownscaling$expo_image_release",
        "Lexpo/modules/image/records/DecodeFormat;",
        "decodeFormat",
        "getDecodeFormat$expo_image_release",
        "()Lexpo/modules/image/records/DecodeFormat;",
        "setDecodeFormat$expo_image_release",
        "(Lexpo/modules/image/records/DecodeFormat;)V",
        "autoplay",
        "getAutoplay$expo_image_release",
        "setAutoplay$expo_image_release",
        "lockResource",
        "getLockResource$expo_image_release",
        "setLockResource$expo_image_release",
        "priority",
        "Lexpo/modules/image/enums/Priority;",
        "getPriority$expo_image_release",
        "()Lexpo/modules/image/enums/Priority;",
        "setPriority$expo_image_release",
        "(Lexpo/modules/image/enums/Priority;)V",
        "cachePolicy",
        "Lexpo/modules/image/records/CachePolicy;",
        "getCachePolicy$expo_image_release",
        "()Lexpo/modules/image/records/CachePolicy;",
        "setCachePolicy$expo_image_release",
        "(Lexpo/modules/image/records/CachePolicy;)V",
        "setIsAnimating",
        "setAnimating",
        "shouldRerender",
        "getShouldRerender$expo_image_release",
        "setShouldRerender$expo_image_release",
        "loadedSource",
        "Lexpo/modules/image/GlideModelProvider;",
        "transformationMatrixChanged",
        "clearViewBeforeChangingSource",
        "copyProps",
        "view",
        "setIsScreenReaderFocusable",
        "Landroid/view/View;",
        "onResourceReady",
        "target",
        "resource",
        "Landroid/graphics/drawable/Drawable;",
        "isPlaceholder",
        "configureView",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "createPropOptions",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "onViewDestroys",
        "cleanIfNeeded",
        "newBestSource",
        "newBestSourceModel",
        "newBestPlaceholderModel",
        "createDownsampleStrategy",
        "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
        "rerenderIfNeeded",
        "shouldRerenderBecauseOfResize",
        "force",
        "rerenderIfNeeded$expo_image_release",
        "Companion",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

.field private static activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static appContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private static requestManager:Lcom/bumptech/glide/RequestManager;


# instance fields
.field private accessibilityLabel:Ljava/lang/String;

.field private accessible:Z

.field private allowDownscaling:Z

.field private autoplay:Z

.field private blurRadius:Ljava/lang/Integer;

.field private cachePolicy:Lexpo/modules/image/records/CachePolicy;

.field private clearViewBeforeChangingSource:Z

.field private contentFit:Lexpo/modules/image/enums/ContentFit;

.field private contentPosition:Lexpo/modules/image/records/ContentPosition;

.field private decodeFormat:Lexpo/modules/image/records/DecodeFormat;

.field private firstTarget:Lexpo/modules/image/ImageViewWrapperTarget;

.field private final firstView:Lexpo/modules/image/ExpoImageView;

.field private isFocusableProp:Z

.field private loadedSource:Lexpo/modules/image/GlideModelProvider;

.field private lockResource:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final onDisplay$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onError$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onLoad$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onLoadStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onProgress$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

.field private placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/image/records/Source;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lexpo/modules/image/enums/Priority;

.field private final progressListener:Lexpo/modules/image/events/OkHttpProgressListener;

.field private recyclingKey:Ljava/lang/String;

.field private final requestManager$1:Lcom/bumptech/glide/RequestManager;

.field private secondTarget:Lexpo/modules/image/ImageViewWrapperTarget;

.field private final secondView:Lexpo/modules/image/ExpoImageView;

.field private shouldRerender:Z

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/image/records/Source;",
            ">;"
        }
    .end annotation
.end field

.field private tintColor:Ljava/lang/Integer;

.field private transformationMatrixChanged:Z

.field private transition:Lexpo/modules/image/records/ImageTransition;


# direct methods
.method public static synthetic $r8$lambda$xsrFE27K0pxfLh4eilM19BMbTmY(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/image/ExpoImageViewWrapper;->onResourceReady$lambda$5(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 72
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onLoadStart"

    const-string v3, "getOnLoadStart$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Lexpo/modules/image/ExpoImageViewWrapper;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 73
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onProgress"

    const-string v3, "getOnProgress$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onError"

    const-string v3, "getOnError$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onLoad"

    const-string v3, "getOnLoad$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 76
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onDisplay"

    const-string v3, "getOnDisplay$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/image/ExpoImageViewWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    .line 600
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->appContextRef:Ljava/lang/ref/WeakReference;

    .line 601
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    .line 50
    sget-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lexpo/modules/image/ExpoImageViewWrapper$Companion;->getOrCreateRequestManager(Lexpo/modules/kotlin/AppContext;Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    .line 51
    new-instance p2, Lexpo/modules/image/events/OkHttpProgressListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, v0}, Lexpo/modules/image/events/OkHttpProgressListener;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->progressListener:Lexpo/modules/image/events/OkHttpProgressListener;

    .line 53
    new-instance p2, Lexpo/modules/image/ExpoImageView;

    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0}, Lexpo/modules/image/ExpoImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    .line 54
    new-instance v0, Lexpo/modules/image/ExpoImageView;

    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lexpo/modules/image/ExpoImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->mainHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Lexpo/modules/image/ImageViewWrapperTarget;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lexpo/modules/image/ImageViewWrapperTarget;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    .line 70
    new-instance v1, Lexpo/modules/image/ImageViewWrapperTarget;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lexpo/modules/image/ImageViewWrapperTarget;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    .line 72
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 632
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 72
    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onLoadStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 635
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 73
    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onProgress$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 638
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 74
    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onError$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 641
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 75
    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onLoad$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 644
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 76
    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onDisplay$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->sources:Ljava/util/List;

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholders:Ljava/util/List;

    .line 96
    sget-object v1, Lexpo/modules/image/enums/ContentFit;->Cover:Lexpo/modules/image/enums/ContentFit;

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    .line 103
    sget-object v1, Lexpo/modules/image/enums/ContentFit;->ScaleDown:Lexpo/modules/image/enums/ContentFit;

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

    .line 110
    sget-object v1, Lexpo/modules/image/records/ContentPosition;->Companion:Lexpo/modules/image/records/ContentPosition$Companion;

    invoke-virtual {v1}, Lexpo/modules/image/records/ContentPosition$Companion;->getCenter()Lexpo/modules/image/records/ContentPosition;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentPosition:Lexpo/modules/image/records/ContentPosition;

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->allowDownscaling:Z

    .line 158
    sget-object v2, Lexpo/modules/image/records/DecodeFormat;->ARGB_8888:Lexpo/modules/image/records/DecodeFormat;

    iput-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->decodeFormat:Lexpo/modules/image/records/DecodeFormat;

    .line 164
    iput-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->autoplay:Z

    .line 168
    sget-object v1, Lexpo/modules/image/enums/Priority;->NORMAL:Lexpo/modules/image/enums/Priority;

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->priority:Lexpo/modules/image/enums/Priority;

    .line 169
    sget-object v1, Lexpo/modules/image/records/CachePolicy;->DISK:Lexpo/modules/image/records/CachePolicy;

    iput-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    .line 574
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 576
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Lexpo/modules/image/ExpoImageViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    move-object v2, p2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    .line 645
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 647
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 583
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    check-cast p2, Landroid/view/View;

    .line 585
    invoke-virtual {v2, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    check-cast v0, Landroid/view/View;

    .line 589
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lexpo/modules/image/ExpoImageViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$cleanIfNeeded(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/records/Source;Lexpo/modules/image/GlideModelProvider;Lexpo/modules/image/GlideModelProvider;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/image/ExpoImageViewWrapper;->cleanIfNeeded(Lexpo/modules/image/records/Source;Lexpo/modules/image/GlideModelProvider;Lexpo/modules/image/GlideModelProvider;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$clearViewBeforeChangingSource(Lexpo/modules/image/ExpoImageViewWrapper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->clearViewBeforeChangingSource()V

    return-void
.end method

.method public static final synthetic access$configureView(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/image/ExpoImageViewWrapper;->configureView(Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static final synthetic access$createDownsampleStrategy(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ImageViewWrapperTarget;)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lexpo/modules/image/ExpoImageViewWrapper;->createDownsampleStrategy(Lexpo/modules/image/ImageViewWrapperTarget;)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPropOptions(Lexpo/modules/image/ExpoImageViewWrapper;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->createPropOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveView(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivityRef$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 45
    sget-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getAppContextRef$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 45
    sget-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->appContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getBestPlaceholder(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/records/Source;
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getBestPlaceholder()Lexpo/modules/image/records/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBestSource(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/records/Source;
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getBestSource()Lexpo/modules/image/records/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFirstTarget$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ImageViewWrapperTarget;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    return-object p0
.end method

.method public static final synthetic access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    return-object p0
.end method

.method public static final synthetic access$getLoadedSource$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/GlideModelProvider;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->loadedSource:Lexpo/modules/image/GlideModelProvider;

    return-object p0
.end method

.method public static final synthetic access$getProgressListener$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/events/OkHttpProgressListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->progressListener:Lexpo/modules/image/events/OkHttpProgressListener;

    return-object p0
.end method

.method public static final synthetic access$getRequestManager$cp()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 45
    sget-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public static final synthetic access$getSecondTarget$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ImageViewWrapperTarget;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    return-object p0
.end method

.method public static final synthetic access$getSecondView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    return-object p0
.end method

.method public static final synthetic access$getTransformationMatrixChanged$p(Lexpo/modules/image/ExpoImageViewWrapper;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    return p0
.end method

.method public static final synthetic access$setActivityRef$cp(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 45
    sput-object p0, Lexpo/modules/image/ExpoImageViewWrapper;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setAppContextRef$cp(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 45
    sput-object p0, Lexpo/modules/image/ExpoImageViewWrapper;->appContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setClearViewBeforeChangingSource$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->clearViewBeforeChangingSource:Z

    return-void
.end method

.method public static final synthetic access$setLoadedSource$p(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/GlideModelProvider;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->loadedSource:Lexpo/modules/image/GlideModelProvider;

    return-void
.end method

.method public static final synthetic access$setRequestManager$cp(Lcom/bumptech/glide/RequestManager;)V
    .locals 0

    .line 45
    sput-object p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-void
.end method

.method public static final synthetic access$setTransformationMatrixChanged$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    return-void
.end method

.method private final cleanIfNeeded(Lexpo/modules/image/records/Source;Lexpo/modules/image/GlideModelProvider;Lexpo/modules/image/GlideModelProvider;)Z
    .locals 2

    .line 435
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 436
    :cond_2
    :goto_0
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageView;->recycleView()Lexpo/modules/image/ImageViewWrapperTarget;

    .line 437
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageView;->recycleView()Lexpo/modules/image/ImageViewWrapperTarget;

    .line 439
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    iget-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    check-cast p2, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 440
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    iget-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    check-cast p2, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 442
    iput-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    const/4 p1, 0x0

    .line 443
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->loadedSource:Lexpo/modules/image/GlideModelProvider;

    .line 444
    iput-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    .line 445
    iput-boolean v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->clearViewBeforeChangingSource:Z

    const/4 p1, 0x1

    return p1
.end method

.method private final clearViewBeforeChangingSource()V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->clearViewBeforeChangingSource:Z

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    .line 475
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->recycleView()Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, v1}, Lexpo/modules/image/ImageViewWrapperTarget;->clear(Lcom/bumptech/glide/RequestManager;)V

    :cond_1
    return-void
.end method

.method private final configureView(Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 347
    invoke-virtual {p1, p3}, Lexpo/modules/image/ExpoImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-virtual {p1, p4}, Lexpo/modules/image/ExpoImageView;->setPlaceholder(Z)V

    .line 350
    invoke-virtual {p2}, Lexpo/modules/image/ImageViewWrapperTarget;->getPlaceholderContentFit()Lexpo/modules/image/enums/ContentFit;

    move-result-object p4

    if-nez p4, :cond_0

    sget-object p4, Lexpo/modules/image/enums/ContentFit;->ScaleDown:Lexpo/modules/image/enums/ContentFit;

    :cond_0
    invoke-virtual {p1, p4}, Lexpo/modules/image/ExpoImageView;->setPlaceholderContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V

    .line 351
    invoke-direct {p0, p1}, Lexpo/modules/image/ExpoImageViewWrapper;->copyProps(Lexpo/modules/image/ExpoImageView;)V

    .line 353
    move-object p4, p1

    check-cast p4, Landroid/view/View;

    const/4 v0, 0x0

    .line 649
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageView;->setCurrentTarget(Lexpo/modules/image/ImageViewWrapperTarget;)V

    .line 359
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p4, v1}, Lexpo/modules/image/ExpoImageView;->layout(IIII)V

    .line 361
    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageView;->applyTransformationMatrix()V

    const/4 p1, 0x1

    .line 363
    invoke-virtual {p2, p1}, Lexpo/modules/image/ImageViewWrapperTarget;->setUsed(Z)V

    .line 365
    instance-of p1, p3, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 366
    check-cast p3, Landroid/graphics/drawable/Animatable;

    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    return-void
.end method

.method private final copyProps(Lexpo/modules/image/ExpoImageView;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V

    .line 209
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentPosition:Lexpo/modules/image/records/ContentPosition;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setContentPosition$expo_image_release(Lexpo/modules/image/records/ContentPosition;)V

    .line 210
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->tintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setTintColor$expo_image_release(Ljava/lang/Integer;)V

    .line 211
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->isFocusableProp:Z

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setFocusable(Z)V

    .line 212
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessibilityLabel:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    check-cast p1, Landroid/view/View;

    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessible:Z

    invoke-direct {p0, p1, v0}, Lexpo/modules/image/ExpoImageViewWrapper;->setIsScreenReaderFocusable(Landroid/view/View;Z)V

    return-void
.end method

.method private final createDownsampleStrategy(Lexpo/modules/image/ImageViewWrapperTarget;)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .locals 2

    .line 453
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->allowDownscaling:Z

    if-nez v0, :cond_0

    .line 454
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 453
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    sget-object v1, Lexpo/modules/image/enums/ContentFit;->Fill:Lexpo/modules/image/enums/ContentFit;

    if-eq v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    sget-object v1, Lexpo/modules/image/enums/ContentFit;->None:Lexpo/modules/image/enums/ContentFit;

    if-eq v0, v1, :cond_1

    .line 459
    new-instance v0, Lexpo/modules/image/ContentFitDownsampleStrategy;

    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    invoke-direct {v0, p1, v1}, Lexpo/modules/image/ContentFitDownsampleStrategy;-><init>(Lexpo/modules/image/ImageViewWrapperTarget;Lexpo/modules/image/enums/ContentFit;)V

    move-object p1, v0

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    goto :goto_0

    .line 462
    :cond_1
    new-instance p1, Lexpo/modules/image/SafeDownsampleStrategy;

    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->decodeFormat:Lexpo/modules/image/records/DecodeFormat;

    invoke-direct {p1, v0}, Lexpo/modules/image/SafeDownsampleStrategy;-><init>(Lexpo/modules/image/records/DecodeFormat;)V

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    :goto_0
    return-object p1
.end method

.method private final createPropOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 5

    .line 408
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 409
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->priority:Lexpo/modules/image/enums/Priority;

    invoke-virtual {v1}, Lexpo/modules/image/enums/Priority;->toGlidePriority$expo_image_release()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "priority(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 410
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    sget-object v2, Lexpo/modules/image/records/CachePolicy;->MEMORY_AND_DISK:Lexpo/modules/image/records/CachePolicy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    sget-object v2, Lexpo/modules/image/records/CachePolicy;->MEMORY:Lexpo/modules/image/records/CachePolicy;

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "skipMemoryCache(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 413
    :goto_1
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    sget-object v2, Lexpo/modules/image/records/CachePolicy;->NONE:Lexpo/modules/image/records/CachePolicy;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    sget-object v2, Lexpo/modules/image/records/CachePolicy;->MEMORY:Lexpo/modules/image/records/CachePolicy;

    if-ne v1, v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 414
    :cond_4
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "diskCacheStrategy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 416
    :goto_2
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->blurRadius:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_3

    .line 667
    :cond_5
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 417
    new-instance v2, Ljp/wasabeef/glide/transformations/BlurTransformation;

    const/16 v3, 0x19

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(II)V

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "transform(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    :goto_3
    return-object v0
.end method

.method private final getActiveView()Lexpo/modules/image/ExpoImageView;
    .locals 1

    .line 63
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    return-object v0
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private final getBestPlaceholder()Lexpo/modules/image/records/Source;
    .locals 1

    .line 84
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholders:Ljava/util/List;

    invoke-direct {p0, v0}, Lexpo/modules/image/ExpoImageViewWrapper;->getBestSource(Ljava/util/List;)Lexpo/modules/image/records/Source;

    move-result-object v0

    return-object v0
.end method

.method private final getBestSource()Lexpo/modules/image/records/Source;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->sources:Ljava/util/List;

    invoke-direct {p0, v0}, Lexpo/modules/image/ExpoImageViewWrapper;->getBestSource(Ljava/util/List;)Lexpo/modules/image/records/Source;

    move-result-object v0

    return-object v0
.end method

.method private final getBestSource(Ljava/util/List;)Lexpo/modules/image/records/Source;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/image/records/Source;",
            ">;)",
            "Lexpo/modules/image/records/Source;"
        }
    .end annotation

    .line 371
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 375
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 376
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/image/records/Source;

    return-object p1

    .line 379
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    if-nez v0, :cond_2

    return-object v1

    .line 387
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 651
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/image/records/Source;

    int-to-double v6, v2

    .line 388
    invoke-interface {v5}, Lexpo/modules/image/records/Source;->getPixelCount()D

    move-result-wide v8

    int-to-double v10, v0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v3

    if-gez v8, :cond_3

    move-object v1, v5

    move-wide v3, v6

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static synthetic onResourceReady$default(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 239
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/image/ExpoImageViewWrapper;->onResourceReady(Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)Z

    move-result p0

    return p0
.end method

.method private static final onResourceReady$lambda$5(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 253
    sget-object v0, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v0}, Lexpo/modules/image/Trace;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] onResourceReady"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getTransition$expo_image_release()Lexpo/modules/image/records/ImageTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/image/records/ImageTransition;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    .line 257
    invoke-virtual {p2}, Lexpo/modules/image/ImageViewWrapperTarget;->getHasSource()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->isPlaceholder()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_2
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    .line 310
    :cond_3
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    .line 311
    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->recycleView()Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 314
    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 315
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getRequestManager$expo_image_release()Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lexpo/modules/image/ImageViewWrapperTarget;->clear(Lcom/bumptech/glide/RequestManager;)V

    .line 319
    :cond_4
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-static {p0, v6, p2, p3, p1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$configureView(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)V

    cmp-long p2, v0, v2

    if-lez p2, :cond_9

    .line 321
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/image/ExpoImageView;->bringToFront()V

    .line 322
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Lexpo/modules/image/ExpoImageView;->setAlpha(F)V

    .line 323
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/16 v2, 0x8

    .line 688
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/image/ExpoImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 326
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    .line 258
    :cond_5
    :goto_1
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_6

    .line 259
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    goto :goto_2

    .line 261
    :cond_6
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstView$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 258
    :goto_2
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/image/ExpoImageView;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/image/ExpoImageView;

    .line 264
    new-instance v8, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;

    invoke-direct {v8, v6, p2, p0}, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;-><init>(Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Lexpo/modules/image/ExpoImageViewWrapper;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 276
    invoke-static {p0, v7, p2, p3, p1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$configureView(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)V

    .line 279
    invoke-virtual {p2}, Lexpo/modules/image/ImageViewWrapperTarget;->getHasSource()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 280
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getOnDisplay$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p2

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p2, v9}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    cmp-long p2, v0, v2

    if-gtz p2, :cond_8

    .line 284
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 285
    invoke-virtual {v7, v5}, Lexpo/modules/image/ExpoImageView;->setAlpha(F)V

    .line 286
    invoke-virtual {v7}, Lexpo/modules/image/ExpoImageView;->bringToFront()V

    goto :goto_3

    .line 288
    :cond_8
    invoke-virtual {v7}, Lexpo/modules/image/ExpoImageView;->bringToFront()V

    .line 289
    invoke-virtual {v6, v5}, Lexpo/modules/image/ExpoImageView;->setAlpha(F)V

    .line 290
    invoke-virtual {v7, v4}, Lexpo/modules/image/ExpoImageView;->setAlpha(F)V

    .line 291
    invoke-virtual {v6}, Lexpo/modules/image/ExpoImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 292
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 293
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 294
    new-instance v2, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$1$1;

    invoke-direct {v2, v8}, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 298
    invoke-virtual {v7}, Lexpo/modules/image/ExpoImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 299
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 300
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 334
    :cond_9
    :goto_3
    instance-of p2, p3, Landroid/graphics/drawable/Animatable;

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getAutoplay$expo_image_release()Z

    move-result p0

    if-nez p0, :cond_a

    .line 335
    check-cast p3, Landroid/graphics/drawable/Animatable;

    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 337
    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public static synthetic rerenderIfNeeded$expo_image_release$default(Lexpo/modules/image/ExpoImageViewWrapper;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 482
    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->rerenderIfNeeded$expo_image_release(ZZ)V

    return-void
.end method

.method private final setIsScreenReaderFocusable(Landroid/view/View;Z)V
    .locals 2

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->setScreenReaderFocusable(Z)V

    goto :goto_0

    .line 224
    :cond_0
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    .line 225
    new-instance v0, Lexpo/modules/image/ExpoImageViewWrapper$setIsScreenReaderFocusable$1;

    invoke-direct {v0, p2}, Lexpo/modules/image/ExpoImageViewWrapper$setIsScreenReaderFocusable$1;-><init>(Z)V

    check-cast v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 223
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getAccessibilityLabel$expo_image_release()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessibilityLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccessible$expo_image_release()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessible:Z

    return v0
.end method

.method public final getAllowDownscaling$expo_image_release()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->allowDownscaling:Z

    return v0
.end method

.method public final getAutoplay$expo_image_release()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->autoplay:Z

    return v0
.end method

.method public final getBlurRadius$expo_image_release()Ljava/lang/Integer;
    .locals 1

    .line 86
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->blurRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCachePolicy$expo_image_release()Lexpo/modules/image/records/CachePolicy;
    .locals 1

    .line 169
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    return-object v0
.end method

.method public final getContentFit$expo_image_release()Lexpo/modules/image/enums/ContentFit;
    .locals 1

    .line 96
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    return-object v0
.end method

.method public final getContentPosition$expo_image_release()Lexpo/modules/image/records/ContentPosition;
    .locals 1

    .line 110
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentPosition:Lexpo/modules/image/records/ContentPosition;

    return-object v0
.end method

.method public final getDecodeFormat$expo_image_release()Lexpo/modules/image/records/DecodeFormat;
    .locals 1

    .line 158
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->decodeFormat:Lexpo/modules/image/records/DecodeFormat;

    return-object v0
.end method

.method public final getLockResource$expo_image_release()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->lockResource:Z

    return v0
.end method

.method public final getOnDisplay$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onDisplay$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnError$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lexpo/modules/image/records/ImageErrorEvent;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onError$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnLoad$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lexpo/modules/image/records/ImageLoadEvent;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onLoad$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnLoadStart$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onLoadStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnProgress$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lexpo/modules/image/records/ImageProgressEvent;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->onProgress$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaceholderContentFit$expo_image_release()Lexpo/modules/image/enums/ContentFit;
    .locals 1

    .line 103
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

    return-object v0
.end method

.method public final getPlaceholders$expo_image_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/image/records/Source;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholders:Ljava/util/List;

    return-object v0
.end method

.method public final getPriority$expo_image_release()Lexpo/modules/image/enums/Priority;
    .locals 1

    .line 168
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->priority:Lexpo/modules/image/enums/Priority;

    return-object v0
.end method

.method public final getRecyclingKey()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->recyclingKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestManager$expo_image_release()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public final getShouldRerender$expo_image_release()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    return v0
.end method

.method public final getSources$expo_image_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/image/records/Source;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->sources:Ljava/util/List;

    return-object v0
.end method

.method public final getTintColor$expo_image_release()Ljava/lang/Integer;
    .locals 1

    .line 117
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->tintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTransition$expo_image_release()Lexpo/modules/image/records/ImageTransition;
    .locals 1

    .line 94
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transition:Lexpo/modules/image/records/ImageTransition;

    return-object v0
.end method

.method public final isFocusableProp$expo_image_release()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->isFocusableProp:Z

    return v0
.end method

.method public final onResourceReady(Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)Z
    .locals 2

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/image/ExpoImageViewWrapper;ZLexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/views/ExpoView;->onSizeChanged(IIII)V

    .line 401
    iget-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->allowDownscaling:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    sget-object p3, Lexpo/modules/image/enums/ContentFit;->Fill:Lexpo/modules/image/enums/ContentFit;

    if-eq p1, p3, :cond_0

    .line 403
    iget-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    sget-object p3, Lexpo/modules/image/enums/ContentFit;->None:Lexpo/modules/image/enums/ContentFit;

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 400
    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/image/ExpoImageViewWrapper;->rerenderIfNeeded$expo_image_release$default(Lexpo/modules/image/ExpoImageViewWrapper;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onViewDestroys()V
    .locals 2

    .line 422
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstView:Lexpo/modules/image/ExpoImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/image/ExpoImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondView:Lexpo/modules/image/ExpoImageView;

    invoke-virtual {v0, v1}, Lexpo/modules/image/ExpoImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->firstTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 426
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->requestManager$1:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->secondTarget:Lexpo/modules/image/ImageViewWrapperTarget;

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public final rerenderIfNeeded$expo_image_release(ZZ)V
    .locals 11

    .line 483
    const-string v0, "apply(...)"

    sget-object v1, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v1}, Lexpo/modules/image/Trace;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rerenderIfNeeded(shouldRerenderBecauseOfResize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getLockResource$expo_image_release()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_9

    .line 487
    :cond_0
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getBestSource(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/records/Source;

    move-result-object p2

    .line 488
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getBestPlaceholder(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/records/Source;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    const-string v2, "getContext(...)"

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lexpo/modules/image/records/Source;->createGlideModelProvider(Landroid/content/Context;)Lexpo/modules/image/GlideModelProvider;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Lexpo/modules/image/records/Source;->createGlideModelProvider(Landroid/content/Context;)Lexpo/modules/image/GlideModelProvider;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v5

    .line 493
    :goto_1
    invoke-static {p0, p2, v6, v7}, Lexpo/modules/image/ExpoImageViewWrapper;->access$cleanIfNeeded(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/records/Source;Lexpo/modules/image/GlideModelProvider;Lexpo/modules/image/GlideModelProvider;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_9

    .line 498
    :cond_3
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getLoadedSource$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/GlideModelProvider;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getShouldRerender$expo_image_release()Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v6, :cond_4

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_6

    .line 505
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getTransformationMatrixChanged$p(Lexpo/modules/image/ExpoImageViewWrapper;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 506
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getActiveView(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ExpoImageView;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageView;->applyTransformationMatrix()V

    .line 509
    :cond_5
    invoke-static {p0, v9}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setTransformationMatrixChanged$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V

    .line 510
    invoke-static {p0, v9}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setClearViewBeforeChangingSource$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V

    goto/16 :goto_9

    .line 515
    :cond_6
    :goto_2
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$clearViewBeforeChangingSource(Lexpo/modules/image/ExpoImageViewWrapper;)V

    .line 517
    invoke-virtual {p0, v9}, Lexpo/modules/image/ExpoImageViewWrapper;->setShouldRerender$expo_image_release(Z)V

    .line 518
    invoke-static {p0, v6}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setLoadedSource$p(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/GlideModelProvider;)V

    if-eqz p2, :cond_7

    .line 519
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lexpo/modules/image/records/Source;->createGlideOptions(Landroid/content/Context;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 520
    :goto_3
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$createPropOptions(Lexpo/modules/image/ExpoImageViewWrapper;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    if-eqz v6, :cond_8

    .line 522
    invoke-interface {v6}, Lexpo/modules/image/GlideModelProvider;->getGlideModel()Ljava/lang/Object;

    move-result-object v5

    .line 523
    :cond_8
    instance-of v8, v5, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    if-eqz v8, :cond_9

    .line 524
    move-object v8, v5

    check-cast v8, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getProgressListener$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/events/OkHttpProgressListener;

    move-result-object v10

    invoke-virtual {v8, v10}, Lexpo/modules/image/okhttp/GlideUrlWrapper;->setProgressListener(Lexpo/modules/image/events/OkHttpProgressListener;)V

    .line 527
    :cond_9
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getOnLoadStart$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v8

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8, v10}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 528
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondTarget$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/image/ImageViewWrapperTarget;->isUsed()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 529
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getFirstTarget$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v8

    goto :goto_4

    .line 531
    :cond_a
    invoke-static {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getSecondTarget$p(Lexpo/modules/image/ExpoImageViewWrapper;)Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v8

    :goto_4
    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    move v6, v9

    .line 533
    :goto_5
    invoke-virtual {v8, v6}, Lexpo/modules/image/ImageViewWrapperTarget;->setHasSource(Z)V

    .line 535
    invoke-static {p0, v8}, Lexpo/modules/image/ExpoImageViewWrapper;->access$createDownsampleStrategy(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/ImageViewWrapperTarget;)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object v6

    .line 537
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getRequestManager$expo_image_release()Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    .line 538
    invoke-virtual {v10}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    .line 539
    invoke-virtual {v10, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    const-string v10, "load(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    if-nez v7, :cond_c

    goto :goto_7

    .line 541
    :cond_c
    invoke-interface {v1}, Lexpo/modules/image/records/Source;->usesPlaceholderContentFit()Z

    move-result v10

    if-nez v10, :cond_d

    .line 542
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getContentFit$expo_image_release()Lexpo/modules/image/enums/ContentFit;

    move-result-object v10

    goto :goto_6

    .line 544
    :cond_d
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getPlaceholderContentFit$expo_image_release()Lexpo/modules/image/enums/ContentFit;

    move-result-object v10

    .line 546
    :goto_6
    invoke-virtual {v8, v10}, Lexpo/modules/image/ImageViewWrapperTarget;->setPlaceholderContentFit(Lexpo/modules/image/enums/ContentFit;)V

    .line 549
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getRequestManager$expo_image_release()Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-interface {v7}, Lexpo/modules/image/GlideModelProvider;->getGlideModel()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    .line 550
    new-instance v10, Lexpo/modules/image/PlaceholderDownsampleStrategy;

    invoke-direct {v10, v8}, Lexpo/modules/image/PlaceholderDownsampleStrategy;-><init>(Lexpo/modules/image/ImageViewWrapperTarget;)V

    check-cast v10, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {v7, v10}, Lcom/bumptech/glide/RequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    .line 551
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Lexpo/modules/image/records/Source;->createGlideOptions(Landroid/content/Context;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    .line 551
    const-string v1, "thumbnail(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    :cond_e
    :goto_7
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 555
    new-instance v2, Lexpo/modules/image/events/GlideRequestListener;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v5}, Lexpo/modules/image/events/GlideRequestListener;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/16 v2, 0x64

    .line 556
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 557
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getDecodeFormat$expo_image_release()Lexpo/modules/image/records/DecodeFormat;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/image/records/DecodeFormat;->toGlideFormat()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 558
    check-cast p2, Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 539
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-static {p2, p1}, Lexpo/modules/image/GlideExtensionsKt;->apply(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 560
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getTintColor$expo_image_release()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_8

    .line 681
    :cond_f
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 561
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lexpo/modules/image/CustomOptions;->INSTANCE:Lexpo/modules/image/CustomOptions;

    invoke-virtual {v2}, Lexpo/modules/image/CustomOptions;->getTintColor()Lcom/bumptech/glide/load/Option;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    :goto_8
    sget-object p2, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {p2}, Lexpo/modules/image/Trace;->getNextCookieValue()I

    move-result p2

    .line 565
    sget-object v0, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v0}, Lexpo/modules/image/Trace;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v1}, Lexpo/modules/image/Trace;->getLoadNewImageBlock()Ljava/lang/String;

    move-result-object v1

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/tracing/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 566
    invoke-virtual {v8, p2}, Lexpo/modules/image/ImageViewWrapperTarget;->setCookie(I)V

    .line 567
    check-cast v8, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 569
    invoke-static {p0, v9}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setTransformationMatrixChanged$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V

    .line 570
    invoke-static {p0, v9}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setClearViewBeforeChangingSource$p(Lexpo/modules/image/ExpoImageViewWrapper;Z)V

    .line 571
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final setAccessibilityLabel$expo_image_release(Ljava/lang/String;)V
    .locals 1

    .line 142
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessibilityLabel:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessibilityLabel:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ExpoImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAccessible$expo_image_release(Z)V
    .locals 1

    .line 136
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->accessible:Z

    .line 137
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lexpo/modules/image/ExpoImageViewWrapper;->setIsScreenReaderFocusable(Landroid/view/View;Z)V

    return-void
.end method

.method public final setAllowDownscaling$expo_image_release(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->allowDownscaling:Z

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    return-void
.end method

.method public final setAutoplay$expo_image_release(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->autoplay:Z

    return-void
.end method

.method public final setBlurRadius$expo_image_release(Ljava/lang/Integer;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->blurRadius:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    .line 91
    :cond_0
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->blurRadius:Ljava/lang/Integer;

    return-void
.end method

.method public final setCachePolicy$expo_image_release(Lexpo/modules/image/records/CachePolicy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->cachePolicy:Lexpo/modules/image/records/CachePolicy;

    return-void
.end method

.method public final setContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentFit:Lexpo/modules/image/enums/ContentFit;

    .line 99
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/image/ExpoImageView;->setContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    return-void
.end method

.method public final setContentPosition$expo_image_release(Lexpo/modules/image/records/ContentPosition;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->contentPosition:Lexpo/modules/image/records/ContentPosition;

    .line 113
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/image/ExpoImageView;->setContentPosition$expo_image_release(Lexpo/modules/image/records/ContentPosition;)V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    return-void
.end method

.method public final setDecodeFormat$expo_image_release(Lexpo/modules/image/records/DecodeFormat;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->decodeFormat:Lexpo/modules/image/records/DecodeFormat;

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    return-void
.end method

.method public final setFocusableProp$expo_image_release(Z)V
    .locals 1

    .line 130
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->isFocusableProp:Z

    .line 131
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/image/ExpoImageView;->setFocusable(Z)V

    return-void
.end method

.method public final setIsAnimating(Z)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 176
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 178
    :cond_0
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLockResource$expo_image_release(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->lockResource:Z

    return-void
.end method

.method public final setPlaceholderContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

    .line 106
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/image/ExpoImageView;->setPlaceholderContentFit$expo_image_release(Lexpo/modules/image/enums/ContentFit;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transformationMatrixChanged:Z

    return-void
.end method

.method public final setPlaceholders$expo_image_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/image/records/Source;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->placeholders:Ljava/util/List;

    return-void
.end method

.method public final setPriority$expo_image_release(Lexpo/modules/image/enums/Priority;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->priority:Lexpo/modules/image/enums/Priority;

    return-void
.end method

.method public final setRecyclingKey(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->recyclingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lexpo/modules/image/ExpoImageViewWrapper;->clearViewBeforeChangingSource:Z

    .line 149
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->recyclingKey:Ljava/lang/String;

    return-void
.end method

.method public final setShouldRerender$expo_image_release(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    return-void
.end method

.method public final setSources$expo_image_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/image/records/Source;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->sources:Ljava/util/List;

    return-void
.end method

.method public final setTintColor$expo_image_release(Ljava/lang/Integer;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->tintColor:Ljava/lang/Integer;

    .line 121
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lexpo/modules/image/svg/SVGPictureDrawable;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->shouldRerender:Z

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper;->getActiveView()Lexpo/modules/image/ExpoImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/image/ExpoImageView;->setTintColor$expo_image_release(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public final setTransition$expo_image_release(Lexpo/modules/image/records/ImageTransition;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper;->transition:Lexpo/modules/image/records/ImageTransition;

    return-void
.end method
