package b.m.b;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: b.m.b.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0178g0 extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public w0 f1153a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f1154b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1155c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1156d;

    public C0178g0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1154b = new Rect();
        this.f1155c = true;
        this.f1156d = false;
    }

    public int a() {
        return this.f1153a.getLayoutPosition();
    }

    public boolean b() {
        return this.f1153a.isUpdated();
    }

    public boolean c() {
        return this.f1153a.isRemoved();
    }

    public C0178g0(int i, int i2) {
        super(i, i2);
        this.f1154b = new Rect();
        this.f1155c = true;
        this.f1156d = false;
    }

    public C0178g0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f1154b = new Rect();
        this.f1155c = true;
        this.f1156d = false;
    }

    public C0178g0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f1154b = new Rect();
        this.f1155c = true;
        this.f1156d = false;
    }

    public C0178g0(C0178g0 c0178g0) {
        super((ViewGroup.LayoutParams) c0178g0);
        this.f1154b = new Rect();
        this.f1155c = true;
        this.f1156d = false;
    }
}
