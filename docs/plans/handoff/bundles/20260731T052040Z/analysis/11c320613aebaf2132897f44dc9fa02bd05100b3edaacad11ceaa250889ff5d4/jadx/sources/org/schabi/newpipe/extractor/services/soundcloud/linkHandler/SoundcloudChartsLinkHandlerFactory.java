package org.schabi.newpipe.extractor.services.soundcloud.linkHandler;

import androidx.compose.ui.node.Owner;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudChartsLinkHandlerFactory extends ListLinkHandlerFactory {
    public final /* synthetic */ int $r8$classId;
    public static final SoundcloudChartsLinkHandlerFactory INSTANCE$1 = new SoundcloudChartsLinkHandlerFactory(1);
    public static final SoundcloudChartsLinkHandlerFactory INSTANCE$2 = new SoundcloudChartsLinkHandlerFactory(2);
    public static final SoundcloudChartsLinkHandlerFactory INSTANCE = new SoundcloudChartsLinkHandlerFactory(0);
    public static final SoundcloudChartsLinkHandlerFactory INSTANCE$3 = new SoundcloudChartsLinkHandlerFactory(3);
    public static final SoundcloudChartsLinkHandlerFactory INSTANCE$4 = new SoundcloudChartsLinkHandlerFactory(4);

    public /* synthetic */ SoundcloudChartsLinkHandlerFactory(int i) {
        this.$r8$classId = i;
    }

    public static String getUrlSuffix(String str) {
        str.getClass();
        switch (str) {
            case "playlists":
                return "/sets";
            case "albums":
                return "/albums";
            case "tracks":
                return "/tracks";
            case "likes":
                return "/likes";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        switch (this.$r8$classId) {
            case 0:
                return "New & hot";
            case 1:
                Pattern pattern = Utils.M_PATTERN;
                Utils.checkUrl(str, Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+(/((tracks|albums|sets|reposts|followers|following)/?)?)?([#?].*)?$"));
                try {
                    return SoundcloudParsingHelper.resolveIdWithWidgetApi(str);
                } catch (Exception e) {
                    throw new ParsingException(e.getMessage(), e);
                }
            case 2:
                Pattern pattern2 = Utils.M_PATTERN;
                Utils.checkUrl(str, Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+(/((tracks|albums|sets|reposts|followers|following)/?)?)?([#?].*)?$"));
                try {
                    return SoundcloudParsingHelper.resolveIdWithWidgetApi(str);
                } catch (Exception e2) {
                    throw new ParsingException(e2.getMessage(), e2);
                }
            case 3:
                return SoundcloudStreamLinkHandlerFactory.INSTANCE.getId(str);
            default:
                Pattern pattern3 = Utils.M_PATTERN;
                Utils.checkUrl(str, Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/sets/[0-9a-z_-]+/?([#?].*)?$"));
                try {
                    return SoundcloudParsingHelper.resolveIdWithWidgetApi(str);
                } catch (Exception e3) {
                    throw new ParsingException(Owner.CC.m("Could not get id of url: ", str, " ", e3.getMessage()), e3);
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        switch (this.$r8$classId) {
            case 0:
                return "https://soundcloud.com/charts/new";
            case 1:
                try {
                    return SoundcloudParsingHelper.resolveUrlWithEmbedPlayer("https://api.soundcloud.com/users/" + str);
                } catch (Exception e) {
                    throw new ParsingException(e.getMessage(), e);
                }
            case 2:
                return Owner.CC.m$1(INSTANCE$1.getUrl(str), getUrlSuffix((String) list.get(0)));
            case 3:
                try {
                    return "https://api-v2.soundcloud.com/tracks/" + str + "/comments?client_id=" + SoundcloudParsingHelper.clientId() + "&threaded=0&filter_replies=1";
                } catch (IOException | ExtractionException unused) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get comments");
                    return null;
                }
            default:
                try {
                    return SoundcloudParsingHelper.resolveUrlWithEmbedPlayer("https://api.soundcloud.com/playlists/" + str);
                } catch (Exception e2) {
                    throw new ParsingException(e2.getMessage(), e2);
                }
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        switch (this.$r8$classId) {
            case 0:
                return Parser.isMatch(str.toLowerCase(), Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/charts(/top|/new)?/?([#?].*)?$"));
            case 1:
                return Parser.isMatch(str.toLowerCase(), Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+(/((tracks|albums|sets|reposts|followers|following)/?)?)?([#?].*)?$"));
            case 2:
                return Parser.isMatch(str.toLowerCase(), Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+(/((tracks|albums|sets|reposts|followers|following)/?)?)?([#?].*)?$"));
            case 3:
                try {
                    getId(str);
                    return true;
                } catch (ParsingException unused) {
                    return false;
                }
            default:
                return Parser.isMatch(str.toLowerCase(), Pattern.compile("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/sets/[0-9a-z_-]+/?([#?].*)?$"));
        }
    }
}
