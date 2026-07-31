.class public final Lcom/fsck/k9/mail/transport/smtp/OAuthMethod$XOAUTH2;
.super Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "XOAUTH2"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final buildInitialClientResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aput-object p1, p0, v0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    aput-object p2, p0, p1

    .line 12
    .line 13
    const-string/jumbo p1, "user=%1s\u0001auth=Bearer %2s\u0001\u0001"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AUTH XOAUTH2"

    .line 2
    .line 3
    return-object p0
.end method
