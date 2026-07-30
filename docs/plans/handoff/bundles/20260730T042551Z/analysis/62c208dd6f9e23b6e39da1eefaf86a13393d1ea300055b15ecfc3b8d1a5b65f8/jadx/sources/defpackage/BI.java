package defpackage;

import android.content.Context;
import defpackage.C4075z4;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class BI implements InterfaceC4089zI {

    /* renamed from: do, reason: not valid java name */
    public static volatile C0227Gc f224do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CJ f225do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2792g8 f226do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3787uB f227do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC2792g8 f228if;

    public BI(InterfaceC2792g8 interfaceC2792g8, InterfaceC2792g8 interfaceC2792g82, InterfaceC3787uB interfaceC3787uB, CJ cj, DM dm) {
        this.f226do = interfaceC2792g8;
        this.f228if = interfaceC2792g82;
        this.f227do = interfaceC3787uB;
        this.f225do = cj;
        dm.getClass();
        dm.f608do.execute(new RunnableC2617d9(dm, 2));
    }

    /* renamed from: do, reason: not valid java name */
    public static BI m173do() {
        C0227Gc c0227Gc = f224do;
        if (c0227Gc != null) {
            return c0227Gc.f1211new.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m174if(Context context) {
        if (f224do == null) {
            synchronized (BI.class) {
                if (f224do == null) {
                    context.getClass();
                    f224do = new C0227Gc(context);
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final C3912wI m175for(C3547q6 c3547q6) {
        Set singleton;
        if (c3547q6 instanceof InterfaceC0559Vf) {
            c3547q6.getClass();
            singleton = DesugarCollections.unmodifiableSet(C3547q6.f15037do);
        } else {
            singleton = Collections.singleton(new C0823cg("proto"));
        }
        C4075z4.Cdo m8379do = AbstractC3794uI.m8379do();
        c3547q6.getClass();
        m8379do.m8785if("cct");
        m8379do.f16859do = c3547q6.m7853if();
        return new C3912wI(singleton, m8379do.m8783do(), this);
    }
}
