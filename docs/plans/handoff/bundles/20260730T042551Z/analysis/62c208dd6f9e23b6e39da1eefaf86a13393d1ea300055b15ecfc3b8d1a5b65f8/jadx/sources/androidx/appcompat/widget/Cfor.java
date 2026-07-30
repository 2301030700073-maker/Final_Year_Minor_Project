package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.transition.Transition;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.view.menu.Ctry;
import androidx.appcompat.view.menu.ListMenuItemView;
import defpackage.C0822cf;
import defpackage.InterfaceC0243Gs;
import java.lang.reflect.Method;

/* renamed from: androidx.appcompat.widget.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends ListPopupWindow implements InterfaceC0243Gs {

    /* renamed from: new, reason: not valid java name */
    public static final Method f5991new;

    /* renamed from: do, reason: not valid java name */
    public InterfaceC0243Gs f5992do;

    /* renamed from: androidx.appcompat.widget.for$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m3519do(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3520if(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    /* renamed from: androidx.appcompat.widget.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0030for extends C0822cf {

        /* renamed from: do, reason: not valid java name */
        public InterfaceC0243Gs f5993do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cgoto f5994do;

        /* renamed from: goto, reason: not valid java name */
        public final int f5995goto;

        /* renamed from: this, reason: not valid java name */
        public final int f5996this;

        /* renamed from: androidx.appcompat.widget.for$for$do, reason: invalid class name */
        public static class Cdo {
            /* renamed from: do, reason: not valid java name */
            public static int m3521do(Configuration configuration) {
                return configuration.getLayoutDirection();
            }
        }

        public C0030for(Context context, boolean z) {
            super(context, z);
            if (1 == Cdo.m3521do(context.getResources().getConfiguration())) {
                this.f5995goto = 21;
                this.f5996this = 22;
            } else {
                this.f5995goto = 22;
                this.f5996this = 21;
            }
        }

        @Override // defpackage.C0822cf, android.view.View
        public final boolean onHoverEvent(MotionEvent motionEvent) {
            Ctry ctry;
            int i;
            int pointToPosition;
            int i2;
            if (this.f5993do != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    ctry = (Ctry) headerViewListAdapter.getWrappedAdapter();
                } else {
                    ctry = (Ctry) adapter;
                    i = 0;
                }
                Cgoto item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= ctry.getCount()) ? null : ctry.getItem(i2);
                Cgoto cgoto = this.f5994do;
                if (cgoto != item) {
                    Ccase ccase = ctry.f5549do;
                    if (cgoto != null) {
                        this.f5993do.mo770final(ccase, cgoto);
                    }
                    this.f5994do = item;
                    if (item != null) {
                        this.f5993do.mo769class(ccase, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f5995goto) {
                if (listMenuItemView.isEnabled() && listMenuItemView.f5390do.hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.f5996this) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (Ctry) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (Ctry) adapter).f5549do.m3333for(false);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.for$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m3522do(PopupWindow popupWindow, boolean z) {
            popupWindow.setTouchModal(z);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f5991new = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public Cfor(Context context, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // defpackage.InterfaceC0243Gs
    /* renamed from: class */
    public final void mo769class(Ccase ccase, Cgoto cgoto) {
        InterfaceC0243Gs interfaceC0243Gs = this.f5992do;
        if (interfaceC0243Gs != null) {
            interfaceC0243Gs.mo769class(ccase, cgoto);
        }
    }

    @Override // defpackage.InterfaceC0243Gs
    /* renamed from: final */
    public final void mo770final(Ccase ccase, MenuItem menuItem) {
        InterfaceC0243Gs interfaceC0243Gs = this.f5992do;
        if (interfaceC0243Gs != null) {
            interfaceC0243Gs.mo770final(ccase, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    /* renamed from: while */
    public final C0822cf mo3452while(Context context, boolean z) {
        C0030for c0030for = new C0030for(context, z);
        c0030for.f5993do = this;
        return c0030for;
    }
}
