package b.b.f.m;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* renamed from: b.b.f.m.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0035l extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public o f396a;

    /* renamed from: b, reason: collision with root package name */
    public int f397b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f398c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f399d;
    public final LayoutInflater e;
    public final int f;

    public C0035l(o oVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f399d = z;
        this.e = layoutInflater;
        this.f396a = oVar;
        this.f = i;
        a();
    }

    public void a() {
        o oVar = this.f396a;
        r rVar = oVar.w;
        if (rVar != null) {
            oVar.i();
            ArrayList arrayList = oVar.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((r) arrayList.get(i)) == rVar) {
                    this.f397b = i;
                    return;
                }
            }
        }
        this.f397b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public r getItem(int i) {
        ArrayList l;
        if (this.f399d) {
            o oVar = this.f396a;
            oVar.i();
            l = oVar.j;
        } else {
            l = this.f396a.l();
        }
        int i2 = this.f397b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (r) l.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList l;
        if (this.f399d) {
            o oVar = this.f396a;
            oVar.i();
            l = oVar.j;
        } else {
            l = this.f396a.l();
        }
        return this.f397b < 0 ? l.size() : l.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i2 = getItem(i).f409b;
        int i3 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        boolean z = this.f396a.m() && i2 != (i3 >= 0 ? getItem(i3).f409b : i2);
        ImageView imageView = listMenuItemView.h;
        if (imageView != null) {
            imageView.setVisibility((listMenuItemView.o || !z) ? 8 : 0);
        }
        D d2 = (D) view;
        if (this.f398c) {
            listMenuItemView.q = true;
            listMenuItemView.m = true;
        }
        d2.e(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
