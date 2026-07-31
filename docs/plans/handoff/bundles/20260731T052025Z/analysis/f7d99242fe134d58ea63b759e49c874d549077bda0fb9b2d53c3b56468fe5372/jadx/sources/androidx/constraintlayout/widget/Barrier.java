package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public androidx.constraintlayout.core.widgets.Barrier mBarrier;
    public int mIndicatedType;
    public int mResolvedType;

    public Barrier(Context context) {
        super(context);
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
        barrier.mWidgets = new ConstraintWidget[4];
        barrier.mWidgetsCount = 0;
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

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void resolveRtl(ConstraintWidget constraintWidget, boolean z) {
        int i = this.mIndicatedType;
        this.mResolvedType = i;
        if (z) {
            if (i == 5) {
                this.mResolvedType = 1;
            } else if (i == 6) {
                this.mResolvedType = 0;
            }
        } else if (i == 5) {
            this.mResolvedType = 0;
        } else if (i == 6) {
            this.mResolvedType = 1;
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            ((androidx.constraintlayout.core.widgets.Barrier) constraintWidget).mBarrierType = this.mResolvedType;
        }
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

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }
}
