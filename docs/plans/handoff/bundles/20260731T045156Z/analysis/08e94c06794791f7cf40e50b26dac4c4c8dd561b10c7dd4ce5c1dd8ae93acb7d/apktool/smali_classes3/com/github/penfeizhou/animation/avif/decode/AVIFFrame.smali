.class public Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "AVIFFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/Frame<",
        "Lcom/github/penfeizhou/animation/avif/io/AVIFReader;",
        "Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;",
        ">;"
    }
.end annotation


# instance fields
.field public index:I


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/avif/io/AVIFReader;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->index:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    check-cast p5, Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
