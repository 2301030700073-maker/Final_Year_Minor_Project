package org.schabi.newpipe.extractor.services.youtube.linkHandler;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeLiveLinkHandlerFactory extends ListLinkHandlerFactory {
    public final /* synthetic */ int $r8$classId;
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$1 = new YoutubeLiveLinkHandlerFactory(1);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$2 = new YoutubeLiveLinkHandlerFactory(2);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE = new YoutubeLiveLinkHandlerFactory(0);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$3 = new YoutubeLiveLinkHandlerFactory(3);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$4 = new YoutubeLiveLinkHandlerFactory(4);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$5 = new YoutubeLiveLinkHandlerFactory(5);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$6 = new YoutubeLiveLinkHandlerFactory(6);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$7 = new YoutubeLiveLinkHandlerFactory(7);
    public static final YoutubeLiveLinkHandlerFactory INSTANCE$8 = new YoutubeLiveLinkHandlerFactory(8);

    public /* synthetic */ YoutubeLiveLinkHandlerFactory(int i) {
        this.$r8$classId = i;
    }

    public static String getUrlSuffix(String str) {
        str.getClass();
        switch (str) {
            case "playlists":
                return "/playlists";
            case "albums":
                return "/releases";
            case "shorts":
                return "/shorts";
            case "videos":
                return "/videos";
            case "livestreams":
                return "/streams";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public ListLinkHandler fromUrl(String str) {
        switch (this.$r8$classId) {
            case 3:
                try {
                    URL stringToURL = Utils.stringToURL(str);
                    String queryValue = Utils.getQueryValue(stringToURL, "list");
                    if (queryValue != null) {
                        String str2 = YoutubeParsingHelper.clientVersion;
                        if (queryValue.startsWith("RD")) {
                            String queryValue2 = Utils.getQueryValue(stringToURL, "v");
                            if (queryValue2 == null) {
                                queryValue2 = YoutubeParsingHelper.extractVideoIdFromMixId(queryValue);
                            }
                            return new ListLinkHandler(new LinkHandler(str, "https://www.youtube.com/watch?v=" + queryValue2 + "&list=" + queryValue, queryValue));
                        }
                    }
                    return super.fromUrl(str);
                } catch (MalformedURLException e) {
                    throw new ParsingException(Owner.CC.m("Error could not parse URL: ", e.getMessage()), e);
                }
            default:
                return super.fromUrl(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        switch (this.$r8$classId) {
            case 0:
                return "live";
            case 1:
                return YoutubeChannelLinkHandlerFactory.INSTANCE.getId(str);
            case 2:
                return YoutubeStreamLinkHandlerFactory.INSTANCE.getId(str);
            case 3:
                try {
                    URL stringToURL = Utils.stringToURL(str);
                    if (!Utils.isHTTP(stringToURL) || (!YoutubeParsingHelper.isYoutubeURL(stringToURL) && !YoutubeParsingHelper.isInvidiousURL(stringToURL))) {
                        throw new ParsingException("the url given is not a YouTube-URL");
                    }
                    String path = stringToURL.getPath();
                    if (!path.equals("/watch") && !path.equals("/playlist")) {
                        throw new ParsingException("the url given is neither a video nor a playlist URL");
                    }
                    String queryValue = Utils.getQueryValue(stringToURL, "list");
                    if (queryValue == null) {
                        throw new ParsingException("the URL given does not include a playlist");
                    }
                    if (queryValue.matches("[a-zA-Z0-9_-]{10,}")) {
                        return queryValue;
                    }
                    throw new ParsingException("the list-ID given in the URL does not match the list pattern");
                } catch (Exception e) {
                    throw new ParsingException(Owner.CC.m("Error could not parse URL: ", e.getMessage()), e);
                }
            case 4:
                return "trending_gaming";
            case 5:
                return "Trending";
            case 6:
                return "trending_movies_and_shows";
            case 7:
                return "trending_music";
            default:
                return "trending_podcasts_episodes";
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        switch (this.$r8$classId) {
            case 0:
                return "https://www.youtube.com/channel/UC4R8DWoMoI7CAwX8_LjQHig/livetab?ss=CKEK";
            case 1:
                return Modifier.CC.m("https://www.youtube.com/", str, getUrlSuffix((String) list.get(0)));
            case 2:
                return getUrl(str);
            case 3:
                return Owner.CC.m("https://www.youtube.com/playlist?list=", str);
            case 4:
                return "https://www.youtube.com/gaming/trending";
            case 5:
                return "https://www.youtube.com/feed/trending";
            case 6:
                return "https://charts.youtube.com/charts/TrendingTrailers";
            case 7:
                return "https://charts.youtube.com/charts/TrendingVideos/RightNow";
            default:
                return "https://www.youtube.com/podcasts/popularepisodes";
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    URL stringToURL = Utils.stringToURL(str);
                    if (Utils.isHTTP(stringToURL) && ((YoutubeParsingHelper.isYoutubeURL(stringToURL) || YoutubeParsingHelper.isInvidiousURL(stringToURL)) && "/channel/UC4R8DWoMoI7CAwX8_LjQHig/livetab".equals(stringToURL.getPath()) && "ss=CKEK".equals(stringToURL.getQuery()))) {
                        return true;
                    }
                } catch (MalformedURLException unused) {
                }
                return false;
            case 1:
                try {
                    getId(str);
                    return true;
                } catch (ParsingException unused2) {
                    return false;
                }
            case 2:
                try {
                    getId(str);
                    return true;
                } catch (FoundAdException e) {
                    throw e;
                } catch (ParsingException unused3) {
                    return false;
                }
            case 3:
                try {
                    getId(str);
                    return true;
                } catch (ParsingException unused4) {
                    return false;
                }
            case 4:
                try {
                    URL stringToURL2 = Utils.stringToURL(str);
                    if (Utils.isHTTP(stringToURL2) && ((YoutubeParsingHelper.isYoutubeURL(stringToURL2) || YoutubeParsingHelper.isInvidiousURL(stringToURL2)) && "/gaming/trending".equals(stringToURL2.getPath()))) {
                        return true;
                    }
                } catch (MalformedURLException unused5) {
                }
                return false;
            case 5:
                try {
                    URL stringToURL3 = Utils.stringToURL(str);
                    String path = stringToURL3.getPath();
                    if (Utils.isHTTP(stringToURL3) && ((YoutubeParsingHelper.isYoutubeURL(stringToURL3) || YoutubeParsingHelper.isInvidiousURL(stringToURL3)) && path.equals("/feed/trending"))) {
                        return true;
                    }
                } catch (MalformedURLException unused6) {
                }
                return false;
            case 6:
                try {
                    URL stringToURL4 = Utils.stringToURL(str);
                    if (Utils.isHTTP(stringToURL4) && "charts.youtube.com".equals(stringToURL4.getHost().toLowerCase(Locale.ROOT)) && "/charts/TrendingTrailers".equals(stringToURL4.getPath())) {
                        return true;
                    }
                } catch (MalformedURLException unused7) {
                }
                return false;
            case 7:
                try {
                    URL stringToURL5 = Utils.stringToURL(str);
                    if (Utils.isHTTP(stringToURL5) && "charts.youtube.com".equals(stringToURL5.getHost().toLowerCase(Locale.ROOT)) && stringToURL5.getPath().startsWith("/charts/TrendingVideos")) {
                        return true;
                    }
                } catch (MalformedURLException unused8) {
                }
                return false;
            default:
                try {
                    URL stringToURL6 = Utils.stringToURL(str);
                    if (Utils.isHTTP(stringToURL6) && ((YoutubeParsingHelper.isYoutubeURL(stringToURL6) || YoutubeParsingHelper.isInvidiousURL(stringToURL6)) && "/podcasts/popularepisodes".equals(stringToURL6.getPath()))) {
                        return true;
                    }
                } catch (MalformedURLException unused9) {
                }
                return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public String getUrl(String str) {
        switch (this.$r8$classId) {
            case 2:
                return Owner.CC.m("https://www.youtube.com/watch?v=", str);
            default:
                return super.getUrl(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public /* bridge */ /* synthetic */ LinkHandler fromUrl(String str) {
        switch (this.$r8$classId) {
            case 3:
                return fromUrl(str);
            default:
                return super.fromUrl(str);
        }
    }
}
