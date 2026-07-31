.class public final Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

.field public final htmlProcessorFactory:Lcom/fsck/k9/message/html/HtmlProcessorFactory;

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;Lcom/fsck/k9/message/html/HtmlProcessorFactory;Lcom/fsck/k9/resources/K9CoreResourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->htmlProcessorFactory:Lcom/fsck/k9/message/html/HtmlProcessorFactory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/backend/imap/ImapSync;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->htmlProcessorFactory:Lcom/fsck/k9/message/html/HtmlProcessorFactory;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->displayHtmlFactory:Lcom/fsck/k9/message/html/DisplayHtmlFactory;

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/fsck/k9/message/html/DisplayHtmlFactory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/fsck/k9/message/html/DisplayHtmlFactory;->cssStyleProviders:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v2, p1, v3, v1}, Lcom/fsck/k9/message/html/DisplayHtml;-><init>(Lnet/thunderbird/core/common/mail/html/HtmlSettings;Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 15
    .line 16
    const-string/jumbo v1, "use_new_message_reader_css_styles"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, v0, Lcom/fsck/k9/message/html/HtmlProcessorFactory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 30
    .line 31
    iget-object v0, p1, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->rootClassName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->mainContentClassName:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 45
    .line 46
    :goto_0
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 47
    .line 48
    invoke-direct {v0, p1, v2}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/util/Set;Lcom/fsck/k9/message/html/DisplayHtml;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 54
    .line 55
    const/16 v2, 0x1c

    .line 56
    .line 57
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method
