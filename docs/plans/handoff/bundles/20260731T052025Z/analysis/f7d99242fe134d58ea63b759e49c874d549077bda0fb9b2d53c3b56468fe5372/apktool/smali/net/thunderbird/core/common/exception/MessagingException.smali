.class public Lnet/thunderbird/core/common/exception/MessagingException;
.super Ljava/lang/Exception;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final isPermanentFailure:Z

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/core/common/exception/MessagingException;->isPermanentFailure:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/common/exception/MessagingException;->cause:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->cause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
