package org.schabi.newpipe.extractor.services.youtube.linkHandler;

import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeStreamLinkHandlerFactory extends Cookie.Companion {
    public static final List SUBPATHS;
    public static final Pattern YOUTUBE_VIDEO_ID_REGEX_PATTERN = Pattern.compile("^([a-zA-Z0-9_-]{11})");
    public static final YoutubeStreamLinkHandlerFactory INSTANCE = new YoutubeStreamLinkHandlerFactory();

    static {
        int i = 0;
        Object[] objArr = {"embed/", "live/", "shorts/", "watch/", "v/", "w/"};
        ArrayList arrayList = new ArrayList(6);
        while (i < 6) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        SUBPATHS = DesugarCollections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String assertIsId(java.lang.String r2) {
        /*
            r0 = 0
            if (r2 == 0) goto L15
            java.util.regex.Pattern r1 = org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory.YOUTUBE_VIDEO_ID_REGEX_PATTERN
            java.util.regex.Matcher r2 = r1.matcher(r2)
            boolean r1 = r2.find()
            if (r1 == 0) goto L15
            r1 = 1
            java.lang.String r2 = r2.group(r1)
            goto L16
        L15:
            r2 = r0
        L16:
            if (r2 == 0) goto L19
            return r2
        L19:
            java.lang.String r2 = "The given string is not a YouTube video ID"
            org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory.assertIsId(java.lang.String):java.lang.String");
    }

    public static String getIdFromSubpathsInPath(String str) {
        for (String str2 : SUBPATHS) {
            if (str.startsWith(str2)) {
                return assertIsId(str.substring(str2.length()));
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x028b, code lost:
    
        if (r2.equals("Y2U.BE") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a9, code lost:
    
        if (r0.getHost().equalsIgnoreCase("y2u.be") == false) goto L233;
     */
    @Override // okhttp3.Cookie.Companion
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getId(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory.getId(java.lang.String):java.lang.String");
    }

    @Override // okhttp3.Cookie.Companion
    public final String getUrl(String str) {
        return Owner.CC.m("https://www.youtube.com/watch?v=", str);
    }

    @Override // okhttp3.Cookie.Companion
    public final boolean onAcceptUrl(String str) {
        try {
            getId(str);
            return true;
        } catch (FoundAdException e) {
            throw e;
        } catch (ParsingException unused) {
            return false;
        }
    }
}
