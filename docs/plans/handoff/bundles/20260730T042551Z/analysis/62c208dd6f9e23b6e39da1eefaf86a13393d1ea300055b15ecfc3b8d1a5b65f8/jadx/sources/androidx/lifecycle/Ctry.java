package androidx.lifecycle;

import com.facebook.internal.ServerProtocol;
import defpackage.C0173Do;
import defpackage.InterfaceC2655dq;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: androidx.lifecycle.try, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ctry {

    /* renamed from: androidx.lifecycle.try$do, reason: invalid class name */
    public enum Cdo {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static final C0039do Companion = new C0039do();

        /* renamed from: androidx.lifecycle.try$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0039do {
            /* renamed from: do, reason: not valid java name */
            public static Cdo m4278do(Cif cif) {
                C0173Do.m401try(cif, ServerProtocol.DIALOG_PARAM_STATE);
                int ordinal = cif.ordinal();
                if (ordinal == 1) {
                    return Cdo.ON_CREATE;
                }
                if (ordinal == 2) {
                    return Cdo.ON_START;
                }
                if (ordinal != 3) {
                    return null;
                }
                return Cdo.ON_RESUME;
            }
        }

        /* renamed from: androidx.lifecycle.try$do$if, reason: invalid class name */
        public /* synthetic */ class Cif {

            /* renamed from: do, reason: not valid java name */
            public static final /* synthetic */ int[] f7147do;

            static {
                int[] iArr = new int[Cdo.values().length];
                try {
                    iArr[Cdo.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Cdo.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Cdo.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Cdo.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Cdo.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Cdo.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Cdo.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f7147do = iArr;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final Cif m4277do() {
            switch (Cif.f7147do[ordinal()]) {
                case 1:
                case 2:
                    return Cif.CREATED;
                case 3:
                case 4:
                    return Cif.STARTED;
                case 5:
                    return Cif.RESUMED;
                case 6:
                    return Cif.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* renamed from: androidx.lifecycle.try$if, reason: invalid class name */
    public enum Cif {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED
    }

    public Ctry() {
        new AtomicReference();
    }

    /* renamed from: do */
    public abstract void mo4259do(InterfaceC2655dq interfaceC2655dq);

    /* renamed from: for */
    public abstract void mo4261for(InterfaceC2655dq interfaceC2655dq);

    /* renamed from: if */
    public abstract Cif mo4263if();
}
