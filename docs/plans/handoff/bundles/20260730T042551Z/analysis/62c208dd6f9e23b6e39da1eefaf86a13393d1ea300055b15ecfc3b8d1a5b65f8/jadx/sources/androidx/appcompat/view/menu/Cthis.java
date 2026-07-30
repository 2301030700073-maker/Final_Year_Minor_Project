package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.Cbreak;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0287Is;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: androidx.appcompat.view.menu.this, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthis {

    /* renamed from: do, reason: not valid java name */
    public final int f5534do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0287Is f5535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5536do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5537do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PopupWindow.OnDismissListener f5538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f5542do;

    /* renamed from: for, reason: not valid java name */
    public int f5543for;

    /* renamed from: if, reason: not valid java name */
    public final int f5544if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5545if;

    /* renamed from: androidx.appcompat.view.menu.this$do, reason: invalid class name */
    public class Cdo implements PopupWindow.OnDismissListener {
        public Cdo() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            Cthis.this.mo3358for();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.this$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m3361do(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    public Cthis(Context context, Ccase ccase, View view, boolean z) {
        this(R.attr.actionOverflowMenuStyle, 0, context, view, ccase, z);
    }

    /* renamed from: do, reason: not valid java name */
    public final AbstractC0287Is m3357do() {
        AbstractC0287Is cclass;
        if (this.f5535do == null) {
            Context context = this.f5536do;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            Cif.m3361do(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                cclass = new androidx.appcompat.view.menu.Cif(this.f5536do, this.f5537do, this.f5534do, this.f5544if, this.f5542do);
            } else {
                cclass = new Cclass(this.f5534do, this.f5544if, this.f5536do, this.f5537do, this.f5540do, this.f5542do);
            }
            cclass.mo981final(this.f5540do);
            cclass.mo984public(this.f5541do);
            cclass.mo987throw(this.f5537do);
            cclass.mo3316break(this.f5539do);
            cclass.mo988while(this.f5545if);
            cclass.mo982import(this.f5543for);
            this.f5535do = cclass;
        }
        return this.f5535do;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo3358for() {
        this.f5535do = null;
        PopupWindow.OnDismissListener onDismissListener = this.f5538do;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m3359if() {
        AbstractC0287Is abstractC0287Is = this.f5535do;
        return abstractC0287Is != null && abstractC0287Is.mo2367do();
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3360new(int i, int i2, boolean z, boolean z2) {
        AbstractC0287Is m3357do = m3357do();
        m3357do.mo985return(z2);
        if (z) {
            int i3 = this.f5543for;
            View view = this.f5537do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if ((Gravity.getAbsoluteGravity(i3, view.getLayoutDirection()) & 7) == 5) {
                i -= this.f5537do.getWidth();
            }
            m3357do.mo983native(i);
            m3357do.mo986static(i2);
            int i4 = (int) ((this.f5536do.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m3357do.f1572do = new Rect(i - i4, i2 - i4, i + i4, i2 + i4);
        }
        m3357do.mo2368if();
    }

    public Cthis(int i, int i2, Context context, View view, Ccase ccase, boolean z) {
        this.f5543for = 8388611;
        this.f5541do = new Cdo();
        this.f5536do = context;
        this.f5540do = ccase;
        this.f5537do = view;
        this.f5542do = z;
        this.f5534do = i;
        this.f5544if = i2;
    }
}
