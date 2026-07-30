package defpackage;

import android.widget.EditText;

/* renamed from: Cf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0142Cf {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f403do;

    /* renamed from: Cf$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final C0318Kf f404do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EditText f405do;

        public Cdo(EditText editText) {
            this.f405do = editText;
            C0318Kf c0318Kf = new C0318Kf(editText);
            this.f404do = c0318Kf;
            editText.addTextChangedListener(c0318Kf);
            if (C0164Df.f635do == null) {
                synchronized (C0164Df.f637do) {
                    if (C0164Df.f635do == null) {
                        C0164Df.f635do = new C0164Df();
                    }
                }
            }
            editText.setEditableFactory(C0164Df.f635do);
        }
    }

    /* renamed from: Cf$if, reason: invalid class name */
    public static class Cif {
    }

    public C0142Cf(EditText editText) {
        if (editText == null) {
            throw new NullPointerException("editText cannot be null");
        }
        this.f403do = new Cdo(editText);
    }
}
