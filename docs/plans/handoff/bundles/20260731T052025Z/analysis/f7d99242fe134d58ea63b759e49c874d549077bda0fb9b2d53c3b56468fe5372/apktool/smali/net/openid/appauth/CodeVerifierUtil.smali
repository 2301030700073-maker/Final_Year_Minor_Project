.class public abstract Lnet/openid/appauth/CodeVerifierUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^[0-9a-zA-Z\\-\\.\\_\\~]{43,128}$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/openid/appauth/CodeVerifierUtil;->REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static checkCodeVerifier(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    const-string v1, "codeVerifier length is shorter than allowed by the PKCE specification"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x80

    .line 24
    .line 25
    if-gt v0, v1, :cond_1

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_1
    const-string v0, "codeVerifier length is longer than allowed by the PKCE specification"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lnet/openid/appauth/CodeVerifierUtil;->REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const-string v0, "codeVerifier string contains illegal characters"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
