package org.maplibre.android.attribution;

import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.style.URLSpan;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AttributionParser {
    public final String attributionData;
    public final LinkedHashSet attributions = new LinkedHashSet();
    public final boolean withCopyrightSign;
    public final boolean withImproveMap;

    public AttributionParser(String str, boolean z, boolean z2) {
        this.attributionData = str;
        this.withImproveMap = z;
        this.withCopyrightSign = z2;
    }

    public final void parseAttributions() {
        int i = Build.VERSION.SDK_INT;
        String str = this.attributionData;
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) (i >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str));
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
            String url = uRLSpan.getURL();
            if (this.withImproveMap || !Attribution.IMPROVE_MAP_URLS.contains(url)) {
                int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
                int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
                char[] cArr = new char[spanEnd - spanStart];
                spannableStringBuilder.getChars(spanStart, spanEnd, cArr, 0);
                String valueOf = String.valueOf(cArr);
                if (!this.withCopyrightSign && valueOf.startsWith("© ")) {
                    valueOf = valueOf.substring(2, valueOf.length());
                }
                Attribution attribution = new Attribution();
                attribution.title = valueOf;
                attribution.url = url;
                this.attributions.add(attribution);
            }
        }
    }
}
