package org.schabi.newpipe.extractor.services.peertube.linkHandler;

import androidx.compose.ui.node.Owner;
import java.net.MalformedURLException;
import java.net.URL;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeStreamLinkHandlerFactory extends Cookie.Companion {
    public static final PeertubeStreamLinkHandlerFactory INSTANCE = new PeertubeStreamLinkHandlerFactory();

    @Override // okhttp3.Cookie.Companion
    public final String getId(String str) {
        return Parser.matchGroup("(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)", 4, str);
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str) {
        return getUrl(str, ServiceList.PeerTube.instance.url);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        if (str.contains("/playlist/")) {
            return false;
        }
        try {
            new URL(str);
            getId(str);
            return true;
        } catch (MalformedURLException | ParsingException unused) {
            return false;
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str, String str2) {
        return Owner.CC.m(str2, "/videos/watch/", str);
    }
}
