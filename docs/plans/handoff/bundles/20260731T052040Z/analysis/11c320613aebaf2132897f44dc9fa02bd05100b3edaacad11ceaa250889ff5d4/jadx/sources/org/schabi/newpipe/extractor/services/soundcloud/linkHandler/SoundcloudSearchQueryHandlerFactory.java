package org.schabi.newpipe.extractor.services.soundcloud.linkHandler;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.net.URLEncoder;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudSearchQueryHandlerFactory extends SearchQueryHandlerFactory {
    public static final SoundcloudSearchQueryHandlerFactory INSTANCE = new SoundcloudSearchQueryHandlerFactory();

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String[] getAvailableContentFilter() {
        return new String[]{TtmlNode.COMBINE_ALL, "tracks", "users", "playlists"};
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        try {
            String str3 = "https://api-v2.soundcloud.com/search";
            if (!list.isEmpty()) {
                String str4 = (String) list.get(0);
                switch (str4.hashCode()) {
                    case -1865828127:
                        if (str4.equals("playlists")) {
                            str3 = "https://api-v2.soundcloud.com/search/playlists";
                            break;
                        }
                        break;
                    case -865716088:
                        if (str4.equals("tracks")) {
                            str3 = "https://api-v2.soundcloud.com/search/tracks";
                            break;
                        }
                        break;
                    case 96673:
                        str4.equals(TtmlNode.COMBINE_ALL);
                        break;
                    case 111578632:
                        if (str4.equals("users")) {
                            str3 = "https://api-v2.soundcloud.com/search/users";
                            break;
                        }
                        break;
                }
            }
            Pattern pattern = Utils.M_PATTERN;
            return str3 + "?q=" + URLEncoder.encode(str, StandardCharsets.UTF_8) + "&client_id=" + SoundcloudParsingHelper.clientId() + "&limit=10&offset=0";
        } catch (IOException e) {
            e = e;
            Utils$$ExternalSyntheticBUOutline0.m("Could not get client id", e);
            return null;
        } catch (ReCaptchaException e2) {
            Utils$$ExternalSyntheticBUOutline0.m("ReCaptcha required", e2);
            return null;
        } catch (ExtractionException e3) {
            e = e3;
            Utils$$ExternalSyntheticBUOutline0.m("Could not get client id", e);
            return null;
        }
    }
}
