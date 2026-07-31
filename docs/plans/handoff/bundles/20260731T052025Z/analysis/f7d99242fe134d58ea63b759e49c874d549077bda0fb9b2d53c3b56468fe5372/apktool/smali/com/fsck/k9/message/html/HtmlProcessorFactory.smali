.class public final Lcom/fsck/k9/message/html/HtmlProcessorFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

.field public final displayHtmlFactory:Lcom/fsck/k9/message/html/DisplayHtmlFactory;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Lcom/fsck/k9/message/html/DisplayHtmlFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->displayHtmlFactory:Lcom/fsck/k9/message/html/DisplayHtmlFactory;

    .line 9
    .line 10
    return-void
.end method
