package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public androidx.constraintlayout.core.widgets.Barrier mBarrier;
    public int mIndicatedType;
    public int mResolvedType;

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

    public final void init(AttributeSet attributeSet) {
        int[] iArr = R$styleable.ConstraintLayout_Layout;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, iArr);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 35) {
                    String string = obtainStyledAttributes.getString(index);
                    this.mReferenceIds = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.mReferenceTags = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
        androidx.constraintlayout.core.widgets.Barrier barrier = new androidx.constraintlayout.core.widgets.Barrier();
        barrier.mWidgets = new ConstraintWidget[4];
        barrier.mWidgetsCount = 0;
        barrier.mBarrierType = 0;
        barrier.mAllowsGoneWidget = true;
        barrier.mMargin = 0;
        barrier.mResolved = false;
        this.mBarrier = barrier;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, iArr);
            int indexCount2 = obtainStyledAttributes2.getIndexCount();
            for (int i2 = 0; i2 < indexCount2; i2++) {
                int index2 = obtainStyledAttributes2.getIndex(i2);
                if (index2 == 26) {
                    setType(obtainStyledAttributes2.getInt(index2, 0));
                } else if (index2 == 25) {
                    this.mBarrier.mAllowsGoneWidget = obtainStyledAttributes2.getBoolean(index2, true);
                } else if (index2 == 27) {
                    this.mBarrier.mMargin = obtainStyledAttributes2.getDimensionPixelSize(index2, 0);
                }
            }
            obtainStyledAttributes2.recycle();
        }
        this.mHelperWidget = this.mBarrier;
        validateParams();
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
        this.mIds = new int[32];
        this.mMap = new HashMap();
        this.myContext = context;
        init(attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIds = new int[32];
        this.mMap = new HashMap();
        this.myContext = context;
        init(attributeSet);
        super.setVisibility(8);
    }
}
