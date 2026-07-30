package defpackage;

/* renamed from: Sc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0490Sc<T> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3529do = new Cdo();

    /* renamed from: Sc$do, reason: invalid class name */
    public static final class Cdo {
        /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0087 -> B:13:0x0069). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008a -> B:13:0x0069). Please report as a decompilation issue!!! */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object m2172do(defpackage.C0490Sc.Cdo r5, java.util.List r6, defpackage.InterfaceC0282In r7, defpackage.InterfaceC0576Wa r8) {
            /*
                r5.getClass()
                boolean r0 = r8 instanceof defpackage.C0446Qc
                if (r0 == 0) goto L16
                r0 = r8
                Qc r0 = (defpackage.C0446Qc) r0
                int r1 = r0.f2978for
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L16
                int r1 = r1 - r2
                r0.f2978for = r1
                goto L1b
            L16:
                Qc r0 = new Qc
                r0.<init>(r5, r8)
            L1b:
                java.lang.Object r5 = r0.f2976do
                tb r8 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
                int r1 = r0.f2978for
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L43
                if (r1 == r3) goto L3b
                if (r1 != r2) goto L33
                java.util.Iterator r6 = r0.f2977do
                java.io.Serializable r7 = r0.f2975do
                ez r7 = (defpackage.C2723ez) r7
                defpackage.C3645ro.m8017synchronized(r5)     // Catch: java.lang.Throwable -> L82
                goto L69
            L33:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L3b:
                java.io.Serializable r6 = r0.f2975do
                java.util.List r6 = (java.util.List) r6
                defpackage.C3645ro.m8017synchronized(r5)
                goto L5d
            L43:
                defpackage.C3645ro.m8017synchronized(r5)
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                Rc r1 = new Rc
                r4 = 0
                r1.<init>(r6, r5, r4)
                r0.f2975do = r5
                r0.f2978for = r3
                java.lang.Object r6 = r7.mo970do(r1, r0)
                if (r6 != r8) goto L5c
                goto L98
            L5c:
                r6 = r5
            L5d:
                ez r5 = new ez
                r5.<init>()
                java.lang.Iterable r6 = (java.lang.Iterable) r6
                java.util.Iterator r6 = r6.iterator()
                r7 = r5
            L69:
                boolean r5 = r6.hasNext()
                if (r5 == 0) goto L90
                java.lang.Object r5 = r6.next()
                dk r5 = (defpackage.InterfaceC2650dk) r5
                r0.f2975do = r7     // Catch: java.lang.Throwable -> L82
                r0.f2977do = r6     // Catch: java.lang.Throwable -> L82
                r0.f2978for = r2     // Catch: java.lang.Throwable -> L82
                java.lang.Object r5 = r5.mo364this(r0)     // Catch: java.lang.Throwable -> L82
                if (r5 != r8) goto L69
                goto L98
            L82:
                r5 = move-exception
                T r1 = r7.f12779do
                if (r1 != 0) goto L8a
                r7.f12779do = r5
                goto L69
            L8a:
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                defpackage.C3850vF.m8451for(r1, r5)
                goto L69
            L90:
                T r5 = r7.f12779do
                java.lang.Throwable r5 = (java.lang.Throwable) r5
                if (r5 != 0) goto L99
                kJ r8 = defpackage.C3206kJ.f13965do
            L98:
                return r8
            L99:
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0490Sc.Cdo.m2172do(Sc$do, java.util.List, In, Wa):java.lang.Object");
        }
    }
}
