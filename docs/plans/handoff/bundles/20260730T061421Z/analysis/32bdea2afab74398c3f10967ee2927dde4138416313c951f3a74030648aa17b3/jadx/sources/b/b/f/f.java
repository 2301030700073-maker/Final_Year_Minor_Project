package b.b.f;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import b.b.f.m.F;
import b.b.f.m.x;
import b.d.n;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class f implements a {

    /* renamed from: a, reason: collision with root package name */
    public final ActionMode.Callback f336a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f337b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f338c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final n f339d = new n();

    public f(Context context, ActionMode.Callback callback) {
        this.f337b = context;
        this.f336a = callback;
    }

    @Override // b.b.f.a
    public boolean a(b bVar, Menu menu) {
        return this.f336a.onPrepareActionMode(e(bVar), f(menu));
    }

    @Override // b.b.f.a
    public boolean b(b bVar, MenuItem menuItem) {
        return this.f336a.onActionItemClicked(e(bVar), new x(this.f337b, (b.e.e.a.b) menuItem));
    }

    @Override // b.b.f.a
    public boolean c(b bVar, Menu menu) {
        return this.f336a.onCreateActionMode(e(bVar), f(menu));
    }

    @Override // b.b.f.a
    public void d(b bVar) {
        this.f336a.onDestroyActionMode(e(bVar));
    }

    public ActionMode e(b bVar) {
        int size = this.f338c.size();
        for (int i = 0; i < size; i++) {
            g gVar = (g) this.f338c.get(i);
            if (gVar != null && gVar.f341b == bVar) {
                return gVar;
            }
        }
        g gVar2 = new g(this.f337b, bVar);
        this.f338c.add(gVar2);
        return gVar2;
    }

    public final Menu f(Menu menu) {
        Menu menu2 = (Menu) this.f339d.getOrDefault(menu, null);
        if (menu2 != null) {
            return menu2;
        }
        F f = new F(this.f337b, (b.e.e.a.a) menu);
        this.f339d.put(menu, f);
        return f;
    }
}
