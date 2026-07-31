package org.schabi.newpipe.extractor.services.peertube.linkHandler;

import androidx.compose.ui.Modifier;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeTrendingLinkHandlerFactory extends ListLinkHandlerFactory {
    public static final PeertubeTrendingLinkHandlerFactory INSTANCE = new PeertubeTrendingLinkHandlerFactory();
    public static final Map KIOSK_MAP;

    static {
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("Trending", "%s/api/v1/videos?sort=-trending"), new AbstractMap.SimpleEntry("Most liked", "%s/api/v1/videos?sort=-likes"), new AbstractMap.SimpleEntry("Recently added", "%s/api/v1/videos?sort=-publishedAt"), new AbstractMap.SimpleEntry("Local", "%s/api/v1/videos?sort=-publishedAt&isLocal=true")};
        HashMap hashMap = new HashMap(4);
        for (int i = 0; i < 4; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return;
            }
        }
        KIOSK_MAP = DesugarCollections.unmodifiableMap(hashMap);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        String replace = str.replace(ServiceList.PeerTube.instance.url, "%s");
        return replace.contains("/videos/trending") ? "Trending" : replace.contains("/videos/most-liked") ? "Most liked" : replace.contains("/videos/recently-added") ? "Recently added" : replace.contains("/videos/local") ? "Local" : (String) Collection.EL.stream(KIOSK_MAP.entrySet()).filter(new NewPipe$$ExternalSyntheticLambda2(replace, 6)).findFirst().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(16)).orElseThrow(new Entities$$ExternalSyntheticLambda0(11));
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        return getUrl$1(str, ServiceList.PeerTube.instance.url, list);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl$1(String str, String str2, List list) {
        return String.format((String) KIOSK_MAP.get(str), str2);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        try {
            new URL(str);
            if (!str.contains("/videos?") && !str.contains("/videos/trending") && !str.contains("/videos/most-liked") && !str.contains("/videos/recently-added")) {
                if (!str.contains("/videos/local")) {
                    return false;
                }
            }
            return true;
        } catch (MalformedURLException unused) {
            return false;
        }
    }
}
