package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC3458od;

/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements Celse {

    /* renamed from: do, reason: not valid java name */
    public final Celse f7060do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3458od f7061do;

    /* renamed from: androidx.lifecycle.DefaultLifecycleObserverAdapter$do, reason: invalid class name */
    public /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f7062do;

        static {
            int[] iArr = new int[Ctry.Cdo.values().length];
            try {
                iArr[Ctry.Cdo.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Ctry.Cdo.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Ctry.Cdo.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Ctry.Cdo.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Ctry.Cdo.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Ctry.Cdo.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Ctry.Cdo.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f7062do = iArr;
        }
    }

    public DefaultLifecycleObserverAdapter(InterfaceC3458od interfaceC3458od, Celse celse) {
        C0173Do.m401try(interfaceC3458od, "defaultLifecycleObserver");
        this.f7061do = interfaceC3458od;
        this.f7060do = celse;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        int i = Cdo.f7062do[cdo.ordinal()];
        InterfaceC3458od interfaceC3458od = this.f7061do;
        switch (i) {
            case 1:
                interfaceC3458od.mo4087else(interfaceC2714eq);
                break;
            case 2:
                interfaceC3458od.mo4088if(interfaceC2714eq);
                break;
            case 3:
                interfaceC3458od.onResume();
                break;
            case 4:
                interfaceC3458od.mo4085break(interfaceC2714eq);
                break;
            case 5:
                interfaceC3458od.mo4089this(interfaceC2714eq);
                break;
            case 6:
                interfaceC3458od.mo4086do(interfaceC2714eq);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        Celse celse = this.f7060do;
        if (celse != null) {
            celse.mo3192case(interfaceC2714eq, cdo);
        }
    }
}
