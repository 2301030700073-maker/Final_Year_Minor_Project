package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* renamed from: pt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3533pt {

    /* renamed from: do, reason: not valid java name */
    public final String f15007do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f15008do;

    /* renamed from: if, reason: not valid java name */
    public Cdo f15009if;

    /* renamed from: pt$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Object f15010do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cdo f15011do;
    }

    public C3533pt(String str) {
        Cdo cdo = new Cdo();
        this.f15008do = cdo;
        this.f15009if = cdo;
        this.f15007do = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f15007do);
        sb.append('{');
        Cdo cdo = this.f15008do.f15011do;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (cdo != null) {
            Object obj = cdo.f15010do;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            cdo = cdo.f15011do;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
