.class public final Lio/legere/pdfiumandroid/PdfiumCore$Companion;
.super Ljava/lang/Object;
.source "PdfiumCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfiumCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfiumCore$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "lock",
        "getLock",
        "()Ljava/lang/Object;",
        "surfaceMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "getSurfaceMutex",
        "()Lkotlinx/coroutines/sync/Mutex;",
        "isReady",
        "Lio/legere/pdfiumandroid/util/InitLock;",
        "()Lio/legere/pdfiumandroid/util/InitLock;",
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

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLock()Ljava/lang/Object;
    .locals 1

    .line 576
    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->access$getLock$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaceMutex()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 578
    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->access$getSurfaceMutex$cp()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    return-object v0
.end method

.method public final isReady()Lio/legere/pdfiumandroid/util/InitLock;
    .locals 1

    .line 580
    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->access$isReady$cp()Lio/legere/pdfiumandroid/util/InitLock;

    move-result-object v0

    return-object v0
.end method
