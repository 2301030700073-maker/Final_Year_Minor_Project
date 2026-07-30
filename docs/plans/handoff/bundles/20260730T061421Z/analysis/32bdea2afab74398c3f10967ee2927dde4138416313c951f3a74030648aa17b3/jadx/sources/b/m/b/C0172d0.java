package b.m.b;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: b.m.b.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0172d0 implements H0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0176f0 f1142a;

    public C0172d0(AbstractC0176f0 abstractC0176f0) {
        this.f1142a = abstractC0176f0;
    }

    @Override // b.m.b.H0
    public View a(int i) {
        return this.f1142a.getChildAt(i);
    }

    @Override // b.m.b.H0
    public int b() {
        AbstractC0176f0 abstractC0176f0 = this.f1142a;
        return abstractC0176f0.mHeight - abstractC0176f0.getPaddingBottom();
    }

    @Override // b.m.b.H0
    public int c() {
        return this.f1142a.getPaddingTop();
    }

    @Override // b.m.b.H0
    public int d(View view) {
        return this.f1142a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).bottomMargin;
    }

    @Override // b.m.b.H0
    public int getChildStart(View view) {
        return this.f1142a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((C0178g0) view.getLayoutParams())).topMargin;
    }
}
