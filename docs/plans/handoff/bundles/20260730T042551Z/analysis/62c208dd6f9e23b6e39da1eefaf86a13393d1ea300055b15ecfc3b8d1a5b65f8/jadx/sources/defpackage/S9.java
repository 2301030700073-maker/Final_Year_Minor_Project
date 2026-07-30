package defpackage;

/* loaded from: classes3.dex */
public final class S9 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static S9 f3455do;

    /* renamed from: throw, reason: not valid java name */
    public static synchronized S9 m2115throw() {
        S9 s9;
        synchronized (S9.class) {
            if (f3455do == null) {
                f3455do = new S9();
            }
            s9 = f3455do;
        }
        return s9;
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: else, reason: not valid java name */
    public final String mo2116else() {
        return "isEnabled";
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: goto */
    public final String mo2016goto() {
        return "firebase_performance_collection_enabled";
    }
}
