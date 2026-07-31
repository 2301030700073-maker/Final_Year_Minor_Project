.class public final Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;
.super Ljava/lang/Object;
.source "PdfTextPageKt.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cJ \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J.\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010\"\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u0006\u0010&\u001a\u00020\'H\u0086@\u00a2\u0006\u0002\u0010(J \u0010)\u001a\u0004\u0018\u00010\u000e2\u0006\u0010*\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010+J\u0016\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J.\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\u000e2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u000203022\u0006\u0010\u000f\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u00104J\u000e\u00105\u001a\u000206H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0008\u00107\u001a\u000208H\u0016J\u0006\u00109\u001a\u00020:R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
        "Ljava/io/Closeable;",
        "page",
        "Lio/legere/pdfiumandroid/PdfTextPage;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfTextPage;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "getPage",
        "()Lio/legere/pdfiumandroid/PdfTextPage;",
        "textPageCountChars",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "textPageGetText",
        "",
        "startIndex",
        "length",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "textPageGetUnicode",
        "",
        "index",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "textPageGetCharBox",
        "Landroid/graphics/RectF;",
        "textPageGetCharIndexAtPos",
        "x",
        "",
        "y",
        "xTolerance",
        "yTolerance",
        "(DDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "textPageCountRects",
        "count",
        "textPageGetRect",
        "rectIndex",
        "textPageGetRectsForRanges",
        "",
        "Lio/legere/pdfiumandroid/WordRangeRect;",
        "wordRanges",
        "",
        "([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "textPageGetBoundedText",
        "rect",
        "(Landroid/graphics/RectF;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFontSize",
        "charIndex",
        "findStart",
        "Lio/legere/pdfiumandroid/suspend/FindResultKt;",
        "findWhat",
        "flags",
        "",
        "Lio/legere/pdfiumandroid/FindFlags;",
        "(Ljava/lang/String;Ljava/util/Set;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadWebLink",
        "Lio/legere/pdfiumandroid/suspend/PdfPageLinkKt;",
        "close",
        "",
        "safeClose",
        "",
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

.field private final page:Lio/legere/pdfiumandroid/PdfTextPage;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/PdfTextPage;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->page:Lio/legere/pdfiumandroid/PdfTextPage;

    .line 24
    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 143
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->page:Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfTextPage;->close()V

    return-void
.end method

.method public final findStart(Ljava/lang/String;Ljava/util/Set;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lio/legere/pdfiumandroid/FindFlags;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/FindResultKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$findStart$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$findStart$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;Ljava/lang/String;Ljava/util/Set;ILkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getFontSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$getFontSize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$getFontSize$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPage()Lio/legere/pdfiumandroid/PdfTextPage;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->page:Lio/legere/pdfiumandroid/PdfTextPage;

    return-object v0
.end method

.method public final loadWebLink(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfPageLinkKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$loadWebLink$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$loadWebLink$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final safeClose()Z
    .locals 4

    .line 148
    :try_start_0
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->page:Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfTextPage;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "PdfTextPageKt.safeClose"

    const-string v3, "PdfTextPageKt"

    invoke-virtual {v1, v3, v0, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final textPageCountChars(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 30
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageCountChars$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageCountChars$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageCountRects(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageCountRects$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageCountRects$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetBoundedText(Landroid/graphics/RectF;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetBoundedText$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetBoundedText$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;Landroid/graphics/RectF;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetCharBox(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetCharIndexAtPos(DDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v11, p0

    .line 70
    iget-object v0, v11, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;DDDDLkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p9

    invoke-static {v12, v13, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final textPageGetRect(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetRect$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetRect$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetRectsForRanges([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/WordRangeRect;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetRectsForRanges$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetRectsForRanges$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;[ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetText(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetText$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetText$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final textPageGetUnicode(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetUnicode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetUnicode$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
