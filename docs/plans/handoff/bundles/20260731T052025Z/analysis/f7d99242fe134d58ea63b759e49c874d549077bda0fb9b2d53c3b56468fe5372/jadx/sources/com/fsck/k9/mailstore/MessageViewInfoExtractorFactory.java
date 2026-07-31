package com.fsck.k9.mailstore;

import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.message.html.DisplayHtmlFactory;
import com.fsck.k9.message.html.HtmlProcessorFactory;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.common.mail.html.HtmlSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewInfoExtractorFactory {
    public final AttachmentInfoExtractor attachmentInfoExtractor;
    public final HtmlProcessorFactory htmlProcessorFactory;
    public final K9CoreResourceProvider resourceProvider;

    public MessageViewInfoExtractorFactory(AttachmentInfoExtractor attachmentInfoExtractor, HtmlProcessorFactory htmlProcessorFactory, K9CoreResourceProvider k9CoreResourceProvider) {
        this.attachmentInfoExtractor = attachmentInfoExtractor;
        this.htmlProcessorFactory = htmlProcessorFactory;
        this.resourceProvider = k9CoreResourceProvider;
    }

    public final ImapSync create(HtmlSettings htmlSettings) {
        Set set;
        HtmlProcessorFactory htmlProcessorFactory = this.htmlProcessorFactory;
        DisplayHtmlFactory displayHtmlFactory = htmlProcessorFactory.displayHtmlFactory;
        DisplayHtml displayHtml = new DisplayHtml(htmlSettings, displayHtmlFactory.cssClassNameProvider, displayHtmlFactory.cssStyleProviders);
        if (htmlProcessorFactory.featureFlagProvider.m1030providedj3aFNw("use_new_message_reader_css_styles").isEnabled()) {
            DefaultCssClassNameProvider defaultCssClassNameProvider = htmlProcessorFactory.cssClassNameProvider;
            set = ArraysKt___ArraysKt.toSet(new String[]{defaultCssClassNameProvider.rootClassName, defaultCssClassNameProvider.mainContentClassName});
        } else {
            set = EmptySet.INSTANCE;
        }
        return new ImapSync(this.attachmentInfoExtractor, new ImapSync(set, displayHtml), this.resourceProvider, 28);
    }
}
