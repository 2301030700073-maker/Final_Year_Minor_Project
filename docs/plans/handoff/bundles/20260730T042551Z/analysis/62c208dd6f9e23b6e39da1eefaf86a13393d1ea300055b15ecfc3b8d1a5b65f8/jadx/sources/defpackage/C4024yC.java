package defpackage;

import android.content.Context;
import defpackage.AbstractC3890vx;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: yC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4024yC implements InterfaceC3965xC {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16696do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<C0321Ki> f16697do = new AtomicReference<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f16698do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f16699do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f16695do = new Cfor();

    /* renamed from: do, reason: not valid java name */
    public static final C3654rx f16694do = C3850vF.m8454import(C3906wC.f16306do, new C4010xz(Cif.f16716do));

    /* renamed from: yC$case, reason: invalid class name */
    public static final class Ccase implements InterfaceC0628Yi<C0321Ki> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0628Yi f16700do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C4024yC f16701do;

        /* renamed from: yC$case$do, reason: invalid class name */
        public static final class Cdo<T> implements InterfaceC0650Zi {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InterfaceC0650Zi f16702do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ C4024yC f16703do;

            @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {223}, m = "emit")
            /* renamed from: yC$case$do$do, reason: invalid class name and collision with other inner class name */
            public static final class C0091do extends AbstractC0620Ya {

                /* renamed from: do, reason: not valid java name */
                public /* synthetic */ Object f16704do;

                /* renamed from: for, reason: not valid java name */
                public int f16706for;

                public C0091do(InterfaceC0576Wa interfaceC0576Wa) {
                    super(interfaceC0576Wa);
                }

                @Override // defpackage.P4
                /* renamed from: class */
                public final Object mo358class(Object obj) {
                    this.f16704do = obj;
                    this.f16706for |= Integer.MIN_VALUE;
                    return Cdo.this.mo1312for(null, this);
                }
            }

            public Cdo(InterfaceC0650Zi interfaceC0650Zi, C4024yC c4024yC) {
                this.f16702do = interfaceC0650Zi;
                this.f16703do = c4024yC;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
            @Override // defpackage.InterfaceC0650Zi
            /* renamed from: for */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo1312for(java.lang.Object r5, defpackage.InterfaceC0576Wa r6) {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof defpackage.C4024yC.Ccase.Cdo.C0091do
                    if (r0 == 0) goto L13
                    r0 = r6
                    yC$case$do$do r0 = (defpackage.C4024yC.Ccase.Cdo.C0091do) r0
                    int r1 = r0.f16706for
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f16706for = r1
                    goto L18
                L13:
                    yC$case$do$do r0 = new yC$case$do$do
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f16704do
                    tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
                    int r2 = r0.f16706for
                    r3 = 1
                    if (r2 == 0) goto L2f
                    if (r2 != r3) goto L27
                    defpackage.C3645ro.m8017synchronized(r6)
                    goto L53
                L27:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L2f:
                    defpackage.C3645ro.m8017synchronized(r6)
                    vx r5 = (defpackage.AbstractC3890vx) r5
                    yC$for r6 = defpackage.C4024yC.f16695do
                    yC r6 = r4.f16703do
                    r6.getClass()
                    Ki r6 = new Ki
                    vx$do<java.lang.String> r2 = defpackage.C4024yC.Cnew.f16717do
                    java.lang.Object r5 = r5.mo1813if(r2)
                    java.lang.String r5 = (java.lang.String) r5
                    r6.<init>(r5)
                    r0.f16706for = r3
                    Zi r5 = r4.f16702do
                    java.lang.Object r5 = r5.mo1312for(r6, r0)
                    if (r5 != r1) goto L53
                    return r1
                L53:
                    kJ r5 = defpackage.C3206kJ.f13965do
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.C4024yC.Ccase.Cdo.mo1312for(java.lang.Object, Wa):java.lang.Object");
            }
        }

        public Ccase(C0707aj c0707aj, C4024yC c4024yC) {
            this.f16700do = c0707aj;
            this.f16701do = c4024yC;
        }

        @Override // defpackage.InterfaceC0628Yi
        /* renamed from: do */
        public final Object mo2945do(InterfaceC0650Zi<? super C0321Ki> interfaceC0650Zi, InterfaceC0576Wa interfaceC0576Wa) {
            Object mo2945do = this.f16700do.mo2945do(new Cdo(interfaceC0650Zi, this.f16701do), interfaceC0576Wa);
            return mo2945do == EnumC3750tb.COROUTINE_SUSPENDED ? mo2945do : C3206kJ.f13965do;
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: yC$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: new, reason: not valid java name */
        public int f16708new;

        /* renamed from: yC$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0092do<T> implements InterfaceC0650Zi {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ C4024yC f16709do;

            public C0092do(C4024yC c4024yC) {
                this.f16709do = c4024yC;
            }

            @Override // defpackage.InterfaceC0650Zi
            /* renamed from: for */
            public final Object mo1312for(Object obj, InterfaceC0576Wa interfaceC0576Wa) {
                this.f16709do.f16697do.set((C0321Ki) obj);
                return C3206kJ.f13965do;
            }
        }

        public Cdo(InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f16708new;
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                C4024yC c4024yC = C4024yC.this;
                Ccase ccase = c4024yC.f16699do;
                C0092do c0092do = new C0092do(c4024yC);
                this.f16708new = 1;
                if (ccase.mo2945do(c0092do, this) == enumC3750tb) {
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

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            return C4024yC.this.new Cdo(interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Cdo) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1", f = "SessionDatastore.kt", l = {89}, m = "invokeSuspend")
    /* renamed from: yC$else, reason: invalid class name */
    public static final class Celse extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f16710break;

        /* renamed from: new, reason: not valid java name */
        public int f16712new;

        @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1", f = "SessionDatastore.kt", l = {}, m = "invokeSuspend")
        /* renamed from: yC$else$do, reason: invalid class name */
        public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<C0441Pt, InterfaceC0576Wa<? super C3206kJ>, Object> {

            /* renamed from: break, reason: not valid java name */
            public final /* synthetic */ String f16713break;

            /* renamed from: do, reason: not valid java name */
            public /* synthetic */ Object f16714do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(String str, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
                super(2, interfaceC0576Wa);
                this.f16713break = str;
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                C3645ro.m8017synchronized(obj);
                C0441Pt c0441Pt = (C0441Pt) this.f16714do;
                c0441Pt.getClass();
                AbstractC3890vx.Cdo<String> cdo = Cnew.f16717do;
                C0173Do.m401try(cdo, "key");
                c0441Pt.m1814new(cdo, this.f16713break);
                return C3206kJ.f13965do;
            }

            @Override // defpackage.P4
            /* renamed from: do */
            public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
                Cdo cdo = new Cdo(this.f16713break, interfaceC0576Wa);
                cdo.f16714do = obj;
                return cdo;
            }

            @Override // defpackage.InterfaceC3641rk
            public final Object invoke(C0441Pt c0441Pt, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
                return ((Cdo) mo359do(c0441Pt, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(String str, InterfaceC0576Wa<? super Celse> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f16710break = str;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f16712new;
            try {
                if (i == 0) {
                    C3645ro.m8017synchronized(obj);
                    Cfor cfor = C4024yC.f16695do;
                    Context context = C4024yC.this.f16696do;
                    cfor.getClass();
                    C3419nx m8032do = C4024yC.f16694do.m8032do(context, Cfor.f16715do[0]);
                    Cdo cdo = new Cdo(this.f16710break, null);
                    this.f16712new = 1;
                    if (m8032do.mo2274if(new C3949wx(cdo, null), this) == enumC3750tb) {
                        return enumC3750tb;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C3645ro.m8017synchronized(obj);
                }
            } catch (IOException e) {
                e.toString();
            }
            return C3206kJ.f13965do;
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            return C4024yC.this.new Celse(this.f16710break, interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Celse) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    /* renamed from: yC$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ InterfaceC0108Ap<Object>[] f16715do;

        static {
            C0722ay c0722ay = new C0722ay(Cfor.class);
            C2782fz.f13022do.getClass();
            f16715do = new InterfaceC0108Ap[]{c0722ay};
        }
    }

    /* renamed from: yC$if, reason: invalid class name */
    public static final class Cif extends AbstractC0459Qp implements InterfaceC2650dk<C3868vb, AbstractC3890vx> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f16716do = new Cif();

        public Cif() {
            super(1);
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final AbstractC3890vx mo364this(C3868vb c3868vb) {
            C0173Do.m401try(c3868vb, "ex");
            Ix.m993if();
            return new C0441Pt(true, 1);
        }
    }

    /* renamed from: yC$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final AbstractC3890vx.Cdo<String> f16717do = new AbstractC3890vx.Cdo<>("session_id");
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionDatastoreImpl$firebaseSessionDataFlow$1", f = "SessionDatastore.kt", l = {76}, m = "invokeSuspend")
    /* renamed from: yC$try, reason: invalid class name */
    public static final class Ctry extends AbstractC2800gG implements InterfaceC3759tk<InterfaceC0650Zi<? super AbstractC3890vx>, Throwable, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name */
        public /* synthetic */ InterfaceC0650Zi f16718do;

        /* renamed from: new, reason: not valid java name */
        public int f16719new;

        public Ctry(InterfaceC0576Wa<? super Ctry> interfaceC0576Wa) {
            super(3, interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3759tk
        /* renamed from: break */
        public final Object mo2480break(InterfaceC0650Zi interfaceC0650Zi, Object obj, Object obj2) {
            Ctry ctry = new Ctry((InterfaceC0576Wa) obj2);
            ctry.f16718do = interfaceC0650Zi;
            return ctry.mo358class(C3206kJ.f13965do);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f16719new;
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                InterfaceC0650Zi interfaceC0650Zi = this.f16718do;
                C0441Pt c0441Pt = new C0441Pt(true, 1);
                this.f16718do = null;
                this.f16719new = 1;
                if (interfaceC0650Zi.mo1312for(c0441Pt, this) == enumC3750tb) {
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
    }

    public C4024yC(Context context, InterfaceC3161jb interfaceC3161jb) {
        this.f16696do = context;
        this.f16698do = interfaceC3161jb;
        f16695do.getClass();
        this.f16699do = new Ccase(new C0707aj(f16694do.m8032do(context, Cfor.f16715do[0]).mo2273do(), new Ctry(null)), this);
        C0315Kc.m1177static(C3691sb.m8132do(interfaceC3161jb), new Cdo(null));
    }

    @Override // defpackage.InterfaceC3965xC
    /* renamed from: do */
    public final void mo8621do(String str) {
        C0173Do.m401try(str, "sessionId");
        C0315Kc.m1177static(C3691sb.m8132do(this.f16698do), new Celse(str, null));
    }

    @Override // defpackage.InterfaceC3965xC
    /* renamed from: if */
    public final String mo8622if() {
        C0321Ki c0321Ki = this.f16697do.get();
        if (c0321Ki != null) {
            return c0321Ki.f1858do;
        }
        return null;
    }
}
