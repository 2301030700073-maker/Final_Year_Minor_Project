package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzpu;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class YU extends XU {
    public YU(ZU zu) {
        super(zu);
    }

    /* renamed from: super, reason: not valid java name */
    public static String m2936super(UR ur) {
        Uri.Builder builder = new Uri.Builder();
        String m2382break = ur.m2382break();
        if (TextUtils.isEmpty(m2382break)) {
            m2382break = ur.m2402new();
        }
        builder.scheme(C3684sQ.f15488try.m2158do(null)).encodedAuthority(C3684sQ.f15453case.m2158do(null)).path("config/app/" + m2382break).appendQueryParameter("platform", Constants.PLATFORM).appendQueryParameter("gmp_version", "106000").appendQueryParameter("runtime_version", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        return builder.build().toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public final C0696aV m2937throw(String str) {
        UR x;
        if (zzpu.zza()) {
            C0696aV c0696aV = null;
            if (m7572else().m3012throws(null, C3684sQ.J)) {
                m7571break();
                if (C3395nV.C(str)) {
                    mo2249case().f13723this.m7369if("sgtm feature flag enabled.");
                    UR x2 = m2833const().x(str);
                    if (x2 == null) {
                        return new C0696aV(m2938while(str), 1);
                    }
                    String m2390else = x2.m2390else();
                    zzfr.zzd m945package = m2834final().m945package(str);
                    if (!((m945package == null || (x = m2833const().x(str)) == null || ((!m945package.zzq() || m945package.zzh().zza() != 100) && !m7571break().z(str, x.m2385class()) && (!m7572else().m3012throws(null, C3684sQ.L) ? !(TextUtils.isEmpty(m2390else) || m2390else.hashCode() % 100 >= m945package.zzh().zza()) : !(TextUtils.isEmpty(m2390else) || Math.abs(m2390else.hashCode() % 100) >= m945package.zzh().zza())))) ? false : true)) {
                        return new C0696aV(m2938while(str), 1);
                    }
                    if (x2.m2410super()) {
                        mo2249case().f13723this.m7369if("sgtm upload enabled in manifest.");
                        zzfr.zzd m945package2 = m2834final().m945package(x2.m2383case());
                        if (m945package2 != null && m945package2.zzq()) {
                            String zze = m945package2.zzh().zze();
                            if (!TextUtils.isEmpty(zze)) {
                                String zzd = m945package2.zzh().zzd();
                                mo2249case().f13723this.m7367do(zze, "sgtm configured with upload_url, server_info", TextUtils.isEmpty(zzd) ? "Y" : "N");
                                if (TextUtils.isEmpty(zzd)) {
                                    c0696aV = new C0696aV(zze, 3);
                                } else {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("x-sgtm-server-info", zzd);
                                    if (!TextUtils.isEmpty(x2.m2385class())) {
                                        hashMap.put("x-gtm-server-preview", x2.m2385class());
                                    }
                                    c0696aV = new C0696aV(zze, hashMap, 3);
                                }
                            }
                        }
                    }
                    if (c0696aV != null) {
                        return c0696aV;
                    }
                }
            }
        }
        return new C0696aV(m2938while(str), 1);
    }

    /* renamed from: while, reason: not valid java name */
    public final String m2938while(String str) {
        String m950strictfp = m2834final().m950strictfp(str);
        if (TextUtils.isEmpty(m950strictfp)) {
            return C3684sQ.f15490while.m2158do(null);
        }
        Uri parse = Uri.parse(C3684sQ.f15490while.m2158do(null));
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.authority(m950strictfp + "." + parse.getAuthority());
        return buildUpon.build().toString();
    }
}
