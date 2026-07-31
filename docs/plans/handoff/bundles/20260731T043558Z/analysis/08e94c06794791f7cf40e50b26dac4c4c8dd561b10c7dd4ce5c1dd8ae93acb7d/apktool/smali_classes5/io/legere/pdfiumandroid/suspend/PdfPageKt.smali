.class public final Lio/legere/pdfiumandroid/suspend/PdfPageKt;
.super Ljava/lang/Object;
.source "PdfPageKt.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfPageKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfPageKt.kt\nio/legere/pdfiumandroid/suspend/PdfPageKt\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,394:1\n116#2,11:395\n116#2,11:406\n*S KotlinDebug\n*F\n+ 1 PdfPageKt.kt\nio/legere/pdfiumandroid/suspend/PdfPageKt\n*L\n164#1:395,11\n215#1:406,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0012\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0013\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0016\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0019\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001a\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001b\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001c\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001d\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010JV\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0008\u0008\u0002\u0010(\u001a\u00020!2\u0008\u0008\u0002\u0010)\u001a\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010+JP\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u00182\u0008\u0008\u0002\u0010(\u001a\u00020!2\u0008\u0008\u0002\u0010.\u001a\u00020!2\u0008\u0008\u0002\u0010)\u001a\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010/J^\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0008\u0008\u0002\u0010(\u001a\u00020!2\u0008\u0008\u0002\u0010.\u001a\u00020!2\u0008\u0008\u0002\u0010)\u001a\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u00104JP\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\u0006\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u00182\u0008\u0008\u0002\u0010(\u001a\u00020!2\u0008\u0008\u0002\u0010.\u001a\u00020!2\u0008\u0008\u0002\u0010)\u001a\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u00105J\u0014\u00106\u001a\u0008\u0012\u0004\u0012\u00020807H\u0086@\u00a2\u0006\u0002\u0010\u000cJF\u00109\u001a\u00020:2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?H\u0086@\u00a2\u0006\u0002\u0010AJF\u0010B\u001a\u00020C2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010FJ>\u0010G\u001a\u00020H2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010JJ>\u0010K\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020HH\u0086@\u00a2\u0006\u0002\u0010LJ\u0008\u0010M\u001a\u000201H\u0016J\u0006\u0010N\u001a\u00020!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
        "Ljava/io/Closeable;",
        "page",
        "Lio/legere/pdfiumandroid/PdfPage;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "getPage",
        "()Lio/legere/pdfiumandroid/PdfPage;",
        "openTextPage",
        "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageWidth",
        "",
        "screenDpi",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageHeight",
        "getPageWidthPoint",
        "getPageHeightPoint",
        "getPageMatrix",
        "Landroid/graphics/Matrix;",
        "getPageRotation",
        "getPageCropBox",
        "Landroid/graphics/RectF;",
        "getPageMediaBox",
        "getPageBleedBox",
        "getPageTrimBox",
        "getPageArtBox",
        "getPageBoundingBox",
        "getPageSize",
        "Lio/legere/pdfiumandroid/util/Size;",
        "renderPage",
        "",
        "surface",
        "Landroid/view/Surface;",
        "startX",
        "startY",
        "drawSizeX",
        "drawSizeY",
        "renderAnnot",
        "canvasColor",
        "pageBackgroundColor",
        "(Landroid/view/Surface;IIIIZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "matrix",
        "clipRect",
        "textMask",
        "(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "renderPageBitmap",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageLinks",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Link;",
        "mapPageCoordsToDevice",
        "Landroid/graphics/Point;",
        "sizeX",
        "sizeY",
        "rotate",
        "pageX",
        "",
        "pageY",
        "(IIIIIDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapDeviceCoordsToPage",
        "Landroid/graphics/PointF;",
        "deviceX",
        "deviceY",
        "(IIIIIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapRectToDevice",
        "Landroid/graphics/Rect;",
        "coords",
        "(IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapRectToPage",
        "(IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "safeClose",
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


# instance fields
.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final page:Lio/legere/pdfiumandroid/PdfPage;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    .line 33
    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfPageKt;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/view/Surface;IIIIZIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const v1, -0x7b7b7c

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    move v10, v0

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v11, p9

    .line 153
    invoke-virtual/range {v2 .. v11}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPage(Landroid/view/Surface;IIIIZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    const v0, -0x7b7b7c

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v9, v0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    .line 205
    invoke-virtual/range {v2 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPage(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    const v1, -0x7b7b7c

    move v11, v1

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v12, v0

    goto :goto_3

    :cond_3
    move/from16 v12, p9

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v13, p10

    .line 262
    invoke-virtual/range {v3 .. v13}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    const v0, -0x7b7b7c

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v9, v0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    .line 291
    invoke-virtual/range {v2 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 382
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfPage;->close()V

    return-void
.end method

.method public final getPage()Lio/legere/pdfiumandroid/PdfPage;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    return-object v0
.end method

.method public final getPageArtBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageArtBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageArtBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageBleedBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBleedBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBleedBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageBoundingBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBoundingBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBoundingBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageCropBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageCropBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageCropBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageHeight(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeight$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeight$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageHeightPoint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeightPoint$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeightPoint$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageLinks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageLinks$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageLinks$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Matrix;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMatrix$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMatrix$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageMediaBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMediaBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMediaBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageRotation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageRotation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageRotation$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/util/Size;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageSize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageSize$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageTrimBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageTrimBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageTrimBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageWidth(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidth$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidth$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageWidthPoint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidthPoint$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidthPoint$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final mapDeviceCoordsToPage(IIIIIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v10, p0

    .line 342
    iget-object v0, v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapDeviceCoordsToPage$2;

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapDeviceCoordsToPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIIIILkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p8

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapPageCoordsToDevice(IIIIIDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v12, p0

    .line 325
    iget-object v0, v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapPageCoordsToDevice$2;

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapPageCoordsToDevice$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIIDDLkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p10

    invoke-static {v13, v14, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapRectToDevice(IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/graphics/RectF;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    .line 358
    iget-object v0, v9, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToDevice$2;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToDevice$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapRectToPage(IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/graphics/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    .line 374
    iget-object v0, v9, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToPage$2;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final openTextPage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$openTextPage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$openTextPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final renderPage(Landroid/view/Surface;IIIIZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "IIIIZII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p9

    instance-of v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;

    iget v2, v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;

    invoke-direct {v1, v14, v0}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v15

    .line 153
    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v12, :cond_2

    if-ne v2, v13, :cond_1

    iget-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$1:J

    iget-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$0:J

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iget-boolean v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v0, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$1:J

    iget-wide v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$0:J

    iget v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    iget v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    iget v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iget v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iget-boolean v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iget v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iget v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iget v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    move-wide/from16 p1, v2

    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iget-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    check-cast v3, [J

    move/from16 p3, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 p4, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    move-object/from16 p5, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 p6, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v14, p3

    move-object/from16 v21, p4

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move v1, v10

    move v10, v13

    move-object/from16 v18, v15

    move-wide/from16 v2, p1

    move-object/from16 v15, p6

    move-wide/from16 v32, v4

    move-object/from16 v5, p5

    move v4, v12

    move-wide/from16 v12, v32

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p5

    goto :goto_1

    :cond_3
    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    iget v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    iget v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iget v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iget-boolean v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iget v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iget v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iget v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    iget v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iget-object v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    check-cast v12, [J

    iget-object v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    check-cast v4, [I

    iget-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    move/from16 p1, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 p2, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object v14, v5

    move v4, v9

    move v5, v10

    move-object/from16 v22, v12

    move v12, v13

    const/4 v1, 0x0

    move-object/from16 v13, p2

    move v10, v3

    move v9, v6

    move v6, v11

    move/from16 v11, p1

    move/from16 v32, v8

    move v8, v7

    move/from16 v7, v32

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v5

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_4
    iget v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    iget v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iget v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iget-boolean v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iget v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iget v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iget v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    iget v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iget-object v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroid/view/Surface;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v11

    move v11, v4

    move v4, v2

    move-object v2, v12

    move/from16 v32, v9

    move v9, v6

    move/from16 v6, v32

    move/from16 v33, v8

    move v8, v7

    move/from16 v7, v33

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 164
    sget-object v2, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getSurfaceMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    move-object/from16 v4, p1

    .line 400
    iput-object v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    move/from16 v5, p2

    iput v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    move/from16 v6, p3

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    move/from16 v7, p4

    iput v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    move/from16 v8, p5

    iput v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    move/from16 v9, p6

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    move/from16 v10, p7

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    move/from16 v11, p8

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    const/4 v12, 0x0

    iput v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    const/4 v12, 0x1

    iput v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    const/4 v12, 0x0

    invoke-interface {v2, v12, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v15, :cond_6

    return-object v15

    :cond_6
    move-object v13, v4

    const/4 v4, 0x0

    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    move/from16 v33, v10

    move v10, v5

    move/from16 v5, v33

    .line 165
    :goto_2
    :try_start_3
    new-array v12, v3, [I

    .line 166
    new-array v14, v3, [J

    .line 167
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v20, v15

    new-instance v15, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 p1, v3

    const/4 v3, 0x0

    :try_start_4
    invoke-direct {v15, v13, v12, v14, v3}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$1;-><init>(Landroid/view/Surface;[I[JLkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    iput-object v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    iput v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iput v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iput v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iput v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    const/4 v3, 0x0

    iput v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    const/4 v3, 0x2

    iput v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    move-object/from16 v3, p1

    invoke-static {v3, v15, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v15, v20

    if-ne v3, v15, :cond_7

    return-object v15

    :cond_7
    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object v14, v1

    move-object v13, v2

    move v12, v10

    const/4 v1, 0x0

    move v10, v4

    move v4, v8

    move v8, v5

    move v5, v7

    move v7, v9

    move v9, v11

    const/4 v11, 0x0

    .line 176
    :goto_3
    :try_start_6
    aget-wide v2, v22, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 p1, v14

    move-object/from16 v18, v15

    const/4 v1, 0x1

    .line 177
    :try_start_7
    aget-wide v14, v22, v1

    const-wide/16 v23, 0x0

    cmp-long v1, v14, v23

    if-eqz v1, :cond_b

    const-wide/16 v25, -0x1

    cmp-long v1, v14, v25

    if-eqz v1, :cond_b

    cmp-long v1, v2, v23

    if-eqz v1, :cond_b

    cmp-long v1, v2, v25

    if-nez v1, :cond_8

    move-object/from16 v5, p1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_8
    move-object/from16 v1, p0

    move-wide/from16 p2, v2

    .line 181
    iget-object v2, v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v19, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$2;

    const/16 v23, 0x0

    move-object/from16 v1, v19

    move-wide/from16 v27, p2

    move-object v2, v13

    move-object/from16 v29, v3

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move/from16 p3, v4

    move/from16 p2, v5

    move-wide v4, v14

    move/from16 p4, v6

    move v6, v12

    move/from16 p5, v7

    move/from16 v7, p4

    move/from16 p6, v8

    move/from16 v8, p2

    move/from16 p7, v9

    move/from16 v9, p3

    move/from16 v30, v10

    move/from16 v10, p5

    move/from16 v31, v11

    move/from16 v11, p6

    move-wide/from16 v24, v14

    const/4 v15, 0x3

    move v14, v12

    move/from16 v12, p7

    move-object v15, v13

    move-object/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/legere/pdfiumandroid/suspend/PdfPageKt;JIIIIZIILkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v19

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v5, p1

    :try_start_8
    iput-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    move/from16 v6, p4

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    move/from16 v7, p2

    iput v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    move/from16 v8, p3

    iput v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    move/from16 v9, p5

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    move/from16 v2, p6

    iput v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    move/from16 v11, p7

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    move/from16 v3, v30

    iput v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    move/from16 v4, v31

    iput v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    move-wide/from16 v12, v27

    iput-wide v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$0:J

    move/from16 p6, v2

    move/from16 v30, v3

    move-wide/from16 v2, v24

    iput-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$1:J

    const/4 v10, 0x3

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    move-object/from16 v10, v29

    invoke-static {v10, v1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v10, v18

    if-ne v1, v10, :cond_9

    return-object v10

    :cond_9
    move v1, v9

    move-object/from16 v18, v10

    move/from16 v9, p6

    move v10, v7

    move/from16 v7, v30

    move/from16 v32, v6

    move v6, v4

    move v4, v8

    move v8, v11

    move/from16 v11, v32

    .line 194
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v16, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$3;

    const/16 v28, 0x0

    move-object/from16 v23, v16

    move-wide/from16 v24, v12

    move-wide/from16 v26, v2

    invoke-direct/range {v23 .. v28}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2$3;-><init>(JJLkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 p2, v6

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->L$4:Ljava/lang/Object;

    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$0:I

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$1:I

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$2:I

    iput v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$3:I

    iput-boolean v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->Z$0:Z

    iput v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$4:I

    iput v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$5:I

    iput v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$6:I

    move/from16 v6, v17

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->I$7:I

    iput-wide v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$0:J

    iput-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->J$1:J

    const/4 v1, 0x4

    iput v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$1;->label:I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    return-object v1

    :cond_a
    move-object v2, v5

    move-object v3, v15

    .line 197
    :goto_5
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v4, 0x0

    .line 404
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 198
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_b
    move-object/from16 v5, p1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 179
    :goto_6
    :try_start_a
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 404
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v5, v14

    :goto_7
    const/4 v4, 0x0

    :goto_8
    move-object v2, v5

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v4, v3

    goto :goto_9

    :catchall_8
    move-exception v0

    const/4 v4, 0x0

    :goto_9
    move-object v2, v1

    :goto_a
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final renderPage(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "ZZII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p8

    const-string v1, "nativeWindow: "

    instance-of v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;

    iget v3, v2, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;

    invoke-direct {v2, v15, v0}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v2

    iget-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 205
    iget v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v12, :cond_2

    if-ne v3, v13, :cond_1

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$5:I

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$4:I

    iget-wide v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$1:J

    iget-wide v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$0:J

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iget-boolean v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iget-boolean v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget-object v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Matrix;

    iget-object v0, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$5:I

    iget v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$4:I

    iget-wide v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$1:J

    iget-wide v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$0:J

    iget v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    iget v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    iget v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iget v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iget-boolean v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iget-boolean v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    move/from16 p1, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    check-cast v1, [J

    move-object/from16 p2, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 p3, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    move-object/from16 p4, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 p5, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    move-object/from16 p6, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Matrix;

    move-object/from16 p7, v1

    iget-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, p1

    move-object/from16 v2, p2

    move-object/from16 v21, p3

    move-object/from16 v15, p4

    move-object/from16 v23, p6

    move-object/from16 v22, p7

    move-object/from16 v18, v14

    move v14, v12

    move/from16 v42, v3

    move-object/from16 v3, p5

    move-wide/from16 v43, v4

    move/from16 v4, v42

    move v5, v8

    move/from16 v45, v13

    move v13, v11

    move-wide v11, v6

    move/from16 v6, v45

    move-wide/from16 v7, v43

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p4

    goto :goto_1

    :cond_3
    iget v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    iget v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    iget v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iget v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iget-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iget-boolean v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    iget-object v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    check-cast v11, [J

    iget-object v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    check-cast v13, [I

    iget-object v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    move/from16 p1, v3

    iget-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Matrix;

    move-object/from16 p2, v3

    iget-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v22, p2

    move-object/from16 v20, v1

    move-object/from16 v23, v6

    move v6, v8

    move-object v15, v11

    move-object/from16 v21, v13

    const/4 v1, 0x0

    move-object v11, v5

    move v8, v7

    move v7, v10

    move-object v13, v12

    move/from16 v10, p1

    move-object v12, v3

    move/from16 v42, v9

    move v9, v4

    move/from16 v4, v42

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v12

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_4
    iget v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    iget v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iget v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iget-boolean v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iget-boolean v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    iget-object v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    iget-object v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Matrix;

    iget-object v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    check-cast v13, Landroid/view/Surface;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v3

    move-object v3, v9

    move v9, v7

    move-object v7, v11

    move v11, v5

    move-object v5, v10

    move v10, v6

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 214
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 215
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getSurfaceMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    move-object/from16 v5, p1

    .line 411
    iput-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    move/from16 v8, p4

    iput-boolean v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    move/from16 v9, p5

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    move/from16 v10, p6

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    move/from16 v11, p7

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    const/4 v12, 0x0

    iput v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    const/4 v12, 0x1

    iput v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    const/4 v12, 0x0

    invoke-interface {v3, v12, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v14, :cond_6

    return-object v14

    :cond_6
    move-object v13, v5

    move-object v12, v6

    move-object v5, v2

    const/4 v2, 0x0

    .line 216
    :goto_2
    :try_start_3
    new-array v6, v4, [I

    .line 217
    new-array v15, v4, [J

    .line 218
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v20, v1

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 v22, v14

    const/4 v14, 0x0

    :try_start_4
    invoke-direct {v1, v13, v6, v15, v14}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$1;-><init>(Landroid/view/Surface;[I[JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    iput-object v15, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    iput-boolean v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iput v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iput v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v14, 0x0

    :try_start_5
    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    const/4 v14, 0x2

    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    invoke-static {v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v14, v22

    if-ne v1, v14, :cond_7

    return-object v14

    :cond_7
    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move v7, v8

    move v4, v9

    move v6, v10

    move v8, v11

    move-object/from16 v22, v12

    move-object v12, v13

    const/4 v1, 0x0

    const/4 v10, 0x0

    move v9, v2

    move-object v13, v3

    move-object v11, v5

    .line 227
    :goto_3
    :try_start_6
    aget-wide v2, v15, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 p1, v13

    move-object/from16 v18, v14

    const/4 v5, 0x1

    .line 228
    :try_start_7
    aget-wide v13, v15, v5

    move-object/from16 p2, v15

    .line 229
    aget v15, v21, v1

    .line 230
    aget v5, v21, v5

    .line 231
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    move/from16 p3, v4

    const-string v4, "PdfPageKt"

    move/from16 p4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 p5, v6

    move-object/from16 v6, v20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v13, v4

    if-eqz v1, :cond_b

    const-wide/16 v24, -0x1

    cmp-long v1, v13, v24

    if-eqz v1, :cond_b

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    cmp-long v1, v2, v24

    if-nez v1, :cond_8

    move-object/from16 v15, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_8
    move-object/from16 v6, p0

    .line 235
    iget-object v1, v6, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v19, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$2;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v20, 0x0

    move-object/from16 v1, v19

    move-wide/from16 v26, v2

    move-object v2, v11

    move-object/from16 v3, p0

    move/from16 p6, p4

    move-object/from16 v28, v4

    move-wide v4, v13

    move v6, v15

    move/from16 p4, v7

    move/from16 v7, p6

    move/from16 p7, v8

    move-object/from16 v8, v22

    move/from16 v29, v9

    move-object/from16 v9, v23

    move/from16 v30, v10

    move/from16 v10, p4

    move-object/from16 v31, v11

    move/from16 v11, p3

    move-object/from16 v32, v12

    move/from16 v12, p5

    move-wide/from16 v33, v13

    move-object/from16 v14, p1

    move/from16 v13, p7

    move/from16 p1, v15

    move-object/from16 v35, v18

    move-object v15, v14

    move-object/from16 v14, v20

    :try_start_8
    invoke-direct/range {v1 .. v14}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/legere/pdfiumandroid/suspend/PdfPageKt;JIILandroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v19

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v13, v32

    iput-object v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    move-object/from16 v5, v31

    iput-object v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    iput-object v15, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    move/from16 v8, p4

    iput-boolean v8, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    move/from16 v9, p3

    iput-boolean v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    move/from16 v10, p5

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    move/from16 v7, p7

    iput v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    move/from16 v2, v29

    iput v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    move/from16 v3, v30

    iput v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    move-wide/from16 v11, v26

    iput-wide v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$0:J

    move/from16 v29, v2

    move/from16 v30, v3

    move-wide/from16 v2, v33

    iput-wide v2, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$1:J

    move/from16 v4, p1

    iput v4, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$4:I

    move/from16 v6, p6

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$5:I

    const/4 v14, 0x3

    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    move-object/from16 v14, v28

    invoke-static {v14, v1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v14, v35

    if-ne v1, v14, :cond_9

    return-object v14

    :cond_9
    move/from16 v16, v6

    move v6, v9

    move-object v1, v13

    move-object/from16 v18, v14

    move/from16 v9, v29

    move v13, v8

    move v14, v10

    move v10, v7

    move-wide v7, v2

    move-object v3, v5

    move/from16 v5, v30

    move-object/from16 v2, p2

    .line 249
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v17

    move/from16 v19, v4

    move-object/from16 v4, v17

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v17, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$3;

    const/16 v41, 0x0

    move-object/from16 v35, v17

    move-object/from16 v36, v1

    move-wide/from16 v37, v11

    move-wide/from16 v39, v7

    invoke-direct/range {v35 .. v41}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$4$3;-><init>(Landroid/view/Surface;JJLkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v4

    move-object/from16 v4, v17

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$0:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$1:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$3:Ljava/lang/Object;

    iput-object v15, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$4:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$5:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->L$6:Ljava/lang/Object;

    iput-boolean v13, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$0:Z

    iput-boolean v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->Z$1:Z

    iput v14, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$0:I

    iput v10, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$1:I

    iput v9, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$2:I

    iput v5, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$3:I

    iput-wide v11, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$0:J

    iput-wide v7, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->J$1:J

    move/from16 v1, v19

    iput v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$4:I

    move/from16 v6, v16

    iput v6, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->I$5:I

    const/4 v1, 0x4

    iput v1, v0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$3;->label:I

    move-object/from16 v1, p1

    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_a

    return-object v0

    :cond_a
    move-object v1, v15

    .line 205
    :goto_5
    :try_start_9
    check-cast v2, Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x0

    .line 415
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 255
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_b
    move-object/from16 v15, p1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 233
    :goto_6
    :try_start_a
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 415
    invoke-interface {v15, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v15, v13

    :goto_7
    const/4 v2, 0x0

    :goto_8
    move-object v1, v15

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v14

    goto :goto_9

    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    :goto_9
    move-object v1, v3

    :goto_a
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIIIZZII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v12, p0

    .line 273
    iget-object v0, v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p10

    invoke-static {v13, v14, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "ZZII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v10, p0

    .line 300
    iget-object v0, v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$4;

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$4;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p8

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final safeClose()Z
    .locals 4

    .line 387
    :try_start_0
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfPage;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "PdfPageKt.safeClose"

    const-string v3, "PdfPageKt"

    invoke-virtual {v1, v3, v0, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
