package defpackage;

import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class RM {

    /* renamed from: do, reason: not valid java name */
    public final TM f3164do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<String> f3165do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UUID f3166do;

    /* renamed from: RM$do, reason: invalid class name */
    public static abstract class Cdo<B extends Cdo<?, ?>, W extends RM> {

        /* renamed from: do, reason: not valid java name */
        public TM f3167do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashSet f3168do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public UUID f3169do;

        public Cdo(Class<? extends ListenableWorker> cls) {
            HashSet hashSet = new HashSet();
            this.f3168do = hashSet;
            this.f3169do = UUID.randomUUID();
            this.f3167do = new TM(this.f3169do.toString(), cls.getName());
            hashSet.add(cls.getName());
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        
            if ((r0.f1197do.f2650do.size() > 0) == false) goto L9;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.C0720aw m2036do() {
            /*
                r6 = this;
                r0 = r6
                aw$do r0 = (defpackage.C0720aw.Cdo) r0
                aw r1 = new aw
                r1.<init>(r0)
                TM r0 = r6.f3167do
                Ga r0 = r0.f3653do
                int r2 = android.os.Build.VERSION.SDK_INT
                r3 = 24
                r4 = 1
                r5 = 0
                if (r2 < r3) goto L23
                Oa r3 = r0.f1197do
                java.util.HashSet r3 = r3.f2650do
                int r3 = r3.size()
                if (r3 <= 0) goto L20
                r3 = 1
                goto L21
            L20:
                r3 = 0
            L21:
                if (r3 != 0) goto L35
            L23:
                boolean r3 = r0.f1199for
                if (r3 != 0) goto L35
                boolean r3 = r0.f1198do
                if (r3 != 0) goto L35
                r3 = 23
                if (r2 < r3) goto L34
                boolean r0 = r0.f1201if
                if (r0 == 0) goto L34
                goto L35
            L34:
                r4 = 0
            L35:
                TM r0 = r6.f3167do
                boolean r0 = r0.f3656do
                if (r0 == 0) goto L46
                if (r4 != 0) goto L3e
                goto L46
            L3e:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r1 = "Expedited jobs only support network and storage constraints"
                r0.<init>(r1)
                throw r0
            L46:
                java.util.UUID r0 = java.util.UUID.randomUUID()
                r6.f3169do = r0
                TM r0 = new TM
                TM r2 = r6.f3167do
                r0.<init>(r2)
                r6.f3167do = r0
                java.util.UUID r2 = r6.f3169do
                java.lang.String r2 = r2.toString()
                r0.f3655do = r2
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.RM.Cdo.m2036do():aw");
        }
    }

    public RM(UUID uuid, TM tm, HashSet hashSet) {
        this.f3166do = uuid;
        this.f3164do = tm;
        this.f3165do = hashSet;
    }
}
