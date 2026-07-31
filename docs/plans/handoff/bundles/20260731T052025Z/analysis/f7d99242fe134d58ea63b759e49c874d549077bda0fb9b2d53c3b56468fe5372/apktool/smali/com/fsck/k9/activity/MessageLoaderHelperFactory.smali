.class public final Lcom/fsck/k9/activity/MessageLoaderHelperFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final messageComposerHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

.field public final messageReaderHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

.field public final messageViewInfoExtractorFactory:Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageViewInfoExtractorFactory:Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageReaderHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageComposerHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 9
    .line 10
    return-void
.end method
