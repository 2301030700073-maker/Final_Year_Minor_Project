package defpackage;

import java.util.Iterator;
import java.util.List;

@InterfaceC0761bd(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", l = {44, 46}, m = "invokeSuspend")
/* renamed from: Rc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0468Rc extends AbstractC2800gG implements InterfaceC3641rk<Object, InterfaceC0576Wa<Object>, Object> {

    /* renamed from: do, reason: not valid java name */
    public InterfaceC0402Oc f3189do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f3190do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Iterator f3191do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List<InterfaceC0402Oc<Object>> f3192do;

    /* renamed from: if, reason: not valid java name */
    public /* synthetic */ Object f3193if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List<InterfaceC2650dk<InterfaceC0576Wa<? super C3206kJ>, Object>> f3194if;

    /* renamed from: new, reason: not valid java name */
    public int f3195new;

    @InterfaceC0761bd(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
    /* renamed from: Rc$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC2650dk<InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0402Oc<Object> f3196do;

        /* renamed from: new, reason: not valid java name */
        public int f3197new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(InterfaceC0402Oc<Object> interfaceC0402Oc, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(1, interfaceC0576Wa);
            this.f3196do = interfaceC0402Oc;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f3197new;
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                this.f3197new = 1;
                if (this.f3196do.m1673if() == enumC3750tb) {
                    return enumC3750tb;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C3645ro.m8017synchronized(obj);
            }
            return C3206kJ.f13965do;
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final Object mo364this(InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return new Cdo(this.f3196do, interfaceC0576Wa).mo358class(C3206kJ.f13965do);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C0468Rc(List<? extends InterfaceC0402Oc<Object>> list, List<InterfaceC2650dk<InterfaceC0576Wa<? super C3206kJ>, Object>> list2, InterfaceC0576Wa<? super C0468Rc> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f3192do = list;
        this.f3194if = list2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0043  */
    @Override // defpackage.P4
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo358class(java.lang.Object r11) {
        /*
            r10 = this;
            tb r0 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r1 = r10.f3195new
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2d
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.util.Iterator r1 = r10.f3191do
            java.lang.Object r4 = r10.f3193if
            java.util.List r4 = (java.util.List) r4
            defpackage.C3645ro.m8017synchronized(r11)
            goto L3c
        L16:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1e:
            java.lang.Object r1 = r10.f3190do
            Oc r4 = r10.f3189do
            java.util.Iterator r5 = r10.f3191do
            java.lang.Object r6 = r10.f3193if
            java.util.List r6 = (java.util.List) r6
            defpackage.C3645ro.m8017synchronized(r11)
            r7 = r10
            goto L62
        L2d:
            defpackage.C3645ro.m8017synchronized(r11)
            java.lang.Object r11 = r10.f3193if
            java.util.List<Oc<java.lang.Object>> r1 = r10.f3192do
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r1 = r1.iterator()
            java.util.List<dk<Wa<? super kJ>, java.lang.Object>> r4 = r10.f3194if
        L3c:
            r5 = r10
        L3d:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L89
            java.lang.Object r6 = r1.next()
            Oc r6 = (defpackage.InterfaceC0402Oc) r6
            r5.f3193if = r4
            r5.f3191do = r1
            r5.f3189do = r6
            r5.f3190do = r11
            r5.f3195new = r3
            java.lang.Object r7 = r6.m1672for()
            if (r7 != r0) goto L5a
            return r0
        L5a:
            r8 = r1
            r1 = r11
            r11 = r7
            r7 = r5
            r5 = r8
            r9 = r6
            r6 = r4
            r4 = r9
        L62:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L84
            Rc$do r11 = new Rc$do
            r1 = 0
            r11.<init>(r4, r1)
            r6.add(r11)
            r7.f3193if = r6
            r7.f3191do = r5
            r7.f3189do = r1
            r7.f3190do = r1
            r7.f3195new = r2
            java.lang.Object r11 = r4.m1671do()
            if (r11 != r0) goto L85
            return r0
        L84:
            r11 = r1
        L85:
            r1 = r5
            r4 = r6
            r5 = r7
            goto L3d
        L89:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0468Rc.mo358class(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C0468Rc c0468Rc = new C0468Rc(this.f3192do, this.f3194if, interfaceC0576Wa);
        c0468Rc.f3193if = obj;
        return c0468Rc;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(Object obj, InterfaceC0576Wa<Object> interfaceC0576Wa) {
        return ((C0468Rc) mo359do(obj, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
