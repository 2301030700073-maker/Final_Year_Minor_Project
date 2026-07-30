package b.e.i;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

/* renamed from: b.e.i.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0089c {

    /* renamed from: a, reason: collision with root package name */
    public b.b.f.m.q f760a;

    public AbstractC0089c(Context context) {
    }

    public boolean a() {
        return true;
    }

    public View b(MenuItem menuItem) {
        return ((b.b.f.m.s) this).f412b.onCreateActionView();
    }

    public boolean c() {
        return false;
    }

    public void d(b.b.f.m.q qVar) {
        if (this.f760a != null) {
            StringBuilder f = c.a.c.a.a.f("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            f.append(getClass().getSimpleName());
            f.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", f.toString());
        }
        this.f760a = qVar;
    }
}
