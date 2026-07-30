package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.widget.Cfor;
import androidx.appcompat.widget.ListPopupWindow;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0287Is;
import defpackage.C0822cf;

/* renamed from: androidx.appcompat.view.menu.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass extends AbstractC0287Is implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: case, reason: not valid java name */
    public int f5424case;

    /* renamed from: do, reason: not valid java name */
    public final Context f5425do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewTreeObserver f5427do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PopupWindow.OnDismissListener f5428do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5429do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5430do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f5433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f5435do;

    /* renamed from: for, reason: not valid java name */
    public final int f5437for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5438for;

    /* renamed from: if, reason: not valid java name */
    public View f5439if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5440if;

    /* renamed from: new, reason: not valid java name */
    public final int f5441new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5442new;

    /* renamed from: try, reason: not valid java name */
    public final int f5443try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5431do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5432do = new Cif();

    /* renamed from: else, reason: not valid java name */
    public int f5436else = 0;

    /* renamed from: androidx.appcompat.view.menu.class$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            Cclass cclass = Cclass.this;
            if (!cclass.mo2367do() || ((ListPopupWindow) cclass.f5434do).f5804new) {
                return;
            }
            View view = cclass.f5439if;
            if (view == null || !view.isShown()) {
                cclass.dismiss();
            } else {
                cclass.f5434do.mo2368if();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.class$if, reason: invalid class name */
    public class Cif implements View.OnAttachStateChangeListener {
        public Cif() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            Cclass cclass = Cclass.this;
            ViewTreeObserver viewTreeObserver = cclass.f5427do;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cclass.f5427do = view.getViewTreeObserver();
                }
                cclass.f5427do.removeGlobalOnLayoutListener(cclass.f5431do);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public Cclass(int i, int i2, Context context, View view, Ccase ccase, boolean z) {
        this.f5425do = context;
        this.f5430do = ccase;
        this.f5435do = z;
        this.f5433do = new Ctry(ccase, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.f5441new = i;
        this.f5443try = i2;
        Resources resources = context.getResources();
        this.f5437for = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f5426do = view;
        this.f5434do = new Cfor(context, i, i2);
        ccase.m3335if(this, context);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: break */
    public final void mo3316break(Cbreak.Cdo cdo) {
        this.f5429do = cdo;
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
        if (mo2367do()) {
            this.f5434do.dismiss();
        }
    }

    @Override // defpackage.UD
    /* renamed from: do */
    public final boolean mo2367do() {
        return !this.f5440if && this.f5434do.mo2367do();
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: final */
    public final void mo981final(Ccase ccase) {
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(Ccase ccase, boolean z) {
        if (ccase != this.f5430do) {
            return;
        }
        dismiss();
        Cbreak.Cdo cdo = this.f5429do;
        if (cdo != null) {
            cdo.mo3279for(ccase, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3320goto(androidx.appcompat.view.menu.Cconst r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L7a
            androidx.appcompat.view.menu.this r0 = new androidx.appcompat.view.menu.this
            android.content.Context r5 = r9.f5425do
            android.view.View r6 = r9.f5439if
            boolean r8 = r9.f5435do
            int r3 = r9.f5441new
            int r4 = r9.f5443try
            r2 = r0
            r7 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            androidx.appcompat.view.menu.break$do r2 = r9.f5429do
            r0.f5539do = r2
            Is r3 = r0.f5535do
            if (r3 == 0) goto L23
            r3.mo3316break(r2)
        L23:
            boolean r2 = defpackage.AbstractC0287Is.m977switch(r10)
            r0.f5545if = r2
            Is r3 = r0.f5535do
            if (r3 == 0) goto L30
            r3.mo988while(r2)
        L30:
            android.widget.PopupWindow$OnDismissListener r2 = r9.f5428do
            r0.f5538do = r2
            r2 = 0
            r9.f5428do = r2
            androidx.appcompat.view.menu.case r2 = r9.f5430do
            r2.m3333for(r1)
            androidx.appcompat.widget.for r2 = r9.f5434do
            int r3 = r2.f5806try
            int r2 = r2.m3446const()
            int r4 = r9.f5436else
            android.view.View r5 = r9.f5426do
            java.util.WeakHashMap<android.view.View, nL> r6 = defpackage.QK.f2909do
            int r5 = r5.getLayoutDirection()
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L5e
            android.view.View r4 = r9.f5426do
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L5e:
            boolean r4 = r0.m3359if()
            r5 = 1
            if (r4 == 0) goto L66
            goto L6f
        L66:
            android.view.View r4 = r0.f5537do
            if (r4 != 0) goto L6c
            r0 = 0
            goto L70
        L6c:
            r0.m3360new(r3, r2, r5, r5)
        L6f:
            r0 = 1
        L70:
            if (r0 == 0) goto L7a
            androidx.appcompat.view.menu.break$do r0 = r9.f5429do
            if (r0 == 0) goto L79
            r0.mo3280new(r10)
        L79:
            return r5
        L7a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.Cclass.mo3320goto(androidx.appcompat.view.menu.const):boolean");
    }

    @Override // defpackage.UD
    /* renamed from: if */
    public final void mo2368if() {
        View view;
        boolean z = true;
        if (!mo2367do()) {
            if (this.f5440if || (view = this.f5426do) == null) {
                z = false;
            } else {
                this.f5439if = view;
                Cfor cfor = this.f5434do;
                ((ListPopupWindow) cfor).f5789do.setOnDismissListener(this);
                ((ListPopupWindow) cfor).f5786do = this;
                ((ListPopupWindow) cfor).f5804new = true;
                PopupWindow popupWindow = ((ListPopupWindow) cfor).f5789do;
                popupWindow.setFocusable(true);
                View view2 = this.f5439if;
                boolean z2 = this.f5427do == null;
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.f5427do = viewTreeObserver;
                if (z2) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f5431do);
                }
                view2.addOnAttachStateChangeListener(this.f5432do);
                ((ListPopupWindow) cfor).f5785do = view2;
                cfor.f5800goto = this.f5436else;
                boolean z3 = this.f5438for;
                Context context = this.f5425do;
                Ctry ctry = this.f5433do;
                if (!z3) {
                    this.f5424case = AbstractC0287Is.m976super(ctry, context, this.f5437for);
                    this.f5438for = true;
                }
                cfor.m3449import(this.f5424case);
                popupWindow.setInputMethodMode(2);
                Rect rect = ((AbstractC0287Is) this).f1572do;
                ((ListPopupWindow) cfor).f5801if = rect != null ? new Rect(rect) : null;
                cfor.mo2368if();
                C0822cf c0822cf = ((ListPopupWindow) cfor).f5795do;
                c0822cf.setOnKeyListener(this);
                if (this.f5442new) {
                    Ccase ccase = this.f5430do;
                    if (ccase.f5409do != null) {
                        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0822cf, false);
                        TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                        if (textView != null) {
                            textView.setText(ccase.f5409do);
                        }
                        frameLayout.setEnabled(false);
                        c0822cf.addHeaderView(frameLayout, null, false);
                    }
                }
                cfor.mo3415new(ctry);
                cfor.mo2368if();
            }
        }
        if (!z) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: import */
    public final void mo982import(int i) {
        this.f5436else = i;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: native */
    public final void mo983native(int i) {
        this.f5434do.f5806try = i;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        this.f5438for = false;
        Ctry ctry = this.f5433do;
        if (ctry != null) {
            ctry.notifyDataSetChanged();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f5440if = true;
        this.f5430do.m3333for(true);
        ViewTreeObserver viewTreeObserver = this.f5427do;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f5427do = this.f5439if.getViewTreeObserver();
            }
            this.f5427do.removeGlobalOnLayoutListener(this.f5431do);
            this.f5427do = null;
        }
        this.f5439if.removeOnAttachStateChangeListener(this.f5432do);
        PopupWindow.OnDismissListener onDismissListener = this.f5428do;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f5428do = onDismissListener;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: return */
    public final void mo985return(boolean z) {
        this.f5442new = z;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: static */
    public final void mo986static(int i) {
        this.f5434do.m3451throw(i);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        return null;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: throw */
    public final void mo987throw(View view) {
        this.f5426do = view;
    }

    @Override // defpackage.UD
    /* renamed from: try */
    public final C0822cf mo2369try() {
        return ((ListPopupWindow) this.f5434do).f5795do;
    }

    @Override // defpackage.AbstractC0287Is
    /* renamed from: while */
    public final void mo988while(boolean z) {
        this.f5433do.f5550do = z;
    }
}
