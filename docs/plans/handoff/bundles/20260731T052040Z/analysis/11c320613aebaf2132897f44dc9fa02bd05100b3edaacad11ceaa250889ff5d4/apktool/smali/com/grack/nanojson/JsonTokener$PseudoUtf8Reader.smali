.class public final Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;
.super Ljava/io/Reader;


# instance fields
.field public final buf:[B

.field public final buffered:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x8000

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buf:[B

    .line 10
    .line 11
    iput-object p1, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buffered:Ljava/io/InputStream;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final read([CII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buffered:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buf:[B

    .line 4
    .line 5
    invoke-virtual {v0, p0, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    move v0, p2

    .line 10
    :goto_0
    add-int v1, p2, p3

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    aget-byte v1, p0, v0

    .line 15
    .line 16
    int-to-char v1, v1

    .line 17
    aput-char v1, p1, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return p3
.end method
