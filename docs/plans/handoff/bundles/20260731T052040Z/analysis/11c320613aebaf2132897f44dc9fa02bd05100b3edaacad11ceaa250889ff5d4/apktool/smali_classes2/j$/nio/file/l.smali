.class public final synthetic Lj$/nio/file/l;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/nio/file/DirectoryStream;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/DirectoryStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/l;->a:Ljava/nio/file/DirectoryStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/l;->a:Ljava/nio/file/DirectoryStream;

    .line 2
    .line 3
    sget-object v0, Lj$/nio/file/Files;->a:Ljava/util/Set;

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/io/UncheckedIOException;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
