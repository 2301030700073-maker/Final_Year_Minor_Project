.class public final Lio/legere/pdfiumandroid/PdfiumCore;
.super Ljava/lang/Object;
.source "PdfiumCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfiumCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfiumCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfiumCore.kt\nio/legere/pdfiumandroid/PdfiumCore\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,601:1\n37#2,2:602\n*S KotlinDebug\n*F\n+ 1 PdfiumCore.kt\nio/legere/pdfiumandroid/PdfiumCore\n*L\n392#1:602,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0018\u0000 [2\u00020\u0001:\u0001[B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082 J\u001d\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082 J#\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\rH\u0082 J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u0019J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u001a\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u001bJ\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u001b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u0010%\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u0010&\u001a\u00020\'2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u0010(\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u0010)\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u0010*\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J*\u0010+\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0007J\u0010\u0010.\u001a\u00020/2\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0018\u00100\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007J\u0018\u00101\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007JV\u00102\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u00182\u0008\u00103\u001a\u0004\u0018\u0001042\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0008\u0008\u0002\u00109\u001a\u00020:2\u0008\u0008\u0002\u0010;\u001a\u00020:H\u0007J\"\u0010<\u001a\u0004\u0018\u00010\'2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000bH\u0007J*\u0010>\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\'2\u0006\u0010\u0016\u001a\u00020\u000bH\u0007JH\u0010@\u001a\u00020\'2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020EH\u0007J(\u0010F\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0007J+\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\r0H2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010I\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u000bH\u0007\u00a2\u0006\u0002\u0010KJ\u0018\u0010L\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010=\u001a\u00020\u000bH\u0007J\u0018\u0010M\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010=\u001a\u00020\u000bH\u0007J\u0018\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010=\u001a\u00020\u000bH\u0007JL\u0010P\u001a\u00020:2\u0006\u0010\u001d\u001a\u00020\u00182\u0008\u0010Q\u001a\u0004\u0018\u00010R2\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0008\u0008\u0002\u00109\u001a\u00020:H\u0007JL\u00102\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u00182\u0008\u00103\u001a\u0004\u0018\u0001042\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0008\u0008\u0002\u00109\u001a\u00020:H\u0007J\u001e\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0!2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000bH\u0007JP\u0010U\u001a\u00020V2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020XH\u0007JH\u0010Z\u001a\u00020E2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\'H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfiumCore;",
        "",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lio/legere/pdfiumandroid/util/Config;",
        "<init>",
        "(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;)V",
        "getConfig",
        "()Lio/legere/pdfiumandroid/util/Config;",
        "mCurrentDpi",
        "",
        "nativeOpenDocument",
        "",
        "fd",
        "password",
        "",
        "nativeOpenMemDocument",
        "data",
        "",
        "nativeOpenCustomDocument",
        "Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;",
        "size",
        "newDocument",
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "Landroid/os/ParcelFileDescriptor;",
        "parcelFileDescriptor",
        "Lio/legere/pdfiumandroid/PdfiumSource;",
        "getPageCount",
        "pdfDocument",
        "closeDocument",
        "",
        "getTableOfContents",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
        "openTextPage",
        "pageIndex",
        "openPage",
        "getPageMediaBox",
        "Landroid/graphics/RectF;",
        "closePage",
        "closeTextPage",
        "textPageCountChars",
        "textPageGetText",
        "start",
        "count",
        "getDocumentMeta",
        "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
        "getPageWidthPoint",
        "getPageHeightPoint",
        "renderPageBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "startX",
        "startY",
        "drawSizeX",
        "drawSizeY",
        "renderAnnot",
        "",
        "textMask",
        "textPageGetRect",
        "index",
        "textPageGetBoundedText",
        "sourceRect",
        "mapRectToPage",
        "sizeX",
        "sizeY",
        "rotate",
        "coords",
        "Landroid/graphics/Rect;",
        "textPageCountRects",
        "startIndex",
        "",
        "fromIndex",
        "toIndex",
        "(Lio/legere/pdfiumandroid/PdfDocument;II)[Ljava/lang/Long;",
        "getPageWidth",
        "getPageHeight",
        "getPageSize",
        "Lio/legere/pdfiumandroid/util/Size;",
        "renderPage",
        "surface",
        "Landroid/view/Surface;",
        "getPageLinks",
        "Lio/legere/pdfiumandroid/PdfDocument$Link;",
        "mapPageCoordsToDevice",
        "Landroid/graphics/Point;",
        "pageX",
        "",
        "pageY",
        "mapRectToDevice",
        "Companion",
        "pdfiumandroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final isReady:Lio/legere/pdfiumandroid/util/InitLock;

.field private static final lock:Ljava/lang/Object;

.field private static final surfaceMutex:Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field private final config:Lio/legere/pdfiumandroid/util/Config;

.field private final mCurrentDpi:I


# direct methods
.method public static synthetic $r8$lambda$evIOL06mtxnXSC3MAtiJLvACWx4()V
    .locals 0

    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->_init_$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    .line 573
    const-class v0, Lio/legere/pdfiumandroid/PdfiumCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->TAG:Ljava/lang/String;

    .line 576
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 578
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    sput-object v1, Lio/legere/pdfiumandroid/PdfiumCore;->surfaceMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 580
    new-instance v1, Lio/legere/pdfiumandroid/util/InitLock;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/util/InitLock;-><init>()V

    sput-object v1, Lio/legere/pdfiumandroid/PdfiumCore;->isReady:Lio/legere/pdfiumandroid/util/InitLock;

    .line 583
    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/legere/pdfiumandroid/PdfiumCore$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/PdfiumCore$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 597
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;-><init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lio/legere/pdfiumandroid/PdfiumCore;->config:Lio/legere/pdfiumandroid/util/Config;

    .line 32
    invoke-static {p2}, Lio/legere/pdfiumandroid/util/ConfigKt;->setPdfiumConfig(Lio/legere/pdfiumandroid/util/Config;)V

    .line 33
    sget-object v0, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    invoke-virtual {p2}, Lio/legere/pdfiumandroid/util/Config;->getLogger()Lio/legere/pdfiumandroid/LoggerInterface;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/legere/pdfiumandroid/Logger;->setLogger(Lio/legere/pdfiumandroid/LoggerInterface;)V

    .line 34
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Starting PdfiumAndroid "

    invoke-virtual {p2, v0, v1}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lio/legere/pdfiumandroid/PdfiumCore;->mCurrentDpi:I

    .line 36
    sget-object p1, Lio/legere/pdfiumandroid/PdfiumCore;->isReady:Lio/legere/pdfiumandroid/util/InitLock;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/InitLock;->waitForReady()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    new-instance p2, Lio/legere/pdfiumandroid/util/Config;

    const/4 p3, 0x3

    invoke-direct {p2, v0, v0, p3, v0}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfiumCore;-><init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;)V

    return-void
.end method

.method private static final _init_$lambda$0()V
    .locals 5

    .line 585
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v1, "init thread start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v1, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    const-string v2, "init in lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :try_start_1
    const-string v0, "pdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 590
    const-string v0, "pdfiumandroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 591
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->isReady:Lio/legere/pdfiumandroid/util/InitLock;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/InitLock;->markReady()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 593
    :try_start_2
    sget-object v2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v4, "Native libraries failed to load"

    invoke-virtual {v2, v3, v0, v4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 595
    :goto_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v2, "init in lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final synthetic access$getLock$cp()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSurfaceMutex$cp()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 24
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->surfaceMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public static final synthetic access$isReady$cp()Lio/legere/pdfiumandroid/util/InitLock;
    .locals 1

    .line 24
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->isReady:Lio/legere/pdfiumandroid/util/InitLock;

    return-object v0
.end method

.method private final native nativeOpenCustomDocument(Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;Ljava/lang/String;J)J
.end method

.method private final native nativeOpenDocument(ILjava/lang/String;)J
.end method

.method private final native nativeOpenMemDocument([BLjava/lang/String;)J
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/PdfiumCore;Lio/legere/pdfiumandroid/PdfDocument;Landroid/view/Surface;IIIIIZILjava/lang/Object;)Z
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 450
    invoke-virtual/range {v1 .. v9}, Lio/legere/pdfiumandroid/PdfiumCore;->renderPage(Lio/legere/pdfiumandroid/PdfDocument;Landroid/view/Surface;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfiumCore;Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZILjava/lang/Object;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 493
    invoke-virtual/range {v1 .. v9}, Lio/legere/pdfiumandroid/PdfiumCore;->renderPageBitmap(Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    return-void
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfiumCore;Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZZILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move/from16 v11, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move v12, v2

    goto :goto_1

    :cond_1
    move/from16 v12, p9

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 282
    invoke-virtual/range {v3 .. v12}, Lio/legere/pdfiumandroid/PdfiumCore;->renderPageBitmap(Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public final closeDocument(Lio/legere/pdfiumandroid/PdfDocument;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.closeDocument()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.close()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument;->close()V

    return-void
.end method

.method public final closePage(Lio/legere/pdfiumandroid/PdfDocument;I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use page.close()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.close()"
            imports = {}
        .end subannotation
    .end annotation

    const-string p2, "pdfDocument"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final closeTextPage(Lio/legere/pdfiumandroid/PdfDocument;I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use textPage.close()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "textPage.close()"
            imports = {}
        .end subannotation
    .end annotation

    const-string p2, "pdfDocument"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getConfig()Lio/legere/pdfiumandroid/util/Config;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfiumCore;->config:Lio/legere/pdfiumandroid/util/Config;

    return-object v0
.end method

.method public final getDocumentMeta(Lio/legere/pdfiumandroid/PdfDocument;)Lio/legere/pdfiumandroid/PdfDocument$Meta;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use pdfDocument.getDocumentMeta()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.getDocumentMeta()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument;->getDocumentMeta()Lio/legere/pdfiumandroid/PdfDocument$Meta;

    move-result-object p1

    return-object p1
.end method

.method public final getPageCount(Lio/legere/pdfiumandroid/PdfDocument;)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.getPageCount()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.getPageCount()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument;->getPageCount()I

    move-result p1

    return p1
.end method

.method public final getPageHeight(Lio/legere/pdfiumandroid/PdfDocument;I)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageHeight()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageHeight()"
            imports = {}
        .end subannotation
    .end annotation

    .line 421
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 422
    iget v0, p0, Lio/legere/pdfiumandroid/PdfiumCore;->mCurrentDpi:I

    invoke-virtual {p2, v0}, Lio/legere/pdfiumandroid/PdfPage;->getPageHeight(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 421
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageHeightPoint(Lio/legere/pdfiumandroid/PdfDocument;I)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageHeightPoint()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageHeightPoint()"
            imports = {}
        .end subannotation
    .end annotation

    .line 269
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 270
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->getPageHeightPoint()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 269
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageLinks(Lio/legere/pdfiumandroid/PdfDocument;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageLinks()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageLinks()"
            imports = {}
        .end subannotation
    .end annotation

    .line 520
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 521
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->getPageLinks()Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 520
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageMediaBox(Lio/legere/pdfiumandroid/PdfDocument;I)Landroid/graphics/RectF;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use Page.getPageMediaBox()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageMediaBox()"
            imports = {}
        .end subannotation
    .end annotation

    .line 177
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 178
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->getPageMediaBox()Landroid/graphics/RectF;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 177
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageSize(Lio/legere/pdfiumandroid/PdfDocument;I)Lio/legere/pdfiumandroid/util/Size;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageSize()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageSize()"
            imports = {}
        .end subannotation
    .end annotation

    .line 437
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 438
    iget v0, p0, Lio/legere/pdfiumandroid/PdfiumCore;->mCurrentDpi:I

    invoke-virtual {p2, v0}, Lio/legere/pdfiumandroid/PdfPage;->getPageSize(I)Lio/legere/pdfiumandroid/util/Size;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 437
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageWidth(Lio/legere/pdfiumandroid/PdfDocument;I)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageWidth()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageWidth()"
            imports = {}
        .end subannotation
    .end annotation

    .line 405
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 406
    iget v0, p0, Lio/legere/pdfiumandroid/PdfiumCore;->mCurrentDpi:I

    invoke-virtual {p2, v0}, Lio/legere/pdfiumandroid/PdfPage;->getPageWidth(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 405
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPageWidthPoint(Lio/legere/pdfiumandroid/PdfDocument;I)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.getPageWidthPoint()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.getPageWidthPoint()"
            imports = {}
        .end subannotation
    .end annotation

    .line 255
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 256
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->getPageWidthPoint()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 255
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getTableOfContents(Lio/legere/pdfiumandroid/PdfDocument;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.getTableOfContents()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.getTableOfContents()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument;->getTableOfContents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final mapPageCoordsToDevice(Lio/legere/pdfiumandroid/PdfDocument;IIIIIIDD)Landroid/graphics/Point;
    .locals 12
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.mapPageCoordsToDevice(startX, startY, sizeX, sizeY, rotate, pageX, pageY)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.mapPageCoordsToDevice(startX, startY, sizeX, sizeY, rotate, pageX, pageY)"
            imports = {}
        .end subannotation
    .end annotation

    .line 544
    const-string v0, "pdfDocument"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/legere/pdfiumandroid/PdfPage;

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 545
    invoke-virtual/range {v2 .. v11}, Lio/legere/pdfiumandroid/PdfPage;->mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 544
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final mapRectToDevice(Lio/legere/pdfiumandroid/PdfDocument;IIIIIILandroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.mapRectToDevice(startX, startY, sizeX, sizeY, rotate, coords)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.mapRectToDevice(startX, startY, sizeX, sizeY, rotate, coords)"
            imports = {}
        .end subannotation
    .end annotation

    .line 567
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coords"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lio/legere/pdfiumandroid/PdfPage;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 568
    invoke-virtual/range {v0 .. v6}, Lio/legere/pdfiumandroid/PdfPage;->mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x0

    .line 567
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final mapRectToPage(Lio/legere/pdfiumandroid/PdfDocument;IIIIIILandroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.mapRectToPage(startX, startY, sizeX, sizeY, rotate, coords)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.mapRectToPage(startX, startY, sizeX, sizeY, rotate, coords)"
            imports = {}
        .end subannotation
    .end annotation

    .line 355
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coords"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lio/legere/pdfiumandroid/PdfPage;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 356
    invoke-virtual/range {v0 .. v6}, Lio/legere/pdfiumandroid/PdfPage;->mapRectToPage(IIIIILandroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x0

    .line 355
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final newDocument(Landroid/os/ParcelFileDescriptor;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "parcelFileDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lio/legere/pdfiumandroid/PdfiumCore;->nativeOpenDocument(ILjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfDocument;-><init>(J)V

    .line 76
    invoke-virtual {v1, p1}, Lio/legere/pdfiumandroid/PdfDocument;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 77
    invoke-virtual {v1, p1}, Lio/legere/pdfiumandroid/PdfDocument;->setSource(Lio/legere/pdfiumandroid/PdfiumSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final newDocument(Lio/legere/pdfiumandroid/PdfiumSource;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument(Lio/legere/pdfiumandroid/PdfiumSource;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument(Lio/legere/pdfiumandroid/PdfiumSource;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    new-instance v1, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;

    invoke-direct {v1, p1}, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;-><init>(Lio/legere/pdfiumandroid/PdfiumSource;)V

    .line 130
    new-instance v2, Lio/legere/pdfiumandroid/PdfDocument;

    invoke-interface {p1}, Lio/legere/pdfiumandroid/PdfiumSource;->getLength()J

    move-result-wide v3

    invoke-direct {p0, v1, p2, v3, v4}, Lio/legere/pdfiumandroid/PdfiumCore;->nativeOpenCustomDocument(Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;-><init>(J)V

    const/4 p2, 0x0

    .line 131
    invoke-virtual {v2, p2}, Lio/legere/pdfiumandroid/PdfDocument;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 132
    invoke-virtual {v2, p1}, Lio/legere/pdfiumandroid/PdfDocument;->setSource(Lio/legere/pdfiumandroid/PdfiumSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final newDocument([B)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument([BLjava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument([BLjava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Lio/legere/pdfiumandroid/PdfDocument;

    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfiumCore;->nativeOpenMemDocument([BLjava/lang/String;)J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;-><init>(J)V

    const/4 p1, 0x0

    .line 103
    invoke-virtual {v1, p1}, Lio/legere/pdfiumandroid/PdfDocument;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 104
    invoke-virtual {v1, p1}, Lio/legere/pdfiumandroid/PdfDocument;->setSource(Lio/legere/pdfiumandroid/PdfiumSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final openPage(Lio/legere/pdfiumandroid/PdfDocument;I)J
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.openPage()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.openPage(pageIndex)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p1, p2

    return-wide p1
.end method

.method public final openPage(Lio/legere/pdfiumandroid/PdfDocument;II)[Ljava/lang/Long;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.openPage(fromIndex, toIndex)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.openPage(fromIndex, toIndex)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance p1, Lkotlin/ranges/LongRange;

    int-to-long v0, p2

    int-to-long p2, p3

    invoke-direct {p1, v0, v1, p2, p3}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    .line 603
    new-array p2, p2, [Ljava/lang/Long;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    return-object p1
.end method

.method public final openTextPage(Lio/legere/pdfiumandroid/PdfDocument;I)J
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfDocument.openTextPage()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pdfDocument.openTextPage(pageIndex)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p1, p2

    return-wide p1
.end method

.method public final renderPage(Lio/legere/pdfiumandroid/PdfDocument;Landroid/view/Surface;IIIIIZ)Z
    .locals 15
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.renderPage(surface, startX, startY, drawSizeX, drawSizeY)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.renderPage(surface, startX, startY, drawSizeX, drawSizeY)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "pdfDocument"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, p3

    .line 461
    invoke-virtual {v0, v2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Lio/legere/pdfiumandroid/PdfPage;

    const/4 v0, 0x2

    .line 462
    new-array v4, v0, [I

    .line 463
    new-array v0, v0, [J

    if-eqz v1, :cond_0

    .line 466
    sget-object v5, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    invoke-virtual {v5, v1, v4, v0}, Lio/legere/pdfiumandroid/PdfPage$Companion;->lockSurface(Landroid/view/Surface;[I[J)Z

    :cond_0
    const/4 v4, 0x0

    .line 472
    aget-wide v5, v0, v4

    const/4 v7, 0x1

    .line 473
    aget-wide v7, v0, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    const-wide/16 v11, -0x1

    cmp-long v13, v7, v11

    if-eqz v13, :cond_2

    cmp-long v9, v5, v9

    if-eqz v9, :cond_2

    cmp-long v5, v5, v11

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v13, 0xc0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v7

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 477
    invoke-static/range {v3 .. v14}, Lio/legere/pdfiumandroid/PdfPage;->renderPage$default(Lio/legere/pdfiumandroid/PdfPage;JIIIIZIIILjava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_2

    .line 479
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    invoke-virtual {v1, v0}, Lio/legere/pdfiumandroid/PdfPage$Companion;->unlockSurface([J)V

    .line 481
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 461
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final renderPageBitmap(Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V
    .locals 14
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.renderPageBitmap(bitmap, startX, startY, drawSizeX, drawSizeY)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.renderPageBitmap(bitmap, startX, startY, drawSizeX, drawSizeY)"
            imports = {}
        .end subannotation
    .end annotation

    move-object v0, p1

    const-string v1, "pdfDocument"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p3

    .line 503
    invoke-virtual {p1, v1}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/legere/pdfiumandroid/PdfPage;

    const/16 v12, 0x1c0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 504
    invoke-static/range {v2 .. v13}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;IIIIZZIIILjava/lang/Object;)V

    .line 505
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 503
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final renderPageBitmap(Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZZ)V
    .locals 14
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.renderPageBitmap(bitmap, startX, startY, drawSizeX, drawSizeY, screenDpi, renderAnnot, textMask)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.renderPageBitmap(bitmap, startX, startY, drawSizeX, drawSizeY, screenDpi, renderAnnot, textMask)"
            imports = {}
        .end subannotation
    .end annotation

    move-object v0, p1

    const-string v1, "pdfDocument"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p3

    .line 293
    invoke-virtual {p1, v1}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/legere/pdfiumandroid/PdfPage;

    const/16 v12, 0x180

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 294
    invoke-static/range {v2 .. v13}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;IIIIZZIIILjava/lang/Object;)V

    .line 295
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 293
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final textPageCountChars(Lio/legere/pdfiumandroid/PdfDocument;I)I
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use textPage.textPageCountChars()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "textPage.textPageCountChars()"
            imports = {}
        .end subannotation
    .end annotation

    .line 214
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 215
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p2

    check-cast v0, Lio/legere/pdfiumandroid/PdfTextPage;

    .line 216
    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageCountChars()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 215
    :try_start_2
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 214
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    .line 215
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final textPageCountRects(Lio/legere/pdfiumandroid/PdfDocument;III)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfTextPage.textPageCountRects(startIndex, count)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "textPage.textPageCountRects(startIndex, count)"
            imports = {}
        .end subannotation
    .end annotation

    .line 373
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 374
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p2

    check-cast v0, Lio/legere/pdfiumandroid/PdfTextPage;

    .line 375
    invoke-virtual {v0, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageCountRects(II)I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p4, 0x0

    .line 374
    :try_start_2
    invoke-static {p2, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 373
    invoke-static {p1, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p3

    :catchall_0
    move-exception p3

    .line 374
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final textPageGetBoundedText(Lio/legere/pdfiumandroid/PdfDocument;ILandroid/graphics/RectF;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.textPageGetBoundedText(sourceRect, size)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.textPageGetBoundedText(sourceRect, size)"
            imports = {}
        .end subannotation
    .end annotation

    .line 330
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 331
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p2

    check-cast v0, Lio/legere/pdfiumandroid/PdfTextPage;

    .line 332
    invoke-virtual {v0, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageGetBoundedText(Landroid/graphics/RectF;I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p4, 0x0

    .line 331
    :try_start_2
    invoke-static {p2, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 330
    invoke-static {p1, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p3

    .line 331
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final textPageGetRect(Lio/legere/pdfiumandroid/PdfDocument;II)Landroid/graphics/RectF;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use PdfPage.textPageGetRect(index)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.textPageGetRect(index)"
            imports = {}
        .end subannotation
    .end annotation

    .line 310
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 311
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p2

    check-cast v0, Lio/legere/pdfiumandroid/PdfTextPage;

    .line 312
    invoke-virtual {v0, p3}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageGetRect(I)Landroid/graphics/RectF;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 311
    :try_start_2
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p3

    .line 311
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final textPageGetText(Lio/legere/pdfiumandroid/PdfDocument;III)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use textPage.textPageGetText(start, count)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "textPage.textPageGetText(start, count)"
            imports = {}
        .end subannotation
    .end annotation

    .line 232
    const-string v0, "pdfDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lio/legere/pdfiumandroid/PdfPage;

    .line 233
    invoke-virtual {p2}, Lio/legere/pdfiumandroid/PdfPage;->openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p2

    check-cast v0, Lio/legere/pdfiumandroid/PdfTextPage;

    .line 234
    invoke-virtual {v0, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageGetText(II)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p4, 0x0

    .line 233
    :try_start_2
    invoke-static {p2, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 232
    invoke-static {p1, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p3

    .line 233
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method
