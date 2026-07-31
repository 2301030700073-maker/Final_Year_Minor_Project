package org.schabi.newpipe.extractor.services.media_ccc.linkHandler;

import androidx.compose.ui.node.Owner;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCStreamLinkHandlerFactory extends Cookie.Companion {
    public static final MediaCCCStreamLinkHandlerFactory INSTANCE = new MediaCCCStreamLinkHandlerFactory();

    @Override // okhttp3.Cookie.Companion
    public final String getId(String str) {
        String str2;
        try {
            str2 = Parser.matchGroup("streaming\\.media\\.ccc\\.de\\/(\\w+\\/\\w+)", 1, str);
        } catch (Parser.RegexException unused) {
            str2 = null;
        }
        return str2 == null ? Parser.matchGroup("(?:(?:(?:api\\.)?media\\.ccc\\.de/public/events/)|(?:media\\.ccc\\.de/v/))([^/?&#]*)", 1, str) : str2;
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str) {
        return MediaCCCParsingHelper.LIVE_STREAM_ID_PATTERN.matcher(str).find() ? Owner.CC.m("https://streaming.media.ccc.de/", str) : Owner.CC.m("https://media.ccc.de/v/", str);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        return getId(str) != null;
    }
}
