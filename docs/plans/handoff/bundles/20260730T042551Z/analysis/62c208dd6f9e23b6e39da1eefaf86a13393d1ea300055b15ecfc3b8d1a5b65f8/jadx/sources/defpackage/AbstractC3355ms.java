package defpackage;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;

/* renamed from: ms, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3355ms {

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    /* renamed from: ms$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3355ms {

        /* renamed from: do, reason: not valid java name */
        public final MeasurementManager f14408do;

        public Cdo(Context context) {
            Object systemService;
            C0173Do.m401try(context, "context");
            systemService = context.getSystemService((Class<Object>) MeasurementManager.class);
            C0173Do.m399new(systemService, "context.getSystemService…:class.java\n            )");
            this.f14408do = (MeasurementManager) systemService;
        }

        /* renamed from: case, reason: not valid java name */
        public Object m7477case(XL xl, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            new U6(1, C3645ro.m8008package(interfaceC0576Wa)).m2359static();
            throw null;
        }

        @Override // defpackage.AbstractC3355ms
        /* renamed from: do */
        public Object mo7474do(InterfaceC0576Wa<? super Integer> interfaceC0576Wa) {
            U6 u6 = new U6(1, C3645ro.m8008package(interfaceC0576Wa));
            u6.m2359static();
            this.f14408do.getMeasurementApiStatus(new ExecutorC2951is(0), C3645ro.m8000for(u6));
            Object m2358return = u6.m2358return();
            if (m2358return == EnumC3750tb.COROUTINE_SUSPENDED) {
                C3850vF.m8455native(interfaceC0576Wa);
            }
            return m2358return;
        }

        @Override // defpackage.AbstractC3355ms
        /* renamed from: for */
        public Object mo7475for(Uri uri, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            U6 u6 = new U6(1, C3645ro.m8008package(interfaceC0576Wa));
            u6.m2359static();
            this.f14408do.registerTrigger(uri, new ExecutorC3178js(0), C3645ro.m8000for(u6));
            Object m2358return = u6.m2358return();
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            if (m2358return == enumC3750tb) {
                C3850vF.m8455native(interfaceC0576Wa);
            }
            return m2358return == enumC3750tb ? m2358return : C3206kJ.f13965do;
        }

        @Override // defpackage.AbstractC3355ms
        /* renamed from: if */
        public Object mo7476if(Uri uri, InputEvent inputEvent, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            U6 u6 = new U6(1, C3645ro.m8008package(interfaceC0576Wa));
            u6.m2359static();
            this.f14408do.registerSource(uri, inputEvent, new ExecutorC3178js(0), C3645ro.m8000for(u6));
            Object m2358return = u6.m2358return();
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            if (m2358return == enumC3750tb) {
                C3850vF.m8455native(interfaceC0576Wa);
            }
            return m2358return == enumC3750tb ? m2358return : C3206kJ.f13965do;
        }

        /* renamed from: new, reason: not valid java name */
        public Object m7478new(C0447Qd c0447Qd, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            new U6(1, C3645ro.m8008package(interfaceC0576Wa)).m2359static();
            new DeletionRequest.Builder();
            throw null;
        }

        /* renamed from: try, reason: not valid java name */
        public Object m7479try(WL wl, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            new U6(1, C3645ro.m8008package(interfaceC0576Wa)).m2359static();
            throw null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Object mo7474do(InterfaceC0576Wa<? super Integer> interfaceC0576Wa);

    /* renamed from: for, reason: not valid java name */
    public abstract Object mo7475for(Uri uri, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa);

    /* renamed from: if, reason: not valid java name */
    public abstract Object mo7476if(Uri uri, InputEvent inputEvent, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa);
}
