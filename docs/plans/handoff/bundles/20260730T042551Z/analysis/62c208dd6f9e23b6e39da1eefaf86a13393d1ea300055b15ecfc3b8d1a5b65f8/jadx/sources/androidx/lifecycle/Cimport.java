package androidx.lifecycle;

import android.app.Application;
import defpackage.AbstractC0805cL;
import defpackage.AbstractC3398nc;
import defpackage.C0173Do;
import defpackage.C0397Nt;
import defpackage.C2687eL;
import defpackage.U0;
import java.lang.reflect.InvocationTargetException;

/* renamed from: androidx.lifecycle.import, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cimport {

    /* renamed from: do, reason: not valid java name */
    public final Cif f7129do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2687eL f7130do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3398nc f7131do;

    /* renamed from: androidx.lifecycle.import$do, reason: invalid class name */
    public static class Cdo extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public static Cdo f7132do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Application f7133do;

        public Cdo(Application application) {
            this.f7133do = application;
        }

        @Override // androidx.lifecycle.Cimport.Cfor, androidx.lifecycle.Cimport.Cif
        /* renamed from: do */
        public final <T extends AbstractC0805cL> T mo1068do(Class<T> cls) {
            Application application = this.f7133do;
            if (application != null) {
                return (T) m4271for(cls, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        /* renamed from: for, reason: not valid java name */
        public final <T extends AbstractC0805cL> T m4271for(Class<T> cls, Application application) {
            if (!U0.class.isAssignableFrom(cls)) {
                return (T) super.mo1068do(cls);
            }
            try {
                T newInstance = cls.getConstructor(Application.class).newInstance(application);
                C0173Do.m399new(newInstance, "{\n                try {\n…          }\n            }");
                return newInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }

        @Override // androidx.lifecycle.Cimport.Cfor, androidx.lifecycle.Cimport.Cif
        /* renamed from: if */
        public final AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
            if (this.f7133do != null) {
                return mo1068do(cls);
            }
            Application application = (Application) c0397Nt.f14537do.get(Cwhile.f7154do);
            if (application != null) {
                return m4271for(cls, application);
            }
            if (U0.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return super.mo1068do(cls);
        }
    }

    /* renamed from: androidx.lifecycle.import$for, reason: invalid class name */
    public static class Cfor implements Cif {

        /* renamed from: do, reason: not valid java name */
        public static Cfor f7134do;

        @Override // androidx.lifecycle.Cimport.Cif
        /* renamed from: do */
        public <T extends AbstractC0805cL> T mo1068do(Class<T> cls) {
            try {
                T newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                C0173Do.m399new(newInstance, "{\n                modelC…wInstance()\n            }");
                return newInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            }
        }

        @Override // androidx.lifecycle.Cimport.Cif
        /* renamed from: if */
        public AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
            return mo1068do(cls);
        }
    }

    /* renamed from: androidx.lifecycle.import$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        <T extends AbstractC0805cL> T mo1068do(Class<T> cls);

        /* renamed from: if */
        AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt);
    }

    /* renamed from: androidx.lifecycle.import$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: for, reason: not valid java name */
        public void mo4272for(AbstractC0805cL abstractC0805cL) {
        }
    }

    public Cimport(C2687eL c2687eL, Cif cif, AbstractC3398nc abstractC3398nc) {
        C0173Do.m401try(c2687eL, "store");
        C0173Do.m401try(abstractC3398nc, "defaultCreationExtras");
        this.f7130do = c2687eL;
        this.f7129do = cif;
        this.f7131do = abstractC3398nc;
    }

    /* renamed from: do, reason: not valid java name */
    public final <T extends AbstractC0805cL> T m4269do(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m4270if(cls, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public final AbstractC0805cL m4270if(Class cls, String str) {
        AbstractC0805cL mo1068do;
        C0173Do.m401try(str, "key");
        C2687eL c2687eL = this.f7130do;
        c2687eL.getClass();
        AbstractC0805cL abstractC0805cL = (AbstractC0805cL) c2687eL.f12668do.get(str);
        boolean isInstance = cls.isInstance(abstractC0805cL);
        Cif cif = this.f7129do;
        if (isInstance) {
            Cnew cnew = cif instanceof Cnew ? (Cnew) cif : null;
            if (cnew != null) {
                C0173Do.m398if(abstractC0805cL);
                cnew.mo4272for(abstractC0805cL);
            }
            C0173Do.m396for(abstractC0805cL, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return abstractC0805cL;
        }
        C0397Nt c0397Nt = new C0397Nt(this.f7131do);
        c0397Nt.f14537do.put(Cnative.f7135do, str);
        try {
            mo1068do = cif.mo1069if(cls, c0397Nt);
        } catch (AbstractMethodError unused) {
            mo1068do = cif.mo1068do(cls);
        }
        C0173Do.m401try(mo1068do, "viewModel");
        AbstractC0805cL abstractC0805cL2 = (AbstractC0805cL) c2687eL.f12668do.put(str, mo1068do);
        if (abstractC0805cL2 != null) {
            abstractC0805cL2.mo4218if();
        }
        return mo1068do;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cimport(C2687eL c2687eL, Cif cif) {
        this(c2687eL, cif, AbstractC3398nc.Cdo.f14538do);
        C0173Do.m401try(c2687eL, "store");
    }
}
