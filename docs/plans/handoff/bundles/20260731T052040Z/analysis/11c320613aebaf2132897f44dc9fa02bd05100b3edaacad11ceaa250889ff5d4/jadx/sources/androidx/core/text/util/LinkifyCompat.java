package androidx.core.text.util;

import android.os.Build;
import android.text.Spannable;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import androidx.core.util.PatternsCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LinkifyCompat {
    public static final LayoutNode$$ExternalSyntheticLambda3 COMPARATOR = new LayoutNode$$ExternalSyntheticLambda3(6);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LinkSpec {
        public int end;
        public URLSpan frameworkAddedSpan;
        public int start;
        public String url;
    }

    public static boolean addLinks(Spannable spannable, int i) {
        int i2;
        int i3;
        int i4;
        if (Build.VERSION.SDK_INT >= 28) {
            return Linkify.addLinks(spannable, i);
        }
        if (i != 0) {
            Object[] objArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
            for (int length = objArr.length - 1; length >= 0; length--) {
                spannable.removeSpan(objArr[length]);
            }
            if ((i & 4) != 0) {
                Linkify.addLinks(spannable, 4);
            }
            ArrayList arrayList = new ArrayList();
            gatherLinks(arrayList, spannable, PatternsCompat.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter);
            if ((i & 2) != 0) {
                gatherLinks(arrayList, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{"mailto:"}, null);
            }
            for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
                LinkSpec linkSpec = new LinkSpec();
                linkSpec.frameworkAddedSpan = uRLSpan;
                linkSpec.start = spannable.getSpanStart(uRLSpan);
                linkSpec.end = spannable.getSpanEnd(uRLSpan);
                arrayList.add(linkSpec);
            }
            Collections.sort(arrayList, COMPARATOR);
            int size = arrayList.size();
            int i5 = 0;
            while (i5 < size - 1) {
                LinkSpec linkSpec2 = (LinkSpec) arrayList.get(i5);
                int i6 = i5 + 1;
                LinkSpec linkSpec3 = (LinkSpec) arrayList.get(i6);
                int i7 = linkSpec2.start;
                int i8 = linkSpec3.start;
                if (i7 <= i8 && (i2 = linkSpec2.end) > i8) {
                    int i9 = linkSpec3.end;
                    int i10 = (i9 > i2 && (i3 = i2 - i7) <= (i4 = i9 - i8)) ? i3 < i4 ? i5 : -1 : i6;
                    if (i10 != -1) {
                        Object obj = ((LinkSpec) arrayList.get(i10)).frameworkAddedSpan;
                        if (obj != null) {
                            spannable.removeSpan(obj);
                        }
                        arrayList.remove(i10);
                        size--;
                    }
                }
                i5 = i6;
            }
            if (arrayList.size() != 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LinkSpec linkSpec4 = (LinkSpec) it.next();
                    if (linkSpec4.frameworkAddedSpan == null) {
                        spannable.setSpan(new URLSpan(linkSpec4.url), linkSpec4.start, linkSpec4.end, 33);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void gatherLinks(ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter) {
        boolean z;
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            String group = matcher.group(0);
            if ((matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) && group != null) {
                LinkSpec linkSpec = new LinkSpec();
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    String str = strArr[i];
                    if (group.regionMatches(true, 0, str, 0, str.length())) {
                        z = true;
                        if (!group.regionMatches(false, 0, str, 0, str.length())) {
                            group = str.concat(group.substring(str.length()));
                        }
                    } else {
                        i++;
                    }
                }
                if (!z && strArr.length > 0) {
                    group = Modifier.CC.m(new StringBuilder(), strArr[0], group);
                }
                linkSpec.url = group;
                linkSpec.start = start;
                linkSpec.end = end;
                arrayList.add(linkSpec);
            }
        }
    }
}
