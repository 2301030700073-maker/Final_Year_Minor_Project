package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.InputEvent;
import defpackage.AbstractC3355ms;

/* renamed from: ns, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3414ns {

    /* renamed from: ns$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3414ns {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC3355ms f14616do;

        @InterfaceC0761bd(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1", f = "MeasurementManagerFutures.kt", l = {169}, m = "invokeSuspend")
        /* renamed from: ns$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0089do extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super Integer>, Object> {

            /* renamed from: new, reason: not valid java name */
            public int f14618new;

            public C0089do(InterfaceC0576Wa<? super C0089do> interfaceC0576Wa) {
                super(2, interfaceC0576Wa);
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
                int i = this.f14618new;
                if (i == 0) {
                    C3645ro.m8017synchronized(obj);
                    AbstractC3355ms abstractC3355ms = Cdo.this.f14616do;
                    this.f14618new = 1;
                    obj = abstractC3355ms.mo7474do(this);
                    if (obj == enumC3750tb) {
                        return enumC3750tb;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C3645ro.m8017synchronized(obj);
                }
                return obj;
            }

            @Override // defpackage.P4
            /* renamed from: do */
            public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
                return Cdo.this.new C0089do(interfaceC0576Wa);
            }

            @Override // defpackage.InterfaceC3641rk
            public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super Integer> interfaceC0576Wa) {
                return ((C0089do) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
            }
        }

        @InterfaceC0761bd(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1", f = "MeasurementManagerFutures.kt", l = {141}, m = "invokeSuspend")
        /* renamed from: ns$do$for, reason: invalid class name */
        public static final class Cfor extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Uri f14619do;

            /* renamed from: new, reason: not valid java name */
            public int f14621new;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cfor(Uri uri, InterfaceC0576Wa<? super Cfor> interfaceC0576Wa) {
                super(2, interfaceC0576Wa);
                this.f14619do = uri;
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
                int i = this.f14621new;
                if (i == 0) {
                    C3645ro.m8017synchronized(obj);
                    AbstractC3355ms abstractC3355ms = Cdo.this.f14616do;
                    this.f14621new = 1;
                    if (abstractC3355ms.mo7475for(this.f14619do, this) == enumC3750tb) {
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
                return Cdo.this.new Cfor(this.f14619do, interfaceC0576Wa);
            }

            @Override // defpackage.InterfaceC3641rk
            public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
                return ((Cfor) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
            }
        }

        @InterfaceC0761bd(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1", f = "MeasurementManagerFutures.kt", l = {133}, m = "invokeSuspend")
        /* renamed from: ns$do$if, reason: invalid class name */
        public static final class Cif extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Uri f14622do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ InputEvent f14623do;

            /* renamed from: new, reason: not valid java name */
            public int f14625new;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cif(Uri uri, InputEvent inputEvent, InterfaceC0576Wa<? super Cif> interfaceC0576Wa) {
                super(2, interfaceC0576Wa);
                this.f14622do = uri;
                this.f14623do = inputEvent;
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
                int i = this.f14625new;
                if (i == 0) {
                    C3645ro.m8017synchronized(obj);
                    AbstractC3355ms abstractC3355ms = Cdo.this.f14616do;
                    this.f14625new = 1;
                    if (abstractC3355ms.mo7476if(this.f14622do, this.f14623do, this) == enumC3750tb) {
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
                return Cdo.this.new Cif(this.f14622do, this.f14623do, interfaceC0576Wa);
            }

            @Override // defpackage.InterfaceC3641rk
            public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
                return ((Cif) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
            }
        }

        public Cdo(AbstractC3355ms.Cdo cdo) {
            this.f14616do = cdo;
        }

        /* renamed from: case, reason: not valid java name */
        public InterfaceFutureC3942wq<C3206kJ> m7619case(WL wl) {
            C0173Do.m401try(wl, "request");
            throw null;
        }

        /* renamed from: else, reason: not valid java name */
        public InterfaceFutureC3942wq<C3206kJ> m7620else(XL xl) {
            C0173Do.m401try(xl, "request");
            throw null;
        }

        /* renamed from: for, reason: not valid java name */
        public InterfaceFutureC3942wq<C3206kJ> m7621for(C0447Qd c0447Qd) {
            C0173Do.m401try(c0447Qd, "deletionRequest");
            throw null;
        }

        @Override // defpackage.AbstractC3414ns
        /* renamed from: if */
        public InterfaceFutureC3942wq<C3206kJ> mo7618if(Uri uri, InputEvent inputEvent) {
            C0173Do.m401try(uri, "attributionSource");
            return O2.m1588if(C0315Kc.m1161do(C3691sb.m8132do(C0185Ee.f871do), new Cif(uri, inputEvent, null)));
        }

        /* renamed from: new, reason: not valid java name */
        public InterfaceFutureC3942wq<Integer> m7622new() {
            return O2.m1588if(C0315Kc.m1161do(C3691sb.m8132do(C0185Ee.f871do), new C0089do(null)));
        }

        /* renamed from: try, reason: not valid java name */
        public InterfaceFutureC3942wq<C3206kJ> m7623try(Uri uri) {
            C0173Do.m401try(uri, "trigger");
            return O2.m1588if(C0315Kc.m1161do(C3691sb.m8132do(C0185Ee.f871do), new Cfor(uri, null)));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final Cdo m7617do(Context context) {
        C0173Do.m401try(context, "context");
        int i = Build.VERSION.SDK_INT;
        C3187k0 c3187k0 = C3187k0.f13862do;
        if (i >= 30) {
            c3187k0.m7208do();
        }
        AbstractC3355ms.Cdo cdo = (i >= 30 ? c3187k0.m7208do() : 0) >= 5 ? new AbstractC3355ms.Cdo(context) : null;
        if (cdo != null) {
            return new Cdo(cdo);
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract InterfaceFutureC3942wq<C3206kJ> mo7618if(Uri uri, InputEvent inputEvent);
}
