package net.thunderbird.android.feature.mail.message.reader.api.css;

import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultCssClassNameProvider {
    public final String defaultNamespaceClassName;
    public final String mainContentClassName;
    public final String plainTextMessagePreClassName;
    public final String rootClassName;
    public final String signatureClassName;

    public DefaultCssClassNameProvider(InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, String str) {
        this.defaultNamespaceClassName = str;
        this.rootClassName = str.concat("__message-viewer");
        this.mainContentClassName = str.concat("__main-content");
        this.plainTextMessagePreClassName = inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_new_message_reader_css_styles").isEnabled() ? str.concat("__plain-text-message-pre") : "k9mail";
        this.signatureClassName = inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_new_message_reader_css_styles").isEnabled() ? str.concat("__signature") : "k9mail-signature";
    }
}
