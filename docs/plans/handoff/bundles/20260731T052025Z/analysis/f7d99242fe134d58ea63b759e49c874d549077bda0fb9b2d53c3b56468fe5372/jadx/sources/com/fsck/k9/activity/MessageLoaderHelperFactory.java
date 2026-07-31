package com.fsck.k9.activity;

import com.fsck.k9.mailstore.MessageViewInfoExtractorFactory;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageLoaderHelperFactory {
    public final MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1 messageComposerHtmlSettingsProvider;
    public final DefaultMessageReaderHtmlSettingsProvider messageReaderHtmlSettingsProvider;
    public final MessageViewInfoExtractorFactory messageViewInfoExtractorFactory;

    public MessageLoaderHelperFactory(MessageViewInfoExtractorFactory messageViewInfoExtractorFactory, DefaultMessageReaderHtmlSettingsProvider defaultMessageReaderHtmlSettingsProvider, MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1 messageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1) {
        this.messageViewInfoExtractorFactory = messageViewInfoExtractorFactory;
        this.messageReaderHtmlSettingsProvider = defaultMessageReaderHtmlSettingsProvider;
        this.messageComposerHtmlSettingsProvider = messageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
    }
}
