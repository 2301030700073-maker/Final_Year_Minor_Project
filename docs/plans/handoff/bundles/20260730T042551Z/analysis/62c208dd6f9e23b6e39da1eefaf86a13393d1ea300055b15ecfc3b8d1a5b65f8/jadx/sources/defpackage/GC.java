package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class GC {

    /* renamed from: do, reason: not valid java name */
    public int f1143do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0768bk<UUID> f1144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3499pH f1146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C4083zC f1147do;

    public GC() {
        throw null;
    }

    public GC(int i) {
        O2 o2 = O2.f2480do;
        FC fc = FC.f994do;
        this.f1146do = o2;
        this.f1144do = fc;
        this.f1145do = m713do();
        this.f1143do = -1;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m713do() {
        String uuid = this.f1144do.mo585new().toString();
        C0173Do.m399new(uuid, "uuidGenerator().toString()");
        String lowerCase = BF.i(uuid, "-", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).toLowerCase(Locale.ROOT);
        C0173Do.m399new(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    /* renamed from: if, reason: not valid java name */
    public final C4083zC m714if() {
        C4083zC c4083zC = this.f1147do;
        if (c4083zC != null) {
            return c4083zC;
        }
        C0173Do.m400this("currentSession");
        throw null;
    }
}
