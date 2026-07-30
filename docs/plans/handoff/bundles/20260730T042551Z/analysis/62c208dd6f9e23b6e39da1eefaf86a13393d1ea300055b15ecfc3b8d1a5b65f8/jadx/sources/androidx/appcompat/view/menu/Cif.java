package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.widget.Cfor;
import androidx.appcompat.widget.ListPopupWindow;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0287Is;
import defpackage.C0822cf;
import defpackage.C3385nL;
import defpackage.InterfaceC0243Gs;
import defpackage.QK;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: androidx.appcompat.view.menu.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends AbstractC0287Is implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: break, reason: not valid java name */
    public int f5494break;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f5496case;

    /* renamed from: do, reason: not valid java name */
    public final Context f5497do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f5498do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5499do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewTreeObserver f5500do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PopupWindow.OnDismissListener f5501do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5502do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f5507do;

    /* renamed from: for, reason: not valid java name */
    public final int f5509for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5510for;

    /* renamed from: goto, reason: not valid java name */
    public int f5511goto;

    /* renamed from: if, reason: not valid java name */
    public View f5512if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5514if;

    /* renamed from: new, reason: not valid java name */
    public final int f5515new;

    /* renamed from: this, reason: not valid java name */
    public int f5517this;

    /* renamed from: try, reason: not valid java name */
    public final int f5518try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f5519try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f5506do = new ArrayList();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f5513if = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5503do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewOnAttachStateChangeListenerC0028if f5505do = new ViewOnAttachStateChangeListenerC0028if();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5504do = new Cfor();

    /* renamed from: case, reason: not valid java name */
    public int f5495case = 0;

    /* renamed from: else, reason: not valid java name */
    public int f5508else = 0;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5516new = false;

    /* renamed from: androidx.appcompat.view.menu.if$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            Cif cif = Cif.this;
            if (cif.mo2367do()) {
                ArrayList arrayList = cif.f5513if;
                if (arrayList.size() <= 0 || ((ListPopupWindow) ((Cnew) arrayList.get(0)).f5525do).f5804new) {
                    return;
                }
                View view = cif.f5512if;
                if (view == null || !view.isShown()) {
                    cif.dismiss();
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Cnew) it.next()).f5525do.mo2368if();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.if$for, reason: invalid class name */
    public class Cfor implements InterfaceC0243Gs {
        public Cfor() {
        }

        @Override // defpackage.InterfaceC0243Gs
        /* renamed from: class */
        public final void mo769class(Ccase ccase, Cgoto cgoto) {
            Cif cif = Cif.this;
            cif.f5498do.removeCallbacksAndMessages(null);
            ArrayList arrayList = cif.f5513if;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (ccase == ((Cnew) arrayList.get(i)).f5524do) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            cif.f5498do.postAtTime(new androidx.appcompat.view.menu.Cfor(this, i2 < arrayList.size() ? (Cnew) arrayList.get(i2) : null, cgoto, ccase), ccase, SystemClock.uptimeMillis() + 200);
        }

        @Override // defpackage.InterfaceC0243Gs
        /* renamed from: final */
        public final void mo770final(Ccase ccase, MenuItem menuItem) {
            Cif.this.f5498do.removeCallbacksAndMessages(ccase);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.if$if, reason: invalid class name and collision with other inner class name */
    public class ViewOnAttachStateChangeListenerC0028if implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0028if() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            Cif cif = Cif.this;
            ViewTreeObserver viewTreeObserver = cif.f5500do;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cif.f5500do = view.getViewTreeObserver();
                }
                cif.f5500do.removeGlobalOnLayoutListener(cif.f5503do);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.if$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final int f5523do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ccase f5524do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.appcompat.widget.Cfor f5525do;

        public Cnew(androidx.appcompat.widget.Cfor cfor, Ccase ccase, int i) {
            this.f5525do = cfor;
            this.f5524do = ccase;
            this.f5523do = i;
        }
    }

    public Cif(Context context, View view, int i, int i2, boolean z) {
        this.f5497do = context;
        this.f5499do = view;
        this.f5515new = i;
        this.f5518try = i2;
        this.f5507do = z;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        this.f5511goto = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f5509for = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f5498do = new Handler();
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: break */
    public final void mo3316break(Cbreak.Cdo cdo) {
        this.f5502do = cdo;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: case */
    public final boolean mo3317case() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: class */
    public final void mo3318class(Parcelable parcelable) {
    }

    @Override // defpackage.UD
    public final void dismiss() {
        ArrayList arrayList = this.f5513if;
        int size = arrayList.size();
        if (size <= 0) {
            return;
        }
        Cnew[] cnewArr = (Cnew[]) arrayList.toArray(new Cnew[size]);
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Cnew cnew = cnewArr[size];
            if (cnew.f5525do.mo2367do()) {
                cnew.f5525do.dismiss();
            }
        }
    }

    @Override // defpackage.UD
    /* renamed from: do */
    public final boolean mo2367do() {
        ArrayList arrayList = this.f5513if;
        return arrayList.size() > 0 && ((Cnew) arrayList.get(0)).f5525do.mo2367do();
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: final */
    public final void mo981final(Ccase ccase) {
        ccase.m3335if(this, this.f5497do);
        if (mo2367do()) {
            m3354throws(ccase);
        } else {
            this.f5506do.add(ccase);
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(Ccase ccase, boolean z) {
        ArrayList arrayList = this.f5513if;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ccase == ((Cnew) arrayList.get(i)).f5524do) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((Cnew) arrayList.get(i2)).f5524do.m3333for(false);
        }
        Cnew cnew = (Cnew) arrayList.remove(i);
        cnew.f5524do.m3336import(this);
        boolean z2 = this.f5496case;
        androidx.appcompat.widget.Cfor cfor = cnew.f5525do;
        if (z2) {
            if (Build.VERSION.SDK_INT >= 23) {
                Cfor.Cdo.m3520if(((ListPopupWindow) cfor).f5789do, null);
            } else {
                cfor.getClass();
            }
            ((ListPopupWindow) cfor).f5789do.setAnimationStyle(0);
        }
        cfor.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f5511goto = ((Cnew) arrayList.get(size2 - 1)).f5523do;
        } else {
            View view = this.f5499do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            this.f5511goto = view.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((Cnew) arrayList.get(0)).f5524do.m3333for(false);
                return;
            }
            return;
        }
        dismiss();
        Cbreak.Cdo cdo = this.f5502do;
        if (cdo != null) {
            cdo.mo3279for(ccase, true);
        }
        ViewTreeObserver viewTreeObserver = this.f5500do;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f5500do.removeGlobalOnLayoutListener(this.f5503do);
            }
            this.f5500do = null;
        }
        this.f5512if.removeOnAttachStateChangeListener(this.f5505do);
        this.f5501do.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    public final boolean mo3320goto(Cconst cconst) {
        Iterator it = this.f5513if.iterator();
        while (it.hasNext()) {
            Cnew cnew = (Cnew) it.next();
            if (cconst == cnew.f5524do) {
                ((ListPopupWindow) cnew.f5525do).f5795do.requestFocus();
                return true;
            }
        }
        if (!cconst.hasVisibleItems()) {
            return false;
        }
        mo981final(cconst);
        Cbreak.Cdo cdo = this.f5502do;
        if (cdo != null) {
            cdo.mo3280new(cconst);
        }
        return true;
    }

    @Override // defpackage.UD
    /* renamed from: if */
    public final void mo2368if() {
        if (mo2367do()) {
            return;
        }
        ArrayList arrayList = this.f5506do;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m3354throws((Ccase) it.next());
        }
        arrayList.clear();
        View view = this.f5499do;
        this.f5512if = view;
        if (view != null) {
            boolean z = this.f5500do == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f5500do = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f5503do);
            }
            this.f5512if.addOnAttachStateChangeListener(this.f5505do);
        }
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: import */
    public final void mo982import(int i) {
        if (this.f5495case != i) {
            this.f5495case = i;
            View view = this.f5499do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            this.f5508else = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: native */
    public final void mo983native(int i) {
        this.f5514if = true;
        this.f5517this = i;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        Iterator it = this.f5513if.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((ListPopupWindow) ((Cnew) it.next()).f5525do).f5795do.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((Ctry) adapter).notifyDataSetChanged();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        Cnew cnew;
        ArrayList arrayList = this.f5513if;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                cnew = null;
                break;
            }
            cnew = (Cnew) arrayList.get(i);
            if (!cnew.f5525do.mo2367do()) {
                break;
            } else {
                i++;
            }
        }
        if (cnew != null) {
            cnew.f5524do.m3333for(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: public */
    public final void mo984public(PopupWindow.OnDismissListener onDismissListener) {
        this.f5501do = onDismissListener;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: return */
    public final void mo985return(boolean z) {
        this.f5519try = z;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: static */
    public final void mo986static(int i) {
        this.f5510for = true;
        this.f5494break = i;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        return null;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: throw */
    public final void mo987throw(View view) {
        if (this.f5499do != view) {
            this.f5499do = view;
            int i = this.f5495case;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            this.f5508else = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m3354throws(Ccase ccase) {
        View view;
        Cnew cnew;
        char c;
        int i;
        int i2;
        int width;
        MenuItem menuItem;
        Ctry ctry;
        int i3;
        int firstVisiblePosition;
        Context context = this.f5497do;
        LayoutInflater from = LayoutInflater.from(context);
        Ctry ctry2 = new Ctry(ccase, from, this.f5507do, R.layout.abc_cascading_menu_item_layout);
        if (!mo2367do() && this.f5516new) {
            ctry2.f5550do = true;
        } else if (mo2367do()) {
            ctry2.f5550do = AbstractC0287Is.m977switch(ccase);
        }
        int m976super = AbstractC0287Is.m976super(ctry2, context, this.f5509for);
        androidx.appcompat.widget.Cfor cfor = new androidx.appcompat.widget.Cfor(context, this.f5515new, this.f5518try);
        cfor.f5992do = this.f5504do;
        ((ListPopupWindow) cfor).f5786do = this;
        PopupWindow popupWindow = ((ListPopupWindow) cfor).f5789do;
        popupWindow.setOnDismissListener(this);
        ((ListPopupWindow) cfor).f5785do = this.f5499do;
        cfor.f5800goto = this.f5508else;
        ((ListPopupWindow) cfor).f5804new = true;
        popupWindow.setFocusable(true);
        popupWindow.setInputMethodMode(2);
        cfor.mo3415new(ctry2);
        cfor.m3449import(m976super);
        cfor.f5800goto = this.f5508else;
        ArrayList arrayList = this.f5513if;
        if (arrayList.size() > 0) {
            cnew = (Cnew) arrayList.get(arrayList.size() - 1);
            Ccase ccase2 = cnew.f5524do;
            int size = ccase2.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    menuItem = null;
                    break;
                }
                menuItem = ccase2.getItem(i4);
                if (menuItem.hasSubMenu() && ccase == menuItem.getSubMenu()) {
                    break;
                } else {
                    i4++;
                }
            }
            if (menuItem != null) {
                C0822cf c0822cf = ((ListPopupWindow) cnew.f5525do).f5795do;
                ListAdapter adapter = c0822cf.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i3 = headerViewListAdapter.getHeadersCount();
                    ctry = (Ctry) headerViewListAdapter.getWrappedAdapter();
                } else {
                    ctry = (Ctry) adapter;
                    i3 = 0;
                }
                int count = ctry.getCount();
                int i5 = 0;
                while (true) {
                    if (i5 >= count) {
                        i5 = -1;
                        break;
                    } else if (menuItem == ctry.getItem(i5)) {
                        break;
                    } else {
                        i5++;
                    }
                }
                if (i5 != -1 && (firstVisiblePosition = (i5 + i3) - c0822cf.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < c0822cf.getChildCount()) {
                    view = c0822cf.getChildAt(firstVisiblePosition);
                }
            }
            view = null;
        } else {
            view = null;
            cnew = null;
        }
        if (view != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = androidx.appcompat.widget.Cfor.f5991new;
                if (method != null) {
                    try {
                        method.invoke(popupWindow, Boolean.FALSE);
                    } catch (Exception unused) {
                    }
                }
            } else {
                Cfor.Cif.m3522do(popupWindow, false);
            }
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 23) {
                Cfor.Cdo.m3519do(popupWindow, null);
            }
            C0822cf c0822cf2 = ((ListPopupWindow) ((Cnew) arrayList.get(arrayList.size() - 1)).f5525do).f5795do;
            int[] iArr = new int[2];
            c0822cf2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.f5512if.getWindowVisibleDisplayFrame(rect);
            int i7 = (this.f5511goto != 1 ? iArr[0] - m976super >= 0 : (c0822cf2.getWidth() + iArr[0]) + m976super > rect.right) ? 0 : 1;
            boolean z = i7 == 1;
            this.f5511goto = i7;
            if (i6 >= 26) {
                ((ListPopupWindow) cfor).f5785do = view;
                i2 = 0;
                i = 0;
            } else {
                int[] iArr2 = new int[2];
                this.f5499do.getLocationOnScreen(iArr2);
                int[] iArr3 = new int[2];
                view.getLocationOnScreen(iArr3);
                if ((this.f5508else & 7) == 5) {
                    c = 0;
                    iArr2[0] = this.f5499do.getWidth() + iArr2[0];
                    iArr3[0] = view.getWidth() + iArr3[0];
                } else {
                    c = 0;
                }
                i = iArr3[c] - iArr2[c];
                i2 = iArr3[1] - iArr2[1];
            }
            if ((this.f5508else & 5) != 5) {
                if (z) {
                    width = i + view.getWidth();
                    cfor.f5806try = width;
                    ((ListPopupWindow) cfor).f5799for = true;
                    ((ListPopupWindow) cfor).f5802if = true;
                    cfor.m3451throw(i2);
                }
                width = i - m976super;
                cfor.f5806try = width;
                ((ListPopupWindow) cfor).f5799for = true;
                ((ListPopupWindow) cfor).f5802if = true;
                cfor.m3451throw(i2);
            } else if (z) {
                width = i + m976super;
                cfor.f5806try = width;
                ((ListPopupWindow) cfor).f5799for = true;
                ((ListPopupWindow) cfor).f5802if = true;
                cfor.m3451throw(i2);
            } else {
                m976super = view.getWidth();
                width = i - m976super;
                cfor.f5806try = width;
                ((ListPopupWindow) cfor).f5799for = true;
                ((ListPopupWindow) cfor).f5802if = true;
                cfor.m3451throw(i2);
            }
        } else {
            if (this.f5514if) {
                cfor.f5806try = this.f5517this;
            }
            if (this.f5510for) {
                cfor.m3451throw(this.f5494break);
            }
            Rect rect2 = ((AbstractC0287Is) this).f1572do;
            ((ListPopupWindow) cfor).f5801if = rect2 != null ? new Rect(rect2) : null;
        }
        arrayList.add(new Cnew(cfor, ccase, this.f5511goto));
        cfor.mo2368if();
        C0822cf c0822cf3 = ((ListPopupWindow) cfor).f5795do;
        c0822cf3.setOnKeyListener(this);
        if (cnew == null && this.f5519try && ccase.f5409do != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0822cf3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(ccase.f5409do);
            c0822cf3.addHeaderView(frameLayout, null, false);
            cfor.mo2368if();
        }
    }

    @Override // defpackage.UD
    /* renamed from: try */
    public final C0822cf mo2369try() {
        ArrayList arrayList = this.f5513if;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((ListPopupWindow) ((Cnew) arrayList.get(arrayList.size() - 1)).f5525do).f5795do;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: while */
    public final void mo988while(boolean z) {
        this.f5516new = z;
    }
}
