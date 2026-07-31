.class public final Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;
.super Lkotlin/io/FileSystemException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "Malformed data"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/InvalidKeySpecException;)V
    .locals 1

    .line 7
    const-string v0, "Invalid key spec"

    .line 8
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
