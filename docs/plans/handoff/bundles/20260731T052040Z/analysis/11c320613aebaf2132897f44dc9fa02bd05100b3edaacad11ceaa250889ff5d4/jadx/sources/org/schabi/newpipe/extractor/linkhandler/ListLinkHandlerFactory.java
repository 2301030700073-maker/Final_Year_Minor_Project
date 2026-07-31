package org.schabi.newpipe.extractor.linkhandler;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListLinkHandlerFactory extends Cookie.Companion {
    public final ListLinkHandler fromId(String str) {
        Objects.requireNonNull(str, "ID cannot be null");
        String url = getUrl(str);
        return new ListLinkHandler(new LinkHandler(url, url, str));
    }

    public ListLinkHandler fromQuery(String str, String str2, List list) {
        String url = getUrl(str, str2, list);
        return new ListLinkHandler(url, url, str, list, str2);
    }

    @Override // okhttp3.Cookie.Companion
    public ListLinkHandler fromUrl(String str) {
        String followGoogleRedirectIfNeeded = Utils.followGoogleRedirectIfNeeded(str);
        String baseUrl = Utils.getBaseUrl(followGoogleRedirectIfNeeded);
        Objects.requireNonNull(followGoogleRedirectIfNeeded, "URL may not be null");
        return new ListLinkHandler(super.fromUrl(followGoogleRedirectIfNeeded, baseUrl));
    }

    public String[] getAvailableContentFilter() {
        return new String[0];
    }

    @Override // okhttp3.Cookie.Companion
    public String getId(String str) {
        return getUrl(str);
    }

    @Override // okhttp3.Cookie.Companion
    public String getUrl(String str) {
        return getUrl(str, "", new ArrayList(0));
    }

    public abstract String getUrl(String str, String str2, List list);

    public String getUrl$1(String str, String str2, List list) {
        return getUrl(str, "", list);
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str, String str2) {
        return getUrl$1(str, str2, new ArrayList(0));
    }

    public final ListLinkHandler fromId(String str, String str2) {
        String url = getUrl(str, str2);
        return new ListLinkHandler(new LinkHandler(url, url, str));
    }

    @Override // okhttp3.Cookie.Companion
    public final LinkHandler fromUrl(String str, String str2) {
        Objects.requireNonNull(str, "URL may not be null");
        return new ListLinkHandler(super.fromUrl(str, str2));
    }
}
