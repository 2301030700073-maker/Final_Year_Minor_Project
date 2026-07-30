package defpackage;

/* renamed from: id, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2937id {

    /* renamed from: do, reason: not valid java name */
    public static final InterfaceC0184Ed f13528do;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String str;
        InterfaceC0184Ed interfaceC0184Ed;
        int i = C4087zG.f16882do;
        try {
            str = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null ? Boolean.parseBoolean(str) : false) {
            C3752td c3752td = C0185Ee.f871do;
            AbstractC3531pr abstractC3531pr = C3648rr.f15331do;
            abstractC3531pr.s();
            interfaceC0184Ed = !(abstractC3531pr instanceof InterfaceC0184Ed) ? RunnableC2878hd.f13336do : (InterfaceC0184Ed) abstractC3531pr;
        } else {
            interfaceC0184Ed = RunnableC2878hd.f13336do;
        }
        f13528do = interfaceC0184Ed;
    }
}
