.class public final Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;
.super Ljava/lang/Exception;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cause:Ljava/io/IOException;

.field public final error:Lnet/thunderbird/core/file/FileOperationError;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/file/FileOperationError;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;->error:Lnet/thunderbird/core/file/FileOperationError;

    .line 9
    .line 10
    iput-object p2, p0, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;->cause:Ljava/io/IOException;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;->cause:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p0
.end method
