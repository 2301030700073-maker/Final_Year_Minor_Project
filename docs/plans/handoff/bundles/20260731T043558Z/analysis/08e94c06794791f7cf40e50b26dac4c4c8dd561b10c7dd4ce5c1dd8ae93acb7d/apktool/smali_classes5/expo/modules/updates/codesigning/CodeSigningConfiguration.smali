.class public final Lexpo/modules/updates/codesigning/CodeSigningConfiguration;
.super Ljava/lang/Object;
.source "CodeSigningConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\"\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\"\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u0002J\u0006\u0010\u001e\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/updates/codesigning/CodeSigningConfiguration;",
        "",
        "embeddedCertificateString",
        "",
        "codeSigningMetadata",
        "",
        "includeManifestResponseCertificateChain",
        "",
        "allowUnsignedManifests",
        "<init>",
        "(Ljava/lang/String;Ljava/util/Map;ZZ)V",
        "algorithmFromMetadata",
        "Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "getAlgorithmFromMetadata",
        "()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;",
        "algorithmFromMetadata$delegate",
        "Lkotlin/Lazy;",
        "keyIdFromMetadata",
        "getKeyIdFromMetadata",
        "()Ljava/lang/String;",
        "keyIdFromMetadata$delegate",
        "validateSignature",
        "Lexpo/modules/updates/codesigning/SignatureValidationResult;",
        "signature",
        "bodyBytes",
        "",
        "manifestResponseCertificateChain",
        "validateSignatureInternal",
        "info",
        "Lexpo/modules/updates/codesigning/SignatureHeaderInfo;",
        "getAcceptSignatureHeader",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;


# instance fields
.field private final algorithmFromMetadata$delegate:Lkotlin/Lazy;

.field private final allowUnsignedManifests:Z

.field private final codeSigningMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddedCertificateString:Ljava/lang/String;

.field private final includeManifestResponseCertificateChain:Z

.field private final keyIdFromMetadata$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Wp86EfZQpMNgES__TCUwFw4vvL8(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->keyIdFromMetadata_delegate$lambda$1(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h_rI7UQxU0SOz49rm-jHUCZZ-Y8(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->algorithmFromMetadata_delegate$lambda$0(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->Companion:Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "embeddedCertificateString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->embeddedCertificateString:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->codeSigningMetadata:Ljava/util/Map;

    .line 31
    iput-boolean p3, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->includeManifestResponseCertificateChain:Z

    .line 32
    iput-boolean p4, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->allowUnsignedManifests:Z

    .line 34
    new-instance p1, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->algorithmFromMetadata$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->keyIdFromMetadata$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final algorithmFromMetadata_delegate$lambda$0(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 2

    .line 35
    sget-object v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->Companion:Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;

    .line 36
    iget-object p0, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->codeSigningMetadata:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 37
    const-string v1, "alg"

    .line 36
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, p0}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm$Companion;->parseFromString(Ljava/lang/String;)Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method private final getAlgorithmFromMetadata()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->algorithmFromMetadata$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    return-object v0
.end method

.method private final getKeyIdFromMetadata()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->keyIdFromMetadata$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final keyIdFromMetadata_delegate$lambda$1(Lexpo/modules/updates/codesigning/CodeSigningConfiguration;)Ljava/lang/String;
    .locals 1

    .line 43
    iget-object p0, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->codeSigningMetadata:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "keyid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "root"

    :cond_1
    return-object p0
.end method

.method private final validateSignatureInternal(Lexpo/modules/updates/codesigning/SignatureHeaderInfo;[BLjava/lang/String;)Lexpo/modules/updates/codesigning/SignatureValidationResult;
    .locals 2

    .line 64
    iget-boolean v0, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->includeManifestResponseCertificateChain:Z

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lexpo/modules/updates/codesigning/CertificateChain;

    .line 66
    sget-object v1, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->Companion:Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {v1, p3}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration$Companion;->separateCertificateChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    iget-object v1, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->embeddedCertificateString:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 65
    invoke-direct {v0, p3}, Lexpo/modules/updates/codesigning/CertificateChain;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->getKeyId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->getKeyIdFromMetadata()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 76
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->getAlgorithm()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object p3

    invoke-direct {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->getAlgorithmFromMetadata()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object v0

    if-eq p3, v0, :cond_2

    .line 79
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->getAlgorithm()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key with alg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " from signature does not match client configuration algorithm, continuing"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 77
    const-string v0, "CodeSigning"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    new-instance v0, Lexpo/modules/updates/codesigning/CertificateChain;

    iget-object p3, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->embeddedCertificateString:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Lexpo/modules/updates/codesigning/CertificateChain;-><init>(Ljava/util/List;)V

    .line 93
    :goto_0
    const-string p3, "SHA256withRSA"

    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    .line 94
    invoke-virtual {v0}, Lexpo/modules/updates/codesigning/CertificateChain;->getCodeSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 95
    invoke-virtual {p3, p2}, Ljava/security/Signature;->update([B)V

    .line 96
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->getSignature()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    .line 98
    new-instance p2, Lexpo/modules/updates/codesigning/SignatureValidationResult;

    if-eqz p1, :cond_3

    .line 99
    sget-object p1, Lexpo/modules/updates/codesigning/ValidationResult;->VALID:Lexpo/modules/updates/codesigning/ValidationResult;

    goto :goto_1

    :cond_3
    sget-object p1, Lexpo/modules/updates/codesigning/ValidationResult;->INVALID:Lexpo/modules/updates/codesigning/ValidationResult;

    .line 100
    :goto_1
    sget-object p3, Lexpo/modules/updates/codesigning/CertificateChain;->Companion:Lexpo/modules/updates/codesigning/CertificateChain$Companion;

    invoke-virtual {v0}, Lexpo/modules/updates/codesigning/CertificateChain;->getCodeSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p3, v0}, Lexpo/modules/updates/codesigning/CertificateChain$Companion;->expoProjectInformation(Ljava/security/cert/X509Certificate;)Lexpo/modules/updates/codesigning/ExpoProjectInformation;

    move-result-object p3

    .line 98
    invoke-direct {p2, p1, p3}, Lexpo/modules/updates/codesigning/SignatureValidationResult;-><init>(Lexpo/modules/updates/codesigning/ValidationResult;Lexpo/modules/updates/codesigning/ExpoProjectInformation;)V

    return-object p2

    .line 71
    :cond_4
    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->getKeyId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Key with keyid="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " from signature not found in client configuration"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final getAcceptSignatureHeader()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Lexpo/modules/structuredheaders/BooleanItem;->valueOf(Z)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v2

    const-string v3, "sig"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 108
    invoke-direct {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->getKeyIdFromMetadata()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/structuredheaders/StringItem;->valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object v2

    const-string v3, "keyid"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    invoke-direct {p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->getAlgorithmFromMetadata()Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/updates/codesigning/CodeSigningAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/structuredheaders/StringItem;->valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object v1

    const-string v2, "alg"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 106
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lexpo/modules/structuredheaders/Dictionary;->valueOf(Ljava/util/Map;)Lexpo/modules/structuredheaders/Dictionary;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Dictionary;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serialize(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final validateSignature(Ljava/lang/String;[BLjava/lang/String;)Lexpo/modules/updates/codesigning/SignatureValidationResult;
    .locals 1

    const-string v0, "bodyBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 48
    iget-boolean p1, p0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->allowUnsignedManifests:Z

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lexpo/modules/updates/codesigning/SignatureValidationResult;

    sget-object p2, Lexpo/modules/updates/codesigning/ValidationResult;->SKIPPED:Lexpo/modules/updates/codesigning/ValidationResult;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lexpo/modules/updates/codesigning/SignatureValidationResult;-><init>(Lexpo/modules/updates/codesigning/ValidationResult;Lexpo/modules/updates/codesigning/ExpoProjectInformation;)V

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No expo-signature header specified"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    sget-object v0, Lexpo/modules/updates/codesigning/SignatureHeaderInfo;->Companion:Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/codesigning/SignatureHeaderInfo$Companion;->parseSignatureHeader(Ljava/lang/String;)Lexpo/modules/updates/codesigning/SignatureHeaderInfo;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->validateSignatureInternal(Lexpo/modules/updates/codesigning/SignatureHeaderInfo;[BLjava/lang/String;)Lexpo/modules/updates/codesigning/SignatureValidationResult;

    move-result-object p1

    return-object p1
.end method
