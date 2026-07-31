package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Flow.WidgetsList;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public androidx.constraintlayout.core.widgets.Flow mFlow;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public final void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        androidx.constraintlayout.core.widgets.Flow flow = new androidx.constraintlayout.core.widgets.Flow();
        flow.mPaddingTop = 0;
        flow.mPaddingBottom = 0;
        flow.mPaddingStart = 0;
        flow.mPaddingEnd = 0;
        flow.mResolvedPaddingLeft = 0;
        flow.mResolvedPaddingRight = 0;
        flow.mNeedsCallFromSolver = false;
        flow.mMeasuredWidth = 0;
        flow.mMeasuredHeight = 0;
        flow.mMeasure = new BasicMeasure$Measure();
        flow.mMeasurer = null;
        flow.mHorizontalStyle = -1;
        flow.mVerticalStyle = -1;
        flow.mFirstHorizontalStyle = -1;
        flow.mFirstVerticalStyle = -1;
        flow.mLastHorizontalStyle = -1;
        flow.mLastVerticalStyle = -1;
        flow.mHorizontalBias = 0.5f;
        flow.mVerticalBias = 0.5f;
        flow.mFirstHorizontalBias = 0.5f;
        flow.mFirstVerticalBias = 0.5f;
        flow.mLastHorizontalBias = 0.5f;
        flow.mLastVerticalBias = 0.5f;
        flow.mHorizontalGap = 0;
        flow.mVerticalGap = 0;
        flow.mHorizontalAlign = 2;
        flow.mVerticalAlign = 2;
        flow.mWrapMode = 0;
        flow.mMaxElementsWrap = -1;
        flow.mOrientation = 0;
        flow.mChainList = new ArrayList();
        flow.mAlignedBiggestElementsInRows = null;
        flow.mAlignedBiggestElementsInCols = null;
        flow.mAlignedDimensions = null;
        flow.mDisplayedWidgetsCount = 0;
        this.mFlow = flow;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.mFlow.mOrientation = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    androidx.constraintlayout.core.widgets.Flow flow2 = this.mFlow;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow2.mPaddingTop = dimensionPixelSize;
                    flow2.mPaddingBottom = dimensionPixelSize;
                    flow2.mPaddingStart = dimensionPixelSize;
                    flow2.mPaddingEnd = dimensionPixelSize;
                } else if (index == 18) {
                    androidx.constraintlayout.core.widgets.Flow flow3 = this.mFlow;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow3.mPaddingStart = dimensionPixelSize2;
                    flow3.mResolvedPaddingLeft = dimensionPixelSize2;
                    flow3.mResolvedPaddingRight = dimensionPixelSize2;
                } else if (index == 19) {
                    this.mFlow.mPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.mFlow.mResolvedPaddingLeft = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.mFlow.mPaddingTop = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.mFlow.mResolvedPaddingRight = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.mFlow.mPaddingBottom = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.mFlow.mWrapMode = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.mFlow.mHorizontalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.mFlow.mVerticalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.mFlow.mFirstHorizontalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.mFlow.mLastHorizontalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.mFlow.mFirstVerticalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.mFlow.mLastVerticalStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.mFlow.mHorizontalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.mFlow.mFirstHorizontalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.mFlow.mLastHorizontalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.mFlow.mFirstVerticalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.mFlow.mLastVerticalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.mFlow.mVerticalBias = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.mFlow.mHorizontalAlign = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.mFlow.mVerticalAlign = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.mFlow.mHorizontalGap = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.mFlow.mVerticalGap = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.mFlow.mMaxElementsWrap = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mHelperWidget = this.mFlow;
        validateParams();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // androidx.constraintlayout.widget.VirtualLayout
    public final void onMeasure(androidx.constraintlayout.core.widgets.Flow flow, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        int i9;
        Flow.WidgetsList widgetsList;
        char c;
        ?? r12;
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        Object obj;
        ConstraintWidget constraintWidget;
        boolean z2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ArrayList arrayList;
        int i19;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (flow == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = flow.mListDimensionBehaviors;
        ConstraintAnchor constraintAnchor4 = flow.mTop;
        ConstraintAnchor constraintAnchor5 = flow.mLeft;
        ConstraintAnchor constraintAnchor6 = flow.mRight;
        ConstraintAnchor constraintAnchor7 = flow.mBottom;
        ArrayList arrayList2 = flow.mChainList;
        if (flow.mWidgetsCount > 0) {
            BasicMeasure$Measure basicMeasure$Measure = flow.mMeasure;
            ConstraintWidgetContainer constraintWidgetContainer = flow.mParent;
            ConstraintLayout.Measurer measurer = constraintWidgetContainer != null ? constraintWidgetContainer.mMeasurer : null;
            if (measurer == null) {
                flow.mMeasuredWidth = 0;
                flow.mMeasuredHeight = 0;
                flow.mNeedsCallFromSolver = false;
                setMeasuredDimension(flow.mMeasuredWidth, flow.mMeasuredHeight);
            }
            int i20 = 0;
            while (i20 < flow.mWidgetsCount) {
                ConstraintWidget constraintWidget2 = flow.mWidgets[i20];
                if (constraintWidget2 == null) {
                    constraintAnchor = constraintAnchor5;
                } else {
                    constraintAnchor = constraintAnchor5;
                    if (!(constraintWidget2 instanceof Guideline)) {
                        constraintAnchor2 = constraintAnchor6;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                        constraintAnchor3 = constraintAnchor7;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        arrayList = arrayList2;
                        if (dimensionBehaviour == dimensionBehaviour3) {
                            i19 = i20;
                            if (constraintWidget2.mMatchConstraintDefaultWidth != 1 && dimensionBehaviour2 == dimensionBehaviour3 && constraintWidget2.mMatchConstraintDefaultHeight != 1) {
                                i20 = i19 + 1;
                                constraintAnchor5 = constraintAnchor;
                                constraintAnchor6 = constraintAnchor2;
                                constraintAnchor7 = constraintAnchor3;
                                arrayList2 = arrayList;
                            }
                        } else {
                            i19 = i20;
                        }
                        if (dimensionBehaviour == dimensionBehaviour3) {
                            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        }
                        if (dimensionBehaviour2 == dimensionBehaviour3) {
                            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        }
                        basicMeasure$Measure.horizontalBehavior = dimensionBehaviour;
                        basicMeasure$Measure.verticalBehavior = dimensionBehaviour2;
                        basicMeasure$Measure.horizontalDimension = constraintWidget2.getWidth();
                        basicMeasure$Measure.verticalDimension = constraintWidget2.getHeight();
                        measurer.measure(constraintWidget2, basicMeasure$Measure);
                        constraintWidget2.setWidth(basicMeasure$Measure.measuredWidth);
                        constraintWidget2.setHeight(basicMeasure$Measure.measuredHeight);
                        constraintWidget2.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
                        i20 = i19 + 1;
                        constraintAnchor5 = constraintAnchor;
                        constraintAnchor6 = constraintAnchor2;
                        constraintAnchor7 = constraintAnchor3;
                        arrayList2 = arrayList;
                    }
                }
                constraintAnchor2 = constraintAnchor6;
                constraintAnchor3 = constraintAnchor7;
                arrayList = arrayList2;
                i19 = i20;
                i20 = i19 + 1;
                constraintAnchor5 = constraintAnchor;
                constraintAnchor6 = constraintAnchor2;
                constraintAnchor7 = constraintAnchor3;
                arrayList2 = arrayList;
            }
        }
        ConstraintAnchor constraintAnchor8 = constraintAnchor5;
        ConstraintAnchor constraintAnchor9 = constraintAnchor6;
        ConstraintAnchor constraintAnchor10 = constraintAnchor7;
        ArrayList arrayList3 = arrayList2;
        int i21 = flow.mResolvedPaddingLeft;
        int i22 = flow.mResolvedPaddingRight;
        int i23 = flow.mPaddingTop;
        int i24 = flow.mPaddingBottom;
        int[] iArr2 = new int[2];
        int i25 = (size - i21) - i22;
        int i26 = flow.mOrientation;
        if (i26 == 1) {
            i25 = (size2 - i23) - i24;
        }
        int i27 = i25;
        int i28 = flow.mHorizontalStyle;
        if (i26 == 0) {
            if (i28 == -1) {
                flow.mHorizontalStyle = 0;
            }
            if (flow.mVerticalStyle == -1) {
                flow.mVerticalStyle = 0;
            }
        } else {
            if (i28 == -1) {
                flow.mHorizontalStyle = 0;
            }
            if (flow.mVerticalStyle == -1) {
                flow.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = flow.mWidgets;
        int i29 = 0;
        int i30 = 0;
        while (true) {
            i3 = flow.mWidgetsCount;
            i4 = i23;
            if (i29 >= i3) {
                break;
            }
            if (flow.mWidgets[i29].mVisibility == 8) {
                i30++;
            }
            i29++;
            i23 = i4;
        }
        if (i30 > 0) {
            constraintWidgetArr = new ConstraintWidget[i3 - i30];
            int i31 = 0;
            int i32 = 0;
            while (i31 < flow.mWidgetsCount) {
                ConstraintWidget constraintWidget3 = flow.mWidgets[i31];
                int i33 = i31;
                if (constraintWidget3.mVisibility != 8) {
                    constraintWidgetArr[i32] = constraintWidget3;
                    i32++;
                }
                i31 = i33 + 1;
            }
            i3 = i32;
        }
        ConstraintWidget[] constraintWidgetArr2 = constraintWidgetArr;
        flow.mDisplayedWidgets = constraintWidgetArr2;
        flow.mDisplayedWidgetsCount = i3;
        int i34 = flow.mWrapMode;
        if (i34 == 0) {
            i5 = i21;
            int i35 = i3;
            i6 = i24;
            iArr = iArr2;
            i7 = size2;
            i8 = i22;
            i9 = i4;
            int i36 = flow.mOrientation;
            if (i35 != 0) {
                if (arrayList3.size() == 0) {
                    widgetsList = flow.new WidgetsList(i36, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                    arrayList3.add(widgetsList);
                } else {
                    Flow.WidgetsList widgetsList2 = (Flow.WidgetsList) arrayList3.get(0);
                    widgetsList2.mBiggestDimension = 0;
                    widgetsList2.mBiggest = null;
                    widgetsList2.mWidth = 0;
                    widgetsList2.mHeight = 0;
                    widgetsList2.mStartIndex = 0;
                    widgetsList2.mCount = 0;
                    widgetsList2.mNbMatchConstraintsWidgets = 0;
                    widgetsList2.setup(i36, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, flow.mResolvedPaddingLeft, flow.mPaddingTop, flow.mResolvedPaddingRight, flow.mPaddingBottom, i27);
                    widgetsList = widgetsList2;
                }
                for (int i37 = 0; i37 < i35; i37++) {
                    widgetsList.add(constraintWidgetArr2[i37]);
                }
                c = 0;
                iArr[0] = widgetsList.getWidth();
                r12 = 1;
                iArr[1] = widgetsList.getHeight();
            }
            z = true;
            c = 0;
            r12 = z;
        } else if (i34 != 1) {
            if (i34 == 2) {
                int i38 = i3;
                i6 = i24;
                iArr = iArr2;
                i7 = size2;
                i5 = i21;
                i8 = i22;
                i9 = i4;
                int i39 = flow.mOrientation;
                int i40 = flow.mMaxElementsWrap;
                if (i39 == 0) {
                    if (i40 <= 0) {
                        int i41 = 0;
                        i13 = 0;
                        for (int i42 = 0; i42 < i38; i42++) {
                            if (i42 > 0) {
                                i41 += flow.mHorizontalGap;
                            }
                            ConstraintWidget constraintWidget4 = constraintWidgetArr2[i42];
                            if (constraintWidget4 != null) {
                                int widgetWidth = flow.getWidgetWidth(constraintWidget4, i27) + i41;
                                if (widgetWidth > i27) {
                                    break;
                                }
                                i13++;
                                i41 = widgetWidth;
                            }
                        }
                    } else {
                        i13 = i40;
                    }
                    i40 = 0;
                } else {
                    if (i40 <= 0) {
                        int i43 = 0;
                        int i44 = 0;
                        for (int i45 = 0; i45 < i38; i45++) {
                            if (i45 > 0) {
                                i43 += flow.mVerticalGap;
                            }
                            ConstraintWidget constraintWidget5 = constraintWidgetArr2[i45];
                            if (constraintWidget5 != null) {
                                int widgetHeight = flow.getWidgetHeight(constraintWidget5, i27) + i43;
                                if (widgetHeight > i27) {
                                    break;
                                }
                                i44++;
                                i43 = widgetHeight;
                            }
                        }
                        i40 = i44;
                    }
                    i13 = 0;
                }
                if (flow.mAlignedDimensions == null) {
                    flow.mAlignedDimensions = new int[2];
                }
                boolean z3 = (i40 == 0 && i39 == 1) || (i13 == 0 && i39 == 0);
                while (!z3) {
                    if (i39 == 0) {
                        i40 = (int) Math.ceil(i38 / i13);
                    } else {
                        i13 = (int) Math.ceil(i38 / i40);
                    }
                    ConstraintWidget[] constraintWidgetArr3 = flow.mAlignedBiggestElementsInCols;
                    if (constraintWidgetArr3 == null || constraintWidgetArr3.length < i13) {
                        obj = null;
                        flow.mAlignedBiggestElementsInCols = new ConstraintWidget[i13];
                    } else {
                        obj = null;
                        Arrays.fill(constraintWidgetArr3, (Object) null);
                    }
                    ConstraintWidget[] constraintWidgetArr4 = flow.mAlignedBiggestElementsInRows;
                    if (constraintWidgetArr4 == null || constraintWidgetArr4.length < i40) {
                        flow.mAlignedBiggestElementsInRows = new ConstraintWidget[i40];
                    } else {
                        Arrays.fill(constraintWidgetArr4, obj);
                    }
                    for (int i46 = 0; i46 < i13; i46++) {
                        for (int i47 = 0; i47 < i40; i47++) {
                            int i48 = (i47 * i13) + i46;
                            if (i39 == 1) {
                                i48 = (i46 * i40) + i47;
                            }
                            if (i48 < constraintWidgetArr2.length && (constraintWidget = constraintWidgetArr2[i48]) != null) {
                                int widgetWidth2 = flow.getWidgetWidth(constraintWidget, i27);
                                ConstraintWidget constraintWidget6 = flow.mAlignedBiggestElementsInCols[i46];
                                if (constraintWidget6 == null || constraintWidget6.getWidth() < widgetWidth2) {
                                    flow.mAlignedBiggestElementsInCols[i46] = constraintWidget;
                                }
                                int widgetHeight2 = flow.getWidgetHeight(constraintWidget, i27);
                                ConstraintWidget constraintWidget7 = flow.mAlignedBiggestElementsInRows[i47];
                                if (constraintWidget7 == null || constraintWidget7.getHeight() < widgetHeight2) {
                                    flow.mAlignedBiggestElementsInRows[i47] = constraintWidget;
                                }
                            }
                        }
                    }
                    int i49 = 0;
                    for (int i50 = 0; i50 < i13; i50++) {
                        ConstraintWidget constraintWidget8 = flow.mAlignedBiggestElementsInCols[i50];
                        if (constraintWidget8 != null) {
                            if (i50 > 0) {
                                i49 += flow.mHorizontalGap;
                            }
                            i49 = flow.getWidgetWidth(constraintWidget8, i27) + i49;
                        }
                    }
                    int i51 = 0;
                    for (int i52 = 0; i52 < i40; i52++) {
                        ConstraintWidget constraintWidget9 = flow.mAlignedBiggestElementsInRows[i52];
                        if (constraintWidget9 != null) {
                            if (i52 > 0) {
                                i51 += flow.mVerticalGap;
                            }
                            i51 = flow.getWidgetHeight(constraintWidget9, i27) + i51;
                        }
                    }
                    iArr[0] = i49;
                    iArr[1] = i51;
                    if (i39 == 0) {
                        if (i49 > i27 && i13 > 1) {
                            i13--;
                        }
                        z3 = true;
                    } else {
                        if (i51 > i27 && i40 > 1) {
                            i40--;
                        }
                        z3 = true;
                    }
                }
                int[] iArr3 = flow.mAlignedDimensions;
                iArr3[0] = i13;
                iArr3[1] = i40;
                z = true;
            } else if (i34 != 3) {
                i6 = i24;
                iArr = iArr2;
                i7 = size2;
                i5 = i21;
                i8 = i22;
                i9 = i4;
                c = 0;
                r12 = 1;
            } else {
                int i53 = flow.mOrientation;
                if (i3 == 0) {
                    i6 = i24;
                    iArr = iArr2;
                    z2 = true;
                    i7 = size2;
                    i5 = i21;
                    i8 = i22;
                    i9 = i4;
                } else {
                    arrayList3.clear();
                    int i54 = i3;
                    i5 = i21;
                    z2 = true;
                    i6 = i24;
                    i8 = i22;
                    i9 = i4;
                    iArr = iArr2;
                    Flow.WidgetsList widgetsList3 = flow.new WidgetsList(i53, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                    arrayList3.add(widgetsList3);
                    if (i53 == 0) {
                        int i55 = 0;
                        int i56 = 0;
                        i14 = 0;
                        int i57 = 0;
                        while (i55 < i54) {
                            i56++;
                            ConstraintWidget constraintWidget10 = constraintWidgetArr2[i55];
                            int widgetWidth3 = flow.getWidgetWidth(constraintWidget10, i27);
                            int i58 = i53;
                            int i59 = i55;
                            if (constraintWidget10.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i14++;
                            }
                            int i60 = i14;
                            boolean z4 = (i57 == i27 || (flow.mHorizontalGap + i57) + widgetWidth3 > i27) && widgetsList3.mBiggest != null;
                            if (!z4 && i59 > 0 && (i18 = flow.mMaxElementsWrap) > 0 && i56 > i18) {
                                z4 = true;
                            }
                            if (z4) {
                                i53 = i58;
                                i16 = size2;
                                i17 = i59;
                                widgetsList3 = flow.new WidgetsList(i53, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                                widgetsList3.mStartIndex = i17;
                                arrayList3.add(widgetsList3);
                                i56 = 1;
                            } else {
                                i53 = i58;
                                i16 = size2;
                                i17 = i59;
                                if (i17 > 0) {
                                    i57 = flow.mHorizontalGap + widgetWidth3 + i57;
                                    widgetsList3.add(constraintWidget10);
                                    i55 = i17 + 1;
                                    i14 = i60;
                                    size2 = i16;
                                }
                            }
                            i57 = widgetWidth3;
                            widgetsList3.add(constraintWidget10);
                            i55 = i17 + 1;
                            i14 = i60;
                            size2 = i16;
                        }
                        i7 = size2;
                    } else {
                        i7 = size2;
                        int i61 = 0;
                        int i62 = 0;
                        int i63 = 0;
                        int i64 = 0;
                        while (i61 < i54) {
                            i62++;
                            ConstraintWidget constraintWidget11 = constraintWidgetArr2[i61];
                            int widgetHeight3 = flow.getWidgetHeight(constraintWidget11, i27);
                            int i65 = i53;
                            if (constraintWidget11.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i63++;
                            }
                            int i66 = i63;
                            boolean z5 = (i64 == i27 || (flow.mVerticalGap + i64) + widgetHeight3 > i27) && widgetsList3.mBiggest != null;
                            if (!z5 && i61 > 0 && (i15 = flow.mMaxElementsWrap) > 0 && i62 > i15) {
                                z5 = true;
                            }
                            if (z5) {
                                i53 = i65;
                                widgetsList3 = flow.new WidgetsList(i53, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                                widgetsList3.mStartIndex = i61;
                                arrayList3.add(widgetsList3);
                                i62 = 1;
                            } else {
                                i53 = i65;
                                if (i61 > 0) {
                                    i64 = flow.mVerticalGap + widgetHeight3 + i64;
                                    widgetsList3.add(constraintWidget11);
                                    i61++;
                                    i63 = i66;
                                }
                            }
                            i64 = widgetHeight3;
                            widgetsList3.add(constraintWidget11);
                            i61++;
                            i63 = i66;
                        }
                        i14 = i63;
                    }
                    int size3 = arrayList3.size();
                    int i67 = flow.mResolvedPaddingLeft;
                    int i68 = flow.mPaddingTop;
                    int i69 = flow.mResolvedPaddingRight;
                    int i70 = flow.mPaddingBottom;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    boolean z6 = dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviourArr[1] == dimensionBehaviour5;
                    if (i14 > 0 && z6) {
                        for (int i71 = 0; i71 < size3; i71++) {
                            Flow.WidgetsList widgetsList4 = (Flow.WidgetsList) arrayList3.get(i71);
                            if (i53 == 0) {
                                widgetsList4.measureMatchConstraints(i27 - widgetsList4.getWidth());
                            } else {
                                widgetsList4.measureMatchConstraints(i27 - widgetsList4.getHeight());
                            }
                        }
                    }
                    int i72 = i67;
                    int i73 = i68;
                    int i74 = i69;
                    int i75 = i70;
                    ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                    ConstraintAnchor constraintAnchor12 = constraintAnchor9;
                    ConstraintAnchor constraintAnchor13 = constraintAnchor10;
                    ConstraintAnchor constraintAnchor14 = constraintAnchor4;
                    int i76 = 0;
                    int i77 = 0;
                    for (int i78 = 0; i78 < size3; i78++) {
                        Flow.WidgetsList widgetsList5 = (Flow.WidgetsList) arrayList3.get(i78);
                        if (i53 == 0) {
                            if (i78 < size3 - 1) {
                                constraintAnchor13 = ((Flow.WidgetsList) arrayList3.get(i78 + 1)).mBiggest.mTop;
                                i75 = 0;
                            } else {
                                i75 = flow.mPaddingBottom;
                                constraintAnchor13 = constraintAnchor10;
                            }
                            ConstraintAnchor constraintAnchor15 = widgetsList5.mBiggest.mBottom;
                            widgetsList5.setup(i53, constraintAnchor11, constraintAnchor14, constraintAnchor12, constraintAnchor13, i72, i73, i74, i75, i27);
                            i76 = Math.max(i76, widgetsList5.getWidth());
                            int height = widgetsList5.getHeight() + i77;
                            if (i78 > 0) {
                                height += flow.mVerticalGap;
                            }
                            i77 = height;
                            constraintAnchor14 = constraintAnchor15;
                            i73 = 0;
                        } else {
                            if (i78 < size3 - 1) {
                                constraintAnchor12 = ((Flow.WidgetsList) arrayList3.get(i78 + 1)).mBiggest.mLeft;
                                i74 = 0;
                            } else {
                                i74 = flow.mResolvedPaddingRight;
                                constraintAnchor12 = constraintAnchor9;
                            }
                            ConstraintAnchor constraintAnchor16 = widgetsList5.mBiggest.mRight;
                            widgetsList5.setup(i53, constraintAnchor11, constraintAnchor14, constraintAnchor12, constraintAnchor13, i72, i73, i74, i75, i27);
                            int width = widgetsList5.getWidth() + i76;
                            int max = Math.max(i77, widgetsList5.getHeight());
                            if (i78 > 0) {
                                width += flow.mHorizontalGap;
                            }
                            i77 = max;
                            i76 = width;
                            constraintAnchor11 = constraintAnchor16;
                            i72 = 0;
                        }
                    }
                    iArr[0] = i76;
                    iArr[1] = i77;
                }
                z = z2;
            }
            c = 0;
            r12 = z;
        } else {
            i5 = i21;
            i6 = i24;
            iArr = iArr2;
            i7 = size2;
            i8 = i22;
            i9 = i4;
            int i79 = i3;
            int i80 = flow.mOrientation;
            if (i79 != 0) {
                arrayList3.clear();
                Flow.WidgetsList widgetsList6 = flow.new WidgetsList(i80, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                arrayList3.add(widgetsList6);
                if (i80 == 0) {
                    int i81 = 0;
                    i10 = 0;
                    int i82 = 0;
                    while (i81 < i79) {
                        ConstraintWidget constraintWidget12 = constraintWidgetArr2[i81];
                        int widgetWidth4 = flow.getWidgetWidth(constraintWidget12, i27);
                        if (constraintWidget12.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            i10++;
                        }
                        int i83 = i10;
                        boolean z7 = (i82 == i27 || (flow.mHorizontalGap + i82) + widgetWidth4 > i27) && widgetsList6.mBiggest != null;
                        if (!z7 && i81 > 0 && (i12 = flow.mMaxElementsWrap) > 0 && i81 % i12 == 0) {
                            z7 = true;
                        }
                        if (z7) {
                            widgetsList6 = flow.new WidgetsList(i80, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                            widgetsList6.mStartIndex = i81;
                            arrayList3.add(widgetsList6);
                        } else if (i81 > 0) {
                            i82 = flow.mHorizontalGap + widgetWidth4 + i82;
                            widgetsList6.add(constraintWidget12);
                            i81++;
                            i10 = i83;
                        }
                        i82 = widgetWidth4;
                        widgetsList6.add(constraintWidget12);
                        i81++;
                        i10 = i83;
                    }
                } else {
                    int i84 = 0;
                    i10 = 0;
                    int i85 = 0;
                    while (i84 < i79) {
                        ConstraintWidget constraintWidget13 = constraintWidgetArr2[i84];
                        int widgetHeight4 = flow.getWidgetHeight(constraintWidget13, i27);
                        if (constraintWidget13.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            i10++;
                        }
                        int i86 = i10;
                        boolean z8 = (i85 == i27 || (flow.mVerticalGap + i85) + widgetHeight4 > i27) && widgetsList6.mBiggest != null;
                        if (!z8 && i84 > 0 && (i11 = flow.mMaxElementsWrap) > 0 && i84 % i11 == 0) {
                            z8 = true;
                        }
                        if (z8) {
                            widgetsList6 = flow.new WidgetsList(i80, flow.mLeft, flow.mTop, flow.mRight, flow.mBottom, i27);
                            widgetsList6.mStartIndex = i84;
                            arrayList3.add(widgetsList6);
                        } else if (i84 > 0) {
                            i85 = flow.mVerticalGap + widgetHeight4 + i85;
                            widgetsList6.add(constraintWidget13);
                            i84++;
                            i10 = i86;
                        }
                        i85 = widgetHeight4;
                        widgetsList6.add(constraintWidget13);
                        i84++;
                        i10 = i86;
                    }
                }
                int size4 = arrayList3.size();
                int i87 = flow.mResolvedPaddingLeft;
                int i88 = flow.mPaddingTop;
                int i89 = flow.mResolvedPaddingRight;
                int i90 = flow.mPaddingBottom;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z9 = dimensionBehaviour6 == dimensionBehaviour7 || dimensionBehaviourArr[1] == dimensionBehaviour7;
                if (i10 > 0 && z9) {
                    for (int i91 = 0; i91 < size4; i91++) {
                        Flow.WidgetsList widgetsList7 = (Flow.WidgetsList) arrayList3.get(i91);
                        if (i80 == 0) {
                            widgetsList7.measureMatchConstraints(i27 - widgetsList7.getWidth());
                        } else {
                            widgetsList7.measureMatchConstraints(i27 - widgetsList7.getHeight());
                        }
                    }
                }
                int i92 = i87;
                int i93 = i88;
                int i94 = i89;
                int i95 = i90;
                ConstraintAnchor constraintAnchor17 = constraintAnchor8;
                ConstraintAnchor constraintAnchor18 = constraintAnchor9;
                ConstraintAnchor constraintAnchor19 = constraintAnchor10;
                ConstraintAnchor constraintAnchor20 = constraintAnchor4;
                int i96 = 0;
                int i97 = 0;
                for (int i98 = 0; i98 < size4; i98++) {
                    Flow.WidgetsList widgetsList8 = (Flow.WidgetsList) arrayList3.get(i98);
                    if (i80 == 0) {
                        if (i98 < size4 - 1) {
                            constraintAnchor19 = ((Flow.WidgetsList) arrayList3.get(i98 + 1)).mBiggest.mTop;
                            i95 = 0;
                        } else {
                            i95 = flow.mPaddingBottom;
                            constraintAnchor19 = constraintAnchor10;
                        }
                        ConstraintAnchor constraintAnchor21 = widgetsList8.mBiggest.mBottom;
                        widgetsList8.setup(i80, constraintAnchor17, constraintAnchor20, constraintAnchor18, constraintAnchor19, i92, i93, i94, i95, i27);
                        i96 = Math.max(i96, widgetsList8.getWidth());
                        int height2 = widgetsList8.getHeight() + i97;
                        if (i98 > 0) {
                            height2 += flow.mVerticalGap;
                        }
                        i97 = height2;
                        constraintAnchor20 = constraintAnchor21;
                        i93 = 0;
                    } else {
                        if (i98 < size4 - 1) {
                            constraintAnchor18 = ((Flow.WidgetsList) arrayList3.get(i98 + 1)).mBiggest.mLeft;
                            i94 = 0;
                        } else {
                            i94 = flow.mResolvedPaddingRight;
                            constraintAnchor18 = constraintAnchor9;
                        }
                        ConstraintAnchor constraintAnchor22 = widgetsList8.mBiggest.mRight;
                        widgetsList8.setup(i80, constraintAnchor17, constraintAnchor20, constraintAnchor18, constraintAnchor19, i92, i93, i94, i95, i27);
                        int width2 = widgetsList8.getWidth() + i96;
                        int max2 = Math.max(i97, widgetsList8.getHeight());
                        if (i98 > 0) {
                            width2 += flow.mHorizontalGap;
                        }
                        i97 = max2;
                        i96 = width2;
                        constraintAnchor17 = constraintAnchor22;
                        i92 = 0;
                    }
                }
                iArr[0] = i96;
                iArr[1] = i97;
            }
            z = true;
            c = 0;
            r12 = z;
        }
        int i99 = iArr[c] + i5 + i8;
        int i100 = iArr[r12] + i9 + i6;
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(i99, size) : mode == 0 ? i99 : 0;
        }
        int min = mode2 == 1073741824 ? i7 : mode2 == Integer.MIN_VALUE ? Math.min(i100, i7) : mode2 == 0 ? i100 : 0;
        flow.mMeasuredWidth = size;
        flow.mMeasuredHeight = min;
        flow.setWidth(size);
        flow.setHeight(min);
        flow.mNeedsCallFromSolver = flow.mWidgetsCount > 0 ? r12 : false;
        setMeasuredDimension(flow.mMeasuredWidth, flow.mMeasuredHeight);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void resolveRtl(ConstraintWidget constraintWidget, boolean z) {
        androidx.constraintlayout.core.widgets.Flow flow = this.mFlow;
        int i = flow.mPaddingStart;
        if (i > 0 || flow.mPaddingEnd > 0) {
            if (z) {
                flow.mResolvedPaddingLeft = flow.mPaddingEnd;
                flow.mResolvedPaddingRight = i;
            } else {
                flow.mResolvedPaddingLeft = i;
                flow.mResolvedPaddingRight = flow.mPaddingEnd;
            }
        }
    }

    public void setFirstHorizontalBias(float f) {
        this.mFlow.mFirstHorizontalBias = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.mFlow.mFirstHorizontalStyle = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.mFlow.mFirstVerticalBias = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.mFlow.mFirstVerticalStyle = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.mFlow.mHorizontalAlign = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.mFlow.mHorizontalBias = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.mFlow.mHorizontalGap = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.mFlow.mHorizontalStyle = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f) {
        this.mFlow.mLastHorizontalBias = f;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.mFlow.mLastHorizontalStyle = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f) {
        this.mFlow.mLastVerticalBias = f;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.mFlow.mLastVerticalStyle = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.mFlow.mMaxElementsWrap = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.mFlow.mOrientation = i;
        requestLayout();
    }

    public void setPadding(int i) {
        androidx.constraintlayout.core.widgets.Flow flow = this.mFlow;
        flow.mPaddingTop = i;
        flow.mPaddingBottom = i;
        flow.mPaddingStart = i;
        flow.mPaddingEnd = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.mFlow.mPaddingBottom = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.mFlow.mResolvedPaddingLeft = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.mFlow.mResolvedPaddingRight = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.mFlow.mPaddingTop = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.mFlow.mVerticalAlign = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.mFlow.mVerticalBias = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.mFlow.mVerticalGap = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.mFlow.mVerticalStyle = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.mFlow.mWrapMode = i;
        requestLayout();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onMeasure(int i, int i2) {
        onMeasure(this.mFlow, i, i2);
    }
}
