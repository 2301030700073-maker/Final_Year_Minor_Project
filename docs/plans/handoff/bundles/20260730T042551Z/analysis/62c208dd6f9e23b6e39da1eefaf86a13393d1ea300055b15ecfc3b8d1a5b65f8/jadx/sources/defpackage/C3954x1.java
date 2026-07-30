package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckedTextView;
import defpackage.C0426Pe;

/* renamed from: x1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3954x1 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CheckedTextView f16509do;

    /* renamed from: for, reason: not valid java name */
    public boolean f16511for;

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f16507do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f16508do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16510do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f16512if = false;

    public C3954x1(CheckedTextView checkedTextView) {
        this.f16509do = checkedTextView;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8617do() {
        CheckedTextView checkedTextView = this.f16509do;
        Drawable checkMarkDrawable = checkedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f16510do || this.f16512if) {
                Drawable mutate = C0426Pe.m1779goto(checkMarkDrawable).mutate();
                if (this.f16510do) {
                    C0426Pe.Cdo.m1787goto(mutate, this.f16507do);
                }
                if (this.f16512if) {
                    C0426Pe.Cdo.m1790this(mutate, this.f16508do);
                }
                if (mutate.isStateful()) {
                    mutate.setState(checkedTextView.getDrawableState());
                }
                checkedTextView.setCheckMarkDrawable(mutate);
            }
        }
    }
}
