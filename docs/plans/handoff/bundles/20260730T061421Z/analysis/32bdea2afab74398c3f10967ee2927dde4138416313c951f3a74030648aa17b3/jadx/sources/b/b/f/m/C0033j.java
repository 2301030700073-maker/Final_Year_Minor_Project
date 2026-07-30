package b.b.f.m;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* renamed from: b.b.f.m.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0033j extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f390a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0034k f391b;

    public C0033j(C0034k c0034k) {
        this.f391b = c0034k;
        a();
    }

    public void a() {
        o oVar = this.f391b.f394c;
        r rVar = oVar.w;
        if (rVar != null) {
            oVar.i();
            ArrayList arrayList = oVar.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((r) arrayList.get(i)) == rVar) {
                    this.f390a = i;
                    return;
                }
            }
        }
        this.f390a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public r getItem(int i) {
        o oVar = this.f391b.f394c;
        oVar.i();
        ArrayList arrayList = oVar.j;
        int i2 = this.f391b.e;
        int i3 = i + 0;
        int i4 = this.f390a;
        if (i4 >= 0 && i3 >= i4) {
            i3++;
        }
        return (r) arrayList.get(i3);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        o oVar = this.f391b.f394c;
        oVar.i();
        int size = oVar.j.size();
        int i = this.f391b.e;
        int i2 = size + 0;
        return this.f390a < 0 ? i2 : i2 - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            C0034k c0034k = this.f391b;
            view = c0034k.f393b.inflate(c0034k.g, viewGroup, false);
        }
        ((D) view).e(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
