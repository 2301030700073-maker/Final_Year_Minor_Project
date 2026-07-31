.class public Lorg/wonday/pdf/PdfView;
.super Lcom/github/barteksc/pdfviewer/PDFView;
.source "PdfView.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnTapListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;
.implements Lcom/github/barteksc/pdfviewer/link/LinkHandler;


# instance fields
.field private autoSpacing:Z

.field private bookmarks:I

.field private enableAnnotationRendering:Z

.field private enableAntialiasing:Z

.field private enableDoubleTapZoom:Z

.field private enablePaging:Z

.field private enableRTL:Z

.field private fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private horizontal:Z

.field private lastPageHeight:F

.field private lastPageWidth:F

.field private maxScale:F

.field private minScale:F

.field private oldH:I

.field private oldW:I

.field private originalWidth:F

.field private page:I

.field private pageFling:Z

.field private pageSnap:Z

.field private pagesArrays:[I

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private scale:F

.field private scrollEnabled:Z

.field private singlePage:Z

.field private spacing:I

.field private totalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    iput v0, p0, Lorg/wonday/pdf/PdfView;->scale:F

    .line 66
    iput v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 67
    iput v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    const/16 v0, 0xa

    .line 69
    iput v0, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    .line 71
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    .line 72
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    .line 73
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    .line 75
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->enablePaging:Z

    .line 76
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 77
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 78
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    .line 79
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v0, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 80
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    .line 81
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    .line 82
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->enableRTL:Z

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    .line 85
    iput p1, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    .line 86
    iput p1, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    .line 89
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    .line 90
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    .line 92
    iput p2, p0, Lorg/wonday/pdf/PdfView;->totalPages:I

    .line 94
    iput p2, p0, Lorg/wonday/pdf/PdfView;->bookmarks:I

    return-void
.end method

.method private getURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 517
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 520
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private handlePage(I)V
    .locals 0

    .line 509
    invoke-virtual {p0, p1}, Lorg/wonday/pdf/PdfView;->jumpTo(I)V

    return-void
.end method

.method private handleUri(Ljava/lang/String;)V
    .locals 4

    .line 484
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "linkPressed|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 488
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 489
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 491
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 494
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onPageChanged$0(Lcom/facebook/react/uimanager/events/EventDispatcher;Lorg/wonday/pdf/events/TopChangeEvent;)V
    .locals 0

    .line 117
    invoke-interface {p0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private static setTouchesEnabled(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance v0, Lorg/wonday/pdf/PdfView$1;

    invoke-direct {v0}, Lorg/wonday/pdf/PdfView$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 542
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 543
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 544
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 545
    invoke-static {v1, p1}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setTouchesEnabled(Z)V
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private showLog(Ljava/lang/String;)V
    .locals 1

    .line 513
    const-string v0, "PdfView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawPdf()V
    .locals 5

    .line 291
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    iget v1, p0, Lorg/wonday/pdf/PdfView;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "drawPdf path:%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->showLog(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/high16 v1, 0x10000000

    .line 296
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 297
    new-instance v1, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v1, v0}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 298
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v0

    iput v0, p0, Lorg/wonday/pdf/PdfView;->totalPages:I

    .line 299
    new-array v1, v0, [I

    .line 300
    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->enableRTL:Z

    if-eqz v3, :cond_2

    .line 301
    iget v3, p0, Lorg/wonday/pdf/PdfView;->page:I

    if-lez v3, :cond_0

    .line 302
    iget v3, p0, Lorg/wonday/pdf/PdfView;->bookmarks:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/wonday/pdf/PdfView;->page:I

    goto :goto_0

    .line 304
    :cond_0
    iput v0, p0, Lorg/wonday/pdf/PdfView;->page:I

    :goto_0
    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_1

    .line 307
    iget v3, p0, Lorg/wonday/pdf/PdfView;->totalPages:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 309
    :cond_1
    iput-object v1, p0, Lorg/wonday/pdf/PdfView;->pagesArrays:[I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lorg/wonday/pdf/PdfView;->pagesArrays:[I

    .line 313
    iget v0, p0, Lorg/wonday/pdf/PdfView;->bookmarks:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/wonday/pdf/PdfView;->page:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 316
    const-string v1, "error"

    const-string v3, "error read PDF"

    invoke-static {v1, v3, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 323
    iget v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMinZoom(F)V

    .line 324
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMaxZoom(F)V

    .line 325
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    iget v1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMidZoom(F)V

    .line 326
    iget v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 327
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    .line 331
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_4
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->getURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    .line 345
    :goto_3
    iget-object v1, p0, Lorg/wonday/pdf/PdfView;->pagesArrays:[I

    .line 346
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget v3, p0, Lorg/wonday/pdf/PdfView;->page:I

    .line 347
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    .line 348
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 349
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 350
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 351
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 352
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 353
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget v3, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    .line 354
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-object v3, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    .line 356
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-object v3, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 357
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    .line 358
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 359
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 360
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v4

    .line 361
    :goto_4
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_5

    :cond_6
    move v3, v4

    .line 362
    :goto_5
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v3, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    .line 363
    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 364
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 366
    iget-boolean v1, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    if-eqz v1, :cond_7

    .line 367
    iget v1, p0, Lorg/wonday/pdf/PdfView;->page:I

    sub-int/2addr v1, v2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 368
    invoke-direct {p0, v4}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Z)V

    goto :goto_6

    .line 370
    :cond_7
    invoke-virtual {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 373
    :goto_6
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    :cond_8
    return-void
.end method

.method public handleLinkEvent(Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;)V
    .locals 2

    .line 471
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lio/legere/pdfiumandroid/PdfDocument$Link;

    move-result-object v0

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument$Link;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lio/legere/pdfiumandroid/PdfDocument$Link;

    move-result-object p1

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument$Link;->getDestPageIdx()Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->handleUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/wonday/pdf/PdfView;->handlePage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadComplete(I)V
    .locals 6

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->getPageSize(I)Landroid/util/SizeF;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    .line 153
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    .line 155
    iget v2, p0, Lorg/wonday/pdf/PdfView;->scale:F

    invoke-virtual {p0, v2}, Lorg/wonday/pdf/PdfView;->zoomTo(F)V

    .line 156
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadComplete|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "message"

    invoke-interface {v2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 163
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 164
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 166
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->onAttachedToWindow()V

    .line 286
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->drawPdf()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 184
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Password required or incorrect password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "message"

    if-eqz v1, :cond_0

    .line 186
    const-string p1, "error|Password required or incorrect password."

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error|"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 192
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 193
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 195
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_1
    return-void
.end method

.method public onLayerDrawn(Landroid/graphics/Canvas;FFI)V
    .locals 3

    .line 251
    iget p1, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-nez p1, :cond_0

    .line 252
    iput p2, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    .line 255
    :cond_0
    iget p1, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    cmpl-float v0, p1, p4

    if-lez v0, :cond_2

    iget v0, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    cmpl-float p4, v0, p4

    if-lez p4, :cond_2

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    cmpl-float p1, p3, v0

    if-eqz p1, :cond_2

    .line 257
    :cond_1
    iget p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 258
    iget p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    .line 260
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 261
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "scaleChanged|"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    div-float v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "message"

    invoke-interface {p1, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 263
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p4

    .line 264
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 266
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p4, :cond_2

    .line 269
    invoke-interface {p4, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 279
    :cond_2
    iput p2, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    .line 280
    iput p3, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    return-void
.end method

.method public onPageChanged(II)V
    .locals 3

    add-int/lit8 p1, p1, 0x1

    .line 104
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    .line 105
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s / %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->showLog(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pageChanged|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "message"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 111
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 112
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p2

    .line 114
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v2

    invoke-direct {v1, p2, v2, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 117
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lorg/wonday/pdf/events/TopChangeEvent;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IF)V
    .locals 0

    .line 213
    iget p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 214
    iget p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 142
    :cond_0
    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    if-gtz p3, :cond_1

    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    if-lez p3, :cond_2

    .line 143
    :cond_1
    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    iget p4, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->onSizeChanged(IIII)V

    .line 144
    iput p1, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    .line 145
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    :cond_2
    return-void
.end method

.method public onTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 225
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pageSingleTap|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/wonday/pdf/PdfView;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 229
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 230
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 232
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setEnableAnnotationRendering(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    return-void
.end method

.method public setEnableAntialiasing(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    return-void
.end method

.method public setEnableDoubleTapZoom(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    return-void
.end method

.method public setEnablePaging(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enablePaging:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 436
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 437
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 439
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 440
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 441
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    :goto_0
    return-void
.end method

.method public setEnableRTL(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableRTL:Z

    return-void
.end method

.method public setFitPolicy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 456
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->BOTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    goto :goto_0

    .line 451
    :cond_0
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->HEIGHT:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    goto :goto_0

    .line 448
    :cond_1
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    :goto_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 405
    iput p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 401
    iput p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 387
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    .line 388
    iput p1, p0, Lorg/wonday/pdf/PdfView;->bookmarks:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 397
    iput p1, p0, Lorg/wonday/pdf/PdfView;->scale:F

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    return-void
.end method

.method public setSinglePage(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 417
    iput p1, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    return-void
.end method
