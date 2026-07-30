package defpackage;

import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* renamed from: mp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3352mp implements InterfaceC0704ag<C3352mp> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2948ip f14397do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f14398do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14399do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashMap f14400if;

    /* renamed from: if, reason: not valid java name */
    public static final C2948ip f14396if = new InterfaceC3535pv() { // from class: ip
        @Override // defpackage.InterfaceC0647Zf
        /* renamed from: do */
        public final void mo2012do(Object obj, InterfaceC3594qv interfaceC3594qv) {
            throw new C2646dg("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    };

    /* renamed from: do, reason: not valid java name */
    public static final C3175jp f14393do = new InterfaceC2628dK() { // from class: jp
        @Override // defpackage.InterfaceC0647Zf
        /* renamed from: do */
        public final void mo2012do(Object obj, InterfaceC2686eK interfaceC2686eK) {
            interfaceC2686eK.mo6557else((String) obj);
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3234kp f14394do = new InterfaceC2628dK() { // from class: kp
        @Override // defpackage.InterfaceC0647Zf
        /* renamed from: do */
        public final void mo2012do(Object obj, InterfaceC2686eK interfaceC2686eK) {
            interfaceC2686eK.mo6558try(((Boolean) obj).booleanValue());
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f14395do = new Cdo();

    /* renamed from: mp$do, reason: invalid class name */
    public static final class Cdo implements InterfaceC2628dK<Date> {

        /* renamed from: do, reason: not valid java name */
        public static final SimpleDateFormat f14401do;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f14401do = simpleDateFormat;
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        }

        @Override // defpackage.InterfaceC0647Zf
        /* renamed from: do */
        public final void mo2012do(Object obj, InterfaceC2686eK interfaceC2686eK) {
            interfaceC2686eK.mo6557else(f14401do.format((Date) obj));
        }
    }

    public C3352mp() {
        HashMap hashMap = new HashMap();
        this.f14398do = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f14400if = hashMap2;
        this.f14397do = f14396if;
        this.f14399do = false;
        hashMap2.put(String.class, f14393do);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, f14394do);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, f14395do);
        hashMap.remove(Date.class);
    }

    @Override // defpackage.InterfaceC0704ag
    /* renamed from: do */
    public final C3352mp mo3144do(Class cls, InterfaceC3535pv interfaceC3535pv) {
        this.f14398do.put(cls, interfaceC3535pv);
        this.f14400if.remove(cls);
        return this;
    }
}
