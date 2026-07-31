package org.schabi.newpipe.extractor.services.youtube.linkHandler;

import androidx.compose.ui.node.Owner;
import java.net.URL;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeChannelLinkHandlerFactory extends ListLinkHandlerFactory {
    public static final YoutubeChannelLinkHandlerFactory INSTANCE = new YoutubeChannelLinkHandlerFactory();
    public static final Pattern EXCLUDED_SEGMENTS = Pattern.compile("playlist|watch|attribution_link|watch_popup|embed|feed|select_site|account|reporthistory|redirect");

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        try {
            URL stringToURL = Utils.stringToURL(str);
            String path = stringToURL.getPath();
            if (!Utils.isHTTP(stringToURL) || (!YoutubeParsingHelper.isYoutubeURL(stringToURL) && !YoutubeParsingHelper.isInvidiousURL(stringToURL) && !stringToURL.getHost().equalsIgnoreCase("hooktube.com"))) {
                throw new ParsingException("The URL given is not a YouTube URL");
            }
            String substring = path.substring(1);
            String[] split = substring.split("/");
            if (!(split.length > 0 && split[0].startsWith("@"))) {
                if (!((split.length != 1 || split[0].isEmpty() || EXCLUDED_SEGMENTS.matcher(split[0]).matches()) ? false : true)) {
                    if (!substring.startsWith("user/") && !substring.startsWith("channel/") && !substring.startsWith("c/")) {
                        throw new ParsingException("The given URL is not a channel, a user or a handle URL");
                    }
                    String str2 = split[1];
                    if (Utils.isBlank(str2)) {
                        throw new ParsingException("The given ID is not a YouTube channel or user ID");
                    }
                    return split[0] + "/" + str2;
                }
            }
            return split[0];
        } catch (Exception e) {
            throw new ParsingException(Owner.CC.m("Could not parse URL :", e.getMessage()), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        return Owner.CC.m("https://www.youtube.com/", str);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        try {
            getId(str);
            return true;
        } catch (ParsingException unused) {
            return false;
        }
    }
}
