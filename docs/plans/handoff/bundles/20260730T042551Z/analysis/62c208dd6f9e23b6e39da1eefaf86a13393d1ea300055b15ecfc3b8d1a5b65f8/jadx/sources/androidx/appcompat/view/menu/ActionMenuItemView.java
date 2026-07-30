package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import defpackage.AbstractViewOnTouchListenerC3935wj;
import defpackage.KH;
import defpackage.O4;
import defpackage.UD;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements Ccatch.Cdo, View.OnClickListener, ActionMenuView.Cdo {

    /* renamed from: do, reason: not valid java name */
    public Drawable f5369do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5370do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f5371do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase.Cif f5372do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f5373do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5374do;

    /* renamed from: for, reason: not valid java name */
    public final int f5375for;

    /* renamed from: if, reason: not valid java name */
    public boolean f5376if;

    /* renamed from: new, reason: not valid java name */
    public int f5377new;

    /* renamed from: try, reason: not valid java name */
    public final int f5378try;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$do, reason: invalid class name */
    public class Cdo extends AbstractViewOnTouchListenerC3935wj {
        public Cdo() {
            super(ActionMenuItemView.this);
        }

        @Override // defpackage.AbstractViewOnTouchListenerC3935wj
        /* renamed from: for, reason: not valid java name */
        public final boolean mo3311for() {
            UD mo3312if;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            Ccase.Cif cif = actionMenuItemView.f5372do;
            return cif != null && cif.mo3313do(actionMenuItemView.f5373do) && (mo3312if = mo3312if()) != null && mo3312if.mo2367do();
        }

        @Override // defpackage.AbstractViewOnTouchListenerC3935wj
        /* renamed from: if, reason: not valid java name */
        public final UD mo3312if() {
            ActionMenuPresenter.Cdo cdo;
            Cif cif = ActionMenuItemView.this.f5371do;
            if (cif == null || (cdo = ActionMenuPresenter.this.f5609do) == null) {
                return null;
            }
            return cdo.m3357do();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$if, reason: invalid class name */
    public static abstract class Cif {
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.Cdo
    /* renamed from: case, reason: not valid java name */
    public final boolean mo3304case() {
        return m3309throw() && this.f5373do.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: else, reason: not valid java name */
    public final Cgoto mo3305else() {
        return this.f5373do;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.Cdo
    /* renamed from: for, reason: not valid java name */
    public final boolean mo3306for() {
        return m3309throw();
    }

    @Override // android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: if, reason: not valid java name */
    public final void mo3307if(Cgoto cgoto) {
        this.f5373do = cgoto;
        Drawable icon = cgoto.getIcon();
        this.f5369do = icon;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i = this.f5378try;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            icon.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(icon, null, null, null);
        m3308import();
        this.f5374do = cgoto.getTitleCondensed();
        m3308import();
        setId(cgoto.f5466do);
        setVisibility(cgoto.isVisible() ? 0 : 8);
        setEnabled(cgoto.isEnabled());
        if (cgoto.hasSubMenu() && this.f5370do == null) {
            this.f5370do = new Cdo();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3308import() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f5374do);
        if (this.f5369do != null) {
            if (!((this.f5373do.f5491this & 4) == 4) || !this.f5376if) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f5374do : null);
        CharSequence charSequence = this.f5373do.f5481for;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.f5373do.f5477do);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f5373do.f5489new;
        if (TextUtils.isEmpty(charSequence2)) {
            KH.m1131do(this, z3 ? null : this.f5373do.f5477do);
        } else {
            KH.m1131do(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Ccase.Cif cif = this.f5372do;
        if (cif != null) {
            cif.mo3313do(this.f5373do);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f5376if = m3310while();
        m3308import();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean m3309throw = m3309throw();
        if (m3309throw && (i3 = this.f5377new) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.f5375for;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m3309throw || this.f5369do == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f5369do.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Cdo cdo;
        if (this.f5373do.hasSubMenu() && (cdo = this.f5370do) != null && cdo.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.f5377new = i;
        super.setPadding(i, i2, i3, i4);
    }

    /* renamed from: throw, reason: not valid java name */
    public final boolean m3309throw() {
        return !TextUtils.isEmpty(getText());
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m3310while() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f5376if = m3310while();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2574this, i, 0);
        this.f5375for = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f5378try = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f5377new = -1;
        setSaveEnabled(false);
    }
}
