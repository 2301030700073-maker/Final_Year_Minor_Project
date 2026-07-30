package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public abstract class X4 {

    /* renamed from: case, reason: not valid java name */
    public final int f4457case;

    /* renamed from: do, reason: not valid java name */
    public final int f4458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f4459do;

    /* renamed from: for, reason: not valid java name */
    public int f4460for;

    /* renamed from: if, reason: not valid java name */
    public final int f4461if;

    /* renamed from: new, reason: not valid java name */
    public final int f4462new;

    /* renamed from: try, reason: not valid java name */
    public final int f4463try;

    public X4(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f4459do = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2504new, i, i2, new int[0]);
        int m3070for = C0659Zr.m3070for(context, m3115new, 9, dimensionPixelSize);
        this.f4458do = m3070for;
        this.f4461if = Math.min(C0659Zr.m3070for(context, m3115new, 8, 0), m3070for / 2);
        this.f4462new = m3115new.getInt(5, 0);
        this.f4463try = m3115new.getInt(1, 0);
        this.f4457case = m3115new.getDimensionPixelSize(3, 0);
        if (!m3115new.hasValue(2)) {
            this.f4459do = new int[]{O2.m1584else(context, R.attr.colorPrimary, -1)};
        } else if (m3115new.peekValue(2).type != 1) {
            this.f4459do = new int[]{m3115new.getColor(2, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(m3115new.getResourceId(2, -1));
            this.f4459do = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        if (m3115new.hasValue(7)) {
            this.f4460for = m3115new.getColor(7, -1);
        } else {
            this.f4460for = this.f4459do[0];
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
            float f = obtainStyledAttributes.getFloat(0, 0.2f);
            obtainStyledAttributes.recycle();
            this.f4460for = O2.m1589new(this.f4460for, (int) (f * 255.0f));
        }
        m3115new.recycle();
    }

    /* renamed from: do, reason: not valid java name */
    public void mo2794do() {
        if (this.f4457case < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }
}
