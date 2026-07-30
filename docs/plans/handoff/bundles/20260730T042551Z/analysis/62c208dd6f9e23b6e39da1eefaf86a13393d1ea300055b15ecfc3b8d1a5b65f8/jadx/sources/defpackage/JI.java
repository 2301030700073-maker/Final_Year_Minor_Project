package defpackage;

/* loaded from: classes3.dex */
public final class JI {
    /* renamed from: do, reason: not valid java name */
    public static void m1035do(int i, Object obj) {
        if (obj != null) {
            boolean z = false;
            if (obj instanceof InterfaceC3700sk) {
                if ((obj instanceof InterfaceC0125Bk ? ((InterfaceC0125Bk) obj).getArity() : obj instanceof InterfaceC0768bk ? 0 : obj instanceof InterfaceC2650dk ? 1 : obj instanceof InterfaceC3641rk ? 2 : obj instanceof InterfaceC3759tk ? 3 : obj instanceof InterfaceC3818uk ? 4 : obj instanceof InterfaceC3877vk ? 5 : obj instanceof InterfaceC3936wk ? 6 : obj instanceof InterfaceC3995xk ? 7 : obj instanceof InterfaceC4054yk ? 8 : obj instanceof InterfaceC4113zk ? 9 : obj instanceof InterfaceC0827ck ? 10 : obj instanceof InterfaceC2708ek ? 11 : obj instanceof InterfaceC2767fk ? 12 : obj instanceof InterfaceC2826gk ? 13 : obj instanceof InterfaceC2885hk ? 14 : obj instanceof InterfaceC2943ik ? 15 : obj instanceof InterfaceC3170jk ? 16 : obj instanceof InterfaceC3229kk ? 17 : obj instanceof InterfaceC3288lk ? 18 : obj instanceof InterfaceC3347mk ? 19 : obj instanceof InterfaceC3465ok ? 20 : obj instanceof InterfaceC3524pk ? 21 : obj instanceof InterfaceC3583qk ? 22 : -1) == i) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            m1036if(obj, "kotlin.jvm.functions.Function" + i);
            throw null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1036if(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(Creturn.m7982new(obj == null ? "null" : obj.getClass().getName(), " cannot be cast to ", str));
        C0173Do.m395else(JI.class.getName(), classCastException);
        throw classCastException;
    }
}
