package com.fsck.k9.ui.helper;

import java.util.List;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayHtmlUiFactory {
    public final DefaultCssClassNameProvider cssClassNameProvider;
    public final List cssStyleProviders;
    public final MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1 messageComposerHtmlSettingsProvider;
    public final DefaultMessageReaderHtmlSettingsProvider messageReaderHtmlSettingsProvider;

    public DisplayHtmlUiFactory(DefaultCssClassNameProvider defaultCssClassNameProvider, List list, DefaultMessageReaderHtmlSettingsProvider defaultMessageReaderHtmlSettingsProvider, MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1 messageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1) {
        this.cssClassNameProvider = defaultCssClassNameProvider;
        this.cssStyleProviders = list;
        this.messageReaderHtmlSettingsProvider = defaultMessageReaderHtmlSettingsProvider;
        this.messageComposerHtmlSettingsProvider = messageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
    }
}
