.class public final Lexpo/modules/image/events/OkHttpProgressListener;
.super Ljava/lang/Object;
.source "OkHttpProgressListener.kt"

# interfaces
.implements Lcom/facebook/react/modules/network/ProgressListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/image/events/OkHttpProgressListener;",
        "Lcom/facebook/react/modules/network/ProgressListener;",
        "expoImageViewWrapper",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "onProgress",
        "",
        "bytesWritten",
        "",
        "contentLength",
        "done",
        "",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final expoImageViewWrapper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "expoImageViewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/image/events/OkHttpProgressListener;->expoImageViewWrapper:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onProgress(JJZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p5, p0, Lexpo/modules/image/events/OkHttpProgressListener;->expoImageViewWrapper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lexpo/modules/image/ExpoImageViewWrapper;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lexpo/modules/image/ExpoImageViewWrapper;->getOnProgress$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 20
    new-instance v0, Lexpo/modules/image/records/ImageProgressEvent;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {v0, p1, p2}, Lexpo/modules/image/records/ImageProgressEvent;-><init>(II)V

    .line 19
    invoke-interface {p5, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
