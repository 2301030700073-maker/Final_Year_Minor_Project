.class final Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PdfDocumentKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->renderPages(Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZIILkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.legere.pdfiumandroid.suspend.PdfDocumentKt"
    f = "PdfDocumentKt.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xac,
        0x59
    }
    m = "renderPages"
    n = {
        "surface",
        "pages",
        "matrices",
        "clipRects",
        "renderCoroutinesDispatcher",
        "$this$withLock_u24default$iv",
        "renderAnnot",
        "textMask",
        "canvasColor",
        "pageBackgroundColor",
        "$i$f$withLock",
        "surface",
        "pages",
        "matrices",
        "clipRects",
        "renderCoroutinesDispatcher",
        "$this$withLock_u24default$iv",
        "renderAnnot",
        "textMask",
        "canvasColor",
        "pageBackgroundColor",
        "$i$f$withLock",
        "$i$a$-withLock$default-PdfDocumentKt$renderPages$2"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "Z$1",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "Z$1",
        "I$0",
        "I$1",
        "I$2",
        "I$3"
    }
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;->label:I

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$renderPages$1;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    const/4 v9, 0x0

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->renderPages(Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZIILkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
