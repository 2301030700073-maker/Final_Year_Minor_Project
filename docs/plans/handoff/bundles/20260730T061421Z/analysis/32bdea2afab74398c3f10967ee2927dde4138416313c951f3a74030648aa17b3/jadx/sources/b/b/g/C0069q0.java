package b.b.g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.android.quickstep.fallback.RecentsState;

/* renamed from: b.b.g.q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0069q0 extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public float f571a;

    /* renamed from: b, reason: collision with root package name */
    public int f572b;

    public C0069q0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f572b = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.b.b.n);
        this.f571a = obtainStyledAttributes.getFloat(3, RecentsState.NO_OFFSET);
        this.f572b = obtainStyledAttributes.getInt(0, -1);
        obtainStyledAttributes.recycle();
    }

    public C0069q0(int i, int i2) {
        super(i, i2);
        this.f572b = -1;
        this.f571a = RecentsState.NO_OFFSET;
    }

    public C0069q0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f572b = -1;
    }
}
