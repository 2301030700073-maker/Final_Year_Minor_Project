package org.wikipedia.descriptions;

import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.BulletSpan;
import android.widget.ScrollView;
import okio.Okio__OkioKt;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditRevertHelpView extends ScrollView {
    public static SpannedString createReason(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        BulletSpan bulletSpan = new BulletSpan(Okio__OkioKt.roundedDpToPx(8.0f));
        int length = spannableStringBuilder.length();
        StringUtil stringUtil = StringUtil.INSTANCE;
        spannableStringBuilder.append((CharSequence) StringUtil.fromHtml(str));
        spannableStringBuilder.setSpan(bulletSpan, length, spannableStringBuilder.length(), 17);
        return new SpannedString(spannableStringBuilder);
    }
}
