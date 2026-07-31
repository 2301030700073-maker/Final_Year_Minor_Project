package org.schabi.newpipe.extractor.services.peertube.linkHandler;

import j$.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeSearchQueryHandlerFactory extends SearchQueryHandlerFactory {
    public static final PeertubeSearchQueryHandlerFactory INSTANCE = new PeertubeSearchQueryHandlerFactory();

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String[] getAvailableContentFilter() {
        return new String[]{"videos", "playlists", "channels", "sepia_videos"};
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        return getUrl$1(str, (list.isEmpty() || !((String) list.get(0)).startsWith("sepia_")) ? ServiceList.PeerTube.instance.url : "https://sepiasearch.org", list);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl$1(String str, String str2, List list) {
        String str3 = (list.isEmpty() || ((String) list.get(0)).equals("videos") || ((String) list.get(0)).equals("sepia_videos")) ? "/api/v1/search/videos" : ((String) list.get(0)).equals("channels") ? "/api/v1/search/video-channels" : "/api/v1/search/video-playlists";
        Pattern pattern = Utils.M_PATTERN;
        return str2 + str3 + "?search=" + URLEncoder.encode(str, StandardCharsets.UTF_8);
    }
}
