.class public final Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final defaultNamespaceClassName:Ljava/lang/String;

.field public final mainContentClassName:Ljava/lang/String;

.field public final plainTextMessagePreClassName:Ljava/lang/String;

.field public final rootClassName:Ljava/lang/String;

.field public final signatureClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->defaultNamespaceClassName:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "__message-viewer"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->rootClassName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "__main-content"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->mainContentClassName:Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo v0, "use_new_message_reader_css_styles"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, "__plain-text-message-pre"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v1, "k9mail"

    .line 43
    .line 44
    :goto_0
    iput-object v1, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->plainTextMessagePreClassName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const-string p1, "__signature"

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string p1, "k9mail-signature"

    .line 64
    .line 65
    :goto_1
    iput-object p1, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->signatureClassName:Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method
