.class public final Lokhttp3/tls/HeldCertificate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final keyPair:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "-----BEGIN ([!-,.-~ ]*)-----([^-]*)-----END \\1-----"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    return-void
.end method
