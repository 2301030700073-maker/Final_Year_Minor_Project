.class public final Lio/legere/pdfiumandroid/PdfPageLink$Companion;
.super Ljava/lang/Object;
.source "PdfPageLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfPageLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0083 J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0083 J)\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0083 J\u0019\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000cH\u0083 J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000cH\u0083 J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000cH\u0083 R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfPageLink$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "nativeClosePageLink",
        "",
        "pageLinkPtr",
        "",
        "nativeCountWebLinks",
        "",
        "nativeGetURL",
        "index",
        "count",
        "result",
        "",
        "nativeCountRects",
        "nativeGetRect",
        "",
        "linkIndex",
        "rectIndex",
        "nativeGetTextRange",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nativeClosePageLink(Lio/legere/pdfiumandroid/PdfPageLink$Companion;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeClosePageLink(J)V

    return-void
.end method

.method public static final synthetic access$nativeCountRects(Lio/legere/pdfiumandroid/PdfPageLink$Companion;JI)I
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeCountRects(JI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeCountWebLinks(Lio/legere/pdfiumandroid/PdfPageLink$Companion;J)I
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeCountWebLinks(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeGetRect(Lio/legere/pdfiumandroid/PdfPageLink$Companion;JII)[F
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeGetRect(JII)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetTextRange(Lio/legere/pdfiumandroid/PdfPageLink$Companion;JI)[I
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeGetTextRange(JI)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nativeGetURL(Lio/legere/pdfiumandroid/PdfPageLink$Companion;JII[B)I
    .locals 0

    .line 76
    invoke-direct/range {p0 .. p5}, Lio/legere/pdfiumandroid/PdfPageLink$Companion;->nativeGetURL(JII[B)I

    move-result p0

    return p0
.end method

.method private final nativeClosePageLink(J)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeClosePageLink(J)V

    return-void
.end method

.method private final nativeCountRects(JI)I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeCountRects(JI)I

    move-result p1

    return p1
.end method

.method private final nativeCountWebLinks(J)I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeCountWebLinks(J)I

    move-result p1

    return p1
.end method

.method private final nativeGetRect(JII)[F
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeGetRect(JII)[F

    move-result-object p1

    return-object p1
.end method

.method private final nativeGetTextRange(JI)[I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeGetTextRange(JI)[I

    move-result-object p1

    return-object p1
.end method

.method private final nativeGetURL(JII[B)I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lio/legere/pdfiumandroid/PdfPageLink;->access$nativeGetURL(JII[B)I

    move-result p1

    return p1
.end method
