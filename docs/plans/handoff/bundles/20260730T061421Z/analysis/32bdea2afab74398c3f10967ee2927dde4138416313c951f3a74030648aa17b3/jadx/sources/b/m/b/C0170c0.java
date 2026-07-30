package b.m.b;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: b.m.b.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0170c0 implements H0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0176f0 f1138a;

    public C0170c0(AbstractC0176f0 abstractC0176f0) {
        this.f1138a = abstractC0176f0;
    }

    @Override // b.m.b.H0
    public View a(int i) {
        return this.f1138a.getChildAt(i);
    }

    @Override // b.m.b.H0
    public int b() {
        AbstractC0176f0 abstractC0176f0 = this.f1138a;
        return abstractC0176f0.mWidth - abstractC0176f0.getPaddingRight();
    }

    @Override // b.m.b.H0
    public int c() {
        return this.f1138a.getPaddingLeft();
    }

    @Override // b.m.b.H0
    public int d(View view) {
        return this.f1138a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).rightMargin;
    }

    @Override // b.m.b.H0
    public int getChildStart(View view) {
        return this.f1138a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).leftMargin;
    }
}
