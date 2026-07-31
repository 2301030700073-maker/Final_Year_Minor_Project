.class public final Lio/legere/pdfiumandroid/PdfTextPage;
.super Ljava/lang/Object;
.source "PdfTextPage.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfTextPage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfTextPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTextPage.kt\nio/legere/pdfiumandroid/PdfTextPage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1#2:506\n1803#3,3:507\n*S KotlinDebug\n*F\n+ 1 PdfTextPage.kt\nio/legere/pdfiumandroid/PdfTextPage\n*L\n356#1:507,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 ?2\u00020\u0001:\u0001?B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u0017\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0005J\u0010\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001f\u001a\u00020\u0005J&\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020$J\u0016\u0010(\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005J\u0010\u0010*\u001a\u0004\u0018\u00010!2\u0006\u0010+\u001a\u00020\u0005J\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010-2\u0006\u0010/\u001a\u000200J\u0018\u00101\u001a\u0004\u0018\u00010\u00192\u0006\u00102\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u00103\u001a\u00020$2\u0006\u00104\u001a\u00020\u0005J&\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u00020\u00192\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020:092\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010;\u001a\u00020<J\u0008\u0010=\u001a\u00020>H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfTextPage;",
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
        "getPageMap",
        "()Ljava/util/Map;",
        "isClosed",
        "",
        "textPageCountChars",
        "textPageGetTextLegacy",
        "",
        "startIndex",
        "length",
        "textPageGetText",
        "textPageGetUnicode",
        "",
        "index",
        "textPageGetCharBox",
        "Landroid/graphics/RectF;",
        "textPageGetCharIndexAtPos",
        "x",
        "",
        "y",
        "xTolerance",
        "yTolerance",
        "textPageCountRects",
        "count",
        "textPageGetRect",
        "rectIndex",
        "textPageGetRectsForRanges",
        "",
        "Lio/legere/pdfiumandroid/WordRangeRect;",
        "wordRanges",
        "",
        "textPageGetBoundedText",
        "rect",
        "getFontSize",
        "charIndex",
        "findStart",
        "Lio/legere/pdfiumandroid/FindResult;",
        "findWhat",
        "flags",
        "",
        "Lio/legere/pdfiumandroid/FindFlags;",
        "loadWebLink",
        "Lio/legere/pdfiumandroid/PdfPageLink;",
        "close",
        "",
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
.field public static final Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

.field private static final TAG:Ljava/lang/String;


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

    new-instance v0, Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 388
    const-class v0, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    .line 34
    iput p2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    .line 35
    iput-wide p3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 36
    iput-object p5, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$nativeCloseTextPage(J)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeCloseTextPage(J)V

    return-void
.end method

.method public static final synthetic access$nativeFindStart(JLjava/lang/String;II)J
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeFindStart(JLjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nativeGetFontSize(JI)D
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeGetFontSize(JI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nativeLoadWebLink(J)J
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeLoadWebLink(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nativeTextCountChars(J)I
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextCountChars(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextCountRects(JII)I
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextCountRects(JII)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextGetBoundedText(JDDDD[S)I
    .locals 0

    .line 31
    invoke-static/range {p0 .. p10}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetBoundedText(JDDDD[S)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextGetCharBox(JI)[D
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetCharBox(JI)[D

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeTextGetCharIndexAtPos(JDDDD)I
    .locals 0

    .line 31
    invoke-static/range {p0 .. p9}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetCharIndexAtPos(JDDDD)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextGetRect(JI)[D
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetRect(JI)[D

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeTextGetRects(J[I)[D
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetRects(J[I)[D

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeTextGetText(JII[S)I
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetText(JII[S)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextGetTextByteArray(JII[B)I
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetTextByteArray(JII[B)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeTextGetUnicode(JI)I
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetUnicode(JI)I

    move-result p0

    return p0
.end method

.method private static final native nativeCloseTextPage(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeFindStart(JLjava/lang/String;II)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeGetFontSize(JI)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeLoadWebLink(J)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextCountChars(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextCountRects(JII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetBoundedText(JDDDD[S)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetCharBox(JI)[D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetCharIndexAtPos(JDDDD)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetRect(JI)[D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetRects(J[I)[D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetText(JII[S)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetTextByteArray(JII[B)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeTextGetUnicode(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 371
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 372
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    .line 371
    monitor-exit v0

    return-void

    .line 374
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v1, :cond_4

    .line 375
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 376
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    monitor-exit v0

    return-void

    .line 379
    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iput-boolean v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    .line 382
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeCloseTextPage(Lio/legere/pdfiumandroid/PdfTextPage$Companion;J)V

    .line 374
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final findStart(Ljava/lang/String;Ljava/util/Set;I)Lio/legere/pdfiumandroid/FindResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lio/legere/pdfiumandroid/FindFlags;",
            ">;I)",
            "Lio/legere/pdfiumandroid/FindResult;"
        }
    .end annotation

    const-string v0, "findWhat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

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

    .line 354
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 356
    :cond_2
    :try_start_1
    check-cast p2, Ljava/lang/Iterable;

    .line 508
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v7, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/FindFlags;

    .line 356
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/FindFlags;->getValue()I

    move-result v1

    or-int/2addr v7, v1

    goto :goto_2

    .line 357
    :cond_3
    new-instance p2, Lio/legere/pdfiumandroid/FindResult;

    sget-object v3, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-object v6, p1

    move v8, p3

    invoke-static/range {v3 .. v8}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeFindStart(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JLjava/lang/String;II)J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lio/legere/pdfiumandroid/FindResult;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDoc()Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    return-object v0
.end method

.method public final getFontSize(I)D
    .locals 4

    .line 343
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 344
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    .line 343
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 345
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeGetFontSize(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JI)D

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageIndex()I
    .locals 1

    .line 34
    iget v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    return v0
.end method

.method public final getPageMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getPagePtr()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    return-wide v0
.end method

.method public final loadWebLink()Lio/legere/pdfiumandroid/PdfPageLink;
    .locals 3

    .line 362
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v0, v1, v2}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeLoadWebLink(Lio/legere/pdfiumandroid/PdfTextPage$Companion;J)J

    move-result-wide v0

    .line 364
    new-instance v2, Lio/legere/pdfiumandroid/PdfPageLink;

    invoke-direct {v2, v0, v1}, Lio/legere/pdfiumandroid/PdfPageLink;-><init>(J)V

    return-object v2

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final textPageCountChars()I
    .locals 4

    .line 47
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 48
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    .line 47
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 49
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextCountChars(Lio/legere/pdfiumandroid/PdfTextPage$Companion;J)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final textPageCountRects(II)I
    .locals 4

    .line 217
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 218
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 220
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 221
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 220
    invoke-static {v1, v2, v3, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextCountRects(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JII)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 228
    :try_start_2
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Exception throw from native"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 226
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "mContext may be null"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 230
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 218
    :cond_0
    :try_start_3
    const-string p1, "Already closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 217
    monitor-exit v0

    throw p1
.end method

.method public final textPageGetBoundedText(Landroid/graphics/RectF;I)Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "rect"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v2, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 306
    :try_start_0
    iget-boolean v3, v1, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, v1, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 305
    monitor-exit v2

    return-object v6

    :cond_2
    add-int/lit8 v3, p2, 0x1

    .line 308
    :try_start_1
    new-array v3, v3, [S

    .line 310
    sget-object v7, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 311
    iget-wide v8, v1, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 312
    iget v10, v0, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    .line 313
    iget v12, v0, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    .line 314
    iget v14, v0, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 315
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    .line 310
    invoke-static/range {v7 .. v18}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetBoundedText(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JDDDD[S)I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x2

    .line 318
    new-array v4, v4, [B

    .line 319
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 320
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_3

    .line 322
    aget-short v8, v3, v7

    .line 323
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 325
    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string v3, "UTF_16LE"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 330
    :try_start_2
    sget-object v3, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v4, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v5, "Exception throw from native"

    invoke-virtual {v3, v4, v0, v5}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 327
    sget-object v3, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v4, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v5, "mContext may be null"

    invoke-virtual {v3, v4, v0, v5}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :goto_3
    monitor-exit v2

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final textPageGetCharBox(I)Landroid/graphics/RectF;
    .locals 7

    .line 152
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 152
    monitor-exit v0

    return-object v4

    .line 155
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v5, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v5, v6, p1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetCharBox(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JI)[D

    move-result-object p1

    .line 158
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 159
    aget-wide v5, p1, v2

    double-to-float v2, v5

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 160
    aget-wide v2, p1, v3

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    .line 161
    aget-wide v2, p1, v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x3

    .line 162
    aget-wide v2, p1, v2

    double-to-float p1, v2

    iput p1, v1, Landroid/graphics/RectF;->top:F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p1

    .line 167
    :try_start_2
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {v1, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 165
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {v1, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 169
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final textPageGetCharIndexAtPos(DDDD)I
    .locals 15

    move-object v1, p0

    .line 189
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 190
    :try_start_0
    iget-boolean v0, v1, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 189
    monitor-exit v2

    return v3

    .line 192
    :cond_2
    :try_start_1
    sget-object v4, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 193
    iget-wide v5, v1, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    .line 192
    invoke-static/range {v4 .. v14}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetCharIndexAtPos(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JDDDD)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    sget-object v4, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v5, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v6, "Exception throw from native"

    invoke-virtual {v4, v5, v0, v6}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final textPageGetRect(I)Landroid/graphics/RectF;
    .locals 7

    .line 242
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 242
    monitor-exit v0

    return-object v4

    .line 245
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v5, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v5, v6, p1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetRect(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JI)[D

    move-result-object p1

    .line 246
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 247
    aget-wide v5, p1, v2

    double-to-float v2, v5

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 248
    aget-wide v2, p1, v3

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x2

    .line 249
    aget-wide v2, p1, v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x3

    .line 250
    aget-wide v2, p1, v2

    double-to-float p1, v2

    iput p1, v1, Landroid/graphics/RectF;->bottom:F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 256
    :try_start_2
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {v1, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 253
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {v1, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :goto_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final textPageGetRectsForRanges([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/WordRangeRect;",
            ">;"
        }
    .end annotation

    const-string v0, "wordRanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 271
    monitor-exit v0

    return-object v3

    .line 273
    :cond_2
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-static {v1, v4, v5, p1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetRects(Lio/legere/pdfiumandroid/PdfTextPage$Companion;J[I)[D

    move-result-object p1

    if-eqz p1, :cond_4

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 276
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v3

    if-ltz v3, :cond_3

    .line 277
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 278
    aget-wide v5, p1, v2

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    add-int/lit8 v5, v2, 0x1

    .line 279
    aget-wide v5, p1, v5

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    add-int/lit8 v5, v2, 0x2

    .line 280
    aget-wide v5, p1, v5

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    add-int/lit8 v5, v2, 0x3

    .line 281
    aget-wide v5, p1, v5

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v5, v2, 0x4

    .line 282
    aget-wide v5, p1, v5

    double-to-int v5, v5

    add-int/lit8 v6, v2, 0x5

    .line 283
    aget-wide v6, p1, v6

    double-to-int v6, v6

    .line 284
    new-instance v7, Lio/legere/pdfiumandroid/WordRangeRect;

    invoke-direct {v7, v5, v6, v4}, Lio/legere/pdfiumandroid/WordRangeRect;-><init>(IILandroid/graphics/RectF;)V

    .line 285
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x6

    goto :goto_2

    .line 271
    :cond_3
    monitor-exit v0

    return-object v1

    .line 290
    :cond_4
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final textPageGetText(II)Ljava/lang/String;
    .locals 9

    .line 103
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 103
    monitor-exit v0

    return-object v2

    :cond_2
    mul-int/lit8 v1, p2, 0x2

    .line 106
    :try_start_1
    new-array v1, v1, [B

    .line 108
    sget-object v3, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 109
    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move v6, p1

    move v7, p2

    move-object v8, v1

    .line 108
    invoke-static/range {v3 .. v8}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetTextByteArray(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JII[B)I

    move-result p1

    if-gtz p1, :cond_3

    .line 116
    const-string p1, ""
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v0

    return-object p1

    .line 118
    :cond_3
    :try_start_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string p2, "UTF_16LE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    monitor-exit v0

    return-object p2

    :catch_0
    move-exception p1

    .line 122
    :try_start_3
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {p2, v1, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 120
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {p2, v1, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final textPageGetTextLegacy(II)Ljava/lang/String;
    .locals 11

    .line 65
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 65
    monitor-exit v0

    return-object v4

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 68
    :try_start_1
    new-array v1, v1, [S

    .line 70
    sget-object v5, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 71
    iget-wide v6, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move v8, p1

    move v9, p2

    move-object v10, v1

    .line 70
    invoke-static/range {v5 .. v10}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetText(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JII[S)I

    move-result p1

    if-gtz p1, :cond_3

    .line 78
    const-string p1, ""
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v0

    return-object p1

    :cond_3
    sub-int/2addr p1, v3

    mul-int/lit8 p2, p1, 0x2

    .line 81
    :try_start_2
    new-array p2, p2, [B

    .line 82
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 83
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v2, p1, :cond_4

    .line 85
    aget-short v5, v1, v2

    .line 86
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    :cond_4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string v1, "UTF_16LE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p1

    .line 92
    :try_start_3
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Exception throw from native"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 90
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "mContext may be null"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :goto_3
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final textPageGetUnicode(I)C
    .locals 4

    .line 135
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 138
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 137
    invoke-static {v1, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;->access$nativeTextGetUnicode(Lio/legere/pdfiumandroid/PdfTextPage$Companion;JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-char p1, p1

    .line 135
    monitor-exit v0

    return p1

    .line 136
    :cond_0
    :try_start_1
    const-string p1, "Already closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 135
    monitor-exit v0

    throw p1
.end method
