package defpackage;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes.dex */
public final class GE {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1156do;

    /* renamed from: GE$do, reason: invalid class name */
    public static class Cdo extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public final View f1157do;

        public Cdo(View view) {
            this.f1157do = view;
        }

        /* renamed from: do, reason: not valid java name */
        public void mo715do() {
            View view;
            View view2 = this.f1157do;
            if (view2 == null) {
                return;
            }
            if (view2.isInEditMode() || view2.onCheckIsTextEditor()) {
                view2.requestFocus();
                view = view2;
            } else {
                view = view2.getRootView().findFocus();
            }
            if (view == null) {
                view = view2.getRootView().findViewById(R.id.content);
            }
            if (view == null || !view.hasWindowFocus()) {
                return;
            }
            view.post(new FE(view, 0));
        }
    }

    /* renamed from: GE$for, reason: invalid class name */
    public static class Cfor {
    }

    public GE(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f1156do = new Cif(view);
        } else {
            this.f1156do = new Cdo(view);
        }
    }

    /* renamed from: GE$if, reason: invalid class name */
    public static class Cif extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public final WindowInsetsController f1158do;

        /* renamed from: if, reason: not valid java name */
        public final View f1159if;

        public Cif(View view) {
            super(view);
            this.f1159if = view;
        }

        @Override // defpackage.GE.Cdo
        /* renamed from: do */
        public final void mo715do() {
            int ime;
            View view = this.f1159if;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f1158do;
            if (windowInsetsController == null) {
                windowInsetsController = view != null ? view.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.mo715do();
            } else {
                ime = WindowInsets.Type.ime();
                windowInsetsController.show(ime);
            }
        }

        public Cif(WindowInsetsController windowInsetsController) {
            super(null);
            this.f1158do = windowInsetsController;
        }
    }

    @Deprecated
    public GE(WindowInsetsController windowInsetsController) {
        this.f1156do = new Cif(windowInsetsController);
    }
}
