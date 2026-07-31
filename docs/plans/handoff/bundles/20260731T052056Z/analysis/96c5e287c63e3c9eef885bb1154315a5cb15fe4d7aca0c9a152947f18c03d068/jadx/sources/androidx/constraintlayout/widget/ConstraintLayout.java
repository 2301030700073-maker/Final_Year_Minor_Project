package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.GuidelineReference;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.internal.http2.Huffman;
import okio.FileMetadata;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public static SharedValues sSharedValues;
    public final SparseArray mChildrenByIds;
    public final ArrayList mConstraintHelpers;
    public CardView.AnonymousClass1 mConstraintLayoutSpec;
    public ConstraintSet mConstraintSet;
    public int mConstraintSetId;
    public HashMap mDesignIds;
    public boolean mDirtyHierarchy;
    public final ConstraintWidgetContainer mLayoutWidget;
    public int mMaxHeight;
    public int mMaxWidth;
    public final Measurer mMeasurer;
    public int mMinHeight;
    public int mMinWidth;
    public int mOptimizationLevel;
    public final SparseArray mTempMapIdToWidget;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = RecyclerView.DECELERATION_RATE;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            this.mNeedsBaseline = false;
            this.mIsGuideline = false;
            this.mIsHelper = false;
            this.mResolvedLeftToLeft = -1;
            this.mResolvedLeftToRight = -1;
            this.mResolvedRightToLeft = -1;
            this.mResolvedRightToRight = -1;
            this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
            this.mResolveGoneRightMargin = Integer.MIN_VALUE;
            this.mResolvedHorizontalBias = 0.5f;
            this.mWidget = new ConstraintWidget();
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
        public final void resolveLayoutDirection(int r14) {
            /*
                Method dump skipped, instructions count: 251
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
            ConstraintWidget constraintWidget = this.mWidget;
            if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                constraintWidget = new androidx.constraintlayout.core.widgets.Guideline();
                this.mWidget = constraintWidget;
            }
            ((androidx.constraintlayout.core.widgets.Guideline) constraintWidget).setOrientation(this.orientation);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            int baseline;
            int max;
            int max2;
            boolean z;
            int i;
            int childMeasureSpec;
            if (constraintWidget == null) {
                return;
            }
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
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = basicMeasure$Measure.horizontalBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = basicMeasure$Measure.verticalBehavior;
            int i2 = basicMeasure$Measure.horizontalDimension;
            int i3 = basicMeasure$Measure.verticalDimension;
            int i4 = this.mPaddingTop + this.mPaddingBottom;
            int i5 = this.mPaddingWidth;
            View view = constraintWidget.mCompanionWidget;
            int[] iArr = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour;
            int i6 = iArr[dimensionBehaviour.ordinal()];
            if (i6 != 1) {
                if (i6 == 2) {
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i5, -2);
                } else if (i6 == 3) {
                    int i7 = this.mLayoutWidthSpec;
                    int i8 = constraintAnchor2 != null ? constraintAnchor2.mMargin : 0;
                    if (constraintAnchor != null) {
                        i8 += constraintAnchor.mMargin;
                    }
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, i5 + i8, -1);
                } else if (i6 != 4) {
                    makeMeasureSpec = 0;
                } else {
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i5, -2);
                    boolean z2 = constraintWidget.mMatchConstraintDefaultWidth == 1;
                    int i9 = basicMeasure$Measure.measureStrategy;
                    if (i9 == 1 || i9 == 2) {
                        boolean z3 = view.getMeasuredHeight() == constraintWidget.getHeight();
                        if (basicMeasure$Measure.measureStrategy == 2 || !z2 || ((z2 && z3) || constraintWidget.isResolvedHorizontally())) {
                            childMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.getWidth(), 1073741824);
                        }
                    }
                }
                makeMeasureSpec = childMeasureSpec;
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            }
            int i10 = iArr[dimensionBehaviour2.ordinal()];
            if (i10 == 1) {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else if (i10 == 2) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i4, -2);
            } else if (i10 == 3) {
                int i11 = this.mLayoutHeightSpec;
                int i12 = constraintAnchor2 != null ? constraintWidget.mTop.mMargin : 0;
                if (constraintAnchor != null) {
                    i12 += constraintWidget.mBottom.mMargin;
                }
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, i4 + i12, -1);
            } else if (i10 != 4) {
                makeMeasureSpec2 = 0;
            } else {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i4, -2);
                boolean z4 = constraintWidget.mMatchConstraintDefaultHeight == 1;
                int i13 = basicMeasure$Measure.measureStrategy;
                if (i13 == 1 || i13 == 2) {
                    boolean z5 = view.getMeasuredWidth() == constraintWidget.getWidth();
                    if (basicMeasure$Measure.measureStrategy == 2 || !z4 || ((z4 && z5) || constraintWidget.isResolvedVertically())) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), 1073741824);
                    }
                }
            }
            ConstraintWidgetContainer constraintWidgetContainer = constraintWidget.mParent;
            ConstraintLayout constraintLayout = ConstraintLayout.this;
            if (constraintWidgetContainer != null && Chain.enabled(constraintLayout.mOptimizationLevel, 256) && view.getMeasuredWidth() == constraintWidget.getWidth() && view.getMeasuredWidth() < constraintWidgetContainer.getWidth() && view.getMeasuredHeight() == constraintWidget.getHeight() && view.getMeasuredHeight() < constraintWidgetContainer.getHeight() && view.getBaseline() == constraintWidget.mBaselineDistance && !constraintWidget.isMeasureRequested() && isSimilarSpec(constraintWidget.mLastHorizontalMeasureSpec, makeMeasureSpec, constraintWidget.getWidth()) && isSimilarSpec(constraintWidget.mLastVerticalMeasureSpec, makeMeasureSpec2, constraintWidget.getHeight())) {
                basicMeasure$Measure.measuredWidth = constraintWidget.getWidth();
                basicMeasure$Measure.measuredHeight = constraintWidget.getHeight();
                basicMeasure$Measure.measuredBaseline = constraintWidget.mBaselineDistance;
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z6 = dimensionBehaviour == dimensionBehaviour3;
            boolean z7 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z8 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z9 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z10 = z6 && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
            boolean z11 = z7 && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
            if (view == null) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i14 = basicMeasure$Measure.measureStrategy;
            if (i14 != 1 && i14 != 2 && z6 && constraintWidget.mMatchConstraintDefaultWidth == 0 && z7 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                i = -1;
                z = false;
                baseline = 0;
                max = 0;
                max2 = 0;
            } else {
                if ((view instanceof VirtualLayout) && (constraintWidget instanceof Flow)) {
                    ((VirtualLayout) view).onMeasure((Flow) constraintWidget, makeMeasureSpec, makeMeasureSpec2);
                } else {
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                }
                constraintWidget.mLastHorizontalMeasureSpec = makeMeasureSpec;
                constraintWidget.mLastVerticalMeasureSpec = makeMeasureSpec2;
                constraintWidget.mMeasureRequested = false;
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
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
                    max = view.getMeasuredWidth();
                    max2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    i = -1;
                }
            }
            boolean z12 = baseline != i ? true : z;
            basicMeasure$Measure.measuredNeedsSolverPass = (max == basicMeasure$Measure.horizontalDimension && max2 == basicMeasure$Measure.verticalDimension) ? z : true;
            if (layoutParams.mNeedsBaseline) {
                z12 = true;
            }
            if (z12 && baseline != -1 && constraintWidget.mBaselineDistance != baseline) {
                basicMeasure$Measure.measuredNeedsSolverPass = true;
            }
            basicMeasure$Measure.measuredWidth = max;
            basicMeasure$Measure.measuredHeight = max2;
            basicMeasure$Measure.measuredHasBaseline = z12;
            basicMeasure$Measure.measuredBaseline = baseline;
        }
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
        this.mDesignIds = new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(attributeSet, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    public static SharedValues getSharedValues() {
        SharedValues sharedValues = sSharedValues;
        if (sharedValues != null) {
            return sharedValues;
        }
        SharedValues sharedValues2 = new SharedValues();
        new SparseIntArray();
        new HashMap();
        sSharedValues = sharedValues2;
        return sharedValues2;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((ConstraintHelper) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.mDirtyHierarchy = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
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
        layoutParams.circleAngle = RecyclerView.DECELERATION_RATE;
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
                    if (f < RecyclerView.DECELERATION_RATE) {
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
                case 7:
                    layoutParams.guidePercent = obtainStyledAttributes.getFloat(index, layoutParams.guidePercent);
                    break;
                case 8:
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
                case 12:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, layoutParams.topToTop);
                    layoutParams.topToTop = resourceId6;
                    if (resourceId6 == -1) {
                        layoutParams.topToTop = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case IMAGE_VALUE:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, layoutParams.topToBottom);
                    layoutParams.topToBottom = resourceId7;
                    if (resourceId7 == -1) {
                        layoutParams.topToBottom = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, layoutParams.bottomToTop);
                    layoutParams.bottomToTop = resourceId8;
                    if (resourceId8 == -1) {
                        layoutParams.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, layoutParams.bottomToBottom);
                    layoutParams.bottomToBottom = resourceId9;
                    if (resourceId9 == -1) {
                        layoutParams.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case LAZY_VERTICAL_GRID_VALUE:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, layoutParams.baselineToBaseline);
                    layoutParams.baselineToBaseline = resourceId10;
                    if (resourceId10 == -1) {
                        layoutParams.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case VERTICAL_GRID_ITEM_VALUE:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, layoutParams.startToEnd);
                    layoutParams.startToEnd = resourceId11;
                    if (resourceId11 == -1) {
                        layoutParams.startToEnd = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case RADIO_GROUP_VALUE:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, layoutParams.startToStart);
                    layoutParams.startToStart = resourceId12;
                    if (resourceId12 == -1) {
                        layoutParams.startToStart = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case RADIO_BUTTON_VALUE:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, layoutParams.endToStart);
                    layoutParams.endToStart = resourceId13;
                    if (resourceId13 == -1) {
                        layoutParams.endToStart = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case RADIO_ROW_VALUE:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, layoutParams.endToEnd);
                    layoutParams.endToEnd = resourceId14;
                    if (resourceId14 == -1) {
                        layoutParams.endToEnd = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case RADIO_COLUMN_VALUE:
                    layoutParams.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, layoutParams.goneLeftMargin);
                    break;
                case SIZE_BOX_VALUE:
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
                    layoutParams.matchConstraintPercentWidth = Math.max(RecyclerView.DECELERATION_RATE, obtainStyledAttributes.getFloat(index, layoutParams.matchConstraintPercentWidth));
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
                    layoutParams.matchConstraintPercentHeight = Math.max(RecyclerView.DECELERATION_RATE, obtainStyledAttributes.getFloat(index, layoutParams.matchConstraintPercentHeight));
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
        String str = constraintWidgetContainer.stringId;
        if (str == null) {
            int id2 = getId();
            if (id2 != -1) {
                str = getContext().getResources().getResourceEntryName(id2);
                constraintWidgetContainer.stringId = str;
            } else {
                str = "parent";
                constraintWidgetContainer.stringId = "parent";
            }
        }
        if (constraintWidgetContainer.mDebugName == null) {
            constraintWidgetContainer.mDebugName = str;
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

    public final void init(AttributeSet attributeSet, int i) {
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        constraintWidgetContainer.mCompanionWidget = this;
        Measurer measurer = this.mMeasurer;
        constraintWidgetContainer.mMeasurer = measurer;
        constraintWidgetContainer.mDependencyGraph.lastModifiedAtMillis = measurer;
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.mWidget;
            if (childAt.getVisibility() != 8 || layoutParams.mIsGuideline || layoutParams.mIsHelper || isInEditMode) {
                int x = constraintWidget.getX();
                int y = constraintWidget.getY();
                childAt.layout(x, y, constraintWidget.getWidth() + x, constraintWidget.getHeight() + y);
            }
        }
        ArrayList arrayList = this.mConstraintHelpers;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((ConstraintHelper) arrayList.get(i6)).getClass();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        LayoutParams layoutParams;
        ConstraintWidget constraintWidget6;
        int i4;
        int i5;
        int i6;
        int i7;
        float parseFloat;
        int i8;
        char c;
        SparseArray sparseArray;
        ArrayList arrayList;
        ArrayList arrayList2;
        SparseArray sparseArray2;
        String str;
        int findId;
        int i9;
        String resourceName;
        int id;
        ConstraintWidget constraintWidget7;
        ConstraintLayout constraintLayout = this;
        boolean z3 = constraintLayout.mDirtyHierarchy;
        constraintLayout.mDirtyHierarchy = z3;
        int i10 = 1;
        int i11 = 0;
        if (!z3) {
            int childCount = constraintLayout.getChildCount();
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    break;
                }
                if (constraintLayout.getChildAt(i12).isLayoutRequested()) {
                    constraintLayout.mDirtyHierarchy = true;
                    break;
                }
                i12++;
            }
        }
        boolean z4 = (constraintLayout.getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == constraintLayout.getLayoutDirection();
        ConstraintWidgetContainer constraintWidgetContainer = constraintLayout.mLayoutWidget;
        constraintWidgetContainer.mIsRtl = z4;
        if (constraintLayout.mDirtyHierarchy) {
            constraintLayout.mDirtyHierarchy = false;
            int childCount2 = constraintLayout.getChildCount();
            int i13 = 0;
            while (true) {
                if (i13 >= childCount2) {
                    z = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i13).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i13++;
                }
            }
            if (z) {
                boolean isInEditMode = constraintLayout.isInEditMode();
                int childCount3 = constraintLayout.getChildCount();
                for (int i14 = 0; i14 < childCount3; i14++) {
                    ConstraintWidget viewWidget = constraintLayout.getViewWidget(constraintLayout.getChildAt(i14));
                    if (viewWidget != null) {
                        viewWidget.reset();
                    }
                }
                SparseArray sparseArray3 = constraintLayout.mChildrenByIds;
                if (isInEditMode) {
                    int i15 = 0;
                    while (i15 < childCount3) {
                        View childAt = constraintLayout.getChildAt(i15);
                        try {
                            resourceName = constraintLayout.getResources().getResourceName(childAt.getId());
                            Integer valueOf = Integer.valueOf(childAt.getId());
                            if ((resourceName != null ? i10 : 0) != 0) {
                                i9 = i10;
                                try {
                                    if (constraintLayout.mDesignIds == null) {
                                        constraintLayout.mDesignIds = new HashMap();
                                    }
                                    int indexOf = resourceName.indexOf("/");
                                    constraintLayout.mDesignIds.put(indexOf != -1 ? resourceName.substring(indexOf + 1) : resourceName, valueOf);
                                } catch (Resources.NotFoundException unused) {
                                }
                            } else {
                                i9 = i10;
                            }
                            int indexOf2 = resourceName.indexOf(47);
                            if (indexOf2 != -1) {
                                resourceName = resourceName.substring(indexOf2 + 1);
                            }
                            id = childAt.getId();
                        } catch (Resources.NotFoundException unused2) {
                            i9 = i10;
                        }
                        if (id != 0) {
                            View view = (View) sparseArray3.get(id);
                            if (view == null && (view = constraintLayout.findViewById(id)) != null && view != constraintLayout && view.getParent() == constraintLayout) {
                                constraintLayout.onViewAdded(view);
                            }
                            if (view != constraintLayout) {
                                constraintWidget7 = view == null ? null : ((LayoutParams) view.getLayoutParams()).mWidget;
                                constraintWidget7.mDebugName = resourceName;
                                i15++;
                                i10 = i9;
                            }
                        }
                        constraintWidget7 = constraintWidgetContainer;
                        constraintWidget7.mDebugName = resourceName;
                        i15++;
                        i10 = i9;
                    }
                }
                int i16 = i10;
                if (constraintLayout.mConstraintSetId != -1) {
                    for (int i17 = 0; i17 < childCount3; i17++) {
                        constraintLayout.getChildAt(i17).getId();
                    }
                }
                ConstraintSet constraintSet = constraintLayout.mConstraintSet;
                if (constraintSet != null) {
                    constraintSet.applyToInternal(constraintLayout);
                }
                constraintWidgetContainer.mChildren.clear();
                ArrayList arrayList3 = constraintLayout.mConstraintHelpers;
                int size = arrayList3.size();
                if (size > 0) {
                    int i18 = 0;
                    while (i18 < size) {
                        ConstraintHelper constraintHelper = (ConstraintHelper) arrayList3.get(i18);
                        HashMap hashMap = constraintHelper.mMap;
                        if (constraintHelper.isInEditMode()) {
                            constraintHelper.setIds(constraintHelper.mReferenceIds);
                        }
                        HelperWidget helperWidget = constraintHelper.mHelperWidget;
                        if (helperWidget == null) {
                            sparseArray = sparseArray3;
                            arrayList = arrayList3;
                        } else {
                            helperWidget.mWidgetsCount = i11;
                            Arrays.fill(helperWidget.mWidgets, (Object) null);
                            int i19 = i11;
                            while (i19 < constraintHelper.mCount) {
                                int i20 = constraintHelper.mIds[i19];
                                View view2 = (View) sparseArray3.get(i20);
                                if (view2 != null || (findId = constraintHelper.findId(constraintLayout, (str = (String) hashMap.get(Integer.valueOf(i20))))) == 0) {
                                    arrayList2 = arrayList3;
                                } else {
                                    arrayList2 = arrayList3;
                                    constraintHelper.mIds[i19] = findId;
                                    hashMap.put(Integer.valueOf(findId), str);
                                    view2 = (View) sparseArray3.get(findId);
                                }
                                View view3 = view2;
                                if (view3 != null) {
                                    HelperWidget helperWidget2 = constraintHelper.mHelperWidget;
                                    ConstraintWidget viewWidget2 = constraintLayout.getViewWidget(view3);
                                    helperWidget2.getClass();
                                    if (viewWidget2 != helperWidget2 && viewWidget2 != null) {
                                        int i21 = helperWidget2.mWidgetsCount + 1;
                                        sparseArray2 = sparseArray3;
                                        ConstraintWidget[] constraintWidgetArr = helperWidget2.mWidgets;
                                        if (i21 > constraintWidgetArr.length) {
                                            constraintWidgetArr = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
                                            helperWidget2.mWidgets = constraintWidgetArr;
                                        }
                                        int i22 = helperWidget2.mWidgetsCount;
                                        constraintWidgetArr[i22] = viewWidget2;
                                        helperWidget2.mWidgetsCount = i22 + 1;
                                        i19++;
                                        sparseArray3 = sparseArray2;
                                        arrayList3 = arrayList2;
                                    }
                                }
                                sparseArray2 = sparseArray3;
                                i19++;
                                sparseArray3 = sparseArray2;
                                arrayList3 = arrayList2;
                            }
                            sparseArray = sparseArray3;
                            arrayList = arrayList3;
                            constraintHelper.mHelperWidget.updateConstraints();
                        }
                        i18++;
                        sparseArray3 = sparseArray;
                        arrayList3 = arrayList;
                        i11 = 0;
                    }
                }
                int i23 = 2;
                for (int i24 = 0; i24 < childCount3; i24++) {
                    constraintLayout.getChildAt(i24);
                }
                SparseArray sparseArray4 = constraintLayout.mTempMapIdToWidget;
                sparseArray4.clear();
                sparseArray4.put(0, constraintWidgetContainer);
                sparseArray4.put(constraintLayout.getId(), constraintWidgetContainer);
                for (int i25 = 0; i25 < childCount3; i25++) {
                    View childAt2 = constraintLayout.getChildAt(i25);
                    sparseArray4.put(childAt2.getId(), constraintLayout.getViewWidget(childAt2));
                }
                int i26 = 0;
                while (i26 < childCount3) {
                    View childAt3 = constraintLayout.getChildAt(i26);
                    ConstraintWidget viewWidget3 = constraintLayout.getViewWidget(childAt3);
                    if (viewWidget3 != null) {
                        LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                        constraintWidgetContainer.mChildren.add(viewWidget3);
                        ConstraintWidgetContainer constraintWidgetContainer2 = viewWidget3.mParent;
                        if (constraintWidgetContainer2 != null) {
                            constraintWidgetContainer2.mChildren.remove(viewWidget3);
                            viewWidget3.reset();
                        }
                        viewWidget3.mParent = constraintWidgetContainer;
                        layoutParams2.validate();
                        viewWidget3.mVisibility = childAt3.getVisibility();
                        viewWidget3.mCompanionWidget = childAt3;
                        if (childAt3 instanceof ConstraintHelper) {
                            ((ConstraintHelper) childAt3).resolveRtl(viewWidget3, constraintWidgetContainer.mIsRtl);
                        }
                        if (layoutParams2.mIsGuideline) {
                            androidx.constraintlayout.core.widgets.Guideline guideline = (androidx.constraintlayout.core.widgets.Guideline) viewWidget3;
                            int i27 = layoutParams2.mResolvedGuideBegin;
                            int i28 = layoutParams2.mResolvedGuideEnd;
                            float f = layoutParams2.mResolvedGuidePercent;
                            if (f == -1.0f) {
                                c = 65535;
                                if (i27 != -1) {
                                    if (i27 > -1) {
                                        guideline.mRelativePercent = -1.0f;
                                        guideline.mRelativeBegin = i27;
                                        guideline.mRelativeEnd = -1;
                                    }
                                } else if (i28 != -1 && i28 > -1) {
                                    guideline.mRelativePercent = -1.0f;
                                    guideline.mRelativeBegin = -1;
                                    guideline.mRelativeEnd = i28;
                                }
                                i3 = i26;
                                z2 = z;
                                i5 = i23;
                            } else if (f > -1.0f) {
                                guideline.mRelativePercent = f;
                                c = 65535;
                                guideline.mRelativeBegin = -1;
                                guideline.mRelativeEnd = -1;
                                i3 = i26;
                                z2 = z;
                                i5 = i23;
                            }
                        } else {
                            int i29 = layoutParams2.mResolvedLeftToLeft;
                            int i30 = layoutParams2.mResolvedLeftToRight;
                            int i31 = layoutParams2.mResolvedRightToLeft;
                            int i32 = layoutParams2.mResolvedRightToRight;
                            int i33 = layoutParams2.mResolveGoneLeftMargin;
                            int i34 = layoutParams2.mResolveGoneRightMargin;
                            i3 = i26;
                            float f2 = layoutParams2.mResolvedHorizontalBias;
                            int i35 = layoutParams2.circleConstraint;
                            z2 = z;
                            if (i35 != -1) {
                                ConstraintWidget constraintWidget8 = (ConstraintWidget) sparseArray4.get(i35);
                                if (constraintWidget8 != null) {
                                    float f3 = layoutParams2.circleAngle;
                                    int i36 = layoutParams2.circleRadius;
                                    ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
                                    viewWidget3.immediateConnect(type, constraintWidget8, type, i36, 0);
                                    viewWidget3.mCircleConstraintAngle = f3;
                                }
                                constraintLayout = this;
                                constraintWidget6 = viewWidget3;
                                layoutParams = layoutParams2;
                            } else {
                                if (i29 != -1) {
                                    ConstraintWidget constraintWidget9 = (ConstraintWidget) sparseArray4.get(i29);
                                    if (constraintWidget9 != null) {
                                        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.LEFT;
                                        constraintWidget = viewWidget3;
                                        constraintWidget.immediateConnect(type2, constraintWidget9, type2, ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin, i33);
                                    } else {
                                        constraintWidget = viewWidget3;
                                    }
                                } else {
                                    constraintWidget = viewWidget3;
                                    if (i30 != -1 && (constraintWidget2 = (ConstraintWidget) sparseArray4.get(i30)) != null) {
                                        constraintWidget.immediateConnect(ConstraintAnchor.Type.LEFT, constraintWidget2, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin, i33);
                                    }
                                }
                                if (i31 != -1) {
                                    ConstraintWidget constraintWidget10 = (ConstraintWidget) sparseArray4.get(i31);
                                    if (constraintWidget10 != null) {
                                        constraintWidget.immediateConnect(ConstraintAnchor.Type.RIGHT, constraintWidget10, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, i34);
                                    }
                                } else if (i32 != -1 && (constraintWidget3 = (ConstraintWidget) sparseArray4.get(i32)) != null) {
                                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
                                    constraintWidget.immediateConnect(type3, constraintWidget3, type3, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, i34);
                                }
                                int i37 = layoutParams2.topToTop;
                                if (i37 != -1) {
                                    ConstraintWidget constraintWidget11 = (ConstraintWidget) sparseArray4.get(i37);
                                    if (constraintWidget11 != null) {
                                        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.TOP;
                                        constraintWidget.immediateConnect(type4, constraintWidget11, type4, ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin, layoutParams2.goneTopMargin);
                                    }
                                } else {
                                    int i38 = layoutParams2.topToBottom;
                                    if (i38 != -1 && (constraintWidget4 = (ConstraintWidget) sparseArray4.get(i38)) != null) {
                                        constraintWidget.immediateConnect(ConstraintAnchor.Type.TOP, constraintWidget4, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin, layoutParams2.goneTopMargin);
                                    }
                                }
                                int i39 = layoutParams2.bottomToTop;
                                if (i39 != -1) {
                                    ConstraintWidget constraintWidget12 = (ConstraintWidget) sparseArray4.get(i39);
                                    if (constraintWidget12 != null) {
                                        constraintWidget.immediateConnect(ConstraintAnchor.Type.BOTTOM, constraintWidget12, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin, layoutParams2.goneBottomMargin);
                                    }
                                } else {
                                    int i40 = layoutParams2.bottomToBottom;
                                    if (i40 != -1 && (constraintWidget5 = (ConstraintWidget) sparseArray4.get(i40)) != null) {
                                        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.BOTTOM;
                                        constraintWidget.immediateConnect(type5, constraintWidget5, type5, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin, layoutParams2.goneBottomMargin);
                                    }
                                }
                                layoutParams = layoutParams2;
                                int i41 = layoutParams.baselineToBaseline;
                                if (i41 != -1) {
                                    constraintLayout = this;
                                    constraintWidget6 = constraintWidget;
                                    constraintLayout.setWidgetBaseline(constraintWidget6, layoutParams, sparseArray4, i41, ConstraintAnchor.Type.BASELINE);
                                } else {
                                    int i42 = layoutParams.baselineToTop;
                                    if (i42 != -1) {
                                        constraintLayout = this;
                                        constraintWidget6 = constraintWidget;
                                        constraintLayout.setWidgetBaseline(constraintWidget6, layoutParams, sparseArray4, i42, ConstraintAnchor.Type.TOP);
                                    } else {
                                        int i43 = layoutParams.baselineToBottom;
                                        if (i43 != -1) {
                                            constraintLayout = this;
                                            constraintWidget6 = constraintWidget;
                                            constraintLayout.setWidgetBaseline(constraintWidget6, layoutParams, sparseArray4, i43, ConstraintAnchor.Type.BOTTOM);
                                        } else {
                                            constraintLayout = this;
                                            constraintWidget6 = constraintWidget;
                                        }
                                    }
                                }
                                if (f2 >= RecyclerView.DECELERATION_RATE) {
                                    constraintWidget6.mHorizontalBiasPercent = f2;
                                }
                                float f4 = layoutParams.verticalBias;
                                if (f4 >= RecyclerView.DECELERATION_RATE) {
                                    constraintWidget6.mVerticalBiasPercent = f4;
                                }
                            }
                            if (isInEditMode && ((i8 = layoutParams.editorAbsoluteX) != -1 || layoutParams.editorAbsoluteY != -1)) {
                                int i44 = layoutParams.editorAbsoluteY;
                                constraintWidget6.mX = i8;
                                constraintWidget6.mY = i44;
                            }
                            if (layoutParams.mHorizontalDimensionFixed) {
                                constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                                constraintWidget6.setWidth(((ViewGroup.MarginLayoutParams) layoutParams).width);
                                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
                                    constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                                if (layoutParams.constrainedWidth) {
                                    constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                                } else {
                                    constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                                }
                                constraintWidget6.getAnchor(ConstraintAnchor.Type.LEFT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                                constraintWidget6.getAnchor(ConstraintAnchor.Type.RIGHT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            } else {
                                constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                                constraintWidget6.setWidth(0);
                            }
                            if (layoutParams.mVerticalDimensionFixed) {
                                i4 = -1;
                                constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                                constraintWidget6.setHeight(((ViewGroup.MarginLayoutParams) layoutParams).height);
                                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
                                    constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                                }
                            } else {
                                i4 = -1;
                                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                                    if (layoutParams.constrainedHeight) {
                                        constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                                    } else {
                                        constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                                    }
                                    constraintWidget6.getAnchor(ConstraintAnchor.Type.TOP).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                                    constraintWidget6.getAnchor(ConstraintAnchor.Type.BOTTOM).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                                } else {
                                    constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                                    constraintWidget6.setHeight(0);
                                }
                            }
                            String str2 = layoutParams.dimensionRatio;
                            if (str2 == null || str2.length() == 0) {
                                constraintWidget6.mDimensionRatio = RecyclerView.DECELERATION_RATE;
                            } else {
                                int length = str2.length();
                                int indexOf3 = str2.indexOf(44);
                                if (indexOf3 <= 0 || indexOf3 >= length - 1) {
                                    i6 = i4;
                                    i7 = 0;
                                } else {
                                    String substring = str2.substring(0, indexOf3);
                                    i6 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? i16 : i4;
                                    i7 = indexOf3 + 1;
                                }
                                int indexOf4 = str2.indexOf(58);
                                if (indexOf4 < 0 || indexOf4 >= length - 1) {
                                    String substring2 = str2.substring(i7);
                                    if (substring2.length() > 0) {
                                        parseFloat = Float.parseFloat(substring2);
                                    }
                                    parseFloat = 0.0f;
                                } else {
                                    String substring3 = str2.substring(i7, indexOf4);
                                    String substring4 = str2.substring(indexOf4 + 1);
                                    if (substring3.length() > 0 && substring4.length() > 0) {
                                        try {
                                            float parseFloat2 = Float.parseFloat(substring3);
                                            float parseFloat3 = Float.parseFloat(substring4);
                                            if (parseFloat2 > RecyclerView.DECELERATION_RATE && parseFloat3 > RecyclerView.DECELERATION_RATE) {
                                                parseFloat = i6 == i16 ? Math.abs(parseFloat3 / parseFloat2) : Math.abs(parseFloat2 / parseFloat3);
                                            }
                                        } catch (NumberFormatException unused3) {
                                        }
                                    }
                                    parseFloat = 0.0f;
                                }
                                if (parseFloat > RecyclerView.DECELERATION_RATE) {
                                    constraintWidget6.mDimensionRatio = parseFloat;
                                    constraintWidget6.mDimensionRatioSide = i6;
                                }
                            }
                            float f5 = layoutParams.horizontalWeight;
                            float[] fArr = constraintWidget6.mWeight;
                            fArr[0] = f5;
                            i16 = 1;
                            fArr[1] = layoutParams.verticalWeight;
                            constraintWidget6.mHorizontalChainStyle = layoutParams.horizontalChainStyle;
                            constraintWidget6.mVerticalChainStyle = layoutParams.verticalChainStyle;
                            int i45 = layoutParams.wrapBehaviorInParent;
                            if (i45 >= 0 && i45 <= 3) {
                                constraintWidget6.mWrapBehaviorInParent = i45;
                            }
                            int i46 = layoutParams.matchConstraintDefaultWidth;
                            int i47 = layoutParams.matchConstraintMinWidth;
                            int i48 = layoutParams.matchConstraintMaxWidth;
                            float f6 = layoutParams.matchConstraintPercentWidth;
                            constraintWidget6.mMatchConstraintDefaultWidth = i46;
                            constraintWidget6.mMatchConstraintMinWidth = i47;
                            if (i48 == Integer.MAX_VALUE) {
                                i48 = 0;
                            }
                            constraintWidget6.mMatchConstraintMaxWidth = i48;
                            constraintWidget6.mMatchConstraintPercentWidth = f6;
                            if (f6 > RecyclerView.DECELERATION_RATE && f6 < 1.0f && i46 == 0) {
                                constraintWidget6.mMatchConstraintDefaultWidth = i23;
                            }
                            int i49 = layoutParams.matchConstraintDefaultHeight;
                            int i50 = layoutParams.matchConstraintMinHeight;
                            int i51 = layoutParams.matchConstraintMaxHeight;
                            float f7 = layoutParams.matchConstraintPercentHeight;
                            constraintWidget6.mMatchConstraintDefaultHeight = i49;
                            constraintWidget6.mMatchConstraintMinHeight = i50;
                            if (i51 == Integer.MAX_VALUE) {
                                i51 = 0;
                            }
                            constraintWidget6.mMatchConstraintMaxHeight = i51;
                            constraintWidget6.mMatchConstraintPercentHeight = f7;
                            if (f7 <= RecyclerView.DECELERATION_RATE || f7 >= 1.0f || i49 != 0) {
                                i5 = 2;
                            } else {
                                i5 = 2;
                                constraintWidget6.mMatchConstraintDefaultHeight = 2;
                            }
                        }
                        i26 = i3 + 1;
                        i23 = i5;
                        z = z2;
                    }
                    i3 = i26;
                    z2 = z;
                    i5 = i23;
                    i26 = i3 + 1;
                    i23 = i5;
                    z = z2;
                }
            }
            if (z) {
                constraintWidgetContainer.mBasicMeasureSolver.updateHierarchy(constraintWidgetContainer);
            }
        }
        constraintWidgetContainer.mSystem.getClass();
        constraintLayout.resolveSystem(constraintWidgetContainer, constraintLayout.mOptimizationLevel, i, i2);
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean z5 = constraintWidgetContainer.mWidthMeasuredTooSmall;
        boolean z6 = constraintWidgetContainer.mHeightMeasuredTooSmall;
        Measurer measurer = constraintLayout.mMeasurer;
        int i52 = measurer.mPaddingHeight;
        int resolveSizeAndState = View.resolveSizeAndState(width + measurer.mPaddingWidth, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(height + i52, i2, 0) & 16777215;
        int min = Math.min(constraintLayout.mMaxWidth, resolveSizeAndState & 16777215);
        int min2 = Math.min(constraintLayout.mMaxHeight, resolveSizeAndState2);
        if (z5) {
            min |= 16777216;
        }
        if (z6) {
            min2 |= 16777216;
        }
        constraintLayout.setMeasuredDimension(min, min2);
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
    public void onViewRemoved(View view) {
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
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(23, false);
        anonymousClass1.mCardBackground = new SparseArray();
        anonymousClass1.this$0 = new SparseArray();
        final XmlResourceParser xml = context.getResources().getXml(i);
        try {
            Huffman.Node node = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                anonymousClass1.parseConstraintSet(context, xml);
                                break;
                            } else {
                                break;
                            }
                        case 80204913:
                            if (name.equals("State")) {
                                Huffman.Node node2 = new Huffman.Node(context, xml);
                                ((SparseArray) anonymousClass1.mCardBackground).put(node2.symbol, node2);
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
                                                    new ConstraintSet().clone((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
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
        this.mConstraintLayoutSpec = anonymousClass1;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.mDirtyHierarchy = true;
        super.requestLayout();
    }

    public final void resolveSystem(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        int i4;
        int i5;
        int max;
        int max2;
        char c;
        int i6;
        boolean z;
        boolean z2;
        Measurer measurer;
        boolean z3;
        int i7;
        int i8;
        ArrayList arrayList;
        Measurer measurer2;
        boolean z4;
        boolean z5;
        Measurer measurer3;
        int i9;
        HorizontalWidgetRun horizontalWidgetRun;
        VerticalWidgetRun verticalWidgetRun;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z6;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max3 = Math.max(0, getPaddingTop());
        int max4 = Math.max(0, getPaddingBottom());
        int i14 = max3 + max4;
        int paddingWidth = getPaddingWidth();
        Measurer measurer4 = this.mMeasurer;
        measurer4.mPaddingTop = max3;
        measurer4.mPaddingBottom = max4;
        measurer4.mPaddingWidth = paddingWidth;
        measurer4.mPaddingHeight = i14;
        measurer4.mLayoutWidthSpec = i2;
        measurer4.mLayoutHeightSpec = i3;
        int max5 = Math.max(0, getPaddingStart());
        int max6 = Math.max(0, getPaddingEnd());
        if (max5 <= 0 && max6 <= 0) {
            max5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            max5 = max6;
        }
        int i15 = size - paddingWidth;
        int i16 = size2 - i14;
        int i17 = measurer4.mPaddingHeight;
        int i18 = measurer4.mPaddingWidth;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (mode == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                max = Math.max(0, this.mMinWidth);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviour;
                i5 = max;
                dimensionBehaviour2 = dimensionBehaviour4;
                i4 = Integer.MIN_VALUE;
            } else {
                dimensionBehaviour2 = dimensionBehaviour;
                i4 = Integer.MIN_VALUE;
                i5 = i15;
            }
        } else if (mode != 0) {
            i5 = mode != 1073741824 ? 0 : Math.min(this.mMaxWidth - i18, i15);
            i4 = Integer.MIN_VALUE;
            dimensionBehaviour2 = dimensionBehaviour3;
        } else {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                max = Math.max(0, this.mMinWidth);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour42 = dimensionBehaviour;
                i5 = max;
                dimensionBehaviour2 = dimensionBehaviour42;
                i4 = Integer.MIN_VALUE;
            } else {
                i5 = 0;
                i4 = Integer.MIN_VALUE;
                dimensionBehaviour2 = dimensionBehaviour;
            }
        }
        if (mode2 == i4) {
            dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            max2 = childCount == 0 ? Math.max(0, this.mMinHeight) : i16;
        } else if (mode2 != 0) {
            if (mode2 == 1073741824) {
                max2 = Math.min(this.mMaxHeight - i17, i16);
            }
            max2 = 0;
        } else {
            dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                max2 = Math.max(0, this.mMinHeight);
            }
            max2 = 0;
        }
        int width = constraintWidgetContainer.getWidth();
        FileMetadata fileMetadata = constraintWidgetContainer.mDependencyGraph;
        int[] iArr = constraintWidgetContainer.mMaxDimension;
        if (i5 == width && max2 == constraintWidgetContainer.getHeight()) {
            c = 1;
        } else {
            fileMetadata.isDirectory = true;
            c = 1;
        }
        constraintWidgetContainer.mX = 0;
        constraintWidgetContainer.mY = 0;
        iArr[0] = this.mMaxWidth - i18;
        iArr[c] = this.mMaxHeight - i17;
        constraintWidgetContainer.mMinWidth = 0;
        constraintWidgetContainer.mMinHeight = 0;
        constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        constraintWidgetContainer.setWidth(i5);
        constraintWidgetContainer.setVerticalDimensionBehaviour(dimensionBehaviour3);
        constraintWidgetContainer.setHeight(max2);
        int i19 = this.mMinWidth - i18;
        if (i19 < 0) {
            constraintWidgetContainer.mMinWidth = 0;
        } else {
            constraintWidgetContainer.mMinWidth = i19;
        }
        int i20 = this.mMinHeight - i17;
        if (i20 < 0) {
            constraintWidgetContainer.mMinHeight = 0;
        } else {
            constraintWidgetContainer.mMinHeight = i20;
        }
        constraintWidgetContainer.mPaddingLeft = max5;
        constraintWidgetContainer.mPaddingTop = max3;
        SVG svg = constraintWidgetContainer.mBasicMeasureSolver;
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) svg.idToElementMap;
        ArrayList arrayList2 = (ArrayList) svg.rootElement;
        Measurer measurer5 = constraintWidgetContainer.mMeasurer;
        int size3 = constraintWidgetContainer.mChildren.size();
        int width2 = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean enabled = Chain.enabled(i, 128);
        boolean z7 = enabled || Chain.enabled(i, 64);
        if (z7) {
            int i21 = 0;
            while (i21 < size3) {
                boolean z8 = z7;
                ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i21);
                int i22 = i21;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
                i6 = size3;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z9 = (dimensionBehaviour5 == dimensionBehaviour6) && (dimensionBehaviourArr[1] == dimensionBehaviour6) && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
                if ((constraintWidget.isInHorizontalChain() && z9) || ((constraintWidget.isInVerticalChain() && z9) || (constraintWidget instanceof Flow) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z = false;
                    break;
                } else {
                    i21 = i22 + 1;
                    z7 = z8;
                    size3 = i6;
                }
            }
        }
        i6 = size3;
        z = z7;
        boolean z10 = z & ((mode == 1073741824 && mode2 == 1073741824) || enabled);
        if (z10) {
            int min = Math.min(iArr[0], i15);
            int min2 = Math.min(iArr[1], i16);
            int i23 = 1073741824;
            if (mode == 1073741824) {
                if (constraintWidgetContainer.getWidth() != min) {
                    constraintWidgetContainer.setWidth(min);
                    fileMetadata.isRegularFile = true;
                }
                i23 = 1073741824;
            }
            if (mode2 == i23 && constraintWidgetContainer.getHeight() != min2) {
                constraintWidgetContainer.setHeight(min2);
                fileMetadata.isRegularFile = true;
            }
            if (mode == i23 && mode2 == i23) {
                ArrayList arrayList3 = (ArrayList) fileMetadata.createdAtMillis;
                ConstraintWidgetContainer constraintWidgetContainer3 = (ConstraintWidgetContainer) fileMetadata.symlinkTarget;
                if (fileMetadata.isRegularFile || fileMetadata.isDirectory) {
                    Iterator it = constraintWidgetContainer3.mChildren.iterator();
                    while (it.hasNext()) {
                        ConstraintWidget constraintWidget2 = (ConstraintWidget) it.next();
                        constraintWidget2.ensureWidgetRuns();
                        constraintWidget2.measured = false;
                        constraintWidget2.mHorizontalRun.reset();
                        constraintWidget2.mVerticalRun.reset();
                        z10 = z10;
                    }
                    z2 = z10;
                    constraintWidgetContainer3.ensureWidgetRuns();
                    i12 = 0;
                    constraintWidgetContainer3.measured = false;
                    constraintWidgetContainer3.mHorizontalRun.reset();
                    constraintWidgetContainer3.mVerticalRun.reset();
                    fileMetadata.isDirectory = false;
                } else {
                    z2 = z10;
                    i12 = 0;
                }
                fileMetadata.basicMeasureWidgets((ConstraintWidgetContainer) fileMetadata.size);
                constraintWidgetContainer3.mX = i12;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer3.mListDimensionBehaviors;
                constraintWidgetContainer3.mY = i12;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = constraintWidgetContainer3.getDimensionBehaviour(i12);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = constraintWidgetContainer3.getDimensionBehaviour(1);
                if (fileMetadata.isRegularFile) {
                    fileMetadata.buildGraph();
                }
                int x = constraintWidgetContainer3.getX();
                int y = constraintWidgetContainer3.getY();
                measurer = measurer5;
                constraintWidgetContainer3.mHorizontalRun.start.resolve(x);
                constraintWidgetContainer3.mVerticalRun.start.resolve(y);
                fileMetadata.measureWidgets();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour7 == dimensionBehaviour9 || dimensionBehaviour8 == dimensionBehaviour9) {
                    if (enabled) {
                        Iterator it2 = arrayList3.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (!((WidgetRun) it2.next()).supportsWrapComputation()) {
                                    enabled = false;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    if (enabled && dimensionBehaviour7 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidgetContainer3.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        i13 = x;
                        constraintWidgetContainer3.setWidth(fileMetadata.computeWrap(constraintWidgetContainer3, 0));
                        constraintWidgetContainer3.mHorizontalRun.mDimension.resolve(constraintWidgetContainer3.getWidth());
                    } else {
                        i13 = x;
                    }
                    if (enabled && dimensionBehaviour8 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidgetContainer3.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        constraintWidgetContainer3.setHeight(fileMetadata.computeWrap(constraintWidgetContainer3, 1));
                        constraintWidgetContainer3.mVerticalRun.mDimension.resolve(constraintWidgetContainer3.getHeight());
                    }
                } else {
                    i13 = x;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviourArr2[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    int width3 = constraintWidgetContainer3.getWidth() + i13;
                    constraintWidgetContainer3.mHorizontalRun.end.resolve(width3);
                    constraintWidgetContainer3.mHorizontalRun.mDimension.resolve(width3 - i13);
                    fileMetadata.measureWidgets();
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = dimensionBehaviourArr2[1];
                    if (dimensionBehaviour12 == dimensionBehaviour11 || dimensionBehaviour12 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                        int height2 = constraintWidgetContainer3.getHeight() + y;
                        constraintWidgetContainer3.mVerticalRun.end.resolve(height2);
                        constraintWidgetContainer3.mVerticalRun.mDimension.resolve(height2 - y);
                    }
                    fileMetadata.measureWidgets();
                    z6 = true;
                } else {
                    z6 = false;
                }
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    WidgetRun widgetRun = (WidgetRun) it3.next();
                    if (widgetRun.mWidget != constraintWidgetContainer3 || widgetRun.mResolved) {
                        widgetRun.applyToWidget();
                    }
                }
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    WidgetRun widgetRun2 = (WidgetRun) it4.next();
                    if (z6 || widgetRun2.mWidget != constraintWidgetContainer3) {
                        if (!widgetRun2.start.resolved || ((!widgetRun2.end.resolved && !(widgetRun2 instanceof GuidelineReference)) || (!widgetRun2.mDimension.resolved && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof GuidelineReference)))) {
                            z3 = false;
                            break;
                        }
                    }
                }
                z3 = true;
                constraintWidgetContainer3.setHorizontalDimensionBehaviour(dimensionBehaviour7);
                constraintWidgetContainer3.setVerticalDimensionBehaviour(dimensionBehaviour8);
                i7 = 2;
                i11 = 1073741824;
            } else {
                z2 = z10;
                measurer = measurer5;
                ConstraintWidgetContainer constraintWidgetContainer4 = (ConstraintWidgetContainer) fileMetadata.symlinkTarget;
                if (fileMetadata.isRegularFile) {
                    Iterator it5 = constraintWidgetContainer4.mChildren.iterator();
                    while (it5.hasNext()) {
                        ConstraintWidget constraintWidget3 = (ConstraintWidget) it5.next();
                        constraintWidget3.ensureWidgetRuns();
                        constraintWidget3.measured = false;
                        HorizontalWidgetRun horizontalWidgetRun2 = constraintWidget3.mHorizontalRun;
                        horizontalWidgetRun2.mDimension.resolved = false;
                        horizontalWidgetRun2.mResolved = false;
                        horizontalWidgetRun2.reset();
                        VerticalWidgetRun verticalWidgetRun2 = constraintWidget3.mVerticalRun;
                        verticalWidgetRun2.mDimension.resolved = false;
                        verticalWidgetRun2.mResolved = false;
                        verticalWidgetRun2.reset();
                    }
                    i10 = 0;
                    constraintWidgetContainer4.ensureWidgetRuns();
                    constraintWidgetContainer4.measured = false;
                    HorizontalWidgetRun horizontalWidgetRun3 = constraintWidgetContainer4.mHorizontalRun;
                    horizontalWidgetRun3.mDimension.resolved = false;
                    horizontalWidgetRun3.mResolved = false;
                    horizontalWidgetRun3.reset();
                    VerticalWidgetRun verticalWidgetRun3 = constraintWidgetContainer4.mVerticalRun;
                    verticalWidgetRun3.mDimension.resolved = false;
                    verticalWidgetRun3.mResolved = false;
                    verticalWidgetRun3.reset();
                    fileMetadata.buildGraph();
                } else {
                    i10 = 0;
                }
                fileMetadata.basicMeasureWidgets((ConstraintWidgetContainer) fileMetadata.size);
                constraintWidgetContainer4.mX = i10;
                constraintWidgetContainer4.mY = i10;
                constraintWidgetContainer4.mHorizontalRun.start.resolve(i10);
                constraintWidgetContainer4.mVerticalRun.start.resolve(i10);
                i11 = 1073741824;
                if (mode == 1073741824) {
                    z3 = constraintWidgetContainer.directMeasureWithOrientation(i10, enabled);
                    i7 = 1;
                } else {
                    z3 = true;
                    i7 = 0;
                }
                if (mode2 == 1073741824) {
                    z3 &= constraintWidgetContainer.directMeasureWithOrientation(1, enabled);
                    i7++;
                }
            }
            if (z3) {
                constraintWidgetContainer.updateFromRuns(mode == i11, mode2 == i11);
            }
        } else {
            z2 = z10;
            measurer = measurer5;
            z3 = false;
            i7 = 0;
        }
        if (z3 && i7 == 2) {
            return;
        }
        int i24 = constraintWidgetContainer.mOptimizationLevel;
        if (i6 > 0) {
            int size4 = constraintWidgetContainer.mChildren.size();
            boolean optimizeFor = constraintWidgetContainer.optimizeFor(64);
            Measurer measurer6 = constraintWidgetContainer.mMeasurer;
            int i25 = 0;
            while (i25 < size4) {
                ConstraintWidget constraintWidget4 = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i25);
                if ((constraintWidget4 instanceof androidx.constraintlayout.core.widgets.Guideline) || (constraintWidget4 instanceof androidx.constraintlayout.core.widgets.Barrier) || constraintWidget4.mInVirtualLayout || (optimizeFor && (horizontalWidgetRun = constraintWidget4.mHorizontalRun) != null && (verticalWidgetRun = constraintWidget4.mVerticalRun) != null && horizontalWidgetRun.mDimension.resolved && verticalWidgetRun.mDimension.resolved)) {
                    i9 = size4;
                } else {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = constraintWidget4.getDimensionBehaviour(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = constraintWidget4.getDimensionBehaviour(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    i9 = size4;
                    boolean z11 = dimensionBehaviour13 == dimensionBehaviour15 && constraintWidget4.mMatchConstraintDefaultWidth != 1 && dimensionBehaviour14 == dimensionBehaviour15 && constraintWidget4.mMatchConstraintDefaultHeight != 1;
                    if (!z11 && constraintWidgetContainer.optimizeFor(1) && !(constraintWidget4 instanceof Flow)) {
                        if (dimensionBehaviour13 == dimensionBehaviour15 && constraintWidget4.mMatchConstraintDefaultWidth == 0 && dimensionBehaviour14 != dimensionBehaviour15 && !constraintWidget4.isInHorizontalChain()) {
                            z11 = true;
                        }
                        if (dimensionBehaviour14 == dimensionBehaviour15 && constraintWidget4.mMatchConstraintDefaultHeight == 0 && dimensionBehaviour13 != dimensionBehaviour15 && !constraintWidget4.isInHorizontalChain()) {
                            z11 = true;
                        }
                        if ((dimensionBehaviour13 == dimensionBehaviour15 || dimensionBehaviour14 == dimensionBehaviour15) && constraintWidget4.mDimensionRatio > RecyclerView.DECELERATION_RATE) {
                            z11 = true;
                        }
                    }
                    if (!z11) {
                        svg.measure(0, constraintWidget4, measurer6);
                    }
                }
                i25++;
                size4 = i9;
            }
            ConstraintLayout constraintLayout = measurer6.mLayout;
            int childCount2 = constraintLayout.getChildCount();
            ArrayList arrayList4 = constraintLayout.mConstraintHelpers;
            for (int i26 = 0; i26 < childCount2; i26++) {
                constraintLayout.getChildAt(i26);
            }
            int size5 = arrayList4.size();
            if (size5 > 0) {
                for (int i27 = 0; i27 < size5; i27++) {
                    ((ConstraintHelper) arrayList4.get(i27)).getClass();
                }
            }
        }
        svg.updateHierarchy(constraintWidgetContainer);
        int size6 = arrayList2.size();
        if (i6 > 0) {
            svg.solveLinearSystem(constraintWidgetContainer, 0, width2, height);
        }
        if (size6 > 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = constraintWidgetContainer.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dimensionBehaviourArr3[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z12 = dimensionBehaviour16 == dimensionBehaviour17;
            boolean z13 = dimensionBehaviourArr3[1] == dimensionBehaviour17;
            int max7 = Math.max(constraintWidgetContainer.getWidth(), constraintWidgetContainer2.mMinWidth);
            int max8 = Math.max(constraintWidgetContainer.getHeight(), constraintWidgetContainer2.mMinHeight);
            int i28 = 0;
            boolean z14 = false;
            while (i28 < size6) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) arrayList2.get(i28);
                if (constraintWidget5 instanceof Flow) {
                    int width4 = constraintWidget5.getWidth();
                    int height3 = constraintWidget5.getHeight();
                    z4 = z13;
                    z5 = z12;
                    measurer3 = measurer;
                    boolean measure = z14 | svg.measure(1, constraintWidget5, measurer3);
                    int width5 = constraintWidget5.getWidth();
                    boolean z15 = measure;
                    int height4 = constraintWidget5.getHeight();
                    if (width5 != width4) {
                        constraintWidget5.setWidth(width5);
                        if (z5 && constraintWidget5.getX() + constraintWidget5.mWidth > max7) {
                            max7 = Math.max(max7, constraintWidget5.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget5.getX() + constraintWidget5.mWidth);
                        }
                        z15 = true;
                    }
                    if (height4 != height3) {
                        constraintWidget5.setHeight(height4);
                        if (z4 && constraintWidget5.getY() + constraintWidget5.mHeight > max8) {
                            max8 = Math.max(max8, constraintWidget5.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget5.getY() + constraintWidget5.mHeight);
                        }
                        z15 = true;
                    }
                    z14 = z15 | ((Flow) constraintWidget5).mNeedsCallFromSolver;
                } else {
                    z4 = z13;
                    z5 = z12;
                    measurer3 = measurer;
                }
                i28++;
                z12 = z5;
                measurer = measurer3;
                z13 = z4;
            }
            boolean z16 = z13;
            boolean z17 = z12;
            int i29 = 0;
            while (true) {
                Measurer measurer7 = measurer;
                if (i29 >= 2) {
                    break;
                }
                int i30 = 0;
                while (i30 < size6) {
                    ConstraintWidget constraintWidget6 = (ConstraintWidget) arrayList2.get(i30);
                    if (((constraintWidget6 instanceof HelperWidget) && !(constraintWidget6 instanceof Flow)) || (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.Guideline) || constraintWidget6.mVisibility == 8 || ((z2 && constraintWidget6.mHorizontalRun.mDimension.resolved && constraintWidget6.mVerticalRun.mDimension.resolved) || (constraintWidget6 instanceof Flow))) {
                        i8 = size6;
                        measurer2 = measurer7;
                        arrayList = arrayList2;
                    } else {
                        int width6 = constraintWidget6.getWidth();
                        int height5 = constraintWidget6.getHeight();
                        i8 = size6;
                        int i31 = constraintWidget6.mBaselineDistance;
                        arrayList = arrayList2;
                        boolean measure2 = svg.measure(i29 == 1 ? 2 : 1, constraintWidget6, measurer7) | z14;
                        int width7 = constraintWidget6.getWidth();
                        measurer2 = measurer7;
                        int height6 = constraintWidget6.getHeight();
                        if (width7 != width6) {
                            constraintWidget6.setWidth(width7);
                            if (z17 && constraintWidget6.getX() + constraintWidget6.mWidth > max7) {
                                max7 = Math.max(max7, constraintWidget6.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget6.getX() + constraintWidget6.mWidth);
                            }
                            measure2 = true;
                        }
                        if (height6 != height5) {
                            constraintWidget6.setHeight(height6);
                            if (z16 && constraintWidget6.getY() + constraintWidget6.mHeight > max8) {
                                max8 = Math.max(max8, constraintWidget6.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget6.getY() + constraintWidget6.mHeight);
                            }
                            measure2 = true;
                        }
                        z14 = (!constraintWidget6.mHasBaseline || i31 == constraintWidget6.mBaselineDistance) ? measure2 : true;
                    }
                    i30++;
                    size6 = i8;
                    arrayList2 = arrayList;
                    measurer7 = measurer2;
                }
                int i32 = size6;
                measurer = measurer7;
                ArrayList arrayList5 = arrayList2;
                if (!z14) {
                    break;
                }
                i29++;
                svg.solveLinearSystem(constraintWidgetContainer, i29, width2, height);
                size6 = i32;
                arrayList2 = arrayList5;
                z14 = false;
            }
        }
        constraintWidgetContainer.mOptimizationLevel = i24;
        LinearSystem.USE_DEPENDENCY_ORDERING = constraintWidgetContainer.optimizeFor(512);
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
        CardView.AnonymousClass1 anonymousClass1 = this.mConstraintLayoutSpec;
        if (anonymousClass1 != null) {
            anonymousClass1.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        constraintWidgetContainer.mOptimizationLevel = i;
        LinearSystem.USE_DEPENDENCY_ORDERING = constraintWidgetContainer.optimizeFor(512);
    }

    public final void setWidgetBaseline(ConstraintWidget constraintWidget, LayoutParams layoutParams, SparseArray sparseArray, int i, ConstraintAnchor.Type type) {
        View view = (View) this.mChildrenByIds.get(i);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        layoutParams.mNeedsBaseline = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.mNeedsBaseline = true;
            layoutParams2.mWidget.mHasBaseline = true;
        }
        constraintWidget.getAnchor(type2).connect(constraintWidget2.getAnchor(type), layoutParams.baselineMargin, layoutParams.goneBaselineMargin, true);
        constraintWidget.mHasBaseline = true;
        constraintWidget.getAnchor(ConstraintAnchor.Type.TOP).reset();
        constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).reset();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
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
        this.mDesignIds = new HashMap();
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new Measurer(this);
        init(attributeSet, i);
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
        layoutParams2.circleAngle = RecyclerView.DECELERATION_RATE;
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
