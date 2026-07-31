package org.schabi.newpipe.extractor.services.peertube.linkHandler;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeChannelLinkHandlerFactory extends ListLinkHandlerFactory {
    public static final PeertubeChannelLinkHandlerFactory INSTANCE = new PeertubeChannelLinkHandlerFactory(0);
    public static final PeertubeChannelLinkHandlerFactory INSTANCE$1 = new PeertubeChannelLinkHandlerFactory(1);
    public static final PeertubeChannelLinkHandlerFactory INSTANCE$2 = new PeertubeChannelLinkHandlerFactory(2);
    public static final PeertubeChannelLinkHandlerFactory INSTANCE$3 = new PeertubeChannelLinkHandlerFactory(3);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ PeertubeChannelLinkHandlerFactory(int i) {
        this.$r8$classId = i;
    }

    public static String fixId(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        return str.startsWith("a/") ? "accounts".concat(str.substring(1)) : str.startsWith("c/") ? "video-channels".concat(str.substring(1)) : str;
    }

    public static String getUrlSuffix(String str) {
        str.getClass();
        switch (str) {
            case "playlists":
                return "/video-playlists";
            case "videos":
                return "/videos";
            case "channels":
                return "/video-channels";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        switch (this.$r8$classId) {
            case 0:
                return fixId(Parser.matchGroup("/((accounts|a)|(video-channels|c))/([^/?&#]*)", 0, str));
            case 1:
                String matchGroup = Parser.matchGroup("/((accounts|a)|(video-channels|c))/([^/?&#]*)", 0, str);
                if (matchGroup.startsWith("/")) {
                    matchGroup = matchGroup.substring(1);
                }
                return matchGroup.startsWith("a/") ? "accounts".concat(matchGroup.substring(1)) : matchGroup.startsWith("c/") ? "video-channels".concat(matchGroup.substring(1)) : matchGroup;
            case 2:
                return Parser.matchGroup("(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)", 4, str);
            default:
                try {
                    return Parser.matchGroup("(/videos/watch/playlist/|/w/p/)([^/?&#]*)", 2, str);
                } catch (ParsingException unused) {
                    return Parser.matchGroup("/video-playlists/([^/?&#]*)", 1, str);
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        switch (this.$r8$classId) {
        }
        return getUrl$1(str, ServiceList.PeerTube.instance.url, list);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl$1(String str, String str2, List list) {
        switch (this.$r8$classId) {
            case 0:
                return str.matches("((accounts|a)|(video-channels|c))/([^/?&#]*)") ? Owner.CC.m(str2, "/", fixId(str)) : Owner.CC.m(str2, "/accounts/", str);
            case 1:
                return (str.matches("((accounts|a)|(video-channels|c))/([^/?&#]*)") ? Owner.CC.m(str2, "/", fixId(str)) : Owner.CC.m(str2, "/accounts/", str)).concat(getUrlSuffix((String) ((ArrayList) list).get(0)));
            case 2:
                return Owner.CC.m$1(str2, Modifier.CC.m("/api/v1/videos/", str, "/comment-threads"));
            default:
                return Owner.CC.m(str2, "/api/v1/video-playlists/", str);
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    new URL(str);
                    if (!str.contains("/accounts/") && !str.contains("/a/") && !str.contains("/video-channels/")) {
                        if (!str.contains("/c/")) {
                        }
                    }
                    break;
                } catch (MalformedURLException unused) {
                    return false;
                }
                break;
            case 1:
                try {
                    new URL(str);
                    if (!str.contains("/accounts/") && !str.contains("/a/") && !str.contains("/video-channels/")) {
                        if (!str.contains("/c/")) {
                        }
                    }
                    break;
                } catch (MalformedURLException unused2) {
                    return false;
                }
                break;
            case 2:
                try {
                    new URL(str);
                    if (!str.contains("/videos/")) {
                        if (!str.contains("/w/")) {
                        }
                    }
                    break;
                } catch (MalformedURLException unused3) {
                    return false;
                }
                break;
            default:
                try {
                    new URL(str);
                    getId(str);
                    break;
                } catch (MalformedURLException | ParsingException unused4) {
                    return false;
                }
        }
        return true;
    }
}
