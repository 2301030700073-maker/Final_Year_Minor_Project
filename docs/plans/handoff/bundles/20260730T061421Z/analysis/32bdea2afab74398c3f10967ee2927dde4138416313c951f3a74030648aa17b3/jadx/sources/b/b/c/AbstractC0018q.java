package b.b.c;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* renamed from: b.b.c.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0018q {

    /* renamed from: a, reason: collision with root package name */
    public static final b.d.i f315a = new b.d.i(0);

    /* renamed from: b, reason: collision with root package name */
    public static final Object f316b = new Object();

    public static AbstractC0018q e(Activity activity, InterfaceC0017p interfaceC0017p) {
        return new J(activity, null, interfaceC0017p, activity);
    }

    public static AbstractC0018q f(Dialog dialog, InterfaceC0017p interfaceC0017p) {
        return new J(dialog.getContext(), dialog.getWindow(), interfaceC0017p, dialog);
    }

    public static void k(AbstractC0018q abstractC0018q) {
        synchronized (f316b) {
            b.d.i iVar = f315a;
            Objects.requireNonNull(iVar);
            b.d.h hVar = new b.d.h(iVar);
            while (hVar.hasNext()) {
                AbstractC0018q abstractC0018q2 = (AbstractC0018q) ((WeakReference) hVar.next()).get();
                if (abstractC0018q2 == abstractC0018q || abstractC0018q2 == null) {
                    hVar.remove();
                }
            }
        }
    }

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    public void d() {
    }

    public abstract void g();

    public abstract void h();

    public abstract void i(Bundle bundle);

    public abstract void j();

    public abstract boolean l(int i);

    public abstract void m(int i);

    public abstract void n(View view);

    public abstract void o(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void p(CharSequence charSequence);
}
