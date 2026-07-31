.class public final Lio/legere/pdfiumandroid/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfPage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfPage.kt\nio/legere/pdfiumandroid/PdfPage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,981:1\n1#2:982\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 R2\u00020\u0001:\u0001RB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0005J\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\u0006\u0010\'\u001a\u00020$J\u0006\u0010(\u001a\u00020$J\u0006\u0010)\u001a\u00020$J\u000e\u0010*\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u0005JL\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0008\u0008\u0002\u00102\u001a\u00020\u00142\u0008\u0008\u0003\u00103\u001a\u00020\u00052\u0008\u0008\u0003\u00104\u001a\u00020\u0005JV\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\u0008\u0008\u0002\u00102\u001a\u00020\u00142\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020\u0005JF\u0010,\u001a\u00020\u00142\u0006\u00108\u001a\u0002092\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\u0008\u0008\u0002\u00102\u001a\u00020\u00142\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020\u0005JX\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0008\u0008\u0002\u00102\u001a\u00020\u00142\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020\u0005JH\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\u0008\u0008\u0002\u00102\u001a\u00020\u00142\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020\u0005J\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020@0?J>\u0010A\u001a\u00020B2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020GJ>\u0010I\u001a\u00020J2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\u0005J6\u0010M\u001a\u00020N2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010O\u001a\u00020$J6\u0010P\u001a\u00020$2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010O\u001a\u00020NJ\u0008\u0010Q\u001a\u00020;H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006S"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfPage;",
        "Ljava/io/Closeable;",
        "doc",
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "pageIndex",
        "",
        "pagePtr",
        "",
        "pageMap",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V",
        "getDoc",
        "()Lio/legere/pdfiumandroid/PdfDocument;",
        "getPageIndex",
        "()I",
        "getPagePtr",
        "()J",
        "isClosed",
        "",
        "isClosed$pdfiumandroid_release",
        "()Z",
        "setClosed$pdfiumandroid_release",
        "(Z)V",
        "openTextPage",
        "Lio/legere/pdfiumandroid/PdfTextPage;",
        "getPageWidth",
        "screenDpi",
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
        "bufferPtr",
        "startX",
        "startY",
        "drawSizeX",
        "drawSizeY",
        "renderAnnot",
        "canvasColor",
        "pageBackgroundColor",
        "matrix",
        "clipRect",
        "textMask",
        "surface",
        "Landroid/view/Surface;",
        "renderPageBitmap",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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
        "mapDeviceCoordsToPage",
        "Landroid/graphics/PointF;",
        "deviceX",
        "deviceY",
        "mapRectToDevice",
        "Landroid/graphics/Rect;",
        "coords",
        "mapRectToPage",
        "close",
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
.field public static final BOTTOM:I = 0x3

.field public static final Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PdfPage"

.field public static final TOP:I = 0x1


# instance fields
.field private final doc:Lio/legere/pdfiumandroid/PdfDocument;

.field private volatile isClosed:Z

.field private final pageIndex:I

.field private final pageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation
.end field

.field private final pagePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/legere/pdfiumandroid/PdfPage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfPage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    return-void
.end method

.method public constructor <init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/PdfDocument;",
            "IJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageMap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    .line 33
    iput p2, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    .line 34
    iput-wide p3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    .line 35
    iput-object p5, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$nativeClosePage(J)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeClosePage(J)V

    return-void
.end method

.method public static final synthetic access$nativeClosePages([J)V
    .locals 0

    .line 30
    invoke-static {p0}, Lio/legere/pdfiumandroid/PdfPage;->nativeClosePages([J)V

    return-void
.end method

.method public static final synthetic access$nativeDeviceCoordsToPage(JIIIIIII)[F
    .locals 0

    .line 30
    invoke-static/range {p0 .. p8}, Lio/legere/pdfiumandroid/PdfPage;->nativeDeviceCoordsToPage(JIIIIIII)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetDestPageIndex(JJ)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetDestPageIndex(JJ)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetLinkRect(JJ)[F
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetLinkRect(JJ)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetLinkURI(JJ)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetLinkURI(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageArtBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageArtBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageBleedBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageBleedBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageBoundingBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageBoundingBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageCropBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageCropBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageHeightPixel(JI)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageHeightPixel(JI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetPageHeightPoint(J)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageHeightPoint(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetPageLinks(J)[J
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageLinks(J)[J

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageMatrix(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageMatrix(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageMediaBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageMediaBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageRotation(J)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageRotation(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetPageSizeByIndex(JII)[I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageSizeByIndex(JII)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageTrimBox(J)[F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageTrimBox(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetPageWidthPixel(JI)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageWidthPixel(JI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetPageWidthPoint(J)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageWidthPoint(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeLockSurface(Landroid/view/Surface;[I[J)Z
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfPage;->nativeLockSurface(Landroid/view/Surface;[I[J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativePageCoordsToDevice(JIIIIIDD)[I
    .locals 0

    .line 30
    invoke-static/range {p0 .. p10}, Lio/legere/pdfiumandroid/PdfPage;->nativePageCoordsToDevice(JIIIIIDD)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeRenderPage(JJIIIIZII)Z
    .locals 0

    .line 30
    invoke-static/range {p0 .. p10}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPage(JJIIIIZII)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeRenderPageBitmap(JJLandroid/graphics/Bitmap;IIIIZZII)V
    .locals 0

    .line 30
    invoke-static/range {p0 .. p12}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageBitmap(JJLandroid/graphics/Bitmap;IIIIZZII)V

    return-void
.end method

.method public static final synthetic access$nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[F[FZZII)V
    .locals 0

    .line 30
    invoke-static/range {p0 .. p8}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[F[FZZII)V

    return-void
.end method

.method public static final synthetic access$nativeRenderPageSurface(JLandroid/view/Surface;IIZII)Z
    .locals 0

    .line 30
    invoke-static/range {p0 .. p7}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageSurface(JLandroid/view/Surface;IIZII)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeRenderPageSurfaceWithMatrix(JLandroid/view/Surface;[F[FZZII)Z
    .locals 0

    .line 30
    invoke-static/range {p0 .. p8}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageSurfaceWithMatrix(JLandroid/view/Surface;[F[FZZII)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeRenderPageWithMatrix(JJII[F[FZZII)Z
    .locals 0

    .line 30
    invoke-static/range {p0 .. p11}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageWithMatrix(JJII[F[FZZII)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeUnlockSurface([J)V
    .locals 0

    .line 30
    invoke-static {p0}, Lio/legere/pdfiumandroid/PdfPage;->nativeUnlockSurface([J)V

    return-void
.end method

.method private static final native nativeClosePage(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeClosePages([J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeDeviceCoordsToPage(JIIIIIII)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetDestPageIndex(JJ)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetLinkRect(JJ)[F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetLinkURI(JJ)Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageArtBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageBleedBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageBoundingBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageCropBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageHeightPixel(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageHeightPoint(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageLinks(J)[J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageMatrix(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageMediaBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageRotation(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageSizeByIndex(JII)[I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageTrimBox(J)[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageWidthPixel(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetPageWidthPoint(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeLockSurface(Landroid/view/Surface;[I[J)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativePageCoordsToDevice(JIIIIIDD)[I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPage(JJIIIIZII)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPageBitmap(JJLandroid/graphics/Bitmap;IIIIZZII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[F[FZZII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPageSurface(JLandroid/view/Surface;IIZII)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPageSurfaceWithMatrix(JLandroid/view/Surface;[F[FZZII)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderPageWithMatrix(JJII[F[FZZII)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeUnlockSurface([J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/PdfPage;JIIIIZIIILjava/lang/Object;)Z
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const v1, -0x7b7b7c

    move v10, v1

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    move v11, v0

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 298
    invoke-virtual/range {v2 .. v11}, Lio/legere/pdfiumandroid/PdfPage;->renderPage(JIIIIZII)Z

    move-result v0

    return v0
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/PdfPage;JIILandroid/graphics/Matrix;Landroid/graphics/RectF;ZZIIILjava/lang/Object;)Z
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move/from16 v10, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    const v1, -0x7b7b7c

    move v12, v1

    goto :goto_2

    :cond_2
    move/from16 v12, p9

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v13, v0

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    move-object v3, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 347
    invoke-virtual/range {v3 .. v13}, Lio/legere/pdfiumandroid/PdfPage;->renderPage(JIILandroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)Z

    move-result v0

    return v0
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIIILjava/lang/Object;)Z
    .locals 10

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const v0, -0x7b7b7c

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

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

    .line 388
    invoke-virtual/range {v2 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->renderPage(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)Z

    move-result v0

    return v0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;IIIIZZIIILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

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

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 445
    invoke-virtual/range {v3 .. v12}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZII)V

    return-void
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIIILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const v0, -0x7b7b7c

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

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

    .line 493
    invoke-virtual/range {v2 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 732
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 733
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 732
    monitor-exit v0

    return-void

    .line 735
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v1, :cond_4

    .line 736
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 737
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    monitor-exit v0

    return-void

    .line 741
    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iput-boolean v2, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    .line 744
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeClosePage(Lio/legere/pdfiumandroid/PdfPage$Companion;J)V

    .line 735
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getDoc()Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    return-object v0
.end method

.method public final getPageArtBox()Landroid/graphics/RectF;
    .locals 4

    .line 236
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageArtBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 239
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 240
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 241
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 242
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 243
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v0

    return-object v2

    .line 237
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 236
    monitor-exit v0

    throw v1
.end method

.method public final getPageBleedBox()Landroid/graphics/RectF;
    .locals 4

    .line 200
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageBleedBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 203
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 204
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 205
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 206
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 207
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v0

    return-object v2

    .line 201
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 200
    monitor-exit v0

    throw v1
.end method

.method public final getPageBoundingBox()Landroid/graphics/RectF;
    .locals 4

    .line 254
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 255
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageBoundingBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 257
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 258
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 259
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 260
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 261
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit v0

    return-object v2

    .line 255
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 254
    monitor-exit v0

    throw v1
.end method

.method public final getPageCropBox()Landroid/graphics/RectF;
    .locals 4

    .line 164
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageCropBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 167
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 168
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 169
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 170
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 171
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v0

    return-object v2

    .line 165
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 164
    monitor-exit v0

    throw v1
.end method

.method public final getPageHeight(I)I
    .locals 4

    .line 68
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 68
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageHeightPixel(Lio/legere/pdfiumandroid/PdfPage$Companion;JI)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageHeightPoint()I
    .locals 4

    .line 92
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 92
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 94
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageHeightPoint(Lio/legere/pdfiumandroid/PdfPage$Companion;J)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageIndex()I
    .locals 1

    .line 33
    iget v0, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    return v0
.end method

.method public final getPageLinks()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 531
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 532
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit v0

    return-object v1

    .line 534
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 535
    sget-object v4, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v5, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v4, v5, v6}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageLinks(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[J

    move-result-object v4

    .line 536
    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_5

    aget-wide v7, v4, v6

    .line 537
    sget-object v9, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-object v10, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v10}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v10

    invoke-static {v9, v10, v11, v7, v8}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetDestPageIndex(Lio/legere/pdfiumandroid/PdfPage$Companion;JJ)I

    move-result v10

    .line 538
    iget-object v11, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v11}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v11

    invoke-static {v9, v11, v12, v7, v8}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetLinkURI(Lio/legere/pdfiumandroid/PdfPage$Companion;JJ)Ljava/lang/String;

    move-result-object v11

    .line 539
    iget-object v12, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v12}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v12

    invoke-static {v9, v12, v13, v7, v8}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetLinkRect(Lio/legere/pdfiumandroid/PdfPage$Companion;JJ)[F

    move-result-object v7

    .line 540
    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    const/4 v8, -0x1

    if-ne v10, v8, :cond_3

    if-eqz v11, :cond_4

    .line 544
    :cond_3
    new-instance v8, Landroid/graphics/RectF;

    .line 545
    aget v9, v7, v2

    .line 546
    aget v12, v7, v3

    const/4 v13, 0x2

    .line 547
    aget v13, v7, v13

    const/4 v14, 0x3

    .line 548
    aget v7, v7, v14

    .line 544
    invoke-direct {v8, v9, v12, v13, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 551
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 542
    new-instance v9, Lio/legere/pdfiumandroid/PdfDocument$Link;

    invoke-direct {v9, v8, v7, v11}, Lio/legere/pdfiumandroid/PdfDocument$Link;-><init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 541
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 531
    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageMatrix()Landroid/graphics/Matrix;
    .locals 14

    const-string v0, "pageMatrix[5] = "

    const-string v1, "pageMatrix[4] = "

    const-string v2, "pageMatrix[3] = "

    const-string v3, "pageMatrix[2] = "

    const-string v4, "pageMatrix[1] = "

    const-string v5, "pageMatrix[0] = "

    .line 100
    sget-object v6, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v6}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 101
    :try_start_0
    iget-boolean v7, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    iget-object v7, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v7}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v9

    :goto_1
    invoke-static {v7}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 100
    monitor-exit v6

    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_2
    :try_start_1
    sget-object v7, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v10, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v7, v10, v11}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageMatrix(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v7

    .line 113
    sget-object v10, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v11, "PdfPage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v7, v8

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v10, "PdfPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v7, v9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aget v11, v7, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget v11, v7, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    aget v11, v7, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    aget v4, v7, v8

    .line 121
    aget v5, v7, v9

    .line 122
    aget v10, v7, v3

    .line 123
    aget v11, v7, v2

    .line 125
    aget v12, v7, v1

    .line 126
    aget v7, v7, v0

    const/16 v13, 0x9

    .line 130
    new-array v13, v13, [F

    aput v4, v13, v8

    aput v5, v13, v9

    aput v12, v13, v3

    aput v10, v13, v2

    aput v11, v13, v1

    aput v7, v13, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v13, v0

    const/4 v0, 0x7

    aput v1, v13, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v13, v0

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->setValues([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final getPageMediaBox()Landroid/graphics/RectF;
    .locals 4

    .line 182
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageMediaBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 185
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 186
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 187
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 188
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 189
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit v0

    return-object v2

    .line 183
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0

    throw v1
.end method

.method public final getPagePtr()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    return-wide v0
.end method

.method public final getPageRotation()I
    .locals 4

    .line 152
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 152
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 154
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageRotation(Lio/legere/pdfiumandroid/PdfPage$Companion;J)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageSize(I)Lio/legere/pdfiumandroid/util/Size;
    .locals 5

    .line 272
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 274
    :try_start_0
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 275
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v2

    .line 276
    iget v4, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    .line 274
    invoke-static {v1, v2, v3, v4, p1}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageSizeByIndex(Lio/legere/pdfiumandroid/PdfPage$Companion;JII)[I

    move-result-object p1

    .line 279
    new-instance v1, Lio/legere/pdfiumandroid/util/Size;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {v1, v2, p1}, Lio/legere/pdfiumandroid/util/Size;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 272
    :cond_0
    const-string p1, "Already closed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPageTrimBox()Landroid/graphics/RectF;
    .locals 4

    .line 218
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageTrimBox(Lio/legere/pdfiumandroid/PdfPage$Companion;J)[F

    move-result-object v1

    .line 221
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 222
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    .line 223
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    .line 224
    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    .line 225
    aget v1, v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit v0

    return-object v2

    .line 219
    :cond_0
    :try_start_1
    const-string v1, "Already closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 218
    monitor-exit v0

    throw v1
.end method

.method public final getPageWidth(I)I
    .locals 4

    .line 55
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 55
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageWidthPixel(Lio/legere/pdfiumandroid/PdfPage$Companion;JI)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageWidthPoint()I
    .locals 4

    .line 80
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 80
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 82
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeGetPageWidthPoint(Lio/legere/pdfiumandroid/PdfPage$Companion;J)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isClosed$pdfiumandroid_release()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    return v0
.end method

.method public final mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;
    .locals 12

    move-object v0, p0

    .line 615
    iget-boolean v1, v0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    sget-object v2, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 617
    iget-wide v3, v0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 616
    invoke-static/range {v2 .. v11}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeDeviceCoordsToPage(Lio/legere/pdfiumandroid/PdfPage$Companion;JIIIIIII)[F

    move-result-object v1

    .line 626
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 615
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;
    .locals 14

    move-object v0, p0

    .line 585
    iget-boolean v1, v0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    sget-object v2, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    iget-wide v3, v0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-static/range {v2 .. v13}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativePageCoordsToDevice(Lio/legere/pdfiumandroid/PdfPage$Companion;JIIIIIDD)[I

    move-result-object v1

    .line 587
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 585
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 13

    move-object v10, p0

    move-object/from16 v11, p6

    const-string v0, "coords"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-boolean v0, v10, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, v10, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget v0, v11, Landroid/graphics/RectF;->left:F

    float-to-double v6, v0

    .line 663
    iget v0, v11, Landroid/graphics/RectF;->top:F

    float-to-double v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 656
    invoke-virtual/range {v0 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;

    move-result-object v12

    .line 672
    iget v0, v11, Landroid/graphics/RectF;->right:F

    float-to-double v6, v0

    .line 673
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v0

    move-object v0, p0

    .line 666
    invoke-virtual/range {v0 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;

    move-result-object v0

    .line 675
    new-instance v1, Landroid/graphics/Rect;

    .line 676
    iget v2, v12, Landroid/graphics/Point;->x:I

    .line 677
    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 678
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 679
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 675
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 654
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapRectToPage(IIIIILandroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 9

    const-string v0, "coords"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget v7, p6, Landroid/graphics/Rect;->left:I

    .line 713
    iget v8, p6, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 706
    invoke-virtual/range {v1 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;

    move-result-object v0

    .line 722
    iget v7, p6, Landroid/graphics/Rect;->right:I

    .line 723
    iget v8, p6, Landroid/graphics/Rect;->bottom:I

    .line 716
    invoke-virtual/range {v1 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;

    move-result-object p1

    .line 725
    new-instance p2, Landroid/graphics/RectF;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    iget p4, v0, Landroid/graphics/PointF;->y:F

    iget p5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, p3, p4, p5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 704
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0, p0}, Lio/legere/pdfiumandroid/PdfDocument;->openTextPage(Lio/legere/pdfiumandroid/PdfPage;)Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object v0

    return-object v0
.end method

.method public final renderPage(JIIIIZII)Z
    .locals 16

    move-object/from16 v1, p0

    .line 310
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 311
    :try_start_0
    iget-boolean v0, v1, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 310
    monitor-exit v2

    return v3

    .line 314
    :cond_2
    :try_start_1
    sget-object v4, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 315
    iget-wide v5, v1, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    .line 314
    invoke-static/range {v4 .. v15}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeRenderPage(Lio/legere/pdfiumandroid/PdfPage$Companion;JJIIIIZII)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    .line 328
    :try_start_2
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    check-cast v0, Ljava/lang/Throwable;

    const-string v6, "Exception throw from native"

    invoke-virtual {v4, v5, v0, v6}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 326
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v5, "PdfPage"

    check-cast v0, Ljava/lang/Throwable;

    const-string v6, "mContext may be null"

    invoke-virtual {v4, v5, v0, v6}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 330
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final renderPage(JIILandroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move-object/from16 v2, p6

    const-string v3, "matrix"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clipRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 359
    :try_start_0
    iget-boolean v4, v1, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v4}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v4}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 358
    monitor-exit v3

    return v6

    :cond_2
    const/16 v4, 0x9

    .line 360
    :try_start_1
    new-array v4, v4, [F

    .line 361
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 362
    sget-object v7, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 363
    iget-wide v8, v1, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    .line 368
    aget v0, v4, v6

    const/4 v10, 0x4

    .line 369
    aget v11, v4, v10

    const/4 v12, 0x2

    .line 370
    aget v13, v4, v12

    const/4 v14, 0x5

    .line 371
    aget v4, v4, v14

    new-array v14, v10, [F

    aput v0, v14, v6

    aput v11, v14, v5

    aput v13, v14, v12

    const/4 v0, 0x3

    aput v4, v14, v0

    .line 374
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 375
    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 376
    iget v13, v2, Landroid/graphics/RectF;->right:F

    .line 377
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    new-array v15, v10, [F

    aput v4, v15, v6

    aput v11, v15, v5

    aput v13, v15, v12

    aput v2, v15, v0

    move-wide/from16 v10, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    .line 362
    invoke-static/range {v7 .. v19}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeRenderPageWithMatrix(Lio/legere/pdfiumandroid/PdfPage$Companion;JJII[F[FZZII)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final renderPage(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "surface"

    move-object/from16 v7, p1

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "matrix"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clipRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 398
    :try_start_0
    iget-boolean v4, v1, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v4}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v4}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 397
    monitor-exit v3

    return v6

    :cond_2
    const/16 v4, 0x9

    .line 399
    :try_start_1
    new-array v4, v4, [F

    .line 400
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 401
    sget-object v0, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 402
    iget-wide v8, v1, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    .line 405
    aget v10, v4, v6

    const/4 v11, 0x4

    .line 406
    aget v12, v4, v11

    const/4 v13, 0x2

    .line 407
    aget v14, v4, v13

    const/4 v15, 0x5

    .line 408
    aget v4, v4, v15

    new-array v15, v11, [F

    aput v10, v15, v6

    aput v12, v15, v5

    aput v14, v15, v13

    const/4 v10, 0x3

    aput v4, v15, v10

    .line 411
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 412
    iget v12, v2, Landroid/graphics/RectF;->top:F

    .line 413
    iget v14, v2, Landroid/graphics/RectF;->right:F

    .line 414
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    new-array v11, v11, [F

    aput v4, v11, v6

    aput v12, v11, v5

    aput v14, v11, v13

    aput v2, v11, v10

    move-object v4, v0

    move-wide v5, v8

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v9, v11

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 401
    invoke-static/range {v4 .. v13}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeRenderPageSurfaceWithMatrix(Lio/legere/pdfiumandroid/PdfPage$Companion;JLandroid/view/Surface;[F[FZZII)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZII)V
    .locals 17

    move-object/from16 v1, p0

    .line 456
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 457
    :try_start_0
    iget-boolean v0, v1, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 456
    monitor-exit v2

    return-void

    .line 458
    :cond_2
    :try_start_1
    sget-object v3, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 459
    iget-object v0, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v4

    .line 460
    iget-wide v6, v1, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    .line 458
    invoke-static/range {v3 .. v16}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeRenderPageBitmap(Lio/legere/pdfiumandroid/PdfPage$Companion;JJLandroid/graphics/Bitmap;IIIIZZII)V

    .line 471
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "matrix"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clipRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 503
    :try_start_0
    iget-boolean v4, v1, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, v1, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v4}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v4}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 502
    monitor-exit v3

    return-void

    :cond_2
    const/16 v4, 0x9

    .line 504
    :try_start_1
    new-array v4, v4, [F

    .line 505
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 506
    sget-object v7, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    .line 507
    iget-wide v8, v1, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    .line 510
    aget v0, v4, v6

    const/4 v10, 0x4

    .line 511
    aget v11, v4, v10

    const/4 v12, 0x2

    .line 512
    aget v13, v4, v12

    const/4 v14, 0x5

    .line 513
    aget v4, v4, v14

    new-array v14, v10, [F

    aput v0, v14, v6

    aput v11, v14, v5

    aput v13, v14, v12

    const/4 v0, 0x3

    aput v4, v14, v0

    .line 516
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 517
    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 518
    iget v13, v2, Landroid/graphics/RectF;->right:F

    .line 519
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    new-array v15, v10, [F

    aput v4, v15, v6

    aput v11, v15, v5

    aput v13, v15, v12

    aput v2, v15, v0

    move-object/from16 v10, p1

    move-object v11, v14

    move-object v12, v15

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    .line 506
    invoke-static/range {v7 .. v16}, Lio/legere/pdfiumandroid/PdfPage$Companion;->access$nativeRenderPageBitmapWithMatrix(Lio/legere/pdfiumandroid/PdfPage$Companion;JLandroid/graphics/Bitmap;[F[FZZII)V

    .line 526
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final setClosed$pdfiumandroid_release(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    return-void
.end method
