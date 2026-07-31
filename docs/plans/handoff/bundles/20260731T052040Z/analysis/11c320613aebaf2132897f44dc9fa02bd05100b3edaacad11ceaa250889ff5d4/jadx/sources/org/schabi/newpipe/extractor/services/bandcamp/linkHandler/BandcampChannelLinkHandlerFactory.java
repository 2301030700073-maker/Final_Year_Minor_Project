package org.schabi.newpipe.extractor.services.bandcamp.linkHandler;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampChannelLinkHandlerFactory extends ListLinkHandlerFactory {
    public static final BandcampChannelLinkHandlerFactory INSTANCE = new BandcampChannelLinkHandlerFactory(0);
    public static final BandcampChannelLinkHandlerFactory INSTANCE$1 = new BandcampChannelLinkHandlerFactory(1);
    public static final BandcampChannelLinkHandlerFactory INSTANCE$2 = new BandcampChannelLinkHandlerFactory(2);
    public static final BandcampChannelLinkHandlerFactory INSTANCE$3 = new BandcampChannelLinkHandlerFactory(3);
    public static final BandcampChannelLinkHandlerFactory INSTANCE$4 = new BandcampChannelLinkHandlerFactory(4);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BandcampChannelLinkHandlerFactory(int i) {
        this.$r8$classId = i;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public String getId(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    return String.valueOf(Parser.getJsonData((String) Utility.downloader.get(Utils.replaceHttpWithHttps(str)).mHiddenViews, "data-band").getLong(TtmlNode.ATTR_ID, 0L));
                } catch (JsonParserException | IOException | ArrayIndexOutOfBoundsException | ReCaptchaException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Download failed", e);
                    return null;
                }
            case 1:
                return INSTANCE.getId(str);
            case 2:
                return Utils.replaceHttpWithHttps(str);
            case 3:
                String replaceHttpWithHttps = Utils.replaceHttpWithHttps(str);
                if (BandcampExtractorHelper.isRadioUrl(replaceHttpWithHttps) || replaceHttpWithHttps.equals("https://bandcamp.com/api/bcweekly/3/list")) {
                    return "Radio";
                }
                if (replaceHttpWithHttps.equals("https://bandcamp.com/api/mobile/24/bootstrap_data")) {
                    return "Featured";
                }
                return null;
            default:
                return super.getId(str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        String str3;
        switch (this.$r8$classId) {
            case 0:
                JsonObject artistDetails = BandcampExtractorHelper.getArtistDetails(str);
                if (!artistDetails.getBoolean("error")) {
                    return Utils.replaceHttpWithHttps(artistDetails.getString("bandcamp_url", null));
                }
                Utils$$ExternalSyntheticBUOutline0.m("JSON does not contain a channel URL (invalid id?) or is otherwise invalid");
                return null;
            case 1:
                new ArrayList(0);
                JsonObject artistDetails2 = BandcampExtractorHelper.getArtistDetails(str);
                if (artistDetails2.getBoolean("error")) {
                    Utils$$ExternalSyntheticBUOutline0.m("JSON does not contain a channel URL (invalid id?) or is otherwise invalid");
                    return null;
                }
                String replaceHttpWithHttps = Utils.replaceHttpWithHttps(artistDetails2.getString("bandcamp_url", null));
                String str4 = (String) list.get(0);
                str4.getClass();
                if (str4.equals("albums")) {
                    str3 = "/album";
                } else {
                    if (!str4.equals("tracks")) {
                        throw new UnsupportedTabException(str4);
                    }
                    str3 = "/track";
                }
                return Owner.CC.m$1(replaceHttpWithHttps, str3);
            case 2:
                return Utils.replaceHttpWithHttps(str);
            case 3:
                if (str.equals("Featured")) {
                    return "https://bandcamp.com/api/mobile/24/bootstrap_data";
                }
                if (str.equals("Radio")) {
                    return "https://bandcamp.com/api/bcweekly/3/list";
                }
                return null;
            default:
                return Utils.replaceHttpWithHttps(str);
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        switch (this.$r8$classId) {
            case 0:
                String lowerCase = str.toLowerCase();
                String[] split = lowerCase.split("/");
                if (split.length != 3 && split.length != 4) {
                    return false;
                }
                if ((split.length != 4 || split[3].equals("releases") || split[3].equals("music") || split[3].equals("album") || split[3].equals("track")) && !split[2].equals("daily.bandcamp.com")) {
                    return BandcampExtractorHelper.isArtistDomain(lowerCase);
                }
                return false;
            case 1:
                return INSTANCE.onAcceptUrl(str);
            case 2:
                if (BandcampExtractorHelper.isRadioUrl(str)) {
                    return true;
                }
                if (str.toLowerCase().matches("https?://.+\\..+/(track|album)/.+")) {
                    return BandcampExtractorHelper.isArtistDomain(str);
                }
                return false;
            case 3:
                String replaceHttpWithHttps = Utils.replaceHttpWithHttps(str);
                if (replaceHttpWithHttps.equals("https://bandcamp.com/api/mobile/24/bootstrap_data") || replaceHttpWithHttps.equals("https://bandcamp.com/api/bcweekly/3/list")) {
                    return true;
                }
                List list = BandcampExtractorHelper.IMAGE_URL_SUFFIXES_AND_RESOLUTIONS;
                return replaceHttpWithHttps.toLowerCase().matches("https?://bandcamp\\.com/\\?show=\\d+");
            default:
                if (str.toLowerCase().matches("https?://.+\\..+/album/.+")) {
                    return BandcampExtractorHelper.isArtistDomain(str);
                }
                return false;
        }
    }
}
