package defpackage;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import com.facebook.internal.Utility;

/* renamed from: kM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3209kM {

    /* renamed from: do, reason: not valid java name */
    public final Ctry f13971do;

    /* renamed from: kM$do, reason: invalid class name */
    public static class Cdo extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final GE f13972do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Window f13973do;

        public Cdo(Window window, GE ge) {
            this.f13973do = window;
            this.f13972do = ge;
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: for, reason: not valid java name */
        public final void mo7238for() {
            for (int i = 1; i <= 256; i <<= 1) {
                if ((8 & i) != 0) {
                    if (i == 1) {
                        m7240try(4);
                        this.f13973do.clearFlags(1024);
                    } else if (i == 2) {
                        m7240try(2);
                    } else if (i == 8) {
                        this.f13972do.f1156do.mo715do();
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m7239new(int i) {
            View decorView = this.f13973do.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        /* renamed from: try, reason: not valid java name */
        public final void m7240try(int i) {
            View decorView = this.f13973do.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }
    }

    /* renamed from: kM$for, reason: invalid class name */
    public static class Cfor extends Cif {
        public Cfor(Window window, GE ge) {
            super(window, ge);
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: do, reason: not valid java name */
        public final void mo7241do(boolean z) {
            if (!z) {
                m7240try(16);
                return;
            }
            Window window = ((Cdo) this).f13973do;
            window.clearFlags(134217728);
            window.addFlags(Integer.MIN_VALUE);
            m7239new(16);
        }
    }

    /* renamed from: kM$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif(Window window, GE ge) {
            super(window, ge);
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: if, reason: not valid java name */
        public final void mo7242if(boolean z) {
            if (!z) {
                m7240try(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                return;
            }
            Window window = ((Cdo) this).f13973do;
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            m7239new(Utility.DEFAULT_STREAM_BUFFER_SIZE);
        }
    }

    /* renamed from: kM$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do */
        public void mo7241do(boolean z) {
        }

        /* renamed from: for */
        public void mo7238for() {
            throw null;
        }

        /* renamed from: if */
        public void mo7242if(boolean z) {
        }
    }

    @Deprecated
    public C3209kM(WindowInsetsController windowInsetsController) {
        this.f13971do = new Cnew(windowInsetsController, new GE(windowInsetsController));
    }

    /* renamed from: kM$new, reason: invalid class name */
    public static class Cnew extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final GE f13974do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Window f13975do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WindowInsetsController f13976do;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Cnew(android.view.Window r2, defpackage.GE r3) {
            /*
                r1 = this;
                android.view.WindowInsetsController r0 = defpackage.C3775u.m8368try(r2)
                r1.<init>(r0, r3)
                r1.f13975do = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3209kM.Cnew.<init>(android.view.Window, GE):void");
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: do */
        public final void mo7241do(boolean z) {
            WindowInsetsController windowInsetsController = this.f13976do;
            Window window = this.f13975do;
            if (z) {
                if (window != null) {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
                }
                windowInsetsController.setSystemBarsAppearance(16, 16);
                return;
            }
            if (window != null) {
                View decorView2 = window.getDecorView();
                decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
            }
            windowInsetsController.setSystemBarsAppearance(0, 16);
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: for */
        public final void mo7238for() {
            this.f13974do.f1156do.mo715do();
            this.f13976do.show(0);
        }

        @Override // defpackage.C3209kM.Ctry
        /* renamed from: if */
        public final void mo7242if(boolean z) {
            WindowInsetsController windowInsetsController = this.f13976do;
            Window window = this.f13975do;
            if (z) {
                if (window != null) {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | Utility.DEFAULT_STREAM_BUFFER_SIZE);
                }
                windowInsetsController.setSystemBarsAppearance(8, 8);
                return;
            }
            if (window != null) {
                View decorView2 = window.getDecorView();
                decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
            }
            windowInsetsController.setSystemBarsAppearance(0, 8);
        }

        public Cnew(WindowInsetsController windowInsetsController, GE ge) {
            new C2680eE();
            this.f13976do = windowInsetsController;
            this.f13974do = ge;
        }
    }

    public C3209kM(Window window, View view) {
        GE ge = new GE(view);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f13971do = new Cnew(window, ge);
            return;
        }
        if (i >= 26) {
            this.f13971do = new Cfor(window, ge);
        } else if (i >= 23) {
            this.f13971do = new Cif(window, ge);
        } else {
            this.f13971do = new Cdo(window, ge);
        }
    }
}
