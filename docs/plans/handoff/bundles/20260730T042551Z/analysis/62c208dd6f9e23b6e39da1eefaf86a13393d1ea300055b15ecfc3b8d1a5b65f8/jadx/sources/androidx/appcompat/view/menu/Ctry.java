package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import androidx.appcompat.view.menu.Ccatch;
import java.util.ArrayList;

/* renamed from: androidx.appcompat.view.menu.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends BaseAdapter {

    /* renamed from: do, reason: not valid java name */
    public int f5547do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LayoutInflater f5548do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5549do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5550do;

    /* renamed from: if, reason: not valid java name */
    public final int f5551if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f5552if;

    public Ctry(Ccase ccase, LayoutInflater layoutInflater, boolean z, int i) {
        this.f5552if = z;
        this.f5548do = layoutInflater;
        this.f5549do = ccase;
        this.f5551if = i;
        m3363if();
    }

    @Override // android.widget.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Cgoto getItem(int i) {
        ArrayList<Cgoto> m3326class;
        boolean z = this.f5552if;
        Ccase ccase = this.f5549do;
        if (z) {
            ccase.m3344this();
            m3326class = ccase.f5419new;
        } else {
            m3326class = ccase.m3326class();
        }
        int i2 = this.f5547do;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return m3326class.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<Cgoto> m3326class;
        boolean z = this.f5552if;
        Ccase ccase = this.f5549do;
        if (z) {
            ccase.m3344this();
            m3326class = ccase.f5419new;
        } else {
            m3326class = ccase.m3326class();
        }
        return this.f5547do < 0 ? m3326class.size() : m3326class.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f5548do.inflate(this.f5551if, viewGroup, false);
        }
        int i2 = getItem(i).f5485if;
        int i3 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        boolean z = this.f5549do.mo3327const() && i2 != (i3 >= 0 ? getItem(i3).f5485if : i2);
        ImageView imageView = listMenuItemView.f5393for;
        if (imageView != null) {
            imageView.setVisibility((listMenuItemView.f5398if || !z) ? 8 : 0);
        }
        Ccatch.Cdo cdo = (Ccatch.Cdo) view;
        if (this.f5550do) {
            listMenuItemView.f5394for = true;
            listMenuItemView.f5391do = true;
        }
        cdo.mo3307if(getItem(i));
        return view;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3363if() {
        Ccase ccase = this.f5549do;
        Cgoto cgoto = ccase.f5408do;
        if (cgoto != null) {
            ccase.m3344this();
            ArrayList<Cgoto> arrayList = ccase.f5419new;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == cgoto) {
                    this.f5547do = i;
                    return;
                }
            }
        }
        this.f5547do = -1;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m3363if();
        super.notifyDataSetChanged();
    }
}
