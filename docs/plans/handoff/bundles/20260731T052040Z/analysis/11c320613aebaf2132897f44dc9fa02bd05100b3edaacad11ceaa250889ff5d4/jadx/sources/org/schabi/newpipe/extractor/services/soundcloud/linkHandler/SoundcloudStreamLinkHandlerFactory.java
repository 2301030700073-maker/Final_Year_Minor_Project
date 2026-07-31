package org.schabi.newpipe.extractor.services.soundcloud.linkHandler;

import java.util.regex.Pattern;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudStreamLinkHandlerFactory extends Cookie.Companion {
    public static final SoundcloudStreamLinkHandlerFactory INSTANCE = new SoundcloudStreamLinkHandlerFactory();
    public static final Pattern URL_PATTERN = Pattern.compile("^https?://(?:www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/(?!(?:tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?(?:[#?].*)?$|^https?://on\\.soundcloud\\.com/[0-9a-zA-Z]+$");
    public static final Pattern API_URL_PATTERN = Pattern.compile("^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/");

    @Override // okhttp3.Cookie.Companion
    public final String getId(String str) {
        Pattern pattern = API_URL_PATTERN;
        if (Parser.isMatch(str, pattern)) {
            return Parser.matchGroup(str, pattern, 1);
        }
        Utils.checkUrl(str, URL_PATTERN);
        try {
            return SoundcloudParsingHelper.resolveIdWithWidgetApi(str);
        } catch (Exception e) {
            throw new ParsingException(e.getMessage(), e);
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str) {
        try {
            return SoundcloudParsingHelper.resolveUrlWithEmbedPlayer("https://api.soundcloud.com/tracks/" + str);
        } catch (Exception e) {
            throw new ParsingException(e.getMessage(), e);
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        return Parser.isMatch(str.toLowerCase(), URL_PATTERN);
    }
}
