package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Direct {
    public static final BasicMeasure$Measure sMeasure = new BasicMeasure$Measure();

    public static boolean canMeasure(ConstraintWidget constraintWidget) {
        int[] iArr = constraintWidget.mListDimensionBehaviors;
        int i = iArr[0];
        int i2 = iArr[1];
        ConstraintWidget constraintWidget2 = constraintWidget.mParent;
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget2 != null ? (ConstraintWidgetContainer) constraintWidget2 : null;
        if (constraintWidgetContainer != null) {
            int i3 = constraintWidgetContainer.mListDimensionBehaviors[0];
        }
        if (constraintWidgetContainer != null) {
            int i4 = constraintWidgetContainer.mListDimensionBehaviors[1];
        }
        boolean z = i == 1 || constraintWidget.isResolvedHorizontally() || i == 2 || (i == 3 && constraintWidget.mMatchConstraintDefaultWidth == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(0)) || (i == 3 && constraintWidget.mMatchConstraintDefaultWidth == 1 && constraintWidget.hasResolvedTargets(0, constraintWidget.getWidth()));
        boolean z2 = i2 == 1 || constraintWidget.isResolvedVertically() || i2 == 2 || (i2 == 3 && constraintWidget.mMatchConstraintDefaultHeight == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(1)) || (i2 == 3 && constraintWidget.mMatchConstraintDefaultHeight == 1 && constraintWidget.hasResolvedTargets(1, constraintWidget.getHeight()));
        return (constraintWidget.mDimensionRatio > 0.0f && (z || z2)) || (z && z2);
    }

    public static WidgetGroup findDependents(ConstraintWidget constraintWidget, int i, ArrayList arrayList, WidgetGroup widgetGroup) {
        int i2;
        int i3 = i == 0 ? constraintWidget.horizontalGroup : constraintWidget.verticalGroup;
        if (i3 != -1 && (widgetGroup == null || i3 != widgetGroup.mId)) {
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                }
                WidgetGroup widgetGroup2 = (WidgetGroup) arrayList.get(i4);
                if (widgetGroup2.mId == i3) {
                    if (widgetGroup != null) {
                        widgetGroup.moveTo(i, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                } else {
                    i4++;
                }
            }
        } else if (i3 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if (constraintWidget instanceof Barrier) {
                Barrier barrier = (Barrier) constraintWidget;
                int i5 = 0;
                while (true) {
                    if (i5 >= barrier.mWidgetsCount) {
                        i2 = -1;
                        break;
                    }
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i5];
                    if ((i == 0 && (i2 = constraintWidget2.horizontalGroup) != -1) || (i == 1 && (i2 = constraintWidget2.verticalGroup) != -1)) {
                        break;
                    }
                    i5++;
                }
                if (i2 != -1) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList.size()) {
                            break;
                        }
                        WidgetGroup widgetGroup3 = (WidgetGroup) arrayList.get(i6);
                        if (widgetGroup3.mId == i2) {
                            widgetGroup = widgetGroup3;
                            break;
                        }
                        i6++;
                    }
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup();
                widgetGroup.mWidgets = new ArrayList();
                widgetGroup.mResults = null;
                widgetGroup.mMoveTo = -1;
                int i7 = WidgetGroup.sCount;
                WidgetGroup.sCount = i7 + 1;
                widgetGroup.mId = i7;
                widgetGroup.mOrientation = i;
            }
            arrayList.add(widgetGroup);
        }
        ArrayList arrayList2 = widgetGroup.mWidgets;
        if (arrayList2.contains(constraintWidget)) {
            return widgetGroup;
        }
        arrayList2.add(constraintWidget);
        if (constraintWidget instanceof Guideline) {
            Guideline guideline = (Guideline) constraintWidget;
            guideline.mAnchor.findDependents(guideline.mOrientation == 0 ? 1 : 0, widgetGroup, arrayList);
        }
        int i8 = widgetGroup.mId;
        if (i == 0) {
            constraintWidget.horizontalGroup = i8;
            constraintWidget.mLeft.findDependents(i, widgetGroup, arrayList);
            constraintWidget.mRight.findDependents(i, widgetGroup, arrayList);
        } else {
            constraintWidget.verticalGroup = i8;
            constraintWidget.mTop.findDependents(i, widgetGroup, arrayList);
            constraintWidget.mBaseline.findDependents(i, widgetGroup, arrayList);
            constraintWidget.mBottom.findDependents(i, widgetGroup, arrayList);
        }
        constraintWidget.mCenter.findDependents(i, widgetGroup, arrayList);
        return widgetGroup;
    }

    public static void horizontalSolvingPass(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        boolean z2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.mHorizontalSolvingPass) {
            return;
        }
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested() && canMeasure(constraintWidget)) {
            ConstraintWidgetContainer.measure(constraintWidget, measurer, new BasicMeasure$Measure());
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(2);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(4);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        HashSet hashSet = anchor.mDependents;
        if (hashSet != null && anchor.mHasFinalValue) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintAnchor constraintAnchor5 = (ConstraintAnchor) it.next();
                ConstraintWidget constraintWidget2 = constraintAnchor5.mOwner;
                int i2 = i + 1;
                boolean canMeasure = canMeasure(constraintWidget2);
                ConstraintAnchor constraintAnchor6 = constraintWidget2.mLeft;
                ConstraintAnchor constraintAnchor7 = constraintWidget2.mRight;
                if (constraintWidget2.isMeasureRequested() && canMeasure) {
                    z2 = true;
                    ConstraintWidgetContainer.measure(constraintWidget2, measurer, new BasicMeasure$Measure());
                } else {
                    z2 = true;
                }
                boolean z3 = ((constraintAnchor5 == constraintAnchor6 && (constraintAnchor4 = constraintAnchor7.mTarget) != null && constraintAnchor4.mHasFinalValue) || (constraintAnchor5 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor6.mTarget) != null && constraintAnchor3.mHasFinalValue)) ? z2 : false;
                int i3 = constraintWidget2.mListDimensionBehaviors[0];
                if (i3 != 3 || canMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        if (constraintAnchor5 == constraintAnchor6 && constraintAnchor7.mTarget == null) {
                            int margin = constraintAnchor6.getMargin() + finalValue;
                            constraintWidget2.setFinalHorizontal(margin, constraintWidget2.getWidth() + margin);
                            horizontalSolvingPass(i2, constraintWidget2, measurer, z);
                        } else if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.mTarget == null) {
                            int margin2 = finalValue - constraintAnchor7.getMargin();
                            constraintWidget2.setFinalHorizontal(margin2 - constraintWidget2.getWidth(), margin2);
                            horizontalSolvingPass(i2, constraintWidget2, measurer, z);
                        } else if (z3 && !constraintWidget2.isInHorizontalChain()) {
                            solveHorizontalCenterConstraints(i2, constraintWidget2, measurer, z);
                        }
                    }
                } else if (i3 == 3 && constraintWidget2.mMatchConstraintMaxWidth >= 0 && constraintWidget2.mMatchConstraintMinWidth >= 0 && (constraintWidget2.mVisibility == 8 || (constraintWidget2.mMatchConstraintDefaultWidth == 0 && constraintWidget2.mDimensionRatio == 0.0f))) {
                    if (!constraintWidget2.isInHorizontalChain() && z3 && !constraintWidget2.isInHorizontalChain()) {
                        solveHorizontalMatchConstraint(i2, constraintWidget, measurer, constraintWidget2, z);
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        HashSet hashSet2 = anchor2.mDependents;
        if (hashSet2 != null && anchor2.mHasFinalValue) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                ConstraintAnchor constraintAnchor8 = (ConstraintAnchor) it2.next();
                ConstraintWidget constraintWidget3 = constraintAnchor8.mOwner;
                int i4 = i + 1;
                boolean canMeasure2 = canMeasure(constraintWidget3);
                ConstraintAnchor constraintAnchor9 = constraintWidget3.mLeft;
                ConstraintAnchor constraintAnchor10 = constraintWidget3.mRight;
                if (constraintWidget3.isMeasureRequested() && canMeasure2) {
                    ConstraintWidgetContainer.measure(constraintWidget3, measurer, new BasicMeasure$Measure());
                }
                boolean z4 = (constraintAnchor8 == constraintAnchor9 && (constraintAnchor2 = constraintAnchor10.mTarget) != null && constraintAnchor2.mHasFinalValue) || (constraintAnchor8 == constraintAnchor10 && (constraintAnchor = constraintAnchor9.mTarget) != null && constraintAnchor.mHasFinalValue);
                int i5 = constraintWidget3.mListDimensionBehaviors[0];
                if (i5 != 3 || canMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        if (constraintAnchor8 == constraintAnchor9 && constraintAnchor10.mTarget == null) {
                            int margin3 = constraintAnchor9.getMargin() + finalValue2;
                            constraintWidget3.setFinalHorizontal(margin3, constraintWidget3.getWidth() + margin3);
                            horizontalSolvingPass(i4, constraintWidget3, measurer, z);
                        } else if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.mTarget == null) {
                            int margin4 = finalValue2 - constraintAnchor10.getMargin();
                            constraintWidget3.setFinalHorizontal(margin4 - constraintWidget3.getWidth(), margin4);
                            horizontalSolvingPass(i4, constraintWidget3, measurer, z);
                        } else if (z4 && !constraintWidget3.isInHorizontalChain()) {
                            solveHorizontalCenterConstraints(i4, constraintWidget3, measurer, z);
                        }
                    }
                } else if (i5 == 3 && constraintWidget3.mMatchConstraintMaxWidth >= 0 && constraintWidget3.mMatchConstraintMinWidth >= 0) {
                    if (constraintWidget3.mVisibility == 8 || (constraintWidget3.mMatchConstraintDefaultWidth == 0 && constraintWidget3.mDimensionRatio == 0.0f)) {
                        if (!constraintWidget3.isInHorizontalChain() && z4 && !constraintWidget3.isInHorizontalChain()) {
                            solveHorizontalMatchConstraint(i4, constraintWidget, measurer, constraintWidget3, z);
                        }
                    }
                }
            }
        }
        constraintWidget.mHorizontalSolvingPass = true;
    }

    public static void solveHorizontalCenterConstraints(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer, boolean z) {
        float f = constraintWidget.mHorizontalBiasPercent;
        ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
        int finalValue = constraintAnchor.mTarget.getFinalValue();
        ConstraintAnchor constraintAnchor2 = constraintWidget.mRight;
        int finalValue2 = constraintAnchor2.mTarget.getFinalValue();
        int margin = constraintAnchor.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintAnchor2.getMargin();
        if (finalValue == finalValue2) {
            f = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int width = constraintWidget.getWidth();
        int i2 = (finalValue2 - finalValue) - width;
        if (finalValue > finalValue2) {
            i2 = (finalValue - finalValue2) - width;
        }
        int i3 = ((int) (i2 > 0 ? (f * i2) + 0.5f : f * i2)) + finalValue;
        int i4 = i3 + width;
        if (finalValue > finalValue2) {
            i4 = i3 - width;
        }
        constraintWidget.setFinalHorizontal(i3, i4);
        horizontalSolvingPass(i + 1, constraintWidget, measurer, z);
    }

    public static void solveHorizontalMatchConstraint(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer, ConstraintWidget constraintWidget2, boolean z) {
        float f = constraintWidget2.mHorizontalBiasPercent;
        ConstraintAnchor constraintAnchor = constraintWidget2.mLeft;
        int margin = constraintAnchor.getMargin() + constraintAnchor.mTarget.getFinalValue();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
        int finalValue = constraintAnchor2.mTarget.getFinalValue() - constraintAnchor2.getMargin();
        if (finalValue >= margin) {
            int width = constraintWidget2.getWidth();
            if (constraintWidget2.mVisibility != 8) {
                int i2 = constraintWidget2.mMatchConstraintDefaultWidth;
                if (i2 == 2) {
                    width = (int) (constraintWidget2.mHorizontalBiasPercent * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.getWidth() : constraintWidget.mParent.getWidth()));
                } else if (i2 == 0) {
                    width = finalValue - margin;
                }
                width = Math.max(constraintWidget2.mMatchConstraintMinWidth, width);
                int i3 = constraintWidget2.mMatchConstraintMaxWidth;
                if (i3 > 0) {
                    width = Math.min(i3, width);
                }
            }
            int i4 = margin + ((int) ((f * ((finalValue - margin) - width)) + 0.5f));
            constraintWidget2.setFinalHorizontal(i4, width + i4);
            horizontalSolvingPass(i + 1, constraintWidget2, measurer, z);
        }
    }

    public static void solveVerticalCenterConstraints(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer) {
        float f = constraintWidget.mVerticalBiasPercent;
        ConstraintAnchor constraintAnchor = constraintWidget.mTop;
        int finalValue = constraintAnchor.mTarget.getFinalValue();
        ConstraintAnchor constraintAnchor2 = constraintWidget.mBottom;
        int finalValue2 = constraintAnchor2.mTarget.getFinalValue();
        int margin = constraintAnchor.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintAnchor2.getMargin();
        if (finalValue == finalValue2) {
            f = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int height = constraintWidget.getHeight();
        int i2 = (finalValue2 - finalValue) - height;
        if (finalValue > finalValue2) {
            i2 = (finalValue - finalValue2) - height;
        }
        int i3 = (int) (i2 > 0 ? (f * i2) + 0.5f : f * i2);
        int i4 = finalValue + i3;
        int i5 = i4 + height;
        if (finalValue > finalValue2) {
            i4 = finalValue - i3;
            i5 = i4 - height;
        }
        constraintWidget.setFinalVertical(i4, i5);
        verticalSolvingPass(i + 1, constraintWidget, measurer);
    }

    public static void solveVerticalMatchConstraint(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer, ConstraintWidget constraintWidget2) {
        float f = constraintWidget2.mVerticalBiasPercent;
        ConstraintAnchor constraintAnchor = constraintWidget2.mTop;
        int margin = constraintAnchor.getMargin() + constraintAnchor.mTarget.getFinalValue();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.mBottom;
        int finalValue = constraintAnchor2.mTarget.getFinalValue() - constraintAnchor2.getMargin();
        if (finalValue >= margin) {
            int height = constraintWidget2.getHeight();
            if (constraintWidget2.mVisibility != 8) {
                int i2 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (i2 == 2) {
                    height = (int) (f * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.getHeight() : constraintWidget.mParent.getHeight()));
                } else if (i2 == 0) {
                    height = finalValue - margin;
                }
                height = Math.max(constraintWidget2.mMatchConstraintMinHeight, height);
                int i3 = constraintWidget2.mMatchConstraintMaxHeight;
                if (i3 > 0) {
                    height = Math.min(i3, height);
                }
            }
            int i4 = margin + ((int) ((f * ((finalValue - margin) - height)) + 0.5f));
            constraintWidget2.setFinalVertical(i4, height + i4);
            verticalSolvingPass(i + 1, constraintWidget2, measurer);
        }
    }

    public static boolean validInGroup(int i, int i2, int i3, int i4) {
        return (i3 == 1 || i3 == 2 || (i3 == 4 && i != 2)) || (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2));
    }

    public static void verticalSolvingPass(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.mVerticalSolvingPass) {
            return;
        }
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested() && canMeasure(constraintWidget)) {
            ConstraintWidgetContainer.measure(constraintWidget, measurer, new BasicMeasure$Measure());
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(3);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(5);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        HashSet hashSet = anchor.mDependents;
        if (hashSet != null && anchor.mHasFinalValue) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintAnchor constraintAnchor5 = (ConstraintAnchor) it.next();
                ConstraintWidget constraintWidget2 = constraintAnchor5.mOwner;
                int i2 = i + 1;
                boolean canMeasure = canMeasure(constraintWidget2);
                ConstraintAnchor constraintAnchor6 = constraintWidget2.mTop;
                ConstraintAnchor constraintAnchor7 = constraintWidget2.mBottom;
                if (constraintWidget2.isMeasureRequested() && canMeasure) {
                    ConstraintWidgetContainer.measure(constraintWidget2, measurer, new BasicMeasure$Measure());
                }
                boolean z = (constraintAnchor5 == constraintAnchor6 && (constraintAnchor4 = constraintAnchor7.mTarget) != null && constraintAnchor4.mHasFinalValue) || (constraintAnchor5 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor6.mTarget) != null && constraintAnchor3.mHasFinalValue);
                int i3 = constraintWidget2.mListDimensionBehaviors[1];
                if (i3 != 3 || canMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        if (constraintAnchor5 == constraintAnchor6 && constraintAnchor7.mTarget == null) {
                            int margin = constraintAnchor6.getMargin() + finalValue;
                            constraintWidget2.setFinalVertical(margin, constraintWidget2.getHeight() + margin);
                            verticalSolvingPass(i2, constraintWidget2, measurer);
                        } else if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.mTarget == null) {
                            int margin2 = finalValue - constraintAnchor7.getMargin();
                            constraintWidget2.setFinalVertical(margin2 - constraintWidget2.getHeight(), margin2);
                            verticalSolvingPass(i2, constraintWidget2, measurer);
                        } else if (z && !constraintWidget2.isInVerticalChain()) {
                            solveVerticalCenterConstraints(i2, constraintWidget2, measurer);
                        }
                    }
                } else if (i3 == 3 && constraintWidget2.mMatchConstraintMaxHeight >= 0 && constraintWidget2.mMatchConstraintMinHeight >= 0 && (constraintWidget2.mVisibility == 8 || (constraintWidget2.mMatchConstraintDefaultHeight == 0 && constraintWidget2.mDimensionRatio == 0.0f))) {
                    if (!constraintWidget2.isInVerticalChain() && z && !constraintWidget2.isInVerticalChain()) {
                        solveVerticalMatchConstraint(i2, constraintWidget, measurer, constraintWidget2);
                    }
                }
            }
        }
        char c = 1;
        if (constraintWidget instanceof Guideline) {
            return;
        }
        HashSet hashSet2 = anchor2.mDependents;
        if (hashSet2 != null && anchor2.mHasFinalValue) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                ConstraintAnchor constraintAnchor8 = (ConstraintAnchor) it2.next();
                ConstraintWidget constraintWidget3 = constraintAnchor8.mOwner;
                int i4 = i + 1;
                boolean canMeasure2 = canMeasure(constraintWidget3);
                ConstraintAnchor constraintAnchor9 = constraintWidget3.mTop;
                ConstraintAnchor constraintAnchor10 = constraintWidget3.mBottom;
                if (constraintWidget3.isMeasureRequested() && canMeasure2) {
                    ConstraintWidgetContainer.measure(constraintWidget3, measurer, new BasicMeasure$Measure());
                }
                boolean z2 = (constraintAnchor8 == constraintAnchor9 && (constraintAnchor2 = constraintAnchor10.mTarget) != null && constraintAnchor2.mHasFinalValue) || (constraintAnchor8 == constraintAnchor10 && (constraintAnchor = constraintAnchor9.mTarget) != null && constraintAnchor.mHasFinalValue);
                int i5 = constraintWidget3.mListDimensionBehaviors[1];
                if (i5 != 3 || canMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        if (constraintAnchor8 == constraintAnchor9 && constraintAnchor10.mTarget == null) {
                            int margin3 = constraintAnchor9.getMargin() + finalValue2;
                            constraintWidget3.setFinalVertical(margin3, constraintWidget3.getHeight() + margin3);
                            verticalSolvingPass(i4, constraintWidget3, measurer);
                        } else if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.mTarget == null) {
                            int margin4 = finalValue2 - constraintAnchor10.getMargin();
                            constraintWidget3.setFinalVertical(margin4 - constraintWidget3.getHeight(), margin4);
                            verticalSolvingPass(i4, constraintWidget3, measurer);
                        } else if (z2 && !constraintWidget3.isInVerticalChain()) {
                            solveVerticalCenterConstraints(i4, constraintWidget3, measurer);
                        }
                    }
                } else if (i5 == 3 && constraintWidget3.mMatchConstraintMaxHeight >= 0 && constraintWidget3.mMatchConstraintMinHeight >= 0 && (constraintWidget3.mVisibility == 8 || (constraintWidget3.mMatchConstraintDefaultHeight == 0 && constraintWidget3.mDimensionRatio == 0.0f))) {
                    if (!constraintWidget3.isInVerticalChain() && z2 && !constraintWidget3.isInVerticalChain()) {
                        solveVerticalMatchConstraint(i4, constraintWidget, measurer, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor anchor3 = constraintWidget.getAnchor(6);
        if (anchor3.mDependents != null && anchor3.mHasFinalValue) {
            int finalValue3 = anchor3.getFinalValue();
            Iterator it3 = anchor3.mDependents.iterator();
            while (it3.hasNext()) {
                ConstraintAnchor constraintAnchor11 = (ConstraintAnchor) it3.next();
                ConstraintWidget constraintWidget4 = constraintAnchor11.mOwner;
                int i6 = i + 1;
                boolean canMeasure3 = canMeasure(constraintWidget4);
                ConstraintAnchor constraintAnchor12 = constraintWidget4.mBaseline;
                if (constraintWidget4.isMeasureRequested() && canMeasure3) {
                    ConstraintWidgetContainer.measure(constraintWidget4, measurer, new BasicMeasure$Measure());
                }
                if (constraintWidget4.mListDimensionBehaviors[c == true ? 1 : 0] != 3 || canMeasure3) {
                    if (constraintWidget4.isMeasureRequested()) {
                        continue;
                    } else if (constraintAnchor11 == constraintAnchor12) {
                        int margin5 = constraintAnchor11.getMargin() + finalValue3;
                        if (constraintWidget4.mHasBaseline) {
                            int i7 = margin5 - constraintWidget4.mBaselineDistance;
                            int i8 = constraintWidget4.mHeight + i7;
                            constraintWidget4.mY = i7;
                            constraintWidget4.mTop.setFinalValue(i7);
                            constraintWidget4.mBottom.setFinalValue(i8);
                            constraintAnchor12.setFinalValue(margin5);
                            constraintWidget4.mResolvedVertical = c == true ? 1 : 0;
                        }
                        verticalSolvingPass(i6, constraintWidget4, measurer);
                    }
                }
                c = 1;
            }
        }
        constraintWidget.mVerticalSolvingPass = true;
    }
}
