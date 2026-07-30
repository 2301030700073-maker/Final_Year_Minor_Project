package defpackage;

import android.app.Application;
import android.content.Context;

/* renamed from: Ji, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0299Ji {

    /* renamed from: do, reason: not valid java name */
    public final SC f1667do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f1668do;

    @InterfaceC0761bd(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {45, 49}, m = "invokeSuspend")
    /* renamed from: Ji$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ LC f1670do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ InterfaceC3161jb f1671if;

        /* renamed from: new, reason: not valid java name */
        public int f1672new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(InterfaceC3161jb interfaceC3161jb, LC lc, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f1671if = interfaceC3161jb;
            this.f1670do = lc;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0074  */
        @Override // defpackage.P4
        /* renamed from: class */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo358class(java.lang.Object r8) {
            /*
                r7 = this;
                tb r0 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
                int r1 = r7.f1672new
                r2 = 0
                r3 = 2
                Ji r4 = defpackage.C0299Ji.this
                r5 = 1
                if (r1 == 0) goto L1f
                if (r1 == r5) goto L1b
                if (r1 != r3) goto L13
                defpackage.C3645ro.m8017synchronized(r8)
                goto L6a
            L13:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1b:
                defpackage.C3645ro.m8017synchronized(r8)
                goto L2d
            L1f:
                defpackage.C3645ro.m8017synchronized(r8)
                Li r8 = defpackage.C0343Li.f1980do
                r7.f1672new = r5
                java.lang.Object r8 = r8.m1342if(r7)
                if (r8 != r0) goto L2d
                return r0
            L2d:
                java.util.Map r8 = (java.util.Map) r8
                java.util.Collection r8 = r8.values()
                java.lang.Iterable r8 = (java.lang.Iterable) r8
                boolean r1 = r8 instanceof java.util.Collection
                if (r1 == 0) goto L43
                r1 = r8
                java.util.Collection r1 = (java.util.Collection) r1
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L43
                goto L5b
            L43:
                java.util.Iterator r8 = r8.iterator()
            L47:
                boolean r1 = r8.hasNext()
                if (r1 == 0) goto L5b
                java.lang.Object r1 = r8.next()
                PC r1 = (defpackage.PC) r1
                boolean r1 = r1.mo485do()
                if (r1 == 0) goto L47
                r8 = 0
                goto L5c
            L5b:
                r8 = 1
            L5c:
                if (r8 == 0) goto L5f
                goto Lcc
            L5f:
                SC r8 = r4.f1667do
                r7.f1672new = r3
                java.lang.Object r8 = r8.m2120if(r7)
                if (r8 != r0) goto L6a
                return r0
            L6a:
                SC r8 = r4.f1667do
                jD r0 = r8.f3468do
                java.lang.Boolean r0 = r0.mo102new()
                if (r0 == 0) goto L79
                boolean r8 = r0.booleanValue()
                goto L87
            L79:
                jD r8 = r8.f3469if
                java.lang.Boolean r8 = r8.mo102new()
                if (r8 == 0) goto L86
                boolean r8 = r8.booleanValue()
                goto L87
            L86:
                r8 = 1
            L87:
                if (r8 != 0) goto L8a
                goto Lcc
            L8a:
                JC r8 = new JC
                jb r0 = r7.f1671if
                r8.<init>(r0)
                LC r0 = r7.f1670do
                java.lang.String r1 = "sessionLifecycleServiceBinder"
                defpackage.C0173Do.m401try(r0, r1)
                android.os.Messenger r1 = new android.os.Messenger
                JC$do r3 = new JC$do
                jb r6 = r8.f1617do
                r3.<init>(r6)
                r1.<init>(r3)
                JC$if r3 = r8.f1614do
                r0.mo1305do(r1, r3)
                RC r0 = defpackage.RC.f3157do
                r0.getClass()
                defpackage.RC.f3156do = r8
                boolean r0 = defpackage.RC.f3158do
                if (r0 == 0) goto Lb9
                defpackage.RC.f3158do = r2
                r8.m1031if(r5)
            Lb9:
                oI r8 = new oI
                r0 = 5
                r8.<init>(r0)
                ai r0 = r4.f1668do
                r0.m3147do()
                com.google.android.gms.common.internal.Preconditions.checkNotNull(r8)
                java.util.concurrent.CopyOnWriteArrayList r0 = r0.f4992if
                r0.add(r8)
            Lcc:
                kJ r8 = defpackage.C3206kJ.f13965do
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0299Ji.Cdo.mo358class(java.lang.Object):java.lang.Object");
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            return C0299Ji.this.new Cdo(this.f1671if, this.f1670do, interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Cdo) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    public C0299Ji(C0706ai c0706ai, SC sc, InterfaceC3161jb interfaceC3161jb, LC lc) {
        this.f1668do = c0706ai;
        this.f1667do = sc;
        c0706ai.m3147do();
        Context applicationContext = c0706ai.f4985do.getApplicationContext();
        if (!(applicationContext instanceof Application)) {
            applicationContext.getClass().toString();
        } else {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(RC.f3157do);
            C0315Kc.m1177static(C3691sb.m8132do(interfaceC3161jb), new Cdo(interfaceC3161jb, lc, null));
        }
    }
}
