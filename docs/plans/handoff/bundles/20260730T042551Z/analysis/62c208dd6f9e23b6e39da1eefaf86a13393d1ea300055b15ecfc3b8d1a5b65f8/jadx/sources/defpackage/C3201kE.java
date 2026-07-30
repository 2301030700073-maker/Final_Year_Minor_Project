package defpackage;

import defpackage.C2713ep;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: kE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3201kE<T> implements InterfaceC0512Tc<T> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0768bk<File> f13887do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2622dE<Cdo<T>> f13888do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2623dF f13889do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2913iB f13890do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13891do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<? extends InterfaceC3641rk<? super InterfaceC0282In<T>, ? super InterfaceC0576Wa<? super C3206kJ>, ? extends Object>> f13892do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3439oG f13893do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3632rb f13894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3670sC<T> f13895do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3927wb<T> f13896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinkedHashSet f13886do = new LinkedHashSet();

    /* renamed from: do, reason: not valid java name */
    public static final Object f13885do = new Object();

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {311}, m = "readAndInitOrPropagateFailure")
    /* renamed from: kE$case, reason: invalid class name */
    public static final class Ccase extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public /* synthetic */ Object f13897do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3201kE f13898do;

        /* renamed from: for, reason: not valid java name */
        public int f13899for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C3201kE<T> f13900if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Ccase> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13900if = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13897do = obj;
            this.f13899for |= Integer.MIN_VALUE;
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            return this.f13900if.m7225else(this);
        }
    }

    /* renamed from: kE$do, reason: invalid class name */
    public static abstract class Cdo<T> {

        /* renamed from: kE$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0087do<T> extends Cdo<T> {

            /* renamed from: do, reason: not valid java name */
            public final AbstractC0799cF<T> f13901do;

            public C0087do(AbstractC0799cF<T> abstractC0799cF) {
                this.f13901do = abstractC0799cF;
            }
        }

        /* renamed from: kE$do$if, reason: invalid class name */
        public static final class Cif<T> extends Cdo<T> {

            /* renamed from: do, reason: not valid java name */
            public final Q8<T> f13902do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final AbstractC0799cF<T> f13903do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final InterfaceC3161jb f13904do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final InterfaceC3641rk<T, InterfaceC0576Wa<? super T>, Object> f13905do;

            public Cif(InterfaceC3641rk interfaceC3641rk, R8 r8, AbstractC0799cF abstractC0799cF, InterfaceC3161jb interfaceC3161jb) {
                C0173Do.m401try(interfaceC3161jb, "callerContext");
                this.f13905do = interfaceC3641rk;
                this.f13902do = r8;
                this.f13903do = abstractC0799cF;
                this.f13904do = interfaceC3161jb;
            }
        }
    }

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {381}, m = "readData")
    /* renamed from: kE$else, reason: invalid class name */
    public static final class Celse extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public FileInputStream f13906do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f13907do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3201kE f13908do;

        /* renamed from: for, reason: not valid java name */
        public int f13909for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C3201kE<T> f13910if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Celse> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13910if = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13907do = obj;
            this.f13909for |= Integer.MIN_VALUE;
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            return this.f13910if.m7226goto(this);
        }
    }

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {322, 348, 505}, m = "readAndInit")
    /* renamed from: kE$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public Serializable f13911do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f13912do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Iterator f13913do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnew f13914do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3201kE f13915do;

        /* renamed from: for, reason: not valid java name */
        public int f13916for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f13917for;

        /* renamed from: if, reason: not valid java name */
        public Object f13918if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3201kE<T> f13919if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Cfor> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13919if = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13917for = obj;
            this.f13916for |= Integer.MIN_VALUE;
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            return this.f13919if.m7229try(this);
        }
    }

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {359, 362, 365}, m = "readDataOrHandleCorruption")
    /* renamed from: kE$goto, reason: invalid class name */
    public static final class Cgoto extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public Object f13920do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3201kE<T> f13921do;

        /* renamed from: for, reason: not valid java name */
        public int f13922for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f13923for;

        /* renamed from: if, reason: not valid java name */
        public Object f13924if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Cgoto> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13921do = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13923for = obj;
            this.f13922for |= Integer.MIN_VALUE;
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            return this.f13921do.m7228this(this);
        }
    }

    /* renamed from: kE$if, reason: invalid class name */
    public static final class Cif extends OutputStream {

        /* renamed from: do, reason: not valid java name */
        public final FileOutputStream f13925do;

        public Cif(FileOutputStream fileOutputStream) {
            this.f13925do = fileOutputStream;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
            this.f13925do.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            this.f13925do.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            C0173Do.m401try(bArr, "b");
            this.f13925do.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            C0173Do.m401try(bArr, "bytes");
            this.f13925do.write(bArr, i, i2);
        }
    }

    /* renamed from: kE$new, reason: invalid class name */
    public static final class Cnew implements InterfaceC0282In<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0485Rt f13926do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C2606cz f13927do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C2723ez<T> f13928do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3201kE<T> f13929do;

        public Cnew(InterfaceC0485Rt interfaceC0485Rt, C2606cz c2606cz, C2723ez<T> c2723ez, C3201kE<T> c3201kE) {
            this.f13926do = interfaceC0485Rt;
            this.f13927do = c2606cz;
            this.f13928do = c2723ez;
            this.f13929do = c3201kE;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00b3 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #1 {all -> 0x0054, blocks: (B:28:0x0050, B:29:0x00ab, B:31:0x00b3), top: B:27:0x0050 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0093 A[Catch: all -> 0x00d4, TRY_LEAVE, TryCatch #0 {all -> 0x00d4, blocks: (B:41:0x008f, B:43:0x0093, B:47:0x00d6, B:48:0x00dd), top: B:40:0x008f }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00d6 A[Catch: all -> 0x00d4, TRY_ENTER, TryCatch #0 {all -> 0x00d4, blocks: (B:41:0x008f, B:43:0x0093, B:47:0x00d6, B:48:0x00dd), top: B:40:0x008f }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // defpackage.InterfaceC0282In
        /* renamed from: do */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo970do(defpackage.C0468Rc r11, defpackage.InterfaceC0576Wa r12) {
            /*
                Method dump skipped, instructions count: 226
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.Cnew.mo970do(Rc, Wa):java.lang.Object");
        }
    }

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {426}, m = "writeData$datastore_core")
    /* renamed from: kE$this, reason: invalid class name */
    public static final class Cthis extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public File f13930do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public FileOutputStream f13931do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f13932do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3201kE f13933do;

        /* renamed from: for, reason: not valid java name */
        public int f13934for;

        /* renamed from: if, reason: not valid java name */
        public FileOutputStream f13935if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3201kE<T> f13936if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cthis(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Cthis> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13936if = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13932do = obj;
            this.f13934for |= Integer.MIN_VALUE;
            return this.f13936if.m7224catch(null, this);
        }
    }

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {302}, m = "readAndInitOrPropagateAndThrowFailure")
    /* renamed from: kE$try, reason: invalid class name */
    public static final class Ctry extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public /* synthetic */ Object f13937do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3201kE f13938do;

        /* renamed from: for, reason: not valid java name */
        public int f13939for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C3201kE<T> f13940if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(C3201kE<T> c3201kE, InterfaceC0576Wa<? super Ctry> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f13940if = c3201kE;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f13937do = obj;
            this.f13939for |= Integer.MIN_VALUE;
            LinkedHashSet linkedHashSet = C3201kE.f13886do;
            return this.f13940if.m7223case(this);
        }
    }

    public C3201kE(C3537px c3537px, List list, InterfaceC3927wb interfaceC3927wb, InterfaceC3632rb interfaceC3632rb) {
        Ax ax = Ax.f172do;
        this.f13887do = c3537px;
        this.f13895do = ax;
        this.f13896do = interfaceC3927wb;
        this.f13894do = interfaceC3632rb;
        this.f13890do = new C2913iB(new C3437oE(this, null));
        this.f13891do = ".tmp";
        this.f13893do = new C3439oG(new C3555qE(this));
        Object obj = C2627dJ.f12470do;
        this.f13889do = new C2623dF(obj == null ? O4.f2573this : obj);
        this.f13892do = E8.j(list);
        this.f13888do = new C2622dE<>(interfaceC3632rb, new C3260lE(this), C3319mE.f14322do, new C3378nE(this, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004d  */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kE] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8, types: [Q8] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m7221for(defpackage.C3201kE r8, defpackage.C3201kE.Cdo.Cif r9, defpackage.InterfaceC0576Wa r10) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7221for(kE, kE$do$if, Wa):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7222break(defpackage.InterfaceC0576Wa r8, defpackage.InterfaceC3161jb r9, defpackage.InterfaceC3641rk r10) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof defpackage.C3731tE
            if (r0 == 0) goto L13
            r0 = r8
            tE r0 = (defpackage.C3731tE) r0
            int r1 = r0.f15663for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15663for = r1
            goto L18
        L13:
            tE r0 = new tE
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f15664for
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f15663for
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L43
            if (r2 == r5) goto L37
            if (r2 != r4) goto L2f
            java.lang.Object r9 = r0.f15661do
            kE r10 = r0.f15662do
            defpackage.C3645ro.m8017synchronized(r8)
            goto L86
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            java.lang.Object r9 = r0.f15665if
            java.lang.Object r10 = r0.f15661do
            Hc r10 = (defpackage.C0249Hc) r10
            kE r2 = r0.f15662do
            defpackage.C3645ro.m8017synchronized(r8)
            goto L6b
        L43:
            defpackage.C3645ro.m8017synchronized(r8)
            dF r8 = r7.f13889do
            java.lang.Object r8 = r8.m6445new()
            Hc r8 = (defpackage.C0249Hc) r8
            r8.m854do()
            uE r2 = new uE
            T r6 = r8.f1363do
            r2.<init>(r6, r3, r10)
            r0.f15662do = r7
            r0.f15661do = r8
            r0.f15665if = r6
            r0.f15663for = r5
            java.lang.Object r9 = defpackage.C0315Kc.m1184volatile(r0, r9, r2)
            if (r9 != r1) goto L67
            return r1
        L67:
            r2 = r7
            r10 = r8
            r8 = r9
            r9 = r6
        L6b:
            r10.m854do()
            boolean r10 = defpackage.C0173Do.m394do(r9, r8)
            if (r10 == 0) goto L75
            goto L98
        L75:
            r0.f15662do = r2
            r0.f15661do = r8
            r0.f15665if = r3
            r0.f15663for = r4
            java.lang.Object r9 = r2.m7224catch(r8, r0)
            if (r9 != r1) goto L84
            return r1
        L84:
            r9 = r8
            r10 = r2
        L86:
            dF r8 = r10.f13889do
            Hc r10 = new Hc
            if (r9 == 0) goto L91
            int r0 = r9.hashCode()
            goto L92
        L91:
            r0 = 0
        L92:
            r10.<init>(r9, r0)
            r8.mo2003case(r10)
        L98:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7222break(Wa, jb, rk):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7223case(defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.C3201kE.Ctry
            if (r0 == 0) goto L13
            r0 = r5
            kE$try r0 = (defpackage.C3201kE.Ctry) r0
            int r1 = r0.f13939for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13939for = r1
            goto L18
        L13:
            kE$try r0 = new kE$try
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f13937do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f13939for
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kE r0 = r0.f13938do
            defpackage.C3645ro.m8017synchronized(r5)     // Catch: java.lang.Throwable -> L29
            goto L41
        L29:
            r5 = move-exception
            goto L46
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            defpackage.C3645ro.m8017synchronized(r5)
            r0.f13938do = r4     // Catch: java.lang.Throwable -> L44
            r0.f13939for = r3     // Catch: java.lang.Throwable -> L44
            java.lang.Object r5 = r4.m7229try(r0)     // Catch: java.lang.Throwable -> L44
            if (r5 != r1) goto L41
            return r1
        L41:
            kJ r5 = defpackage.C3206kJ.f13965do
            return r5
        L44:
            r5 = move-exception
            r0 = r4
        L46:
            dF r0 = r0.f13889do
            Ry r1 = new Ry
            r1.<init>(r5)
            r0.mo2003case(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7223case(Wa):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a4 A[Catch: IOException -> 0x00bb, TRY_ENTER, TryCatch #2 {IOException -> 0x00bb, blocks: (B:14:0x0094, B:19:0x00a4, B:20:0x00ba, B:28:0x00c2, B:29:0x00c5, B:45:0x006a, B:25:0x00c0), top: B:44:0x006a, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7224catch(T r8, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r9) {
        /*
            r7 = this;
            java.lang.String r0 = "Unable to rename "
            boolean r1 = r9 instanceof defpackage.C3201kE.Cthis
            if (r1 == 0) goto L15
            r1 = r9
            kE$this r1 = (defpackage.C3201kE.Cthis) r1
            int r2 = r1.f13934for
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f13934for = r2
            goto L1a
        L15:
            kE$this r1 = new kE$this
            r1.<init>(r7, r9)
        L1a:
            java.lang.Object r9 = r1.f13932do
            tb r2 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r3 = r1.f13934for
            r4 = 1
            if (r3 == 0) goto L3c
            if (r3 != r4) goto L34
            java.io.FileOutputStream r8 = r1.f13935if
            java.io.FileOutputStream r2 = r1.f13931do
            java.io.File r3 = r1.f13930do
            kE r1 = r1.f13933do
            defpackage.C3645ro.m8017synchronized(r9)     // Catch: java.lang.Throwable -> L31
            goto L8a
        L31:
            r8 = move-exception
            goto Lbd
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3c:
            defpackage.C3645ro.m8017synchronized(r9)
            java.io.File r9 = r7.m7227new()
            java.io.File r3 = r9.getCanonicalFile()
            java.io.File r3 = r3.getParentFile()
            if (r3 != 0) goto L4e
            goto L57
        L4e:
            r3.mkdirs()
            boolean r3 = r3.isDirectory()
            if (r3 == 0) goto Ld0
        L57:
            java.io.File r3 = new java.io.File
            java.io.File r9 = r7.m7227new()
            java.lang.String r9 = r9.getAbsolutePath()
            java.lang.String r5 = r7.f13891do
            java.lang.String r9 = defpackage.C0173Do.m397goto(r5, r9)
            r3.<init>(r9)
            java.io.FileOutputStream r9 = new java.io.FileOutputStream     // Catch: java.io.IOException -> Lbb
            r9.<init>(r3)     // Catch: java.io.IOException -> Lbb
            sC<T> r5 = r7.f13895do     // Catch: java.lang.Throwable -> Lbf
            kE$if r6 = new kE$if     // Catch: java.lang.Throwable -> Lbf
            r6.<init>(r9)     // Catch: java.lang.Throwable -> Lbf
            r1.f13933do = r7     // Catch: java.lang.Throwable -> Lbf
            r1.f13930do = r3     // Catch: java.lang.Throwable -> Lbf
            r1.f13931do = r9     // Catch: java.lang.Throwable -> Lbf
            r1.f13935if = r9     // Catch: java.lang.Throwable -> Lbf
            r1.f13934for = r4     // Catch: java.lang.Throwable -> Lbf
            kJ r8 = r5.mo131for(r8, r6)     // Catch: java.lang.Throwable -> Lbf
            if (r8 != r2) goto L87
            return r2
        L87:
            r1 = r7
            r8 = r9
            r2 = r8
        L8a:
            java.io.FileDescriptor r8 = r8.getFD()     // Catch: java.lang.Throwable -> L31
            r8.sync()     // Catch: java.lang.Throwable -> L31
            kJ r8 = defpackage.C3206kJ.f13965do     // Catch: java.lang.Throwable -> L31
            r8 = 0
            defpackage.C0315Kc.m1185while(r2, r8)     // Catch: java.io.IOException -> Lbb
            java.io.File r8 = r1.m7227new()     // Catch: java.io.IOException -> Lbb
            boolean r8 = r3.renameTo(r8)     // Catch: java.io.IOException -> Lbb
            if (r8 == 0) goto La4
            kJ r8 = defpackage.C3206kJ.f13965do
            return r8
        La4:
            java.io.IOException r8 = new java.io.IOException     // Catch: java.io.IOException -> Lbb
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lbb
            r9.<init>(r0)     // Catch: java.io.IOException -> Lbb
            r9.append(r3)     // Catch: java.io.IOException -> Lbb
            java.lang.String r0 = ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."
            r9.append(r0)     // Catch: java.io.IOException -> Lbb
            java.lang.String r9 = r9.toString()     // Catch: java.io.IOException -> Lbb
            r8.<init>(r9)     // Catch: java.io.IOException -> Lbb
            throw r8     // Catch: java.io.IOException -> Lbb
        Lbb:
            r8 = move-exception
            goto Lc6
        Lbd:
            r9 = r2
            goto Lc0
        Lbf:
            r8 = move-exception
        Lc0:
            throw r8     // Catch: java.lang.Throwable -> Lc1
        Lc1:
            r0 = move-exception
            defpackage.C0315Kc.m1185while(r9, r8)     // Catch: java.io.IOException -> Lbb
            throw r0     // Catch: java.io.IOException -> Lbb
        Lc6:
            boolean r9 = r3.exists()
            if (r9 == 0) goto Lcf
            r3.delete()
        Lcf:
            throw r8
        Ld0:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r0 = "Unable to create parent directories of "
            java.lang.String r9 = defpackage.C0173Do.m397goto(r9, r0)
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7224catch(java.lang.Object, Wa):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0512Tc
    /* renamed from: do */
    public final InterfaceC0628Yi<T> mo2273do() {
        return this.f13890do;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7225else(defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.C3201kE.Ccase
            if (r0 == 0) goto L13
            r0 = r5
            kE$case r0 = (defpackage.C3201kE.Ccase) r0
            int r1 = r0.f13899for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13899for = r1
            goto L18
        L13:
            kE$case r0 = new kE$case
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f13897do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f13899for
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kE r0 = r0.f13898do
            defpackage.C3645ro.m8017synchronized(r5)     // Catch: java.lang.Throwable -> L29
            goto L4d
        L29:
            r5 = move-exception
            goto L43
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            defpackage.C3645ro.m8017synchronized(r5)
            r0.f13898do = r4     // Catch: java.lang.Throwable -> L41
            r0.f13899for = r3     // Catch: java.lang.Throwable -> L41
            java.lang.Object r5 = r4.m7229try(r0)     // Catch: java.lang.Throwable -> L41
            if (r5 != r1) goto L4d
            return r1
        L41:
            r5 = move-exception
            r0 = r4
        L43:
            dF r0 = r0.f13889do
            Ry r1 = new Ry
            r1.<init>(r5)
            r0.mo2003case(r1)
        L4d:
            kJ r5 = defpackage.C3206kJ.f13965do
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7225else(Wa):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12, types: [kE] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [kE$else] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [kE] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7226goto(defpackage.InterfaceC0576Wa<? super T> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.C3201kE.Celse
            if (r0 == 0) goto L13
            r0 = r5
            kE$else r0 = (defpackage.C3201kE.Celse) r0
            int r1 = r0.f13909for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13909for = r1
            goto L18
        L13:
            kE$else r0 = new kE$else
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f13907do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f13909for
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.io.FileInputStream r1 = r0.f13906do
            kE r0 = r0.f13908do
            defpackage.C3645ro.m8017synchronized(r5)     // Catch: java.lang.Throwable -> L2b
            goto L53
        L2b:
            r5 = move-exception
            goto L5e
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            defpackage.C3645ro.m8017synchronized(r5)
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L64
            java.io.File r2 = r4.m7227new()     // Catch: java.io.FileNotFoundException -> L64
            r5.<init>(r2)     // Catch: java.io.FileNotFoundException -> L64
            sC<T> r2 = r4.f13895do     // Catch: java.lang.Throwable -> L5a
            r0.f13908do = r4     // Catch: java.lang.Throwable -> L5a
            r0.f13906do = r5     // Catch: java.lang.Throwable -> L5a
            r0.f13909for = r3     // Catch: java.lang.Throwable -> L5a
            Pt r0 = r2.mo132if(r5)     // Catch: java.lang.Throwable -> L5a
            if (r0 != r1) goto L50
            return r1
        L50:
            r1 = r5
            r5 = r0
            r0 = r4
        L53:
            r2 = 0
            defpackage.C0315Kc.m1185while(r1, r2)     // Catch: java.io.FileNotFoundException -> L58
            return r5
        L58:
            r5 = move-exception
            goto L66
        L5a:
            r0 = move-exception
            r1 = r5
            r5 = r0
            r0 = r4
        L5e:
            throw r5     // Catch: java.lang.Throwable -> L5f
        L5f:
            r2 = move-exception
            defpackage.C0315Kc.m1185while(r1, r5)     // Catch: java.io.FileNotFoundException -> L58
            throw r2     // Catch: java.io.FileNotFoundException -> L58
        L64:
            r5 = move-exception
            r0 = r4
        L66:
            java.io.File r1 = r0.m7227new()
            boolean r1 = r1.exists()
            if (r1 != 0) goto L77
            sC<T> r5 = r0.f13895do
            Pt r5 = r5.mo130do()
            return r5
        L77:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7226goto(Wa):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0512Tc
    /* renamed from: if */
    public final Object mo2274if(InterfaceC3641rk<? super T, ? super InterfaceC0576Wa<? super T>, ? extends Object> interfaceC3641rk, InterfaceC0576Wa<? super T> interfaceC0576Wa) {
        Object c;
        R8 r8 = new R8(null);
        this.f13888do.m6444do(new Cdo.Cif(interfaceC3641rk, r8, (AbstractC0799cF) this.f13889do.m6445new(), interfaceC0576Wa.mo2221if()));
        do {
            c = r8.c();
            if (!(c instanceof InterfaceC4116zn)) {
                if (c instanceof U8) {
                    throw ((U8) c).f3839do;
                }
                return O4.m1626synchronized(c);
            }
        } while (r8.s(c) < 0);
        C2713ep.Cdo cdo = new C2713ep.Cdo(C3645ro.m8008package(interfaceC0576Wa), r8);
        cdo.m2359static();
        cdo.m2361throws(new C0295Je(r8.f(new C0794cA(cdo))));
        return cdo.m2358return();
    }

    /* renamed from: new, reason: not valid java name */
    public final File m7227new() {
        return (File) this.f13893do.m7702do();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7228this(defpackage.InterfaceC0576Wa<? super T> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof defpackage.C3201kE.Cgoto
            if (r0 == 0) goto L13
            r0 = r8
            kE$goto r0 = (defpackage.C3201kE.Cgoto) r0
            int r1 = r0.f13922for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13922for = r1
            goto L18
        L13:
            kE$goto r0 = new kE$goto
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f13923for
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f13922for
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L53
            if (r2 == r5) goto L49
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r1 = r0.f13924if
            java.lang.Object r0 = r0.f13920do
            vb r0 = (defpackage.C3868vb) r0
            defpackage.C3645ro.m8017synchronized(r8)     // Catch: java.io.IOException -> L33
            goto L85
        L33:
            r8 = move-exception
            goto L88
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3d:
            java.lang.Object r2 = r0.f13924if
            vb r2 = (defpackage.C3868vb) r2
            java.lang.Object r4 = r0.f13920do
            kE r4 = (defpackage.C3201kE) r4
            defpackage.C3645ro.m8017synchronized(r8)
            goto L77
        L49:
            java.lang.Object r2 = r0.f13920do
            kE r2 = (defpackage.C3201kE) r2
            defpackage.C3645ro.m8017synchronized(r8)     // Catch: defpackage.C3868vb -> L51
            goto L61
        L51:
            r8 = move-exception
            goto L64
        L53:
            defpackage.C3645ro.m8017synchronized(r8)
            r0.f13920do = r7     // Catch: defpackage.C3868vb -> L62
            r0.f13922for = r5     // Catch: defpackage.C3868vb -> L62
            java.lang.Object r8 = r7.m7226goto(r0)     // Catch: defpackage.C3868vb -> L62
            if (r8 != r1) goto L61
            return r1
        L61:
            return r8
        L62:
            r8 = move-exception
            r2 = r7
        L64:
            wb<T> r5 = r2.f13896do
            r0.f13920do = r2
            r0.f13924if = r8
            r0.f13922for = r4
            java.lang.Object r4 = r5.mo1634do(r8)
            if (r4 != r1) goto L73
            return r1
        L73:
            r6 = r2
            r2 = r8
            r8 = r4
            r4 = r6
        L77:
            r0.f13920do = r2     // Catch: java.io.IOException -> L86
            r0.f13924if = r8     // Catch: java.io.IOException -> L86
            r0.f13922for = r3     // Catch: java.io.IOException -> L86
            java.lang.Object r0 = r4.m7224catch(r8, r0)     // Catch: java.io.IOException -> L86
            if (r0 != r1) goto L84
            return r1
        L84:
            r1 = r8
        L85:
            return r1
        L86:
            r8 = move-exception
            r0 = r2
        L88:
            defpackage.C3850vF.m8451for(r0, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7228this(Wa):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7229try(defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r14) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3201kE.m7229try(Wa):java.lang.Object");
    }
}
