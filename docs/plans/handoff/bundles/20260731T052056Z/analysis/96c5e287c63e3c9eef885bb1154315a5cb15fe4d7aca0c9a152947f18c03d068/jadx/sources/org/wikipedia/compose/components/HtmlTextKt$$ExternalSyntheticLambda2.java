package org.wikipedia.compose.components;

import android.net.Uri;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HtmlTextKt$$ExternalSyntheticLambda2 implements LinkInteractionListener {
    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void onClick(LinkAnnotation linkAnnotation) {
        String str;
        linkAnnotation.getClass();
        LinkAnnotation.Url url = linkAnnotation instanceof LinkAnnotation.Url ? (LinkAnnotation.Url) linkAnnotation : null;
        if (url == null || (str = url.url) == null) {
            return;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str));
        parse.getClass();
        UriUtil.visitInExternalBrowser(jsoup, parse);
    }
}
