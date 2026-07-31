.class public final Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;Ljava/io/FileInputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    .line 1
    const-string v0, "Failed to delete temporary binary file: %s"

    .line 2
    .line 3
    const-string v1, "Deleting temporary binary file: %s"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iget-object p0, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-array v5, v4, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p0, v5, v3

    .line 21
    .line 22
    invoke-static {v1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    iget-object p0, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-array v1, v4, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p0, v1, v3

    .line 42
    .line 43
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    iget-object v5, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-array v6, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v5, v6, v3

    .line 57
    .line 58
    invoke-static {v1, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    iget-object v1, v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-array v2, v4, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v1, v2, v3

    .line 78
    .line 79
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    throw p0
.end method

.method public final closeWithoutDeleting()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 2
    .line 3
    .line 4
    return-void
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
