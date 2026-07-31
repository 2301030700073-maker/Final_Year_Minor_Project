package net.thunderbird.feature.mail.message.reader.impl.css;

import com.fsck.k9.mailstore.LocalStore;
import net.thunderbird.core.common.mail.html.HtmlSettings;
import net.thunderbird.feature.mail.message.reader.api.css.GlobalCssStyleProvider$Factory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyGlobalCssStyleProvider$Factory implements GlobalCssStyleProvider$Factory {
    @Override // net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory
    public final LocalStore.AnonymousClass8 create(HtmlSettings htmlSettings) {
        return new LocalStore.AnonymousClass8(htmlSettings.useDarkMode);
    }
}
