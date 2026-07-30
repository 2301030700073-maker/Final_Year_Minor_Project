.class public final Lexpo/modules/clipboard/ClipboardImageKt;
.super Ljava/lang/Object;
.source "ClipboardImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardImageKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0080@\u00a2\u0006\u0002\u0010\u000e\u001a&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0080@\u00a2\u0006\u0002\u0010\u0013\u001a\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0080@\u00a2\u0006\u0002\u0010\u0016\u001a\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\u0012H\u0082@\u00a2\u0006\u0002\u0010\u001a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "PNG_PREFIX",
        "",
        "JPEG_PREFIX",
        "getImageFormatFromBase64",
        "Lexpo/modules/clipboard/ImageFormat;",
        "base64Image",
        "imageFromContentUri",
        "Lexpo/modules/clipboard/ImageResult;",
        "context",
        "Landroid/content/Context;",
        "imageUri",
        "Landroid/net/Uri;",
        "options",
        "Lexpo/modules/clipboard/GetImageOptions;",
        "(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clipDataFromBase64Image",
        "Landroid/content/ClipData;",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bitmapFromContentUriAsync",
        "Landroid/graphics/Bitmap;",
        "(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bitmapFromBase64String",
        "ensureExists",
        "",
        "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-clipboard_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final JPEG_PREFIX:Ljava/lang/String; = "/9j/"

.field public static final PNG_PREFIX:Ljava/lang/String; = "iVBORw0K"


# direct methods
.method public static synthetic $r8$lambda$NYtj6FnWb7MF_gWGE0jGjcsUIMo(Ljava/io/BufferedOutputStream;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardImageKt;->clipDataFromBase64Image$lambda$4$lambda$3(Ljava/io/BufferedOutputStream;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bg-Bjmb-1tvPnG3Adjrc8iO-W5U(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 0

    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardImageKt;->clipDataFromBase64Image$lambda$2(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n0Ibfz-lAQa4eBNUdqhEzZAefaY(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromContentUriAsync$lambda$5(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vxhRm-FxR2BZJgdYYjVdE778ViA(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists$lambda$6(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "base64Image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 175
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to convert base64 into Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Lexpo/modules/clipboard/InvalidImageException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Lexpo/modules/clipboard/InvalidImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    invoke-direct {v0, p2}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 157
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "runInterruptible(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private static final bitmapFromContentUriAsync$lambda$5(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    const-string p1, "createSource(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final clipDataFromBase64Image(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/content/ClipData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 121
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardImageKt;->getImageFormatFromBase64(Ljava/lang/String;)Lexpo/modules/clipboard/ImageFormat;

    move-result-object p1

    .line 123
    sget-object v2, Lexpo/modules/clipboard/ClipboardImageKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->ordinal()I

    move-result v7

    aget v2, v2, v7

    if-eq v2, v5, :cond_6

    if-ne v2, v4, :cond_5

    .line 125
    const-string v2, "copied_image.jpeg"

    goto :goto_1

    .line 123
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 124
    :cond_6
    const-string v2, "copied_image.png"

    .line 129
    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v7, v0}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    move-object p2, p3

    move-object p0, v7

    .line 134
    :goto_2
    new-instance p3, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    iput-object v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v6, p3, v0, v5, v6}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    return-object v1

    .line 112
    :cond_8
    :goto_3
    check-cast p3, Ljava/io/FileOutputStream;

    .line 135
    new-instance v4, Ljava/io/BufferedOutputStream;

    check-cast p3, Ljava/io/OutputStream;

    invoke-direct {v4, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p3, v4

    check-cast p3, Ljava/io/Closeable;

    :try_start_1
    move-object v4, p3

    check-cast v4, Ljava/io/BufferedOutputStream;

    .line 136
    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    move-object v7, v4

    check-cast v7, Ljava/io/OutputStream;

    const/16 v8, 0x64

    invoke-virtual {p2, p1, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    new-instance p1, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda2;

    invoke-direct {p1, v4}, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda2;-><init>(Ljava/io/BufferedOutputStream;)V

    iput-object v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v6, p1, v0, v5, v6}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p0

    move-object p0, p3

    move-object p2, v2

    .line 138
    :goto_4
    :try_start_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 141
    sget-object p0, Lexpo/modules/clipboard/ClipboardFileProvider;->Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".ClipboardFileProvider"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-virtual {p0, p2, p3, p1}, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "image"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    const-string p1, "newUri(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p3

    .line 135
    :goto_5
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final clipDataFromBase64Image$lambda$2(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0, p0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static final clipDataFromBase64Image$lambda$4$lambda$3(Ljava/io/BufferedOutputStream;)Lkotlin/Unit;
    .locals 0

    .line 137
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lexpo/modules/clipboard/ClipboardImageKt$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final ensureExists$lambda$6(Ljava/io/File;)Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    return p0
.end method

.method public static final getImageFormatFromBase64(Ljava/lang/String;)Lexpo/modules/clipboard/ImageFormat;
    .locals 4

    const-string v0, "base64Image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v0, "iVBORw0K"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lexpo/modules/clipboard/ImageFormat;->PNG:Lexpo/modules/clipboard/ImageFormat;

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "/9j/"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    :goto_0
    return-object p0
.end method

.method public static final imageFromContentUri(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lexpo/modules/clipboard/GetImageOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/clipboard/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lexpo/modules/clipboard/GetImageOptions;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {p0, p1, v0}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 71
    :cond_4
    :goto_1
    move-object p0, p3

    check-cast p0, Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getImageFormat()Lexpo/modules/clipboard/ImageFormat;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getJpegQuality()D

    move-result-wide p2

    const/16 v2, 0x64

    int-to-double v4, v2

    mul-double/2addr p2, v4

    double-to-int p2, p2

    .line 82
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    move-object v4, p3

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {p0, v2, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    move-object p0, p3

    .line 88
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p3, 0x0

    .line 89
    invoke-static {p0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";base64,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 92
    new-instance p1, Lexpo/modules/clipboard/ImageResult;

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "toString(...)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 95
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 92
    invoke-direct {p1, p0, p3, p2}, Lexpo/modules/clipboard/ImageResult;-><init>(Ljava/lang/String;II)V

    return-object p1
.end method
