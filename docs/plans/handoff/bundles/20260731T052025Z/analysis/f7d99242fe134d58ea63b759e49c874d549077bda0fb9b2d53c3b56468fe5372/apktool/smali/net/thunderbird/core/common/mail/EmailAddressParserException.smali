.class public final Lnet/thunderbird/core/common/mail/EmailAddressParserException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final error:Lnet/thunderbird/core/common/mail/EmailAddressParserError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;->error:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 11
    .line 12
    return-void
.end method
