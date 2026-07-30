package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* renamed from: q6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3547q6 implements InterfaceC0559Vf {

    /* renamed from: do, reason: not valid java name */
    public static final Set<C0823cg> f15037do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3547q6 f15038do;

    /* renamed from: for, reason: not valid java name */
    public static final String f15039for;

    /* renamed from: if, reason: not valid java name */
    public static final C3547q6 f15040if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15041do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f15042if;

    static {
        String m7989abstract = C3645ro.m7989abstract("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f15039for = m7989abstract;
        String m7989abstract2 = C3645ro.m7989abstract("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String m7989abstract3 = C3645ro.m7989abstract("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f15037do = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(new C0823cg("proto"), new C0823cg("json"))));
        f15038do = new C3547q6(m7989abstract, null);
        f15040if = new C3547q6(m7989abstract2, m7989abstract3);
    }

    public C3547q6(String str, String str2) {
        this.f15041do = str;
        this.f15042if = str2;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3547q6 m7852do(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
        if (split.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = split[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new C3547q6(str2, str3);
    }

    /* renamed from: if, reason: not valid java name */
    public final byte[] m7853if() {
        String str = this.f15041do;
        String str2 = this.f15042if;
        if (str2 == null && str == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = str;
        objArr[2] = "\\";
        if (str2 == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        objArr[3] = str2;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }
}
