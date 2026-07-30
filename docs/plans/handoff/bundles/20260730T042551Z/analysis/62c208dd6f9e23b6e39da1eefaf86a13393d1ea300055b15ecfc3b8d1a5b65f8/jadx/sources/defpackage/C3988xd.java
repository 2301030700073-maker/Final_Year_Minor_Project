package defpackage;

import android.text.TextUtils;
import com.facebook.appevents.codeless.internal.Constants;
import java.util.HashMap;

/* renamed from: xd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3988xd implements InterfaceC3318mD {

    /* renamed from: do, reason: not valid java name */
    public final HQ f16590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16591do;

    public C3988xd(String str, HQ hq) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f16590do = hq;
        this.f16591do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8654do(C0127Bm c0127Bm, C3259lD c3259lD) {
        m8656if(c0127Bm, "X-CRASHLYTICS-GOOGLE-APP-ID", c3259lD.f14118do);
        m8656if(c0127Bm, "X-CRASHLYTICS-API-CLIENT-TYPE", Constants.PLATFORM);
        m8656if(c0127Bm, "X-CRASHLYTICS-API-CLIENT-VERSION", "19.2.1");
        m8656if(c0127Bm, "Accept", "application/json");
        m8656if(c0127Bm, "X-CRASHLYTICS-DEVICE-MODEL", c3259lD.f14121if);
        m8656if(c0127Bm, "X-CRASHLYTICS-OS-BUILD-VERSION", c3259lD.f14120for);
        m8656if(c0127Bm, "X-CRASHLYTICS-OS-DISPLAY-VERSION", c3259lD.f14122new);
        m8656if(c0127Bm, "X-CRASHLYTICS-INSTALLATION-ID", ((C0788c4) ((C3232kn) c3259lD.f14117do).m7279for()).f8483do);
    }

    /* renamed from: for, reason: not valid java name */
    public static HashMap m8655for(C3259lD c3259lD) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c3259lD.f14119else);
        hashMap.put("display_version", c3259lD.f14115case);
        hashMap.put("source", Integer.toString(c3259lD.f14116do));
        String str = c3259lD.f14123try;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8656if(C0127Bm c0127Bm, String str, String str2) {
        if (str2 != null) {
            c0127Bm.f280do.put(str, str2);
        }
    }
}
