package org.schabi.newpipe.extractor.services.media_ccc.linkHandler;

import androidx.compose.ui.node.Owner;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCLiveListLinkHandlerFactory extends ListLinkHandlerFactory {
    public final /* synthetic */ int $r8$classId;
    public static final MediaCCCLiveListLinkHandlerFactory INSTANCE$1 = new MediaCCCLiveListLinkHandlerFactory(1);
    public static final MediaCCCLiveListLinkHandlerFactory INSTANCE$2 = new MediaCCCLiveListLinkHandlerFactory(2);
    public static final MediaCCCLiveListLinkHandlerFactory INSTANCE = new MediaCCCLiveListLinkHandlerFactory(0);
    public static final MediaCCCLiveListLinkHandlerFactory INSTANCE$3 = new MediaCCCLiveListLinkHandlerFactory(3);

    public /* synthetic */ MediaCCCLiveListLinkHandlerFactory(int i) {
        this.$r8$classId = i;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory, okhttp3.Cookie.Companion
    public final String getId(String str) {
        switch (this.$r8$classId) {
            case 0:
                return "live";
            case 1:
                return Parser.matchGroup("(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)", 1, str);
            case 2:
                return "conferences";
            default:
                return "recent";
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory
    public final String getUrl(String str, String str2, List list) {
        switch (this.$r8$classId) {
            case 0:
                return "https://media.ccc.de/live";
            case 1:
                return Owner.CC.m("https://media.ccc.de/c/", str);
            case 2:
                return "https://media.ccc.de/public/conferences";
            default:
                return "https://media.ccc.de/recent";
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        switch (this.$r8$classId) {
            case 0:
                return Pattern.matches("^(?:https?://)?media\\.ccc\\.de/live$", str);
            case 1:
                try {
                    if (getId(str) != null) {
                        return true;
                    }
                } catch (ParsingException unused) {
                }
                return false;
            case 2:
                return str.equals("https://media.ccc.de/b/conferences") || str.equals("https://media.ccc.de/public/conferences") || str.equals("https://api.media.ccc.de/public/conferences");
            default:
                return Pattern.matches("^(https?://)?media\\.ccc\\.de/recent/?$", str);
        }
    }
}
