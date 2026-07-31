package org.schabi.newpipe.extractor.services.bandcamp.linkHandler;

import androidx.compose.ui.Modifier;
import j$.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampSearchQueryHandlerFactory extends SearchQueryHandlerFactory {
    public static final BandcampSearchQueryHandlerFactory INSTANCE = new BandcampSearchQueryHandlerFactory();

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        Pattern pattern = Utils.M_PATTERN;
        return Modifier.CC.m("https://bandcamp.com/search?q=", URLEncoder.encode(str, StandardCharsets.UTF_8), "&page=1");
    }
}
