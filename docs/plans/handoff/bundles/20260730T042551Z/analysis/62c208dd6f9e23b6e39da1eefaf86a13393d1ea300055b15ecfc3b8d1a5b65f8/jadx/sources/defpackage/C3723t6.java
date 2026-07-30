package defpackage;

import com.facebook.appevents.AppEventsConstants;
import defpackage.C0587Wl;
import defpackage.C3947wv;
import defpackage.Tz;
import java.util.ArrayList;
import java.util.Collections;

/* renamed from: t6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3723t6 implements InterfaceC3940wo {
    /* renamed from: for, reason: not valid java name */
    public static boolean m8194for(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m8195if(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static Tz m8196new(Tz tz) {
        if (tz == null || tz.f3774do == null) {
            return tz;
        }
        Tz.Cdo cdo = new Tz.Cdo(tz);
        cdo.f3786do = null;
        return cdo.m2302do();
    }

    @Override // defpackage.InterfaceC3940wo
    /* renamed from: do */
    public final Tz mo2113do(Xy xy) {
        C0587Wl c0587Wl;
        System.currentTimeMillis();
        Bz bz = xy.f4617do;
        C3782u6 c3782u6 = new C3782u6(bz, null);
        if (bz != null) {
            C3664s6 c3664s6 = bz.f301do;
            if (c3664s6 == null) {
                c3664s6 = C3664s6.m8053do(bz.f297do);
                bz.f301do = c3664s6;
            }
            if (c3664s6.f15380case) {
                c3782u6 = new C3782u6(null, null);
            }
        }
        Bz bz2 = c3782u6.f15854do;
        Tz tz = c3782u6.f15855do;
        if (bz2 == null && tz == null) {
            Tz.Cdo cdo = new Tz.Cdo();
            cdo.f3783do = xy.f4617do;
            cdo.f3789do = EnumC3538py.HTTP_1_1;
            cdo.f3781do = 504;
            cdo.f3788do = "Unsatisfiable Request (only-if-cached)";
            cdo.f3786do = SJ.f3489do;
            cdo.f3782do = -1L;
            cdo.f3791if = System.currentTimeMillis();
            return cdo.m2302do();
        }
        if (bz2 == null) {
            tz.getClass();
            Tz.Cdo cdo2 = new Tz.Cdo(tz);
            Tz m8196new = m8196new(tz);
            if (m8196new != null) {
                Tz.Cdo.m2301if("cacheResponse", m8196new);
            }
            cdo2.f3792if = m8196new;
            return cdo2.m2302do();
        }
        Tz m2876do = xy.m2876do(bz2);
        if (tz != null) {
            if (m2876do.f3777for == 304) {
                Tz.Cdo cdo3 = new Tz.Cdo(tz);
                ArrayList arrayList = new ArrayList(20);
                C0587Wl c0587Wl2 = tz.f3775do;
                int length = c0587Wl2.f4398do.length / 2;
                int i = 0;
                while (true) {
                    c0587Wl = m2876do.f3775do;
                    if (i >= length) {
                        break;
                    }
                    String m2769new = c0587Wl2.m2769new(i);
                    String m2767case = c0587Wl2.m2767case(i);
                    if ((!"Warning".equalsIgnoreCase(m2769new) || !m2767case.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_YES)) && (m8195if(m2769new) || !m8194for(m2769new) || c0587Wl.m2768for(m2769new) == null)) {
                        AbstractC4058yo.f16832do.getClass();
                        arrayList.add(m2769new);
                        arrayList.add(m2767case.trim());
                    }
                    i++;
                }
                int length2 = c0587Wl.f4398do.length / 2;
                for (int i2 = 0; i2 < length2; i2++) {
                    String m2769new2 = c0587Wl.m2769new(i2);
                    if (!m8195if(m2769new2) && m8194for(m2769new2)) {
                        C3947wv.Cdo cdo4 = AbstractC4058yo.f16832do;
                        String m2767case2 = c0587Wl.m2767case(i2);
                        cdo4.getClass();
                        arrayList.add(m2769new2);
                        arrayList.add(m2767case2.trim());
                    }
                }
                String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                C0587Wl.Cdo cdo5 = new C0587Wl.Cdo();
                Collections.addAll(cdo5.f4399do, strArr);
                cdo3.f3787do = cdo5;
                cdo3.f3782do = m2876do.f3770do;
                cdo3.f3791if = m2876do.f3779if;
                Tz m8196new2 = m8196new(tz);
                if (m8196new2 != null) {
                    Tz.Cdo.m2301if("cacheResponse", m8196new2);
                }
                cdo3.f3792if = m8196new2;
                Tz m8196new3 = m8196new(m2876do);
                if (m8196new3 != null) {
                    Tz.Cdo.m2301if("networkResponse", m8196new3);
                }
                cdo3.f3784do = m8196new3;
                cdo3.m2302do();
                m2876do.f3774do.close();
                throw null;
            }
            SJ.m2149try(tz.f3774do);
        }
        Tz.Cdo cdo6 = new Tz.Cdo(m2876do);
        Tz m8196new4 = m8196new(tz);
        if (m8196new4 != null) {
            Tz.Cdo.m2301if("cacheResponse", m8196new4);
        }
        cdo6.f3792if = m8196new4;
        Tz m8196new5 = m8196new(m2876do);
        if (m8196new5 != null) {
            Tz.Cdo.m2301if("networkResponse", m8196new5);
        }
        cdo6.f3784do = m8196new5;
        return cdo6.m2302do();
    }
}
