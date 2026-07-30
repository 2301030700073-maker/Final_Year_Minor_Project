.class public Lrnauthenticator/authenticator/security/PKCE;
.super Ljava/lang/Object;
.source "PKCE.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;,
        Lrnauthenticator/authenticator/security/PKCE$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u0001:\u0001\u0015B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\tH\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lrnauthenticator/authenticator/security/PKCE;",
        "",
        "challengeMethod",
        "Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;",
        "<init>",
        "(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;)V",
        "getChallengeMethod",
        "()Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;",
        "codeVerifier",
        "",
        "getCodeVerifier",
        "()Ljava/lang/String;",
        "setCodeVerifier",
        "(Ljava/lang/String;)V",
        "codeChallenge",
        "getCodeChallenge",
        "setCodeChallenge",
        "generateKeys",
        "",
        "generateCodeVerifier",
        "generateCodeChallenge",
        "ChallengeMethod",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final challengeMethod:Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

.field public codeChallenge:Ljava/lang/String;

.field public codeVerifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lrnauthenticator/authenticator/security/PKCE;-><init>(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;)V
    .locals 1

    const-string v0, "challengeMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/security/PKCE;->challengeMethod:Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

    return-void
.end method

.method public synthetic constructor <init>(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    sget-object p1, Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;->SHA256:Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

    :cond_0
    invoke-direct {p0, p1}, Lrnauthenticator/authenticator/security/PKCE;-><init>(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;)V

    return-void
.end method

.method private final generateCodeChallenge()Ljava/lang/String;
    .locals 4

    .line 27
    const-string v0, "getBytes(...)"

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lrnauthenticator/authenticator/security/PKCE;->getCodeVerifier()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lrnauthenticator/authenticator/security/PKCE;->challengeMethod:Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

    sget-object v3, Lrnauthenticator/authenticator/security/PKCE$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 30
    invoke-static {v1}, Lrnauthenticator/authenticator/security/EncryptionKt;->toSHA256([B)[B

    move-result-object v1

    .line 32
    invoke-static {v1}, Lrnauthenticator/authenticator/security/EncryptionKt;->toHex([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lrnauthenticator/authenticator/security/EncryptionKt;->toBase64([BLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to generate code challenge"

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final generateCodeVerifier()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lrnauthenticator/authenticator/security/EncryptionKt;->toSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lrnauthenticator/authenticator/security/EncryptionKt;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final generateKeys()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lrnauthenticator/authenticator/security/PKCE;->generateCodeVerifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrnauthenticator/authenticator/security/PKCE;->setCodeVerifier(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lrnauthenticator/authenticator/security/PKCE;->generateCodeChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrnauthenticator/authenticator/security/PKCE;->setCodeChallenge(Ljava/lang/String;)V

    return-void
.end method

.method public final getChallengeMethod()Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;
    .locals 1

    .line 7
    iget-object v0, p0, Lrnauthenticator/authenticator/security/PKCE;->challengeMethod:Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

    return-object v0
.end method

.method public final getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lrnauthenticator/authenticator/security/PKCE;->codeChallenge:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "codeChallenge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeVerifier()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lrnauthenticator/authenticator/security/PKCE;->codeVerifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "codeVerifier"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setCodeChallenge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lrnauthenticator/authenticator/security/PKCE;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public final setCodeVerifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lrnauthenticator/authenticator/security/PKCE;->codeVerifier:Ljava/lang/String;

    return-void
.end method
