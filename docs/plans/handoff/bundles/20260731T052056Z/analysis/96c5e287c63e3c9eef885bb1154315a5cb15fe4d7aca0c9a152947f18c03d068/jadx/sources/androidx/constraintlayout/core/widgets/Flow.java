package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Flow extends HelperWidget {
    public ConstraintWidget[] mAlignedBiggestElementsInCols;
    public ConstraintWidget[] mAlignedBiggestElementsInRows;
    public int[] mAlignedDimensions;
    public ArrayList mChainList;
    public ConstraintWidget[] mDisplayedWidgets;
    public int mDisplayedWidgetsCount;
    public float mFirstHorizontalBias;
    public int mFirstHorizontalStyle;
    public float mFirstVerticalBias;
    public int mFirstVerticalStyle;
    public int mHorizontalAlign;
    public float mHorizontalBias;
    public int mHorizontalGap;
    public int mHorizontalStyle;
    public float mLastHorizontalBias;
    public int mLastHorizontalStyle;
    public float mLastVerticalBias;
    public int mLastVerticalStyle;
    public int mMaxElementsWrap;
    public BasicMeasure$Measure mMeasure;
    public int mMeasuredHeight;
    public int mMeasuredWidth;
    public ConstraintLayout.Measurer mMeasurer;
    public boolean mNeedsCallFromSolver;
    public int mOrientation;
    public int mPaddingBottom;
    public int mPaddingEnd;
    public int mPaddingStart;
    public int mPaddingTop;
    public int mResolvedPaddingLeft;
    public int mResolvedPaddingRight;
    public int mVerticalAlign;
    public float mVerticalBias;
    public int mVerticalGap;
    public int mVerticalStyle;
    public int mWrapMode;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WidgetsList {
        public ConstraintAnchor mBottom;
        public ConstraintAnchor mLeft;
        public int mMax;
        public int mOrientation;
        public int mPaddingBottom;
        public int mPaddingLeft;
        public int mPaddingRight;
        public int mPaddingTop;
        public ConstraintAnchor mRight;
        public ConstraintAnchor mTop;
        public ConstraintWidget mBiggest = null;
        public int mBiggestDimension = 0;
        public int mWidth = 0;
        public int mHeight = 0;
        public int mStartIndex = 0;
        public int mCount = 0;
        public int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.mResolvedPaddingLeft;
            this.mPaddingTop = Flow.this.mPaddingTop;
            this.mPaddingRight = Flow.this.mResolvedPaddingRight;
            this.mPaddingBottom = Flow.this.mPaddingBottom;
            this.mMax = i2;
        }

        public final void add(ConstraintWidget constraintWidget) {
            int i = this.mOrientation;
            int i2 = this.mMax;
            Flow flow = Flow.this;
            if (i == 0) {
                int widgetWidth = flow.getWidgetWidth(constraintWidget, i2);
                if (constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                this.mWidth = widgetWidth + (constraintWidget.mVisibility != 8 ? flow.mHorizontalGap : 0) + this.mWidth;
                int widgetHeight = flow.getWidgetHeight(constraintWidget, this.mMax);
                if (this.mBiggest == null || this.mBiggestDimension < widgetHeight) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = flow.getWidgetWidth(constraintWidget, i2);
                int widgetHeight2 = flow.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                this.mHeight = widgetHeight2 + (constraintWidget.mVisibility != 8 ? flow.mVerticalGap : 0) + this.mHeight;
                if (this.mBiggest == null || this.mBiggestDimension < widgetWidth2) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        /* JADX WARN: Code restructure failed: missing block: B:85:0x0103, code lost:
        
            if (r24 != false) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0105, code lost:
        
            r9 = 1.0f - r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0115, code lost:
        
            if (r24 != false) goto L89;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void createConstraints(int r23, boolean r24, boolean r25) {
            /*
                Method dump skipped, instructions count: 724
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.WidgetsList.createConstraints(int, boolean, boolean):void");
        }

        public final int getHeight() {
            int i = this.mOrientation;
            int i2 = this.mHeight;
            return i == 1 ? i2 - Flow.this.mVerticalGap : i2;
        }

        public final int getWidth() {
            int i = this.mOrientation;
            int i2 = this.mWidth;
            return i == 0 ? i2 - Flow.this.mHorizontalGap : i2;
        }

        public final void measureMatchConstraints(int i) {
            Flow flow;
            int i2;
            int i3 = this.mNbMatchConstraintsWidgets;
            if (i3 == 0) {
                return;
            }
            int i4 = this.mCount;
            int i5 = i / i3;
            int i6 = 0;
            while (true) {
                flow = Flow.this;
                if (i6 >= i4 || (i2 = this.mStartIndex + i6) >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget = flow.mDisplayedWidgets[i2];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null) {
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                        if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            flow.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i5, dimensionBehaviourArr[1], constraintWidget.getHeight());
                        }
                    }
                } else if (constraintWidget != null) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.mListDimensionBehaviors;
                    if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                        int i7 = i5;
                        flow.measure(constraintWidget, dimensionBehaviourArr2[0], constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i7);
                        i5 = i7;
                    }
                }
                i6++;
            }
            this.mWidth = 0;
            this.mHeight = 0;
            this.mBiggest = null;
            this.mBiggestDimension = 0;
            int i8 = this.mCount;
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = this.mStartIndex + i9;
                if (i10 >= flow.mDisplayedWidgetsCount) {
                    return;
                }
                ConstraintWidget constraintWidget2 = flow.mDisplayedWidgets[i10];
                if (this.mOrientation == 0) {
                    int width = constraintWidget2.getWidth();
                    int i11 = flow.mHorizontalGap;
                    if (constraintWidget2.mVisibility == 8) {
                        i11 = 0;
                    }
                    this.mWidth = width + i11 + this.mWidth;
                    int widgetHeight = flow.getWidgetHeight(constraintWidget2, this.mMax);
                    if (this.mBiggest == null || this.mBiggestDimension < widgetHeight) {
                        this.mBiggest = constraintWidget2;
                        this.mBiggestDimension = widgetHeight;
                        this.mHeight = widgetHeight;
                    }
                } else {
                    int widgetWidth = flow.getWidgetWidth(constraintWidget2, this.mMax);
                    int widgetHeight2 = flow.getWidgetHeight(constraintWidget2, this.mMax);
                    int i12 = flow.mVerticalGap;
                    if (constraintWidget2.mVisibility == 8) {
                        i12 = 0;
                    }
                    this.mHeight = widgetHeight2 + i12 + this.mHeight;
                    if (this.mBiggest == null || this.mBiggestDimension < widgetWidth) {
                        this.mBiggest = constraintWidget2;
                        this.mBiggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                }
            }
        }

        public final void setup(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i2;
            this.mPaddingTop = i3;
            this.mPaddingRight = i4;
            this.mPaddingBottom = i5;
            this.mMax = i6;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void addToSolver(LinearSystem linearSystem, boolean z) {
        ConstraintWidget constraintWidget;
        float f;
        int i;
        ArrayList arrayList = this.mChainList;
        super.addToSolver(linearSystem, z);
        ConstraintWidgetContainer constraintWidgetContainer = this.mParent;
        boolean z2 = constraintWidgetContainer != null && constraintWidgetContainer.mIsRtl;
        int i2 = this.mWrapMode;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    ((WidgetsList) arrayList.get(i3)).createConstraints(i3, z2, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        ((WidgetsList) arrayList.get(i4)).createConstraints(i4, z2, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
                for (int i5 = 0; i5 < this.mDisplayedWidgetsCount; i5++) {
                    this.mDisplayedWidgets[i5].resetAnchors();
                }
                int[] iArr = this.mAlignedDimensions;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f2 = this.mHorizontalBias;
                ConstraintWidget constraintWidget2 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f = 1.0f - this.mHorizontalBias;
                    } else {
                        f = f2;
                        i = i8;
                    }
                    ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i];
                    if (constraintWidget3 != null) {
                        ConstraintAnchor constraintAnchor = constraintWidget3.mLeft;
                        if (constraintWidget3.mVisibility != 8) {
                            if (i8 == 0) {
                                constraintWidget3.connect(constraintAnchor, this.mLeft, this.mResolvedPaddingLeft);
                                constraintWidget3.mHorizontalChainStyle = this.mHorizontalStyle;
                                constraintWidget3.mHorizontalBiasPercent = f;
                            }
                            if (i8 == i6 - 1) {
                                constraintWidget3.connect(constraintWidget3.mRight, this.mRight, this.mResolvedPaddingRight);
                            }
                            if (i8 > 0 && constraintWidget2 != null) {
                                ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
                                constraintWidget3.connect(constraintAnchor, constraintAnchor2, this.mHorizontalGap);
                                constraintWidget2.connect(constraintAnchor2, constraintAnchor, 0);
                            }
                            constraintWidget2 = constraintWidget3;
                        }
                    }
                    i8++;
                    f2 = f;
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i9];
                    if (constraintWidget4 != null) {
                        ConstraintAnchor constraintAnchor3 = constraintWidget4.mTop;
                        if (constraintWidget4.mVisibility != 8) {
                            if (i9 == 0) {
                                constraintWidget4.connect(constraintAnchor3, this.mTop, this.mPaddingTop);
                                constraintWidget4.mVerticalChainStyle = this.mVerticalStyle;
                                constraintWidget4.mVerticalBiasPercent = this.mVerticalBias;
                            }
                            if (i9 == i7 - 1) {
                                constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, this.mPaddingBottom);
                            }
                            if (i9 > 0 && constraintWidget2 != null) {
                                ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
                                constraintWidget4.connect(constraintAnchor3, constraintAnchor4, this.mVerticalGap);
                                constraintWidget2.connect(constraintAnchor4, constraintAnchor3, 0);
                            }
                            constraintWidget2 = constraintWidget4;
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.mOrientation == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                        if (i12 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i12]) != null && constraintWidget.mVisibility != 8) {
                            ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i10];
                            ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i11];
                            if (constraintWidget != constraintWidget5) {
                                constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                                constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                            }
                            if (constraintWidget != constraintWidget6) {
                                constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                                constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((WidgetsList) arrayList.get(0)).createConstraints(0, z2, true);
        }
        this.mNeedsCallFromSolver = false;
    }

    public final int getWidgetHeight(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        if (dimensionBehaviourArr[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i3 != constraintWidget.getHeight()) {
                    constraintWidget.mMeasureRequested = true;
                    measure(constraintWidget, dimensionBehaviourArr[0], constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.getHeight();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.getWidth() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getHeight();
    }

    public final int getWidgetWidth(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i3 != constraintWidget.getWidth()) {
                    constraintWidget.mMeasureRequested = true;
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, dimensionBehaviourArr[1], constraintWidget.getHeight());
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.getWidth();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.getHeight() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getWidth();
    }

    public final void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        ConstraintLayout.Measurer measurer;
        ConstraintWidgetContainer constraintWidgetContainer;
        BasicMeasure$Measure basicMeasure$Measure = this.mMeasure;
        while (true) {
            measurer = this.mMeasurer;
            if (measurer != null || (constraintWidgetContainer = this.mParent) == null) {
                break;
            } else {
                this.mMeasurer = constraintWidgetContainer.mMeasurer;
            }
        }
        basicMeasure$Measure.horizontalBehavior = dimensionBehaviour;
        basicMeasure$Measure.verticalBehavior = dimensionBehaviour2;
        basicMeasure$Measure.horizontalDimension = i;
        basicMeasure$Measure.verticalDimension = i2;
        measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        constraintWidget.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget
    public final void updateConstraints() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (constraintWidget != null) {
                constraintWidget.mInVirtualLayout = true;
            }
        }
    }
}
