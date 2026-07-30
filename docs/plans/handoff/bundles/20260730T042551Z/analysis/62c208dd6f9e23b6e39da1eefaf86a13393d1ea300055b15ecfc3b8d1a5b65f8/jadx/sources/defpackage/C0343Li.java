package defpackage;

import defpackage.PC;
import j$.util.DesugarCollections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: Li, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0343Li {

    /* renamed from: do, reason: not valid java name */
    public static final C0343Li f1980do = new C0343Li();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Map<PC.Cdo, Cdo> f1981do = DesugarCollections.synchronizedMap(new LinkedHashMap());

    /* renamed from: Li$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public PC f1982do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC0485Rt f1983do;

        public Cdo(C0551Ut c0551Ut) {
            this.f1983do = c0551Ut;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return C0173Do.m394do(this.f1983do, cdo.f1983do) && C0173Do.m394do(this.f1982do, cdo.f1982do);
        }

        public final int hashCode() {
            int hashCode = this.f1983do.hashCode() * 31;
            PC pc = this.f1982do;
            return hashCode + (pc == null ? 0 : pc.hashCode());
        }

        public final String toString() {
            return "Dependency(mutex=" + this.f1983do + ", subscriber=" + this.f1982do + ')';
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {124}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
    /* renamed from: Li$if, reason: invalid class name */
    public static final class Cif extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PC.Cdo f1985do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC0485Rt f1986do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f1987do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Iterator f1988do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Map f1989do;

        /* renamed from: for, reason: not valid java name */
        public int f1990for;

        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ Object f1991if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Map f1992if;

        public Cif(InterfaceC0576Wa<? super Cif> interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f1991if = obj;
            this.f1990for |= Integer.MIN_VALUE;
            return C0343Li.this.m1342if(this);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m1341do(PC.Cdo cdo) {
        Map<PC.Cdo, Cdo> map = f1981do;
        C0173Do.m399new(map, "dependencies");
        Cdo cdo2 = map.get(cdo);
        if (cdo2 != null) {
            return cdo2;
        }
        throw new IllegalStateException("Cannot get dependency " + cdo + ". Dependencies should be added at class load time.");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ae A[Catch: all -> 0x00c7, TRY_ENTER, TryCatch #0 {all -> 0x00c7, blocks: (B:12:0x0099, B:23:0x00ae, B:24:0x00c6), top: B:11:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0097 -> B:10:0x0098). Please report as a decompilation issue!!! */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1342if(defpackage.InterfaceC0576Wa<? super java.util.Map<defpackage.PC.Cdo, ? extends defpackage.PC>> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof defpackage.C0343Li.Cif
            if (r0 == 0) goto L13
            r0 = r11
            Li$if r0 = (defpackage.C0343Li.Cif) r0
            int r1 = r0.f1990for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f1990for = r1
            goto L18
        L13:
            Li$if r0 = new Li$if
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f1991if
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f1990for
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.f1987do
            java.util.Map r4 = r0.f1992if
            java.util.Map r4 = (java.util.Map) r4
            Rt r5 = r0.f1986do
            PC$do r6 = r0.f1985do
            java.util.Iterator r7 = r0.f1988do
            java.util.Map r8 = r0.f1989do
            java.util.Map r8 = (java.util.Map) r8
            defpackage.C3645ro.m8017synchronized(r11)
            goto L98
        L37:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3f:
            defpackage.C3645ro.m8017synchronized(r11)
            java.util.Map<PC$do, Li$do> r11 = defpackage.C0343Li.f1981do
            java.lang.String r2 = "dependencies"
            defpackage.C0173Do.m399new(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r4 = r11.size()
            int r4 = defpackage.C0315Kc.m1180switch(r4)
            r2.<init>(r4)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
            r7 = r11
            r4 = r2
        L60:
            boolean r11 = r7.hasNext()
            if (r11 == 0) goto Lcc
            java.lang.Object r11 = r7.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r5 = r11.getKey()
            r6 = r5
            PC$do r6 = (defpackage.PC.Cdo) r6
            java.lang.Object r11 = r11.getValue()
            Li$do r11 = (defpackage.C0343Li.Cdo) r11
            Rt r5 = r11.f1983do
            r11 = r4
            java.util.Map r11 = (java.util.Map) r11
            r0.f1989do = r11
            r0.f1988do = r7
            r0.f1985do = r6
            r0.f1986do = r5
            r0.f1992if = r11
            r0.f1987do = r2
            r0.f1990for = r3
            java.lang.Object r11 = r5.mo2075if(r0)
            if (r11 != r1) goto L97
            return r1
        L97:
            r8 = r4
        L98:
            r11 = 0
            java.lang.String r9 = "subscriberName"
            defpackage.C0173Do.m401try(r6, r9)     // Catch: java.lang.Throwable -> Lc7
            Li$do r9 = m1341do(r6)     // Catch: java.lang.Throwable -> Lc7
            PC r9 = r9.f1982do     // Catch: java.lang.Throwable -> Lc7
            if (r9 == 0) goto Lae
            r5.mo2074do(r11)
            r4.put(r2, r9)
            r4 = r8
            goto L60
        Lae:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lc7
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r2 = "Subscriber "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lc7
            r1.append(r6)     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r2 = " has not been registered."
            r1.append(r2)     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lc7
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc7
            throw r0     // Catch: java.lang.Throwable -> Lc7
        Lc7:
            r0 = move-exception
            r5.mo2074do(r11)
            throw r0
        Lcc:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0343Li.m1342if(Wa):java.lang.Object");
    }
}
