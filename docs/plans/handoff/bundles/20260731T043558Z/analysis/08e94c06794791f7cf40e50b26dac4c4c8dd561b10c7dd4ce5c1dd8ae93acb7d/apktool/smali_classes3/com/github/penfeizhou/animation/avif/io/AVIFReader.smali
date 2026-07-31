.class public Lcom/github/penfeizhou/animation/avif/io/AVIFReader;
.super Lcom/github/penfeizhou/animation/io/FilterReader;
.source "AVIFReader.java"


# instance fields
.field private cachedBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/io/Reader;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/io/FilterReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->cachedBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public toDirectByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->cachedBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->available()I

    move-result v0

    .line 24
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, v1, v2, v0}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->read([BII)I

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->cachedBuffer:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->cachedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->cachedBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
