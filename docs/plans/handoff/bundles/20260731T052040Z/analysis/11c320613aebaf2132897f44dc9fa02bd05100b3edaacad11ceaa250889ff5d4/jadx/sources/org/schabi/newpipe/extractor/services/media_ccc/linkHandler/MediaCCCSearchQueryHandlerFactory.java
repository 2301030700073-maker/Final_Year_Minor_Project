package org.schabi.newpipe.extractor.services.media_ccc.linkHandler;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCSearchQueryHandlerFactory extends SearchQueryHandlerFactory {
    public static final MediaCCCSearchQueryHandlerFactory INSTANCE = new MediaCCCSearchQueryHandlerFactory();

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String[] getAvailableContentFilter() {
        return new String[]{TtmlNode.COMBINE_ALL, "conferences", "events"};
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        Pattern pattern = Utils.M_PATTERN;
        return Owner.CC.m("https://media.ccc.de/public/events/search?q=", URLEncoder.encode(str, StandardCharsets.UTF_8));
    }
}
