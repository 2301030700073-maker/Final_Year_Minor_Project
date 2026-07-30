package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatDelegateImpl;
import defpackage.G;
import defpackage.O4;

/* loaded from: classes.dex */
public abstract class ActionBar {

    /* renamed from: androidx.appcompat.app.ActionBar$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void m3225do();
    }

    /* renamed from: break, reason: not valid java name */
    public boolean mo3209break(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean mo3210case() {
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean mo3211catch() {
        return false;
    }

    /* renamed from: class, reason: not valid java name */
    public abstract void mo3212class(boolean z);

    /* renamed from: const, reason: not valid java name */
    public abstract void mo3213const(boolean z);

    /* renamed from: do, reason: not valid java name */
    public boolean mo3214do() {
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public abstract void mo3215else();

    /* renamed from: final, reason: not valid java name */
    public abstract void mo3216final(String str);

    /* renamed from: for, reason: not valid java name */
    public abstract void mo3217for(boolean z);

    /* renamed from: goto, reason: not valid java name */
    public void mo3218goto() {
    }

    /* renamed from: if, reason: not valid java name */
    public abstract boolean mo3219if();

    /* renamed from: new, reason: not valid java name */
    public abstract int mo3220new();

    /* renamed from: super, reason: not valid java name */
    public abstract void mo3221super(CharSequence charSequence);

    /* renamed from: this, reason: not valid java name */
    public abstract boolean mo3222this(int i, KeyEvent keyEvent);

    /* renamed from: throw, reason: not valid java name */
    public G mo3223throw(AppCompatDelegateImpl.Cnew cnew) {
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public abstract Context mo3224try();

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: do, reason: not valid java name */
        public int f5168do;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5168do = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2550goto);
            this.f5168do = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams() {
            super(-2, -2);
            this.f5168do = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f5168do = 0;
            this.f5168do = layoutParams.f5168do;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f5168do = 0;
        }
    }
}
