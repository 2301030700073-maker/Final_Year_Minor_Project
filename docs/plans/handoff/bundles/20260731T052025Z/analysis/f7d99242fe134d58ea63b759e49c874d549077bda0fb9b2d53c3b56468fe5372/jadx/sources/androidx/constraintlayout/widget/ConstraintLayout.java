package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.internal.http2.Huffman;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public static SharedValues sSharedValues;
    public final SparseArray mChildrenByIds;
    public final ArrayList mConstraintHelpers;
    public WeakCache mConstraintLayoutSpec;
    public ConstraintSet mConstraintSet;
    public int mConstraintSetId;
    public boolean mDirtyHierarchy;
    public final ConstraintWidgetContainer mLayoutWidget;
    public int mMaxHeight;
    public int mMaxWidth;
    public final Measurer mMeasurer;
    public int mMinHeight;
    public int mMinWidth;
    public int mOptimizationLevel;
    public final SparseArray mTempMapIdToWidget;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int baselineMargin;
        public int baselineToBaseline;
        public int baselineToBottom;
        public int baselineToTop;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String constraintTag;
        public String dimensionRatio;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endToEnd;
        public int endToStart;
        public int goneBaselineMargin;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean guidelineUseRtl;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;
        public int leftToLeft;
        public int leftToRight;
        public boolean mHorizontalDimensionFixed;
        public boolean mIsGuideline;
        public boolean mIsHelper;
        public boolean mNeedsBaseline;
        public int mResolveGoneLeftMargin;
        public int mResolveGoneRightMargin;
        public int mResolvedGuideBegin;
        public int mResolvedGuideEnd;
        public float mResolvedGuidePercent;
        public float mResolvedHorizontalBias;
        public int mResolvedLeftToLeft;
        public int mResolvedLeftToRight;
        public int mResolvedRightToLeft;
        public int mResolvedRightToRight;
        public boolean mVerticalDimensionFixed;
        public ConstraintWidget mWidget;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        public float matchConstraintPercentHeight;
        public float matchConstraintPercentWidth;
        public int orientation;
        public int rightToLeft;
        public int rightToRight;
        public int startToEnd;
        public int startToStart;
        public int topToBottom;
        public int topToTop;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int wrapBehaviorInParent;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public abstract class Table {
            public static final SparseIntArray sMap;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                sMap = sparseIntArray;
                sparseIntArray.append(98, 64);
                sparseIntArray.append(75, 65);
                sparseIntArray.append(84, 8);
                sparseIntArray.append(85, 9);
                sparseIntArray.append(87, 10);
                sparseIntArray.append(88, 11);
                sparseIntArray.append(94, 12);
                sparseIntArray.append(93, 13);
                sparseIntArray.append(65, 14);
                sparseIntArray.append(64, 15);
                sparseIntArray.append(60, 16);
                sparseIntArray.append(62, 52);
                sparseIntArray.append(61, 53);
                sparseIntArray.append(66, 2);
                sparseIntArray.append(68, 3);
                sparseIntArray.append(67, 4);
                sparseIntArray.append(103, 49);
                sparseIntArray.append(104, 50);
                sparseIntArray.append(72, 5);
                sparseIntArray.append(73, 6);
                sparseIntArray.append(74, 7);
                sparseIntArray.append(55, 67);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(89, 17);
                sparseIntArray.append(90, 18);
                sparseIntArray.append(71, 19);
                sparseIntArray.append(70, 20);
                sparseIntArray.append(108, 21);
                sparseIntArray.append(111, 22);
                sparseIntArray.append(109, 23);
                sparseIntArray.append(106, 24);
                sparseIntArray.append(110, 25);
                sparseIntArray.append(107, 26);
                sparseIntArray.append(105, 55);
                sparseIntArray.append(112, 54);
                sparseIntArray.append(80, 29);
                sparseIntArray.append(95, 30);
                sparseIntArray.append(69, 44);
                sparseIntArray.append(82, 45);
                sparseIntArray.append(97, 46);
                sparseIntArray.append(81, 47);
                sparseIntArray.append(96, 48);
                sparseIntArray.append(58, 27);
                sparseIntArray.append(57, 28);
                sparseIntArray.append(99, 31);
                sparseIntArray.append(76, 32);
                sparseIntArray.append(101, 33);
                sparseIntArray.append(100, 34);
                sparseIntArray.append(102, 35);
                sparseIntArray.append(78, 36);
                sparseIntArray.append(77, 37);
                sparseIntArray.append(79, 38);
                sparseIntArray.append(83, 39);
                sparseIntArray.append(92, 40);
                sparseIntArray.append(86, 41);
                sparseIntArray.append(63, 42);
                sparseIntArray.append(59, 43);
                sparseIntArray.append(91, 51);
                sparseIntArray.append(114, 66);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0082  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void resolveLayoutDirection(int r12) {
            /*
                Method dump skipped, instructions count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public final void validate() {
            this.mIsGuideline = false;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.constrainedWidth) {
                this.mHorizontalDimensionFixed = false;
                if (this.matchConstraintDefaultWidth == 0) {
                    this.matchConstraintDefaultWidth = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.constrainedHeight) {
                this.mVerticalDimensionFixed = false;
                if (this.matchConstraintDefaultHeight == 0) {
                    this.matchConstraintDefaultHeight = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.mHorizontalDimensionFixed = false;
                if (i == 0 && this.matchConstraintDefaultWidth == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.mVerticalDimensionFixed = false;
                if (i2 == 0 && this.matchConstraintDefaultHeight == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent == -1.0f && this.guideBegin == -1 && this.guideEnd == -1) {
                return;
            }
            this.mIsGuideline = true;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            if (!(this.mWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                this.mWidget = new androidx.constraintlayout.core.widgets.Guideline();
            }
            ((androidx.constraintlayout.core.widgets.Guideline) this.mWidget).setOrientation(this.orientation);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Measurer {
        public final ConstraintLayout mLayout;
        public int mLayoutHeightSpec;
        public int mLayoutWidthSpec;
        public int mPaddingBottom;
        public int mPaddingHeight;
        public int mPaddingTop;
        public int mPaddingWidth;

        public Measurer(ConstraintLayout constraintLayout) {
            this.mLayout = constraintLayout;
        }

        public static boolean isSimilarSpec(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
            }
            return false;
        }

        public final void measure(ConstraintWidget constraintWidget, BasicMeasure$Measure basicMeasure$Measure) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            int max;
            int max2;
            boolean z;
            int baseline;
            int i;
            ConstraintAnchor constraintAnchor = constraintWidget.mRight;
            ConstraintAnchor constraintAnchor2 = constraintWidget.mLeft;
            if (constraintWidget.mVisibility == 8) {
                basicMeasure$Measure.measuredWidth = 0;
                basicMeasure$Measure.measuredHeight = 0;
                basicMeasure$Measure.measuredBaseline = 0;
                return;
            }
            if (constraintWidget.mParent == null) {
                return;
            }
            SharedValues sharedValues = ConstraintLayout.sSharedValues;
            int i2 = basicMeasure$Measure.horizontalBehavior;
            int i3 = basicMeasure$Measure.verticalBehavior;
            int i4 = basicMeasure$Measure.horizontalDimension;
            int i5 = basicMeasure$Measure.verticalDimension;
            int i6 = this.mPaddingTop + this.mPaddingBottom;
            int i7 = this.mPaddingWidth;
            View view = constraintWidget.mCompanionWidget;
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i2);
            if (ordinal == 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (ordinal == 1) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i7, -2);
            } else if (ordinal == 2) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i7, -2);
                boolean z2 = constraintWidget.mMatchConstraintDefaultWidth == 1;
                int i8 = basicMeasure$Measure.measureStrategy;
                if (i8 == 1 || i8 == 2) {
                    boolean z3 = view.getMeasuredHeight() == constraintWidget.getHeight();
                    if (basicMeasure$Measure.measureStrategy == 2 || !z2 || ((z2 && z3) || constraintWidget.isResolvedHorizontally())) {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.getWidth(), 1073741824);
                    }
                }
            } else if (ordinal != 3) {
                makeMeasureSpec = 0;
            } else {
                int i9 = this.mLayoutWidthSpec;
                int i10 = constraintAnchor2 != null ? constraintAnchor2.mMargin : 0;
                if (constraintAnchor != null) {
                    i10 += constraintAnchor.mMargin;
                }
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(i9, i7 + i10, -1);
            }
            int ordinal2 = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i3);
            if (ordinal2 == 0) {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            } else if (ordinal2 == 1) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i6, -2);
            } else if (ordinal2 == 2) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i6, -2);
                boolean z4 = constraintWidget.mMatchConstraintDefaultHeight == 1;
                int i11 = basicMeasure$Measure.measureStrategy;
                if (i11 == 1 || i11 == 2) {
                    boolean z5 = view.getMeasuredWidth() == constraintWidget.getWidth();
                    if (basicMeasure$Measure.measureStrategy == 2 || !z4 || ((z4 && z5) || constraintWidget.isResolvedVertically())) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), 1073741824);
                    }
                }
            } else if (ordinal2 != 3) {
                makeMeasureSpec2 = 0;
            } else {
                int i12 = this.mLayoutHeightSpec;
                int i13 = constraintAnchor2 != null ? constraintWidget.mTop.mMargin : 0;
                if (constraintAnchor != null) {
                    i13 += constraintWidget.mBottom.mMargin;
                }
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, i6 + i13, -1);
            }
            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.mParent;
            ConstraintLayout constraintLayout = ConstraintLayout.this;
            if (constraintWidgetContainer != null && Chain.enabled(constraintLayout.mOptimizationLevel, 256) && view.getMeasuredWidth() == constraintWidget.getWidth() && view.getMeasuredWidth() < constraintWidgetContainer.getWidth() && view.getMeasuredHeight() == constraintWidget.getHeight() && view.getMeasuredHeight() < constraintWidgetContainer.getHeight() && view.getBaseline() == constraintWidget.mBaselineDistance && !constraintWidget.isMeasureRequested() && isSimilarSpec(constraintWidget.mLastHorizontalMeasureSpec, makeMeasureSpec, constraintWidget.getWidth()) && isSimilarSpec(constraintWidget.mLastVerticalMeasureSpec, makeMeasureSpec2, constraintWidget.getHeight())) {
                basicMeasure$Measure.measuredWidth = constraintWidget.getWidth();
                basicMeasure$Measure.measuredHeight = constraintWidget.getHeight();
                basicMeasure$Measure.measuredBaseline = constraintWidget.mBaselineDistance;
                return;
            }
            boolean z6 = i2 == 3;
            boolean z7 = i3 == 3;
            boolean z8 = i3 == 4 || i3 == 1;
            boolean z9 = i2 == 4 || i2 == 1;
            boolean z10 = z6 && constraintWidget.mDimensionRatio > 0.0f;
            boolean z11 = z7 && constraintWidget.mDimensionRatio > 0.0f;
            if (view == null) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i14 = basicMeasure$Measure.measureStrategy;
            if (i14 != 1 && i14 != 2 && z6 && constraintWidget.mMatchConstraintDefaultWidth == 0 && z7 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                i = -1;
                z = false;
                baseline = 0;
                max2 = 0;
                max = 0;
            } else {
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                constraintWidget.mLastHorizontalMeasureSpec = makeMeasureSpec;
                constraintWidget.mLastVerticalMeasureSpec = makeMeasureSpec2;
                constraintWidget.mMeasureRequested = false;
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                int baseline2 = view.getBaseline();
                int i15 = constraintWidget.mMatchConstraintMinWidth;
                max = i15 > 0 ? Math.max(i15, measuredWidth) : measuredWidth;
                int i16 = constraintWidget.mMatchConstraintMaxWidth;
                if (i16 > 0) {
                    max = Math.min(i16, max);
                }
                int i17 = constraintWidget.mMatchConstraintMinHeight;
                max2 = i17 > 0 ? Math.max(i17, measuredHeight) : measuredHeight;
                int i18 = makeMeasureSpec2;
                int i19 = constraintWidget.mMatchConstraintMaxHeight;
                if (i19 > 0) {
                    max2 = Math.min(i19, max2);
                }
                if (!Chain.enabled(constraintLayout.mOptimizationLevel, 1)) {
                    if (z10 && z8) {
                        max = (int) ((max2 * constraintWidget.mDimensionRatio) + 0.5f);
                    } else if (z11 && z9) {
                        max2 = (int) ((max / constraintWidget.mDimensionRatio) + 0.5f);
                    }
                }
                if (measuredWidth == max && measuredHeight == max2) {
                    baseline = baseline2;
                    i = -1;
                    z = false;
                } else {
                    if (measuredWidth != max) {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
                    }
                    int makeMeasureSpec3 = measuredHeight != max2 ? View.MeasureSpec.makeMeasureSpec(max2, 1073741824) : i18;
                    view.measure(makeMeasureSpec, makeMeasureSpec3);
                    constraintWidget.mLastHorizontalMeasureSpec = makeMeasureSpec;
                    constraintWidget.mLastVerticalMeasureSpec = makeMeasureSpec3;
                    z = false;
                    constraintWidget.mMeasureRequested = false;
                    int measuredWidth2 = view.getMeasuredWidth();
                    int measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    max = measuredWidth2;
                    max2 = measuredHeight2;
                    i = -1;
                }
            }
            boolean z12 = baseline != i ? true : z;
            basicMeasure$Measure.measuredNeedsSolverPass = (max == basicMeasure$Measure.horizontalDimension && max2 == basicMeasure$Measure.verticalDimension) ? z : true;
            boolean z13 = layoutParams.mNeedsBaseline ? true : z12;
            if (z13 && baseline != -1 && constraintWidget.mBaselineDistance != baseline) {
                basicMeasure$Measure.measuredNeedsSolverPass = true;
            }
            basicMeasure$Measure.measuredWidth = max;
            basicMeasure$Measure.measuredHeight = max2;
            basicMeasure$Measure.measuredHasBaseline = z13;
            basicMeasure$Measure.measuredBaseline = baseline;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(null, 0, 0);
    }

    public static LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.guideBegin = -1;
        layoutParams.guideEnd = -1;
        layoutParams.guidePercent = -1.0f;
        layoutParams.guidelineUseRtl = true;
        layoutParams.leftToLeft = -1;
        layoutParams.leftToRight = -1;
        layoutParams.rightToLeft = -1;
        layoutParams.rightToRight = -1;
        layoutParams.topToTop = -1;
        layoutParams.topToBottom = -1;
        layoutParams.bottomToTop = -1;
        layoutParams.bottomToBottom = -1;
        layoutParams.baselineToBaseline = -1;
        layoutParams.baselineToTop = -1;
        layoutParams.baselineToBottom = -1;
        layoutParams.circleConstraint = -1;
        layoutParams.circleRadius = 0;
        layoutParams.circleAngle = 0.0f;
        layoutParams.startToEnd = -1;
        layoutParams.startToStart = -1;
        layoutParams.endToStart = -1;
        layoutParams.endToEnd = -1;
        layoutParams.goneLeftMargin = Integer.MIN_VALUE;
        layoutParams.goneTopMargin = Integer.MIN_VALUE;
        layoutParams.goneRightMargin = Integer.MIN_VALUE;
        layoutParams.goneBottomMargin = Integer.MIN_VALUE;
        layoutParams.goneStartMargin = Integer.MIN_VALUE;
        layoutParams.goneEndMargin = Integer.MIN_VALUE;
        layoutParams.goneBaselineMargin = Integer.MIN_VALUE;
        layoutParams.baselineMargin = 0;
        layoutParams.horizontalBias = 0.5f;
        layoutParams.verticalBias = 0.5f;
        layoutParams.dimensionRatio = null;
        layoutParams.horizontalWeight = -1.0f;
        layoutParams.verticalWeight = -1.0f;
        layoutParams.horizontalChainStyle = 0;
        layoutParams.verticalChainStyle = 0;
        layoutParams.matchConstraintDefaultWidth = 0;
        layoutParams.matchConstraintDefaultHeight = 0;
        layoutParams.matchConstraintMinWidth = 0;
        layoutParams.matchConstraintMinHeight = 0;
        layoutParams.matchConstraintMaxWidth = 0;
        layoutParams.matchConstraintMaxHeight = 0;
        layoutParams.matchConstraintPercentWidth = 1.0f;
        layoutParams.matchConstraintPercentHeight = 1.0f;
        layoutParams.editorAbsoluteX = -1;
        layoutParams.editorAbsoluteY = -1;
        layoutParams.orientation = -1;
        layoutParams.constrainedWidth = false;
        layoutParams.constrainedHeight = false;
        layoutParams.constraintTag = null;
        layoutParams.wrapBehaviorInParent = 0;
        layoutParams.mHorizontalDimensionFixed = true;
        layoutParams.mVerticalDimensionFixed = true;
        layoutParams.mNeedsBaseline = false;
        layoutParams.mIsGuideline = false;
        layoutParams.mIsHelper = false;
        layoutParams.mResolvedLeftToLeft = -1;
        layoutParams.mResolvedLeftToRight = -1;
        layoutParams.mResolvedRightToLeft = -1;
        layoutParams.mResolvedRightToRight = -1;
        layoutParams.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        layoutParams.mResolveGoneRightMargin = Integer.MIN_VALUE;
        layoutParams.mResolvedHorizontalBias = 0.5f;
        layoutParams.mWidget = new ConstraintWidget();
        return layoutParams;
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    public static SharedValues getSharedValues() {
        if (sSharedValues == null) {
            SharedValues sharedValues = new SharedValues();
            new SparseIntArray();
            new HashMap();
            sSharedValues = sharedValues;
        }
        return sSharedValues;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int size;
        ArrayList arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((ConstraintHelper) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        isInEditMode();
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.mDirtyHierarchy = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.guideBegin = -1;
        layoutParams.guideEnd = -1;
        layoutParams.guidePercent = -1.0f;
        layoutParams.guidelineUseRtl = true;
        layoutParams.leftToLeft = -1;
        layoutParams.leftToRight = -1;
        layoutParams.rightToLeft = -1;
        layoutParams.rightToRight = -1;
        layoutParams.topToTop = -1;
        layoutParams.topToBottom = -1;
        layoutParams.bottomToTop = -1;
        layoutParams.bottomToBottom = -1;
        layoutParams.baselineToBaseline = -1;
        layoutParams.baselineToTop = -1;
        layoutParams.baselineToBottom = -1;
        layoutParams.circleConstraint = -1;
        layoutParams.circleRadius = 0;
        layoutParams.circleAngle = 0.0f;
        layoutParams.startToEnd = -1;
        layoutParams.startToStart = -1;
        layoutParams.endToStart = -1;
        layoutParams.endToEnd = -1;
        layoutParams.goneLeftMargin = Integer.MIN_VALUE;
        layoutParams.goneTopMargin = Integer.MIN_VALUE;
        layoutParams.goneRightMargin = Integer.MIN_VALUE;
        layoutParams.goneBottomMargin = Integer.MIN_VALUE;
        layoutParams.goneStartMargin = Integer.MIN_VALUE;
        layoutParams.goneEndMargin = Integer.MIN_VALUE;
        layoutParams.goneBaselineMargin = Integer.MIN_VALUE;
        layoutParams.baselineMargin = 0;
        layoutParams.horizontalBias = 0.5f;
        layoutParams.verticalBias = 0.5f;
        layoutParams.dimensionRatio = null;
        layoutParams.horizontalWeight = -1.0f;
        layoutParams.verticalWeight = -1.0f;
        layoutParams.horizontalChainStyle = 0;
        layoutParams.verticalChainStyle = 0;
        layoutParams.matchConstraintDefaultWidth = 0;
        layoutParams.matchConstraintDefaultHeight = 0;
        layoutParams.matchConstraintMinWidth = 0;
        layoutParams.matchConstraintMinHeight = 0;
        layoutParams.matchConstraintMaxWidth = 0;
        layoutParams.matchConstraintMaxHeight = 0;
        layoutParams.matchConstraintPercentWidth = 1.0f;
        layoutParams.matchConstraintPercentHeight = 1.0f;
        layoutParams.editorAbsoluteX = -1;
        layoutParams.editorAbsoluteY = -1;
        layoutParams.orientation = -1;
        layoutParams.constrainedWidth = false;
        layoutParams.constrainedHeight = false;
        layoutParams.constraintTag = null;
        layoutParams.wrapBehaviorInParent = 0;
        layoutParams.mHorizontalDimensionFixed = true;
        layoutParams.mVerticalDimensionFixed = true;
        layoutParams.mNeedsBaseline = false;
        layoutParams.mIsGuideline = false;
        layoutParams.mIsHelper = false;
        layoutParams.mResolvedLeftToLeft = -1;
        layoutParams.mResolvedLeftToRight = -1;
        layoutParams.mResolvedRightToLeft = -1;
        layoutParams.mResolvedRightToRight = -1;
        layoutParams.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        layoutParams.mResolveGoneRightMargin = Integer.MIN_VALUE;
        layoutParams.mResolvedHorizontalBias = 0.5f;
        layoutParams.mWidget = new ConstraintWidget();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            int i2 = LayoutParams.Table.sMap.get(index);
            switch (i2) {
                case 1:
                    layoutParams.orientation = obtainStyledAttributes.getInt(index, layoutParams.orientation);
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, layoutParams.circleConstraint);
                    layoutParams.circleConstraint = resourceId;
                    if (resourceId == -1) {
                        layoutParams.circleConstraint = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    layoutParams.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.circleRadius);
                    break;
                case 4:
                    float f = obtainStyledAttributes.getFloat(index, layoutParams.circleAngle) % 360.0f;
                    layoutParams.circleAngle = f;
                    if (f < 0.0f) {
                        layoutParams.circleAngle = (360.0f - f) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    layoutParams.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, layoutParams.guideBegin);
                    break;
                case 6:
                    layoutParams.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, layoutParams.guideEnd);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    layoutParams.guidePercent = obtainStyledAttributes.getFloat(index, layoutParams.guidePercent);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, layoutParams.leftToLeft);
                    layoutParams.leftToLeft = resourceId2;
                    if (resourceId2 == -1) {
                        layoutParams.leftToLeft = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, layoutParams.leftToRight);
                    layoutParams.leftToRight = resourceId3;
                    if (resourceId3 == -1) {
                        layoutParams.leftToRight = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, layoutParams.rightToLeft);
                    layoutParams.rightToLeft = resourceId4;
                    if (resourceId4 == -1) {
                        layoutParams.rightToLeft = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, layoutParams.rightToRight);
                    layoutParams.rightToRight = resourceId5;
                    if (resourceId5 == -1) {
                        layoutParams.rightToRight = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case BasicTextKt.ShiftMeta /* 12 */:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, layoutParams.topToTop);
                    layoutParams.topToTop = resourceId6;
                    if (resourceId6 == -1) {
                        layoutParams.topToTop = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, layoutParams.topToBottom);
                    layoutParams.topToBottom = resourceId7;
                    if (resourceId7 == -1) {
                        layoutParams.topToBottom = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, layoutParams.bottomToTop);
                    layoutParams.bottomToTop = resourceId8;
                    if (resourceId8 == -1) {
                        layoutParams.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case OffsetKt.Horizontal /* 15 */:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, layoutParams.bottomToBottom);
                    layoutParams.bottomToBottom = resourceId9;
                    if (resourceId9 == -1) {
                        layoutParams.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, layoutParams.baselineToBaseline);
                    layoutParams.baselineToBaseline = resourceId10;
                    if (resourceId10 == -1) {
                        layoutParams.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, layoutParams.startToEnd);
                    layoutParams.startToEnd = resourceId11;
                    if (resourceId11 == -1) {
                        layoutParams.startToEnd = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, layoutParams.startToStart);
                    layoutParams.startToStart = resourceId12;
                    if (resourceId12 == -1) {
                        layoutParams.startToStart = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, layoutParams.endToStart);
                    layoutParams.endToStart = resourceId13;
                    if (resourceId13 == -1) {
                        layoutParams.endToStart = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, layoutParams.endToEnd);
                    layoutParams.endToEnd = resourceId14;
                    if (resourceId14 == -1) {
                        layoutParams.endToEnd = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    layoutParams.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneLeftMargin);
                    break;
                case 22:
                    layoutParams.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneTopMargin);
                    break;
                case 23:
                    layoutParams.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneRightMargin);
                    break;
                case 24:
                    layoutParams.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneBottomMargin);
                    break;
                case 25:
                    layoutParams.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneStartMargin);
                    break;
                case 26:
                    layoutParams.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneEndMargin);
                    break;
                case 27:
                    layoutParams.constrainedWidth = obtainStyledAttributes.getBoolean(index, layoutParams.constrainedWidth);
                    break;
                case 28:
                    layoutParams.constrainedHeight = obtainStyledAttributes.getBoolean(index, layoutParams.constrainedHeight);
                    break;
                case 29:
                    layoutParams.horizontalBias = obtainStyledAttributes.getFloat(index, layoutParams.horizontalBias);
                    break;
                case 30:
                    layoutParams.verticalBias = obtainStyledAttributes.getFloat(index, layoutParams.verticalBias);
                    break;
                case 31:
                    int i3 = obtainStyledAttributes.getInt(index, 0);
                    layoutParams.matchConstraintDefaultWidth = i3;
                    if (i3 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i4 = obtainStyledAttributes.getInt(index, 0);
                    layoutParams.matchConstraintDefaultHeight = i4;
                    if (i4 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        layoutParams.matchConstraintMinWidth = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.matchConstraintMinWidth);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, layoutParams.matchConstraintMinWidth) == -2) {
                            layoutParams.matchConstraintMinWidth = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        layoutParams.matchConstraintMaxWidth = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.matchConstraintMaxWidth);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, layoutParams.matchConstraintMaxWidth) == -2) {
                            layoutParams.matchConstraintMaxWidth = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    layoutParams.matchConstraintPercentWidth = Math.max(0.0f, obtainStyledAttributes.getFloat(index, layoutParams.matchConstraintPercentWidth));
                    layoutParams.matchConstraintDefaultWidth = 2;
                    break;
                case 36:
                    try {
                        layoutParams.matchConstraintMinHeight = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.matchConstraintMinHeight);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, layoutParams.matchConstraintMinHeight) == -2) {
                            layoutParams.matchConstraintMinHeight = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        layoutParams.matchConstraintMaxHeight = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.matchConstraintMaxHeight);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, layoutParams.matchConstraintMaxHeight) == -2) {
                            layoutParams.matchConstraintMaxHeight = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    layoutParams.matchConstraintPercentHeight = Math.max(0.0f, obtainStyledAttributes.getFloat(index, layoutParams.matchConstraintPercentHeight));
                    layoutParams.matchConstraintDefaultHeight = 2;
                    break;
                default:
                    switch (i2) {
                        case 44:
                            ConstraintSet.parseDimensionRatioString(layoutParams, obtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            layoutParams.horizontalWeight = obtainStyledAttributes.getFloat(index, layoutParams.horizontalWeight);
                            break;
                        case 46:
                            layoutParams.verticalWeight = obtainStyledAttributes.getFloat(index, layoutParams.verticalWeight);
                            break;
                        case 47:
                            layoutParams.horizontalChainStyle = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            layoutParams.verticalChainStyle = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            layoutParams.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, layoutParams.editorAbsoluteX);
                            break;
                        case 50:
                            layoutParams.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, layoutParams.editorAbsoluteY);
                            break;
                        case 51:
                            layoutParams.constraintTag = obtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = obtainStyledAttributes.getResourceId(index, layoutParams.baselineToTop);
                            layoutParams.baselineToTop = resourceId15;
                            if (resourceId15 == -1) {
                                layoutParams.baselineToTop = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            int resourceId16 = obtainStyledAttributes.getResourceId(index, layoutParams.baselineToBottom);
                            layoutParams.baselineToBottom = resourceId16;
                            if (resourceId16 == -1) {
                                layoutParams.baselineToBottom = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            layoutParams.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.baselineMargin);
                            break;
                        case 55:
                            layoutParams.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneBaselineMargin);
                            break;
                        default:
                            switch (i2) {
                                case 64:
                                    ConstraintSet.parseDimensionConstraints(layoutParams, obtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    ConstraintSet.parseDimensionConstraints(layoutParams, obtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    layoutParams.wrapBehaviorInParent = obtainStyledAttributes.getInt(index, layoutParams.wrapBehaviorInParent);
                                    break;
                                case 67:
                                    layoutParams.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, layoutParams.guidelineUseRtl);
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        layoutParams.validate();
        return layoutParams;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.mOptimizationLevel;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        if (constraintWidgetContainer.stringId == null) {
            int id2 = getId();
            if (id2 != -1) {
                constraintWidgetContainer.stringId = getContext().getResources().getResourceEntryName(id2);
            } else {
                constraintWidgetContainer.stringId = "parent";
            }
        }
        if (constraintWidgetContainer.mDebugName == null) {
            constraintWidgetContainer.mDebugName = constraintWidgetContainer.stringId;
            Log.v("ConstraintLayout", " setDebugName " + constraintWidgetContainer.mDebugName);
        }
        Iterator it = constraintWidgetContainer.mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            View view = constraintWidget.mCompanionWidget;
            if (view != null) {
                if (constraintWidget.stringId == null && (id = view.getId()) != -1) {
                    constraintWidget.stringId = getContext().getResources().getResourceEntryName(id);
                }
                if (constraintWidget.mDebugName == null) {
                    constraintWidget.mDebugName = constraintWidget.stringId;
                    Log.v("ConstraintLayout", " setDebugName " + constraintWidget.mDebugName);
                }
            }
        }
        constraintWidgetContainer.getSceneString(sb);
        return sb.toString();
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).mWidget;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).mWidget;
        }
        return null;
    }

    public final void init(AttributeSet attributeSet, int i, int i2) {
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        constraintWidgetContainer.mCompanionWidget = this;
        Measurer measurer = this.mMeasurer;
        constraintWidgetContainer.mMeasurer = measurer;
        constraintWidgetContainer.mDependencyGraph.mMeasurer = measurer;
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == 17) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == 14) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == 15) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == 113) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == 56) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.mConstraintSet = constraintSet;
                        constraintSet.load(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        constraintWidgetContainer.mOptimizationLevel = this.mOptimizationLevel;
        LinearSystem.USE_DEPENDENCY_ORDERING = constraintWidgetContainer.optimizeFor(512);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.mWidget;
            if (childAt.getVisibility() != 8 || layoutParams.mIsGuideline || layoutParams.mIsHelper) {
                int x = constraintWidget.getX();
                int y = constraintWidget.getY();
                childAt.layout(x, y, constraintWidget.getWidth() + x, constraintWidget.getHeight() + y);
            }
        }
        ArrayList arrayList = this.mConstraintHelpers;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((ConstraintHelper) arrayList.get(i6)).updatePostLayout();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:367:0x0644  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0670  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x071d  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x06f4  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0657  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 2320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            layoutParams.mWidget = guideline;
            layoutParams.mIsGuideline = true;
            guideline.setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).mIsHelper = true;
            ArrayList arrayList = this.mConstraintHelpers;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        ConstraintWidget viewWidget = getViewWidget(view);
        this.mLayoutWidget.mChildren.remove(viewWidget);
        viewWidget.reset();
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    public final void parseLayoutDescription(int i) {
        String str;
        final Context context = getContext();
        WeakCache weakCache = new WeakCache(13, false);
        weakCache.values = new SparseArray();
        weakCache.referenceQueue = new SparseArray();
        final XmlResourceParser xml = context.getResources().getXml(i);
        try {
            Huffman.Node node = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                weakCache.parseConstraintSet(context, xml);
                                break;
                            } else {
                                break;
                            }
                        case 80204913:
                            if (name.equals("State")) {
                                Huffman.Node node2 = new Huffman.Node(context, xml);
                                ((SparseArray) weakCache.values).put(node2.symbol, node2);
                                node = node2;
                                break;
                            } else {
                                break;
                            }
                        case 1382829617:
                            str = "StateSet";
                            name.equals(str);
                            break;
                        case 1657696882:
                            str = "layoutDescription";
                            name.equals(str);
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                Object obj = new Object(context, xml) { // from class: androidx.constraintlayout.widget.ConstraintLayoutStates$Variant
                                    public final int mConstraintID;
                                    public final float mMaxHeight;
                                    public final float mMaxWidth;
                                    public final float mMinHeight;
                                    public final float mMinWidth;

                                    {
                                        this.mMinWidth = Float.NaN;
                                        this.mMinHeight = Float.NaN;
                                        this.mMaxWidth = Float.NaN;
                                        this.mMaxHeight = Float.NaN;
                                        this.mConstraintID = -1;
                                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R$styleable.Variant);
                                        int indexCount = obtainStyledAttributes.getIndexCount();
                                        for (int i2 = 0; i2 < indexCount; i2++) {
                                            int index = obtainStyledAttributes.getIndex(i2);
                                            if (index == 0) {
                                                int resourceId = obtainStyledAttributes.getResourceId(index, this.mConstraintID);
                                                this.mConstraintID = resourceId;
                                                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                                                context.getResources().getResourceName(resourceId);
                                                if ("layout".equals(resourceTypeName)) {
                                                    new ConstraintSet().clone(context, resourceId);
                                                }
                                            } else if (index == 1) {
                                                this.mMaxHeight = obtainStyledAttributes.getDimension(index, this.mMaxHeight);
                                            } else if (index == 2) {
                                                this.mMinHeight = obtainStyledAttributes.getDimension(index, this.mMinHeight);
                                            } else if (index == 3) {
                                                this.mMaxWidth = obtainStyledAttributes.getDimension(index, this.mMaxWidth);
                                            } else if (index == 4) {
                                                this.mMinWidth = obtainStyledAttributes.getDimension(index, this.mMinWidth);
                                            } else {
                                                Log.v("ConstraintLayoutStates", "Unknown tag");
                                            }
                                        }
                                        obtainStyledAttributes.recycle();
                                    }
                                };
                                if (node != null) {
                                    ((ArrayList) node.children).add(obj);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                break;
                            }
                    }
                }
            }
        } catch (IOException e) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e);
        } catch (XmlPullParserException e2) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e2);
        }
        this.mConstraintLayoutSpec = weakCache;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.mDirtyHierarchy = true;
        super.requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x034c  */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v6, types: [int] */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resolveSystem(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.resolveSystem(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, int, int, int):void");
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.mConstraintSet = constraintSet;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.mChildrenByIds;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        WeakCache weakCache = this.mConstraintLayoutSpec;
        if (weakCache != null) {
            weakCache.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        constraintWidgetContainer.mOptimizationLevel = i;
        LinearSystem.USE_DEPENDENCY_ORDERING = constraintWidgetContainer.optimizeFor(512);
    }

    public final void setWidgetBaseline(ConstraintWidget constraintWidget, LayoutParams layoutParams, SparseArray sparseArray, int i, int i2) {
        View view = (View) this.mChildrenByIds.get(i);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        layoutParams.mNeedsBaseline = true;
        if (i2 == 6) {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.mNeedsBaseline = true;
            layoutParams2.mWidget.mHasBaseline = true;
        }
        constraintWidget.getAnchor(6).connect(constraintWidget2.getAnchor(i2), layoutParams.baselineMargin, layoutParams.goneBaselineMargin);
        constraintWidget.mHasBaseline = true;
        constraintWidget.getAnchor(3).reset();
        constraintWidget.getAnchor(5).reset();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams(layoutParams);
        layoutParams2.guideBegin = -1;
        layoutParams2.guideEnd = -1;
        layoutParams2.guidePercent = -1.0f;
        layoutParams2.guidelineUseRtl = true;
        layoutParams2.leftToLeft = -1;
        layoutParams2.leftToRight = -1;
        layoutParams2.rightToLeft = -1;
        layoutParams2.rightToRight = -1;
        layoutParams2.topToTop = -1;
        layoutParams2.topToBottom = -1;
        layoutParams2.bottomToTop = -1;
        layoutParams2.bottomToBottom = -1;
        layoutParams2.baselineToBaseline = -1;
        layoutParams2.baselineToTop = -1;
        layoutParams2.baselineToBottom = -1;
        layoutParams2.circleConstraint = -1;
        layoutParams2.circleRadius = 0;
        layoutParams2.circleAngle = 0.0f;
        layoutParams2.startToEnd = -1;
        layoutParams2.startToStart = -1;
        layoutParams2.endToStart = -1;
        layoutParams2.endToEnd = -1;
        layoutParams2.goneLeftMargin = Integer.MIN_VALUE;
        layoutParams2.goneTopMargin = Integer.MIN_VALUE;
        layoutParams2.goneRightMargin = Integer.MIN_VALUE;
        layoutParams2.goneBottomMargin = Integer.MIN_VALUE;
        layoutParams2.goneStartMargin = Integer.MIN_VALUE;
        layoutParams2.goneEndMargin = Integer.MIN_VALUE;
        layoutParams2.goneBaselineMargin = Integer.MIN_VALUE;
        layoutParams2.baselineMargin = 0;
        layoutParams2.horizontalBias = 0.5f;
        layoutParams2.verticalBias = 0.5f;
        layoutParams2.dimensionRatio = null;
        layoutParams2.horizontalWeight = -1.0f;
        layoutParams2.verticalWeight = -1.0f;
        layoutParams2.horizontalChainStyle = 0;
        layoutParams2.verticalChainStyle = 0;
        layoutParams2.matchConstraintDefaultWidth = 0;
        layoutParams2.matchConstraintDefaultHeight = 0;
        layoutParams2.matchConstraintMinWidth = 0;
        layoutParams2.matchConstraintMinHeight = 0;
        layoutParams2.matchConstraintMaxWidth = 0;
        layoutParams2.matchConstraintMaxHeight = 0;
        layoutParams2.matchConstraintPercentWidth = 1.0f;
        layoutParams2.matchConstraintPercentHeight = 1.0f;
        layoutParams2.editorAbsoluteX = -1;
        layoutParams2.editorAbsoluteY = -1;
        layoutParams2.orientation = -1;
        layoutParams2.constrainedWidth = false;
        layoutParams2.constrainedHeight = false;
        layoutParams2.constraintTag = null;
        layoutParams2.wrapBehaviorInParent = 0;
        layoutParams2.mHorizontalDimensionFixed = true;
        layoutParams2.mVerticalDimensionFixed = true;
        layoutParams2.mNeedsBaseline = false;
        layoutParams2.mIsGuideline = false;
        layoutParams2.mIsHelper = false;
        layoutParams2.mResolvedLeftToLeft = -1;
        layoutParams2.mResolvedLeftToRight = -1;
        layoutParams2.mResolvedRightToLeft = -1;
        layoutParams2.mResolvedRightToRight = -1;
        layoutParams2.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        layoutParams2.mResolveGoneRightMargin = Integer.MIN_VALUE;
        layoutParams2.mResolvedHorizontalBias = 0.5f;
        layoutParams2.mWidget = new ConstraintWidget();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = marginLayoutParams.bottomMargin;
            layoutParams2.setMarginStart(marginLayoutParams.getMarginStart());
            layoutParams2.setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        if (!(layoutParams instanceof LayoutParams)) {
            return layoutParams2;
        }
        LayoutParams layoutParams3 = (LayoutParams) layoutParams;
        layoutParams2.guideBegin = layoutParams3.guideBegin;
        layoutParams2.guideEnd = layoutParams3.guideEnd;
        layoutParams2.guidePercent = layoutParams3.guidePercent;
        layoutParams2.guidelineUseRtl = layoutParams3.guidelineUseRtl;
        layoutParams2.leftToLeft = layoutParams3.leftToLeft;
        layoutParams2.leftToRight = layoutParams3.leftToRight;
        layoutParams2.rightToLeft = layoutParams3.rightToLeft;
        layoutParams2.rightToRight = layoutParams3.rightToRight;
        layoutParams2.topToTop = layoutParams3.topToTop;
        layoutParams2.topToBottom = layoutParams3.topToBottom;
        layoutParams2.bottomToTop = layoutParams3.bottomToTop;
        layoutParams2.bottomToBottom = layoutParams3.bottomToBottom;
        layoutParams2.baselineToBaseline = layoutParams3.baselineToBaseline;
        layoutParams2.baselineToTop = layoutParams3.baselineToTop;
        layoutParams2.baselineToBottom = layoutParams3.baselineToBottom;
        layoutParams2.circleConstraint = layoutParams3.circleConstraint;
        layoutParams2.circleRadius = layoutParams3.circleRadius;
        layoutParams2.circleAngle = layoutParams3.circleAngle;
        layoutParams2.startToEnd = layoutParams3.startToEnd;
        layoutParams2.startToStart = layoutParams3.startToStart;
        layoutParams2.endToStart = layoutParams3.endToStart;
        layoutParams2.endToEnd = layoutParams3.endToEnd;
        layoutParams2.goneLeftMargin = layoutParams3.goneLeftMargin;
        layoutParams2.goneTopMargin = layoutParams3.goneTopMargin;
        layoutParams2.goneRightMargin = layoutParams3.goneRightMargin;
        layoutParams2.goneBottomMargin = layoutParams3.goneBottomMargin;
        layoutParams2.goneStartMargin = layoutParams3.goneStartMargin;
        layoutParams2.goneEndMargin = layoutParams3.goneEndMargin;
        layoutParams2.goneBaselineMargin = layoutParams3.goneBaselineMargin;
        layoutParams2.baselineMargin = layoutParams3.baselineMargin;
        layoutParams2.horizontalBias = layoutParams3.horizontalBias;
        layoutParams2.verticalBias = layoutParams3.verticalBias;
        layoutParams2.dimensionRatio = layoutParams3.dimensionRatio;
        layoutParams2.horizontalWeight = layoutParams3.horizontalWeight;
        layoutParams2.verticalWeight = layoutParams3.verticalWeight;
        layoutParams2.horizontalChainStyle = layoutParams3.horizontalChainStyle;
        layoutParams2.verticalChainStyle = layoutParams3.verticalChainStyle;
        layoutParams2.constrainedWidth = layoutParams3.constrainedWidth;
        layoutParams2.constrainedHeight = layoutParams3.constrainedHeight;
        layoutParams2.matchConstraintDefaultWidth = layoutParams3.matchConstraintDefaultWidth;
        layoutParams2.matchConstraintDefaultHeight = layoutParams3.matchConstraintDefaultHeight;
        layoutParams2.matchConstraintMinWidth = layoutParams3.matchConstraintMinWidth;
        layoutParams2.matchConstraintMaxWidth = layoutParams3.matchConstraintMaxWidth;
        layoutParams2.matchConstraintMinHeight = layoutParams3.matchConstraintMinHeight;
        layoutParams2.matchConstraintMaxHeight = layoutParams3.matchConstraintMaxHeight;
        layoutParams2.matchConstraintPercentWidth = layoutParams3.matchConstraintPercentWidth;
        layoutParams2.matchConstraintPercentHeight = layoutParams3.matchConstraintPercentHeight;
        layoutParams2.editorAbsoluteX = layoutParams3.editorAbsoluteX;
        layoutParams2.editorAbsoluteY = layoutParams3.editorAbsoluteY;
        layoutParams2.orientation = layoutParams3.orientation;
        layoutParams2.mHorizontalDimensionFixed = layoutParams3.mHorizontalDimensionFixed;
        layoutParams2.mVerticalDimensionFixed = layoutParams3.mVerticalDimensionFixed;
        layoutParams2.mNeedsBaseline = layoutParams3.mNeedsBaseline;
        layoutParams2.mIsGuideline = layoutParams3.mIsGuideline;
        layoutParams2.mResolvedLeftToLeft = layoutParams3.mResolvedLeftToLeft;
        layoutParams2.mResolvedLeftToRight = layoutParams3.mResolvedLeftToRight;
        layoutParams2.mResolvedRightToLeft = layoutParams3.mResolvedRightToLeft;
        layoutParams2.mResolvedRightToRight = layoutParams3.mResolvedRightToRight;
        layoutParams2.mResolveGoneLeftMargin = layoutParams3.mResolveGoneLeftMargin;
        layoutParams2.mResolveGoneRightMargin = layoutParams3.mResolveGoneRightMargin;
        layoutParams2.mResolvedHorizontalBias = layoutParams3.mResolvedHorizontalBias;
        layoutParams2.constraintTag = layoutParams3.constraintTag;
        layoutParams2.wrapBehaviorInParent = layoutParams3.wrapBehaviorInParent;
        layoutParams2.mWidget = layoutParams3.mWidget;
        return layoutParams2;
    }
}
