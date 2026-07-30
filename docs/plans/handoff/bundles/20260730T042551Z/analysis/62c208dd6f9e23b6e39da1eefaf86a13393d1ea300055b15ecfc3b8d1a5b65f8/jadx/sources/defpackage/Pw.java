package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class Pw {

    /* renamed from: Pw$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Method f2842do;

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        
            if (defpackage.C0173Do.m394do(r7.length == 1 ? r7[0] : null, java.lang.Throwable.class) != false) goto L14;
         */
        static {
            /*
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                defpackage.C0173Do.m399new(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            Le:
                r5 = 0
                if (r4 >= r2) goto L3d
                r6 = r1[r4]
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = defpackage.C0173Do.m394do(r7, r8)
                if (r7 == 0) goto L35
                java.lang.Class[] r7 = r6.getParameterTypes()
                java.lang.String r8 = "it.parameterTypes"
                defpackage.C0173Do.m399new(r7, r8)
                int r8 = r7.length
                r9 = 1
                if (r8 != r9) goto L2e
                r5 = r7[r3]
            L2e:
                boolean r5 = defpackage.C0173Do.m394do(r5, r0)
                if (r5 == 0) goto L35
                goto L36
            L35:
                r9 = 0
            L36:
                if (r9 == 0) goto L3a
                r5 = r6
                goto L3d
            L3a:
                int r4 = r4 + 1
                goto Le
            L3d:
                defpackage.Pw.Cdo.f2842do = r5
                int r0 = r1.length
            L40:
                if (r3 >= r0) goto L54
                r2 = r1[r3]
                java.lang.String r2 = r2.getName()
                java.lang.String r4 = "getSuppressed"
                boolean r2 = defpackage.C0173Do.m394do(r2, r4)
                if (r2 == 0) goto L51
                goto L54
            L51:
                int r3 = r3 + 1
                goto L40
            L54:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.Pw.Cdo.<clinit>():void");
        }
    }

    /* renamed from: do */
    public void mo1801do(Throwable th, Throwable th2) {
        C0173Do.m401try(th, "cause");
        C0173Do.m401try(th2, "exception");
        Method method = Cdo.f2842do;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public Iy mo1815if() {
        return new C0122Bh();
    }
}
