.class public final Lj$/nio/file/q;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Lj$/desugar/sun/nio/fs/n;


# direct methods
.method public constructor <init>(Lj$/desugar/sun/nio/fs/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/q;->b:Lj$/desugar/sun/nio/fs/n;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lj$/nio/file/q;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/nio/file/q;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lj$/nio/file/q;->b:Lj$/desugar/sun/nio/fs/n;

    .line 4
    .line 5
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-ge v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lj$/nio/file/q;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/nio/file/q;->b:Lj$/desugar/sun/nio/fs/n;

    .line 4
    .line 5
    iget-object v1, v1, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lj$/nio/file/q;->b:Lj$/desugar/sun/nio/fs/n;

    .line 14
    .line 15
    iget v1, p0, Lj$/nio/file/q;->a:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lj$/nio/file/q;->a:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Lj$/nio/file/q;->a:I

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
