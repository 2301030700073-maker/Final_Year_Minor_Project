package org.schabi.newpipe.extractor.services.youtube.linkHandler;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeSearchQueryHandlerFactory extends SearchQueryHandlerFactory {
    public static final YoutubeSearchQueryHandlerFactory INSTANCE = new YoutubeSearchQueryHandlerFactory();

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String[] getAvailableContentFilter() {
        return new String[]{TtmlNode.COMBINE_ALL, "videos", "channels", "playlists", "music_songs", "music_videos", "music_albums", "music_playlists"};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
    
        if (r1.equals("playlists") == false) goto L8;
     */
    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getUrl(java.lang.String r2, java.lang.String r3, java.util.List r4) {
        /*
            r1 = this;
            boolean r1 = r4.isEmpty()
            r3 = 0
            if (r1 != 0) goto Le
            java.lang.Object r1 = r4.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            goto L10
        Le:
            java.lang.String r1 = ""
        L10:
            r1.getClass()
            int r4 = r1.hashCode()
            r0 = -1
            switch(r4) {
                case -1865828127: goto L6b;
                case -1778518201: goto L60;
                case -816678056: goto L54;
                case -566908430: goto L49;
                case 1432626128: goto L3e;
                case 1499667262: goto L33;
                case 1589120868: goto L28;
                case 2098153138: goto L1d;
                default: goto L1b;
            }
        L1b:
            r3 = r0
            goto L74
        L1d:
            java.lang.String r3 = "music_videos"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L26
            goto L1b
        L26:
            r3 = 7
            goto L74
        L28:
            java.lang.String r3 = "music_songs"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L31
            goto L1b
        L31:
            r3 = 6
            goto L74
        L33:
            java.lang.String r3 = "music_albums"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L3c
            goto L1b
        L3c:
            r3 = 5
            goto L74
        L3e:
            java.lang.String r3 = "channels"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L47
            goto L1b
        L47:
            r3 = 4
            goto L74
        L49:
            java.lang.String r3 = "music_artists"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L52
            goto L1b
        L52:
            r3 = 3
            goto L74
        L54:
            java.lang.String r3 = "videos"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L5e
            goto L1b
        L5e:
            r3 = 2
            goto L74
        L60:
            java.lang.String r3 = "music_playlists"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L69
            goto L1b
        L69:
            r3 = 1
            goto L74
        L6b:
            java.lang.String r4 = "playlists"
            boolean r1 = r1.equals(r4)
            if (r1 != 0) goto L74
            goto L1b
        L74:
            java.lang.String r1 = "https://www.youtube.com/results?search_query="
            switch(r3) {
                case 0: goto Lb5;
                case 1: goto La6;
                case 2: goto L97;
                case 3: goto La6;
                case 4: goto L88;
                case 5: goto La6;
                case 6: goto La6;
                case 7: goto La6;
                default: goto L79;
            }
        L79:
            java.util.regex.Pattern r3 = org.schabi.newpipe.extractor.utils.Utils.M_PATTERN
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r2 = j$.net.URLEncoder.encode(r2, r3)
            java.lang.String r3 = "&sp=8AEB"
            java.lang.String r1 = androidx.compose.ui.Modifier.CC.m(r1, r2, r3)
            return r1
        L88:
            java.util.regex.Pattern r3 = org.schabi.newpipe.extractor.utils.Utils.M_PATTERN
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r2 = j$.net.URLEncoder.encode(r2, r3)
            java.lang.String r3 = "&sp=EgIQAvABAQ%253D%253D"
            java.lang.String r1 = androidx.compose.ui.Modifier.CC.m(r1, r2, r3)
            return r1
        L97:
            java.util.regex.Pattern r3 = org.schabi.newpipe.extractor.utils.Utils.M_PATTERN
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r2 = j$.net.URLEncoder.encode(r2, r3)
            java.lang.String r3 = "&sp=EgIQAfABAQ%253D%253D"
            java.lang.String r1 = androidx.compose.ui.Modifier.CC.m(r1, r2, r3)
            return r1
        La6:
            java.util.regex.Pattern r1 = org.schabi.newpipe.extractor.utils.Utils.M_PATTERN
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r1 = j$.net.URLEncoder.encode(r2, r1)
            java.lang.String r2 = "https://music.youtube.com/search?q="
            java.lang.String r1 = androidx.compose.ui.node.Owner.CC.m(r2, r1)
            return r1
        Lb5:
            java.util.regex.Pattern r3 = org.schabi.newpipe.extractor.utils.Utils.M_PATTERN
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r2 = j$.net.URLEncoder.encode(r2, r3)
            java.lang.String r3 = "&sp=EgIQA_ABAQ%253D%253D"
            java.lang.String r1 = androidx.compose.ui.Modifier.CC.m(r1, r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeSearchQueryHandlerFactory.getUrl(java.lang.String, java.lang.String, java.util.List):java.lang.String");
    }
}
