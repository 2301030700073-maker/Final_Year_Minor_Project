package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.auto.value.AutoValue;
import defpackage.W3;
import java.util.HashMap;
import java.util.Map;

@AutoValue
/* renamed from: sg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3696sg {

    @AutoValue.Builder
    /* renamed from: sg$do, reason: invalid class name */
    public static abstract class Cdo {
        /* renamed from: do, reason: not valid java name */
        public final void m8136do(String str, String str2) {
            Map<String, String> map = ((W3.Cdo) this).f4316do;
            if (map == null) {
                throw new IllegalStateException("Property \"autoMetadata\" has not been set");
            }
            map.put(str, str2);
        }
    }

    /* renamed from: break */
    public abstract String mo2690break();

    /* renamed from: case */
    public abstract byte[] mo2691case();

    /* renamed from: catch */
    public abstract String mo2692catch();

    /* renamed from: class */
    public abstract long mo2693class();

    /* renamed from: const, reason: not valid java name */
    public final W3.Cdo m8133const() {
        W3.Cdo cdo = new W3.Cdo();
        cdo.m2702new(mo2692catch());
        cdo.f4313do = mo2695for();
        cdo.f4318if = mo2698this();
        cdo.f4320if = mo2690break();
        cdo.f4317do = mo2691case();
        cdo.f4321if = mo2694else();
        cdo.m2700for(mo2697new());
        cdo.f4314do = Long.valueOf(mo2699try());
        cdo.f4319if = Long.valueOf(mo2693class());
        cdo.f4316do = new HashMap(mo2696if());
        return cdo;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m8134do(String str) {
        String str2 = mo2696if().get(str);
        return str2 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str2;
    }

    /* renamed from: else */
    public abstract byte[] mo2694else();

    /* renamed from: for */
    public abstract Integer mo2695for();

    /* renamed from: goto, reason: not valid java name */
    public final int m8135goto(String str) {
        String str2 = mo2696if().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* renamed from: if */
    public abstract Map<String, String> mo2696if();

    /* renamed from: new */
    public abstract C0581Wf mo2697new();

    /* renamed from: this */
    public abstract Integer mo2698this();

    /* renamed from: try */
    public abstract long mo2699try();
}
