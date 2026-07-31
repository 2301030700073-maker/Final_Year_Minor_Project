package androidx.core.provider;

import android.util.Base64;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FontRequest {
    public final List mCertificates;
    public final String mIdentifier;
    public final String mProviderAuthority;
    public final String mProviderPackage;
    public final String mQuery;
    public final String mSystemFont;
    public final String mVariationSettings;

    public FontRequest(String str, String str2, String str3, List list, String str4, String str5) {
        str.getClass();
        this.mProviderAuthority = str;
        str2.getClass();
        this.mProviderPackage = str2;
        this.mQuery = str3;
        list.getClass();
        this.mCertificates = list;
        this.mSystemFont = str4;
        this.mVariationSettings = str5;
        StringBuilder m352m = Modifier.CC.m352m(str, "-", str2, "-", str3);
        m352m.append("-");
        m352m.append(str4);
        if (str5 != null) {
            int length = str5.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                int codePointAt = str5.codePointAt(i);
                if (!Character.isWhitespace(codePointAt)) {
                    m352m.append("-VF");
                    break;
                }
                i += Character.charCount(codePointAt);
            }
        }
        this.mIdentifier = m352m.toString();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FontRequest {mProviderAuthority: ");
        sb.append(this.mProviderAuthority);
        sb.append(", mProviderPackage: ");
        sb.append(this.mProviderPackage);
        sb.append(", mQuery: ");
        sb.append(this.mQuery);
        sb.append(", mSystemFont: ");
        sb.append(this.mSystemFont);
        sb.append(", mVariationSettings: ");
        StringBuilder sb2 = new StringBuilder(Animation.CC.m(sb, this.mVariationSettings, ", mCertificates:"));
        int i = 0;
        while (true) {
            List list = this.mCertificates;
            if (i >= list.size()) {
                sb2.append("}mCertificatesArray: 0");
                return sb2.toString();
            }
            sb2.append(" [");
            List list2 = (List) list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
            i++;
        }
    }
}
