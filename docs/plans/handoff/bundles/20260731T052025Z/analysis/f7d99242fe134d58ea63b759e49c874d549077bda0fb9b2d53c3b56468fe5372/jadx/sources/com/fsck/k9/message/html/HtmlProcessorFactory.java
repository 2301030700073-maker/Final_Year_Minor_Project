package com.fsck.k9.message.html;

import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HtmlProcessorFactory {
    public final DefaultCssClassNameProvider cssClassNameProvider;
    public final DisplayHtmlFactory displayHtmlFactory;
    public final InMemoryFeatureFlagProvider featureFlagProvider;

    public HtmlProcessorFactory(InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, DefaultCssClassNameProvider defaultCssClassNameProvider, DisplayHtmlFactory displayHtmlFactory) {
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.cssClassNameProvider = defaultCssClassNameProvider;
        this.displayHtmlFactory = displayHtmlFactory;
    }
}
