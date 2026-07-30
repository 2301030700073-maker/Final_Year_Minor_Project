package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.Cif;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccatch;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;

/* renamed from: androidx.appcompat.view.menu.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements Cbreak, AdapterView.OnItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public Context f5526do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayoutInflater f5527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ExpandedMenuView f5528do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5529do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f5530do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5531do;

    /* renamed from: androidx.appcompat.view.menu.new$do, reason: invalid class name */
    public class Cdo extends BaseAdapter {

        /* renamed from: do, reason: not valid java name */
        public int f5532do = -1;

        public Cdo() {
            m3356if();
        }

        @Override // android.widget.Adapter
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cgoto getItem(int i) {
            Cnew cnew = Cnew.this;
            Ccase ccase = cnew.f5530do;
            ccase.m3344this();
            ArrayList<Cgoto> arrayList = ccase.f5419new;
            cnew.getClass();
            int i2 = i + 0;
            int i3 = this.f5532do;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            Cnew cnew = Cnew.this;
            Ccase ccase = cnew.f5530do;
            ccase.m3344this();
            int size = ccase.f5419new.size();
            cnew.getClass();
            int i = size + 0;
            return this.f5532do < 0 ? i : i - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = Cnew.this.f5527do.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
            }
            ((Ccatch.Cdo) view).mo3307if(getItem(i));
            return view;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3356if() {
            Ccase ccase = Cnew.this.f5530do;
            Cgoto cgoto = ccase.f5408do;
            if (cgoto != null) {
                ccase.m3344this();
                ArrayList<Cgoto> arrayList = ccase.f5419new;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == cgoto) {
                        this.f5532do = i;
                        return;
                    }
                }
            }
            this.f5532do = -1;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            m3356if();
            super.notifyDataSetChanged();
        }
    }

    public Cnew(Context context) {
        this.f5526do = context;
        this.f5527do = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: break */
    public final void mo3316break(Cbreak.Cdo cdo) {
        this.f5529do = cdo;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: case */
    public final boolean mo3317case() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: catch */
    public final boolean mo978catch(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: class */
    public final void mo3318class(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f5528do.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: const */
    public final boolean mo979const(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: else */
    public final void mo980else(Context context, Ccase ccase) {
        if (this.f5526do != null) {
            this.f5526do = context;
            if (this.f5527do == null) {
                this.f5527do = LayoutInflater.from(context);
            }
        }
        this.f5530do = ccase;
        Cdo cdo = this.f5531do;
        if (cdo != null) {
            cdo.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(Ccase ccase, boolean z) {
        Cbreak.Cdo cdo = this.f5529do;
        if (cdo != null) {
            cdo.mo3279for(ccase, z);
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    public final int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    public final boolean mo3320goto(Cconst cconst) {
        if (!cconst.hasVisibleItems()) {
            return false;
        }
        Celse celse = new Celse(cconst);
        Context context = ((Ccase) cconst).f5403do;
        Cif.Cdo cdo = new Cif.Cdo(context);
        AlertController.Cif cif = cdo.f5350do;
        Cnew cnew = new Cnew(cif.f5198do);
        celse.f5459do = cnew;
        cnew.f5529do = celse;
        cconst.m3335if(cnew, context);
        Cnew cnew2 = celse.f5459do;
        if (cnew2.f5531do == null) {
            cnew2.f5531do = cnew2.new Cdo();
        }
        cif.f5204do = cnew2.f5531do;
        cif.f5199do = celse;
        View view = ((Ccase) cconst).f5406do;
        if (view != null) {
            cif.f5203do = view;
        } else {
            cif.f5201do = ((Ccase) cconst).f5405do;
            cif.f5205do = ((Ccase) cconst).f5409do;
        }
        cif.f5200do = celse;
        Cif m3299do = cdo.m3299do();
        celse.f5457do = m3299do;
        m3299do.setOnDismissListener(celse);
        WindowManager.LayoutParams attributes = celse.f5457do.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        celse.f5457do.show();
        Cbreak.Cdo cdo2 = this.f5529do;
        if (cdo2 == null) {
            return true;
        }
        cdo2.mo3280new(cconst);
        return true;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        Cdo cdo = this.f5531do;
        if (cdo != null) {
            cdo.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f5530do.m3348while(this.f5531do.getItem(i), this, 0);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        if (this.f5528do == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f5528do;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }
}
