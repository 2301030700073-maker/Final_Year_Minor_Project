package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.view.menu.Cif;
import androidx.appcompat.view.menu.Ctry;

/* renamed from: Is, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0287Is implements UD, Cbreak, AdapterView.OnItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public Rect f1572do;

    /* renamed from: super, reason: not valid java name */
    public static int m976super(Ctry ctry, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = ctry.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = ctry.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = ctry.getView(i4, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m977switch(Ccase ccase) {
        int size = ccase.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = ccase.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: catch, reason: not valid java name */
    public final boolean mo978catch(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: const, reason: not valid java name */
    public final boolean mo979const(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: else, reason: not valid java name */
    public final void mo980else(Context context, Ccase ccase) {
    }

    /* renamed from: final, reason: not valid java name */
    public abstract void mo981final(Ccase ccase);

    @Override // androidx.appcompat.view.menu.Cbreak
    public final int getId() {
        return 0;
    }

    /* renamed from: import, reason: not valid java name */
    public abstract void mo982import(int i);

    /* renamed from: native, reason: not valid java name */
    public abstract void mo983native(int i);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (Ctry) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (Ctry) listAdapter).f5549do.m3348while((MenuItem) listAdapter.getItem(i), this, (this instanceof Cif) ^ true ? 0 : 4);
    }

    /* renamed from: public, reason: not valid java name */
    public abstract void mo984public(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: return, reason: not valid java name */
    public abstract void mo985return(boolean z);

    /* renamed from: static, reason: not valid java name */
    public abstract void mo986static(int i);

    /* renamed from: throw, reason: not valid java name */
    public abstract void mo987throw(View view);

    /* renamed from: while, reason: not valid java name */
    public abstract void mo988while(boolean z);
}
