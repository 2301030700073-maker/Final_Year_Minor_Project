.class public final Lexpo/modules/clipboard/GetImageOptions;
.super Ljava/lang/Object;
.source "ClipboardOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/clipboard/GetImageOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "imageFormat",
        "Lexpo/modules/clipboard/ImageFormat;",
        "getImageFormat$annotations",
        "getImageFormat",
        "()Lexpo/modules/clipboard/ImageFormat;",
        "setImageFormat",
        "(Lexpo/modules/clipboard/ImageFormat;)V",
        "jpegQuality",
        "",
        "getJpegQuality$annotations",
        "getJpegQuality",
        "()D",
        "setJpegQuality",
        "(D)V",
        "expo-clipboard_release"
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
.field private imageFormat:Lexpo/modules/clipboard/ImageFormat;

.field private jpegQuality:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    iput-object v0, p0, Lexpo/modules/clipboard/GetImageOptions;->imageFormat:Lexpo/modules/clipboard/ImageFormat;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    iput-wide v0, p0, Lexpo/modules/clipboard/GetImageOptions;->jpegQuality:D

    return-void
.end method

.method public static synthetic getImageFormat$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
        key = "format"
    .end annotation

    return-void
.end method

.method public static synthetic getJpegQuality$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getImageFormat()Lexpo/modules/clipboard/ImageFormat;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/clipboard/GetImageOptions;->imageFormat:Lexpo/modules/clipboard/ImageFormat;

    return-object v0
.end method

.method public final getJpegQuality()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lexpo/modules/clipboard/GetImageOptions;->jpegQuality:D

    return-wide v0
.end method

.method public final setImageFormat(Lexpo/modules/clipboard/ImageFormat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lexpo/modules/clipboard/GetImageOptions;->imageFormat:Lexpo/modules/clipboard/ImageFormat;

    return-void
.end method

.method public final setJpegQuality(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lexpo/modules/clipboard/GetImageOptions;->jpegQuality:D

    return-void
.end method
