package com.fsck.k9.message.html;

import androidx.camera.core.impl.Config;
import java.util.List;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.common.mail.html.HtmlSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayHtml {
    public final DefaultCssClassNameProvider cssClassNameProvider;
    public final List cssStyleProviders;
    public final HtmlSettings htmlSettings;

    public DisplayHtml(HtmlSettings htmlSettings, DefaultCssClassNameProvider defaultCssClassNameProvider, List list) {
        this.htmlSettings = htmlSettings;
        this.cssClassNameProvider = defaultCssClassNameProvider;
        this.cssStyleProviders = list;
    }

    public final String getHeadHtml() {
        return StringsKt__IndentKt.trimMargin$default("\n            |<meta name=\"viewport\" content=\"width=device-width\"/>\n            |" + CollectionsKt.joinToString$default(this.cssStyleProviders, "\n", null, null, new AbstractMap$$ExternalSyntheticLambda0(6, this), 30) + "\n        ");
    }

    public final String wrapMessageContent(CharSequence charSequence) {
        charSequence.getClass();
        String headHtml = getHeadHtml();
        DefaultCssClassNameProvider defaultCssClassNameProvider = this.cssClassNameProvider;
        String str = defaultCssClassNameProvider.rootClassName;
        String str2 = defaultCssClassNameProvider.mainContentClassName;
        StringBuilder m = Config.CC.m("\n            |<html dir=\"auto\">\n            |  <head>\n            |    ", headHtml, "\n            |  </head>\n            |  <body class=\"", str, " ");
        m.append(str2);
        m.append("\">\n            |    ");
        m.append((Object) charSequence);
        m.append("\n            |  </body>\n            |</html>\n        ");
        return StringsKt__IndentKt.trimMargin$default(m.toString());
    }
}
