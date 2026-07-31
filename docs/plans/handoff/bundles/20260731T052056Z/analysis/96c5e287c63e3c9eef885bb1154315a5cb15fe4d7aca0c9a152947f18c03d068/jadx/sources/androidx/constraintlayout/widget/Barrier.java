package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public androidx.constraintlayout.core.widgets.Barrier mBarrier;
    public int mIndicatedType;

    public Barrier(Context context) {
        super(context);
        this.mIds = new int[32];
        this.mMap = new HashMap();
        this.myContext = context;
        init(null);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.mBarrier.mAllowsGoneWidget;
    }

    public int getMargin() {
        return this.mBarrier.mMargin;
    }

    public int getType() {
        return this.mIndicatedType;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        androidx.constraintlayout.core.widgets.Barrier barrier = new androidx.constraintlayout.core.widgets.Barrier();
        barrier.mBarrierType = 0;
        barrier.mAllowsGoneWidget = true;
        barrier.mMargin = 0;
        barrier.mResolved = false;
        this.mBarrier = barrier;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 26) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.mBarrier.mAllowsGoneWidget = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.mBarrier.mMargin = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mHelperWidget = this.mBarrier;
        validateParams();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000c, code lost:
    
        if (r4 == 6) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0013, code lost:
    
        if (r4 == 6) goto L5;
     */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resolveRtl(androidx.constraintlayout.core.widgets.ConstraintWidget r5, boolean r6) {
        /*
            r4 = this;
            int r4 = r4.mIndicatedType
            r0 = 0
            r1 = 6
            r2 = 1
            r3 = 5
            if (r6 == 0) goto L10
            if (r4 != r3) goto Lc
        La:
            r4 = r2
            goto L16
        Lc:
            if (r4 != r1) goto L16
        Le:
            r4 = r0
            goto L16
        L10:
            if (r4 != r3) goto L13
            goto Le
        L13:
            if (r4 != r1) goto L16
            goto La
        L16:
            boolean r6 = r5 instanceof androidx.constraintlayout.core.widgets.Barrier
            if (r6 == 0) goto L1e
            androidx.constraintlayout.core.widgets.Barrier r5 = (androidx.constraintlayout.core.widgets.Barrier) r5
            r5.mBarrierType = r4
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.Barrier.resolveRtl(androidx.constraintlayout.core.widgets.ConstraintWidget, boolean):void");
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mBarrier.mAllowsGoneWidget = z;
    }

    public void setDpMargin(int i) {
        this.mBarrier.mMargin = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.mBarrier.mMargin = i;
    }

    public void setType(int i) {
        this.mIndicatedType = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
