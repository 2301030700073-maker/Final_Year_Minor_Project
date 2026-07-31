package org.schabi.newpipe.extractor.services.bandcamp.linkHandler;

import okhttp3.Cookie;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampStreamLinkHandlerFactory extends Cookie.Companion {
    public static final BandcampStreamLinkHandlerFactory INSTANCE = new BandcampStreamLinkHandlerFactory();

    @Override // okhttp3.Cookie.Companion
    public final String getId(String str) {
        return BandcampExtractorHelper.isRadioUrl(str) ? str.split("bandcamp.com/\\?show=")[1] : getUrl(str);
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str) {
        return str.matches("\\d+") ? "https://bandcamp.com/?show=".concat(str) : Utils.replaceHttpWithHttps(str);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        if (BandcampExtractorHelper.isRadioUrl(str)) {
            return true;
        }
        if (str.toLowerCase().matches("https?://.+\\..+/track/.+")) {
            return BandcampExtractorHelper.isArtistDomain(str);
        }
        return false;
    }
}
