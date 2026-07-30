package androidx.fragment.app;

import android.view.View;
import androidx.transition.Cif;
import defpackage.AbstractC0387Nj;
import defpackage.C0322Kj;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.return, reason: invalid class name */
/* loaded from: classes.dex */
public final class Creturn {

    /* renamed from: do, reason: not valid java name */
    public static final C0322Kj f7007do = new C0322Kj();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AbstractC0387Nj f7008do;

    static {
        AbstractC0387Nj abstractC0387Nj;
        try {
            abstractC0387Nj = (AbstractC0387Nj) Cif.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            abstractC0387Nj = null;
        }
        f7008do = abstractC0387Nj;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4186do(Fragment fragment, Fragment fragment2, boolean z) {
        if (z) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4187if(int i, ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i);
        }
    }
}
