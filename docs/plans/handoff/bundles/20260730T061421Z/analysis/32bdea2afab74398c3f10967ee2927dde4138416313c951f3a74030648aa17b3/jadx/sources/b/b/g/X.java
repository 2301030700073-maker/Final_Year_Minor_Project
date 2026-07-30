package b.b.g;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.AppCompatSpinner$SavedState;
import androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup;

/* loaded from: classes.dex */
public class X extends Spinner {
    public static final int[] i = {R.attr.spinnerMode};

    /* renamed from: a, reason: collision with root package name */
    public final C0081x f491a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f492b;

    /* renamed from: c, reason: collision with root package name */
    public AbstractViewOnTouchListenerC0067p0 f493c;

    /* renamed from: d, reason: collision with root package name */
    public SpinnerAdapter f494d;
    public final boolean e;
    public AppCompatSpinner$SpinnerPopup f;
    public int g;
    public final Rect h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
    
        if (r6 == null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public X(android.content.Context r11, android.util.AttributeSet r12) {
        /*
            r10 = this;
            int[] r0 = b.b.b.v
            r1 = 2130968927(0x7f04015f, float:1.7546521E38)
            r10.<init>(r11, r12, r1)
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            r10.h = r2
            android.content.Context r2 = r10.getContext()
            b.b.g.V0.a(r10, r2)
            r2 = 0
            android.content.res.TypedArray r3 = r11.obtainStyledAttributes(r12, r0, r1, r2)
            b.b.g.x r4 = new b.b.g.x
            r4.<init>(r10)
            r10.f491a = r4
            r4 = 4
            int r4 = r3.getResourceId(r4, r2)
            if (r4 == 0) goto L31
            b.b.f.d r5 = new b.b.f.d
            r5.<init>(r11, r4)
            r10.f492b = r5
            goto L33
        L31:
            r10.f492b = r11
        L33:
            r4 = 0
            r5 = -1
            int[] r6 = b.b.g.X.i     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f
            android.content.res.TypedArray r6 = r11.obtainStyledAttributes(r12, r6, r1, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f
            boolean r7 = r6.hasValue(r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            if (r7 == 0) goto L5b
            int r5 = r6.getInt(r2, r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            goto L5b
        L46:
            r10 = move-exception
            r4 = r6
            goto Ld1
        L4a:
            r7 = move-exception
            goto L52
        L4c:
            r10 = move-exception
            goto Ld1
        L4f:
            r6 = move-exception
            r7 = r6
            r6 = r4
        L52:
            java.lang.String r8 = "AppCompatSpinner"
            java.lang.String r9 = "Could not read android:spinnerMode"
            android.util.Log.i(r8, r9, r7)     // Catch: java.lang.Throwable -> L46
            if (r6 == 0) goto L5e
        L5b:
            r6.recycle()
        L5e:
            r6 = 2
            r7 = 1
            if (r5 == 0) goto L98
            if (r5 == r7) goto L65
            goto La6
        L65:
            androidx.appcompat.widget.AppCompatSpinner$DropdownPopup r5 = new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup
            android.content.Context r8 = r10.f492b
            r5.<init>(r10, r8, r12, r1)
            android.content.Context r8 = r10.f492b
            b.b.g.a1 r0 = b.b.g.a1.o(r8, r12, r0, r1, r2)
            r8 = 3
            r9 = -2
            int r8 = r0.i(r8, r9)
            r10.g = r8
            android.graphics.drawable.Drawable r8 = r0.e(r7)
            android.widget.PopupWindow r9 = r5.B
            r9.setBackgroundDrawable(r8)
            java.lang.String r6 = r3.getString(r6)
            r5.C = r6
            android.content.res.TypedArray r0 = r0.f513b
            r0.recycle()
            r10.f = r5
            b.b.g.P r0 = new b.b.g.P
            r0.<init>(r10, r10, r5)
            r10.f493c = r0
            goto La6
        L98:
            androidx.appcompat.widget.AppCompatSpinner$DialogPopup r0 = new androidx.appcompat.widget.AppCompatSpinner$DialogPopup
            r0.<init>(r10)
            r10.f = r0
            java.lang.String r5 = r3.getString(r6)
            r0.l(r5)
        La6:
            java.lang.CharSequence[] r0 = r3.getTextArray(r2)
            if (r0 == 0) goto Lbd
            android.widget.ArrayAdapter r2 = new android.widget.ArrayAdapter
            r5 = 17367048(0x1090008, float:2.5162948E-38)
            r2.<init>(r11, r5, r0)
            r11 = 2131493001(0x7f0c0089, float:1.860947E38)
            r2.setDropDownViewResource(r11)
            r10.setAdapter(r2)
        Lbd:
            r3.recycle()
            r10.e = r7
            android.widget.SpinnerAdapter r11 = r10.f494d
            if (r11 == 0) goto Lcb
            r10.setAdapter(r11)
            r10.f494d = r4
        Lcb:
            b.b.g.x r10 = r10.f491a
            r10.b(r12, r1)
            return
        Ld1:
            if (r4 == 0) goto Ld6
            r4.recycle()
        Ld6:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.X.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        drawable.getPadding(this.h);
        Rect rect = this.h;
        return i3 + rect.left + rect.right;
    }

    public void b() {
        this.f.d(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f491a;
        if (c0081x != null) {
            c0081x.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.c() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.g() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f != null ? this.g : super.getDropDownWidth();
    }

    public final AppCompatSpinner$SpinnerPopup getInternalPopup() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.i() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f492b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.j() : super.getPrompt();
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup == null || !appCompatSpinner$SpinnerPopup.b()) {
            return;
        }
        this.f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        AppCompatSpinner$SavedState appCompatSpinner$SavedState = (AppCompatSpinner$SavedState) parcelable;
        super.onRestoreInstanceState(appCompatSpinner$SavedState.getSuperState());
        if (!appCompatSpinner$SavedState.f52a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new Q(this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        AppCompatSpinner$SavedState appCompatSpinner$SavedState = new AppCompatSpinner$SavedState(super.onSaveInstanceState());
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        appCompatSpinner$SavedState.f52a = appCompatSpinner$SpinnerPopup != null && appCompatSpinner$SpinnerPopup.b();
        return appCompatSpinner$SavedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractViewOnTouchListenerC0067p0 abstractViewOnTouchListenerC0067p0 = this.f493c;
        if (abstractViewOnTouchListenerC0067p0 == null || !abstractViewOnTouchListenerC0067p0.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup == null) {
            return super.performClick();
        }
        if (appCompatSpinner$SpinnerPopup.b()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f491a;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0081x c0081x = this.f491a;
        if (c0081x != null) {
            c0081x.d(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup == null) {
            super.setDropDownHorizontalOffset(i2);
        } else {
            appCompatSpinner$SpinnerPopup.p(i2);
            this.f.a(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.n(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f != null) {
            this.g = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.m(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(b.b.a.a(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.f;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.l(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.e) {
            this.f494d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f != null) {
            Context context = this.f492b;
            if (context == null) {
                context = getContext();
            }
            this.f.o(new S(spinnerAdapter, context.getTheme()));
        }
    }
}
