.class final Lcoil3/decode/ExifInterfaceInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private availableBytes:I

.field private final delegate:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    .line 5
    .line 6
    const/high16 p1, 0x40000000    # 2.0f

    .line 7
    .line 8
    iput p1, p0, Lcoil3/decode/ExifInterfaceInputStream;->availableBytes:I

    .line 9
    .line 10
    return-void
.end method

.method private final interceptBytesRead(I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->availableBytes:I

    .line 6
    .line 7
    :cond_0
    return p1
.end method


# virtual methods
.method public available()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->availableBytes:I

    .line 2
    .line 3
    return p0
.end method

.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcoil3/decode/ExifInterfaceInputStream;->interceptBytesRead(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public read([B)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    invoke-direct {p0, p1}, Lcoil3/decode/ExifInterfaceInputStream;->interceptBytesRead(I)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Lcoil3/decode/ExifInterfaceInputStream;->interceptBytesRead(I)I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/decode/ExifInterfaceInputStream;->delegate:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
