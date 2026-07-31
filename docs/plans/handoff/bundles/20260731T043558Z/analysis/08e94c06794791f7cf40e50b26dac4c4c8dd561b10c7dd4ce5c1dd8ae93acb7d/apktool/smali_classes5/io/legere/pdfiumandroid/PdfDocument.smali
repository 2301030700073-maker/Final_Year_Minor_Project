.class public final Lio/legere/pdfiumandroid/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfDocument$Bookmark;,
        Lio/legere/pdfiumandroid/PdfDocument$Companion;,
        Lio/legere/pdfiumandroid/PdfDocument$Link;,
        Lio/legere/pdfiumandroid/PdfDocument$Meta;,
        Lio/legere/pdfiumandroid/PdfDocument$PageCount;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfDocument.kt\nio/legere/pdfiumandroid/PdfDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,491:1\n1#2:492\n11601#3:493\n11936#3,3:494\n11691#3:535\n11814#3,4:536\n1761#4,3:497\n1374#4:500\n1460#4,5:501\n1374#4:506\n1460#4,5:507\n1563#4:512\n1634#4,3:513\n1761#4,3:516\n1374#4:519\n1460#4,5:520\n1374#4:525\n1460#4,5:526\n1563#4:531\n1634#4,3:532\n*S KotlinDebug\n*F\n+ 1 PdfDocument.kt\nio/legere/pdfiumandroid/PdfDocument\n*L\n192#1:493\n192#1:494,3\n409#1:535\n409#1:536,4\n223#1:497,3\n226#1:500\n226#1:501,5\n237#1:506\n237#1:507,5\n246#1:512\n246#1:513,3\n272#1:516,3\n275#1:519\n275#1:520,5\n286#1:525\n286#1:526,5\n295#1:531\n295#1:532,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 g2\u00020\u0001:\u0005cdefgB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 J\u0019\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH\u0082 J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH\u0082 J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 J!\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nH\u0082 J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\u0019\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0082 J\u0019\u0010!\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0082 J\u0019\u0010\"\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0082 J\u0019\u0010#\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003H\u0082 J\u0011\u0010%\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u0003H\u0082 J!\u0010&\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\nH\u0082 J\u0011\u0010*\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 JY\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0082 JI\u00108\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u00192\u0006\u00109\u001a\u00020:2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0082 J\u0006\u0010G\u001a\u00020\nJ\u0006\u0010H\u001a\u00020+J\u000e\u0010I\u001a\u00020J2\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\nJ\u001c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020J0M2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nJp\u0010N\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020\n2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020J0M2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0M2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0M2\u0008\u0008\u0002\u00104\u001a\u00020\u000e2\u0008\u0008\u0002\u00105\u001a\u00020\u000e2\u0008\u0008\u0002\u00106\u001a\u00020\n2\u0008\u0008\u0002\u00107\u001a\u00020\nJ`\u0010N\u001a\u00020\u000e2\u0006\u00109\u001a\u00020:2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020J0M2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0M2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0M2\u0008\u0008\u0002\u00104\u001a\u00020\u000e2\u0008\u0008\u0002\u00105\u001a\u00020\u000e2\u0008\u0008\u0002\u00106\u001a\u00020\n2\u0008\u0008\u0002\u00107\u001a\u00020\nJ\u0006\u0010U\u001a\u00020VJ&\u0010W\u001a\u00020\u00162\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020Z0Y2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010[\u001a\u00020\u0003H\u0002J\u000c\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020Z0MJ\u0010\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020JH\u0007J\u001c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020^0M2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nJ\u0018\u0010a\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020\nJ\u0008\u0010b\u001a\u00020\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010;\u001a\u0004\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010F\u00a8\u0006h"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "Ljava/io/Closeable;",
        "mNativeDocPtr",
        "",
        "<init>",
        "(J)V",
        "getMNativeDocPtr",
        "()J",
        "pageMap",
        "",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
        "textPageMap",
        "value",
        "",
        "isClosed",
        "()Z",
        "nativeGetPageCount",
        "docPtr",
        "nativeLoadPage",
        "pageIndex",
        "nativeDeletePage",
        "",
        "nativeCloseDocument",
        "nativeLoadPages",
        "",
        "fromIndex",
        "toIndex",
        "nativeGetDocumentMetaText",
        "",
        "tag",
        "nativeGetFirstChildBookmark",
        "bookmarkPtr",
        "nativeGetSiblingBookmark",
        "nativeGetBookmarkDestIndex",
        "nativeLoadTextPage",
        "pagePtr",
        "nativeGetBookmarkTitle",
        "nativeSaveAsCopy",
        "callback",
        "Lio/legere/pdfiumandroid/PdfWriteCallback;",
        "flags",
        "nativeGetPageCharCounts",
        "",
        "nativeRenderPagesWithMatrix",
        "pages",
        "bufferPtr",
        "drawSizeHor",
        "drawSizeVer",
        "matrixFloats",
        "",
        "clipFloats",
        "renderAnnot",
        "textMask",
        "canvasColor",
        "pageBackgroundColor",
        "nativeRenderPagesSurfaceWithMatrix",
        "surface",
        "Landroid/view/Surface;",
        "parcelFileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "getParcelFileDescriptor",
        "()Landroid/os/ParcelFileDescriptor;",
        "setParcelFileDescriptor",
        "(Landroid/os/ParcelFileDescriptor;)V",
        "source",
        "Lio/legere/pdfiumandroid/PdfiumSource;",
        "getSource",
        "()Lio/legere/pdfiumandroid/PdfiumSource;",
        "setSource",
        "(Lio/legere/pdfiumandroid/PdfiumSource;)V",
        "getPageCount",
        "getPageCharCounts",
        "openPage",
        "Lio/legere/pdfiumandroid/PdfPage;",
        "deletePage",
        "openPages",
        "",
        "renderPages",
        "drawSizeX",
        "drawSizeY",
        "matrices",
        "Landroid/graphics/Matrix;",
        "clipRects",
        "Landroid/graphics/RectF;",
        "getDocumentMeta",
        "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
        "recursiveGetBookmark",
        "tree",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
        "level",
        "getTableOfContents",
        "openTextPage",
        "Lio/legere/pdfiumandroid/PdfTextPage;",
        "page",
        "openTextPages",
        "saveAsCopy",
        "close",
        "Meta",
        "Bookmark",
        "Link",
        "PageCount",
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
.field public static final Companion:Lio/legere/pdfiumandroid/PdfDocument$Companion;

.field public static final FPDF_INCREMENTAL:I = 0x1

.field public static final FPDF_NO_INCREMENTAL:I = 0x2

.field public static final FPDF_REMOVE_SECURITY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isClosed:Z

.field private final mNativeDocPtr:J

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

.field private parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private source:Lio/legere/pdfiumandroid/PdfiumSource;

.field private final textPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfDocument;->Companion:Lio/legere/pdfiumandroid/PdfDocument$Companion;

    .line 484
    const-class v0, Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/PdfDocument;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    return-void
.end method

.method private final native nativeCloseDocument(J)V
.end method

.method private final native nativeDeletePage(JI)V
.end method

.method private final native nativeGetBookmarkDestIndex(JJ)J
.end method

.method private final native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method private final native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private final native nativeGetFirstChildBookmark(JJ)J
.end method

.method private final native nativeGetPageCharCounts(J)[I
.end method

.method private final native nativeGetPageCount(J)I
.end method

.method private final native nativeGetSiblingBookmark(JJ)J
.end method

.method private final native nativeLoadPage(JI)J
.end method

.method private final native nativeLoadPages(JII)[J
.end method

.method private final native nativeLoadTextPage(JJ)J
.end method

.method private final native nativeRenderPagesSurfaceWithMatrix([JLandroid/view/Surface;[F[FZZII)Z
.end method

.method private final native nativeRenderPagesWithMatrix([JJII[F[FZZII)V
.end method

.method private final native nativeSaveAsCopy(JLio/legere/pdfiumandroid/PdfWriteCallback;I)Z
.end method

.method private final recursiveGetBookmark(Ljava/util/List;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    .line 333
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 334
    :try_start_0
    iget-boolean v0, v7, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 333
    monitor-exit v10

    return-void

    .line 336
    :cond_0
    :try_start_1
    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;

    invoke-direct {v0}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;-><init>()V

    .line 337
    invoke-virtual {v0, v8, v9}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setMNativePtr(J)V

    .line 338
    invoke-direct {v7, v8, v9}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setTitle(Ljava/lang/String;)V

    .line 339
    iget-wide v1, v7, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {v7, v1, v2, v8, v9}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetBookmarkDestIndex(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setPageIdx(J)V

    move-object/from16 v11, p1

    .line 340
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-wide v1, v7, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {v7, v1, v2, v8, v9}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetFirstChildBookmark(JJ)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    const-wide/16 v14, 0x10

    if-eqz v1, :cond_1

    cmp-long v1, p4, v14

    if-gez v1, :cond_1

    .line 343
    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->getChildren()Ljava/util/List;

    move-result-object v2

    const-wide/16 v0, 0x1

    add-long v16, p4, v0

    move-object/from16 v1, p0

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V

    move-wide/from16 v5, v16

    goto :goto_0

    :cond_1
    move-wide/from16 v5, p4

    .line 345
    :goto_0
    iget-wide v0, v7, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {v7, v0, v1, v8, v9}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetSiblingBookmark(JJ)J

    move-result-wide v3

    cmp-long v0, v3, v12

    if-eqz v0, :cond_2

    cmp-long v0, v5, v14

    if-gez v0, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 347
    invoke-direct/range {v1 .. v6}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V

    .line 349
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static synthetic renderPages$default(Lio/legere/pdfiumandroid/PdfDocument;JIILjava/util/List;Ljava/util/List;Ljava/util/List;ZZIIILjava/lang/Object;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move v12, v2

    goto :goto_1

    :cond_1
    move/from16 v12, p9

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const v1, -0x7b7b7c

    move v13, v1

    goto :goto_2

    :cond_2
    move/from16 v13, p10

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v14, v0

    goto :goto_3

    :cond_3
    move/from16 v14, p11

    :goto_3
    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 210
    invoke-virtual/range {v3 .. v14}, Lio/legere/pdfiumandroid/PdfDocument;->renderPages(JIILjava/util/List;Ljava/util/List;Ljava/util/List;ZZII)V

    return-void
.end method

.method public static synthetic renderPages$default(Lio/legere/pdfiumandroid/PdfDocument;Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZIIILjava/lang/Object;)Z
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const v1, -0x7b7b7c

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p8

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    .line 261
    invoke-virtual/range {v3 .. v11}, Lio/legere/pdfiumandroid/PdfDocument;->renderPages(Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZII)Z

    move-result v0

    return v0
.end method

.method public static synthetic saveAsCopy$default(Lio/legere/pdfiumandroid/PdfDocument;Lio/legere/pdfiumandroid/PdfWriteCallback;IILjava/lang/Object;)Z
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    .line 427
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->saveAsCopy(Lio/legere/pdfiumandroid/PdfWriteCallback;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 442
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 442
    monitor-exit v0

    return-void

    .line 444
    :cond_0
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfDocument;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PdfDocument.close"

    invoke-virtual {v1, v2, v3}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 445
    iput-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    .line 446
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeCloseDocument(J)V

    .line 447
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    const/4 v1, 0x0

    .line 448
    iput-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 449
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/legere/pdfiumandroid/PdfiumSource;->close()V

    .line 450
    :cond_2
    iput-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    .line 451
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final deletePage(I)V
    .locals 3

    .line 166
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfDocument;->nativeDeletePage(JI)V

    .line 169
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDocumentMeta()Lio/legere/pdfiumandroid/PdfDocument$Meta;
    .locals 5

    .line 313
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 314
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/legere/pdfiumandroid/PdfDocument$Meta;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/PdfDocument$Meta;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit v0

    return-object v1

    .line 315
    :cond_0
    :try_start_1
    new-instance v1, Lio/legere/pdfiumandroid/PdfDocument$Meta;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/PdfDocument$Meta;-><init>()V

    .line 316
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Title"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setTitle(Ljava/lang/String;)V

    .line 317
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Author"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setAuthor(Ljava/lang/String;)V

    .line 318
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Subject"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setSubject(Ljava/lang/String;)V

    .line 319
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Keywords"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setKeywords(Ljava/lang/String;)V

    .line 320
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Creator"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setCreator(Ljava/lang/String;)V

    .line 321
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Producer"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setProducer(Ljava/lang/String;)V

    .line 322
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "CreationDate"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setCreationDate(Ljava/lang/String;)V

    .line 323
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "ModDate"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setModDate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMNativeDocPtr()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    return-wide v0
.end method

.method public final getPageCharCounts()[I
    .locals 3

    .line 129
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v0

    return-object v1

    .line 131
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetPageCharCounts(J)[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageCount()I
    .locals 3

    .line 118
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 118
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetPageCount(J)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final getSource()Lio/legere/pdfiumandroid/PdfiumSource;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    return-object v0
.end method

.method public final getTableOfContents()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 358
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 359
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit v0

    return-object v1

    .line 361
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 362
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetFirstChildBookmark(JJ)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    const-wide/16 v8, 0x1

    move-object v2, p0

    move-object v3, v1

    move-wide v4, v6

    move-wide v6, v8

    .line 364
    invoke-direct/range {v2 .. v7}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isClosed()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    return v0
.end method

.method public final openPage(I)Lio/legere/pdfiumandroid/PdfPage;
    .locals 11

    .line 143
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V

    .line 149
    new-instance v2, Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getPagePtr()J

    move-result-wide v7

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v0

    return-object v2

    .line 154
    :cond_0
    :try_start_1
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v3, v4, p1}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPage(JI)J

    move-result-wide v8

    .line 155
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    invoke-direct {v4, v8, v9, v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;-><init>(JI)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Lio/legere/pdfiumandroid/PdfPage;

    iget-object v10, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v5, v1

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit v0

    return-object v1

    .line 144
    :cond_1
    :try_start_2
    const-string p1, "Already closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v0

    throw p1
.end method

.method public final openPages(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfPage;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-object p1

    .line 186
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPages(JII)[J

    move-result-object v1

    .line 188
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-wide v5, v1, v4

    if-gt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 494
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-wide v7, v1, v3

    .line 192
    new-instance v10, Lio/legere/pdfiumandroid/PdfPage;

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v4, v10

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V

    .line 495
    invoke-interface {p2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 496
    :cond_2
    check-cast p2, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final openTextPage(Lio/legere/pdfiumandroid/PdfPage;)Lio/legere/pdfiumandroid/PdfTextPage;
    .locals 13
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PdfPage.openTextPage instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.openTextPage()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V

    .line 384
    new-instance v2, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v6

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getPagePtr()J

    move-result-wide v7

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit v0

    return-object v2

    .line 388
    :cond_0
    :try_start_1
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPagePtr()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadTextPage(JJ)J

    move-result-wide v10

    .line 389
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    invoke-direct {v4, v10, v11, v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;-><init>(JI)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v9

    iget-object v12, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    monitor-exit v0

    return-object v1

    .line 379
    :cond_1
    :try_start_2
    const-string p1, "Already closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 378
    monitor-exit v0

    throw p1
.end method

.method public final openTextPages(II)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfTextPage;",
            ">;"
        }
    .end annotation

    .line 405
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 406
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit v0

    return-object p1

    .line 408
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPages(JII)[J

    move-result-object p2

    .line 535
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 537
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v8, p2, v3

    add-int/lit8 v11, v4, 0x1

    .line 410
    new-instance v12, Lio/legere/pdfiumandroid/PdfTextPage;

    add-int v7, p1, v4

    .line 414
    iget-object v10, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v5, v12

    move-object v6, p0

    .line 410
    invoke-direct/range {v5 .. v10}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V

    .line 538
    invoke-interface {v1, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto :goto_0

    .line 539
    :cond_1
    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final renderPages(JIILjava/util/List;Ljava/util/List;Ljava/util/List;ZZII)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfPage;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Matrix;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;ZZII)V"
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const-string v3, "pages"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "matrices"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clipRects"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    move-object/from16 v15, p0

    .line 223
    :try_start_0
    iget-boolean v4, v15, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 497
    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/legere/pdfiumandroid/PdfPage;

    .line 223
    invoke-virtual {v7}, Lio/legere/pdfiumandroid/PdfPage;->isClosed$pdfiumandroid_release()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    invoke-static {v4}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 222
    monitor-exit v3

    return-void

    .line 225
    :cond_4
    :try_start_1
    check-cast v1, Ljava/lang/Iterable;

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 501
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 502
    check-cast v7, Landroid/graphics/Matrix;

    const/16 v10, 0x9

    .line 227
    new-array v10, v10, [F

    .line 228
    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 230
    new-array v7, v8, [Ljava/lang/Float;

    aget v8, v10, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    .line 231
    aget v8, v10, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x5

    .line 232
    aget v8, v10, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    .line 229
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 503
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 505
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 500
    check-cast v4, Ljava/util/Collection;

    .line 234
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v10

    .line 236
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .line 506
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 507
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 508
    check-cast v4, Landroid/graphics/RectF;

    const/4 v7, 0x4

    .line 239
    new-array v7, v7, [Ljava/lang/Float;

    iget v11, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v6

    .line 240
    iget v11, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v5

    .line 241
    iget v11, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v9

    .line 242
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v8

    .line 238
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 509
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    .line 511
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 506
    check-cast v2, Ljava/util/Collection;

    .line 244
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v11

    .line 246
    check-cast v0, Ljava/lang/Iterable;

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 514
    check-cast v2, Lio/legere/pdfiumandroid/PdfPage;

    .line 246
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfPage;->getPagePtr()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 514
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 515
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 512
    check-cast v1, Ljava/util/Collection;

    .line 246
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    .line 245
    invoke-direct/range {v4 .. v15}, Lio/legere/pdfiumandroid/PdfDocument;->nativeRenderPagesWithMatrix([JJII[F[FZZII)V

    .line 257
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final renderPages(Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZII)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfPage;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Matrix;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;ZZII)Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "surface"

    move-object v6, p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pages"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "matrices"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clipRects"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object v3, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    move-object v13, p0

    .line 272
    :try_start_0
    iget-boolean v4, v13, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 516
    instance-of v8, v4, Ljava/util/Collection;

    if-eqz v8, :cond_0

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/legere/pdfiumandroid/PdfPage;

    .line 272
    invoke-virtual {v8}, Lio/legere/pdfiumandroid/PdfPage;->isClosed$pdfiumandroid_release()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    invoke-static {v4}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 271
    monitor-exit v3

    return v7

    .line 274
    :cond_4
    :try_start_1
    check-cast v1, Ljava/lang/Iterable;

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 520
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 521
    check-cast v8, Landroid/graphics/Matrix;

    const/16 v11, 0x9

    .line 276
    new-array v11, v11, [F

    .line 277
    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 279
    new-array v8, v9, [Ljava/lang/Float;

    aget v9, v11, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    .line 280
    aget v9, v11, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x5

    .line 281
    aget v9, v11, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    .line 278
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 522
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 524
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 519
    check-cast v4, Ljava/util/Collection;

    .line 283
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v1

    .line 285
    check-cast v2, Ljava/lang/Iterable;

    .line 525
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 526
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 527
    check-cast v8, Landroid/graphics/RectF;

    const/4 v11, 0x4

    .line 288
    new-array v11, v11, [Ljava/lang/Float;

    iget v12, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v7

    .line 289
    iget v12, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v5

    .line 290
    iget v12, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v10

    .line 291
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v11, v9

    .line 287
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 528
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    .line 530
    :cond_6
    check-cast v4, Ljava/util/List;

    .line 525
    check-cast v4, Ljava/util/Collection;

    .line 293
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v8

    .line 295
    check-cast v0, Ljava/lang/Iterable;

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 532
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 533
    check-cast v4, Lio/legere/pdfiumandroid/PdfPage;

    .line 295
    invoke-virtual {v4}, Lio/legere/pdfiumandroid/PdfPage;->getPagePtr()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 533
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 534
    :cond_7
    check-cast v2, Ljava/util/List;

    .line 531
    check-cast v2, Ljava/util/Collection;

    .line 295
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v7, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 294
    invoke-direct/range {v4 .. v12}, Lio/legere/pdfiumandroid/PdfDocument;->nativeRenderPagesSurfaceWithMatrix([JLandroid/view/Surface;[F[FZZII)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final saveAsCopy(Lio/legere/pdfiumandroid/PdfWriteCallback;I)Z
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 432
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 431
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 433
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeSaveAsCopy(JLio/legere/pdfiumandroid/PdfWriteCallback;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public final setSource(Lio/legere/pdfiumandroid/PdfiumSource;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    return-void
.end method
