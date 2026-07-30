package b.b.f.m;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ExpandedMenuView;
import b.b.c.C0010i;
import b.b.c.C0014m;
import b.b.c.DialogInterfaceC0015n;
import com.android.systemui.shared.R;

/* renamed from: b.b.f.m.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0034k implements C, AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f392a;

    /* renamed from: b, reason: collision with root package name */
    public LayoutInflater f393b;

    /* renamed from: c, reason: collision with root package name */
    public o f394c;

    /* renamed from: d, reason: collision with root package name */
    public ExpandedMenuView f395d;
    public int e;
    public int f = 0;
    public int g;
    public B h;
    public C0033j i;

    public C0034k(Context context, int i) {
        this.g = i;
        this.f392a = context;
        this.f393b = LayoutInflater.from(context);
    }

    @Override // b.b.f.m.C
    public void a(o oVar, boolean z) {
        B b2 = this.h;
        if (b2 != null) {
            b2.a(oVar, z);
        }
    }

    public ListAdapter b() {
        if (this.i == null) {
            this.i = new C0033j(this);
        }
        return this.i;
    }

    @Override // b.b.f.m.C
    public boolean c() {
        return false;
    }

    @Override // b.b.f.m.C
    public void d(Context context, o oVar) {
        if (this.f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f);
            this.f392a = contextThemeWrapper;
            this.f393b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f392a != null) {
            this.f392a = context;
            if (this.f393b == null) {
                this.f393b = LayoutInflater.from(context);
            }
        }
        this.f394c = oVar;
        C0033j c0033j = this.i;
        if (c0033j != null) {
            c0033j.notifyDataSetChanged();
        }
    }

    @Override // b.b.f.m.C
    public boolean e(o oVar, r rVar) {
        return false;
    }

    @Override // b.b.f.m.C
    public boolean g(o oVar, r rVar) {
        return false;
    }

    @Override // b.b.f.m.C
    public void h(B b2) {
        this.h = b2;
    }

    @Override // b.b.f.m.C
    public boolean i(K k) {
        if (!k.hasVisibleItems()) {
            return false;
        }
        p pVar = new p(k);
        o oVar = pVar.f404a;
        C0014m c0014m = new C0014m(oVar.f400a);
        C0034k c0034k = new C0034k(c0014m.f310a.f301a, R.layout.abc_list_menu_item_layout);
        pVar.f406c = c0034k;
        c0034k.h = pVar;
        o oVar2 = pVar.f404a;
        oVar2.b(c0034k, oVar2.f400a);
        ListAdapter b2 = pVar.f406c.b();
        C0010i c0010i = c0014m.f310a;
        c0010i.r = b2;
        c0010i.s = pVar;
        View view = oVar.o;
        if (view != null) {
            c0010i.g = view;
        } else {
            c0010i.f304d = oVar.n;
            c0010i.f = oVar.m;
        }
        c0014m.f310a.p = pVar;
        DialogInterfaceC0015n a2 = c0014m.a();
        pVar.f405b = a2;
        a2.setOnDismissListener(pVar);
        WindowManager.LayoutParams attributes = pVar.f405b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        pVar.f405b.show();
        B b3 = this.h;
        if (b3 == null) {
            return true;
        }
        b3.b(k);
        return true;
    }

    @Override // b.b.f.m.C
    public void j(boolean z) {
        C0033j c0033j = this.i;
        if (c0033j != null) {
            c0033j.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f394c.r(this.i.getItem(i), this, 0);
    }
}
