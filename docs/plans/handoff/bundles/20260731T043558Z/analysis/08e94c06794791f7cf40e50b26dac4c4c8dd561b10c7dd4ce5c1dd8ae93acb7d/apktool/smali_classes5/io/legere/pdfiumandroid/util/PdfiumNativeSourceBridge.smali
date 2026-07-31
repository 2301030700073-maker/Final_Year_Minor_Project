.class public final Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;
.super Ljava/lang/Object;
.source "PdfiumNativeSourceBridge.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfiumNativeSourceBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfiumNativeSourceBridge.kt\nio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;",
        "",
        "source",
        "Lio/legere/pdfiumandroid/PdfiumSource;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfiumSource;)V",
        "buffer",
        "",
        "read",
        "",
        "position",
        "",
        "size",
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
.field private buffer:[B

.field private final source:Lio/legere/pdfiumandroid/PdfiumSource;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/PdfiumSource;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    return-void
.end method


# virtual methods
.method public final read(JJ)I
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_3

    long-to-int v0, p3

    .line 20
    :try_start_0
    iget-object v2, p0, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;->buffer:[B

    if-eqz v2, :cond_0

    .line 21
    array-length v3, v2

    int-to-long v3, v3

    cmp-long p3, v3, p3

    if-gez p3, :cond_1

    .line 22
    :cond_0
    new-array v2, v0, [B

    iput-object v2, p0, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;->buffer:[B

    .line 25
    :cond_1
    iget-object p3, p0, Lio/legere/pdfiumandroid/util/PdfiumNativeSourceBridge;->source:Lio/legere/pdfiumandroid/PdfiumSource;

    invoke-interface {p3, p1, p2, v2, v0}, Lio/legere/pdfiumandroid/PdfiumSource;->read(J[BI)I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 17
    :cond_3
    const-string p1, "size is too large"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string p3, "PdfiumNativeSourceBridge"

    const-string p4, "read failed"

    invoke-virtual {p2, p3, p1, p4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
