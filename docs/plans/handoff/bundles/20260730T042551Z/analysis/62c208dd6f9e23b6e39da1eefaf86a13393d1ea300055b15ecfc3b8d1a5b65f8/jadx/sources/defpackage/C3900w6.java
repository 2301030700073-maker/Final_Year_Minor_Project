package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.datepicker.Cfor;
import com.joeykrim.rootcheck.R;

/* renamed from: w6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3900w6 {

    /* renamed from: case, reason: not valid java name */
    public final C3841v6 f16200case;

    /* renamed from: do, reason: not valid java name */
    public final Paint f16201do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3841v6 f16202do;

    /* renamed from: else, reason: not valid java name */
    public final C3841v6 f16203else;

    /* renamed from: for, reason: not valid java name */
    public final C3841v6 f16204for;

    /* renamed from: if, reason: not valid java name */
    public final C3841v6 f16205if;

    /* renamed from: new, reason: not valid java name */
    public final C3841v6 f16206new;

    /* renamed from: try, reason: not valid java name */
    public final C3841v6 f16207try;

    public C3900w6(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0154Cr.m305for(context, R.attr.materialCalendarStyle, Cfor.class.getCanonicalName()).data, O2.f2505package);
        this.f16202do = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(4, 0));
        this.f16203else = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(2, 0));
        this.f16205if = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(3, 0));
        this.f16204for = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(5, 0));
        ColorStateList m3071if = C0659Zr.m3071if(context, obtainStyledAttributes, 7);
        this.f16206new = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(9, 0));
        this.f16207try = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(8, 0));
        this.f16200case = C3841v6.m8429do(context, obtainStyledAttributes.getResourceId(10, 0));
        Paint paint = new Paint();
        this.f16201do = paint;
        paint.setColor(m3071if.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
