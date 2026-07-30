package b.m.b;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class I extends J {
    public I(AbstractC0176f0 abstractC0176f0) {
        super(abstractC0176f0, null);
    }

    @Override // b.m.b.J
    public int b(View view) {
        return this.f1109a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).bottomMargin;
    }

    @Override // b.m.b.J
    public int c(View view) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        return this.f1109a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) c0178g0).topMargin + ((ViewGroup.MarginLayoutParams) c0178g0).bottomMargin;
    }

    @Override // b.m.b.J
    public int d(View view) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        return this.f1109a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) c0178g0).leftMargin + ((ViewGroup.MarginLayoutParams) c0178g0).rightMargin;
    }

    @Override // b.m.b.J
    public int e(View view) {
        return this.f1109a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).topMargin;
    }

    @Override // b.m.b.J
    public int f() {
        return this.f1109a.mHeight;
    }

    @Override // b.m.b.J
    public int g() {
        AbstractC0176f0 abstractC0176f0 = this.f1109a;
        return abstractC0176f0.mHeight - abstractC0176f0.getPaddingBottom();
    }

    @Override // b.m.b.J
    public int h() {
        return this.f1109a.getPaddingBottom();
    }

    @Override // b.m.b.J
    public int i() {
        return this.f1109a.mHeightMode;
    }

    @Override // b.m.b.J
    public int j() {
        return this.f1109a.mWidthMode;
    }

    @Override // b.m.b.J
    public int k() {
        return this.f1109a.getPaddingTop();
    }

    @Override // b.m.b.J
    public int l() {
        AbstractC0176f0 abstractC0176f0 = this.f1109a;
        return (abstractC0176f0.mHeight - abstractC0176f0.getPaddingTop()) - this.f1109a.getPaddingBottom();
    }

    @Override // b.m.b.J
    public int n(View view) {
        this.f1109a.getTransformedBoundingBox(view, true, this.f1111c);
        return this.f1111c.bottom;
    }

    @Override // b.m.b.J
    public int o(View view) {
        this.f1109a.getTransformedBoundingBox(view, true, this.f1111c);
        return this.f1111c.top;
    }

    @Override // b.m.b.J
    public void p(int i) {
        this.f1109a.offsetChildrenVertical(i);
    }
}
