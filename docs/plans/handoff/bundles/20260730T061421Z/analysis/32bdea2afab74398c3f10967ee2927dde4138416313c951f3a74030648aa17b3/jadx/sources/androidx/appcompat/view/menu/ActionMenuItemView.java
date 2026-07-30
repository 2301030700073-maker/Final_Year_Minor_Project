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
import b.b.b;
import b.b.f.m.C0025b;
import b.b.f.m.D;
import b.b.f.m.n;
import b.b.f.m.r;
import b.b.g.AbstractViewOnTouchListenerC0067p0;
import b.b.g.C0039b0;
import b.b.g.C0056k;
import b.b.g.InterfaceC0071s;

/* loaded from: classes.dex */
public class ActionMenuItemView extends C0039b0 implements D, View.OnClickListener, InterfaceC0071s {

    /* renamed from: d, reason: collision with root package name */
    public r f32d;
    public CharSequence e;
    public Drawable f;
    public n g;
    public AbstractViewOnTouchListenerC0067p0 h;
    public C0056k i;
    public boolean j;
    public int k;
    public int l;
    public int m;

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    @Override // b.b.g.InterfaceC0071s
    public boolean a() {
        return f();
    }

    @Override // b.b.f.m.D
    public r b() {
        return this.f32d;
    }

    @Override // b.b.g.InterfaceC0071s
    public boolean c() {
        return f() && this.f32d.getIcon() == null;
    }

    @Override // b.b.f.m.D
    public boolean d() {
        return true;
    }

    @Override // b.b.f.m.D
    public void e(r rVar, int i) {
        this.f32d = rVar;
        Drawable icon = rVar.getIcon();
        this.f = icon;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i2 = this.m;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            int i3 = this.m;
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (intrinsicWidth * (i3 / intrinsicHeight));
                intrinsicHeight = i3;
            }
            icon.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(icon, null, null, null);
        i();
        this.e = d() ? rVar.getTitleCondensed() : rVar.e;
        i();
        setId(rVar.f408a);
        setVisibility(rVar.isVisible() ? 0 : 8);
        setEnabled(rVar.isEnabled());
        if (rVar.hasSubMenu() && this.h == null) {
            this.h = new C0025b(this);
        }
    }

    public boolean f() {
        return !TextUtils.isEmpty(getText());
    }

    public void g(C0056k c0056k) {
        this.i = c0056k;
    }

    public final boolean h() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void i() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.e);
        if (this.f != null) {
            if (!((this.f32d.y & 4) == 4) || !this.j) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.e : null);
        CharSequence charSequence = this.f32d.q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.f32d.e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f32d.r;
        if (TextUtils.isEmpty(charSequence2)) {
            setTooltipText(z3 ? null : this.f32d.e);
        } else {
            setTooltipText(charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        n nVar = this.g;
        if (nVar != null) {
            nVar.a(this.f32d);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.j = h();
        i();
    }

    @Override // b.b.g.C0039b0, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean f = f();
        if (f && (i3 = this.l) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.k) : this.k;
        if (mode != 1073741824 && this.k > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (f || this.f == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractViewOnTouchListenerC0067p0 abstractViewOnTouchListenerC0067p0;
        if (this.f32d.hasSubMenu() && (abstractViewOnTouchListenerC0067p0 = this.h) != null && abstractViewOnTouchListenerC0067p0.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.l = i;
        super.setPadding(i, i2, i3, i4);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.j = h();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.f242c, i, 0);
        this.k = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.m = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.l = -1;
        setSaveEnabled(false);
    }
}
