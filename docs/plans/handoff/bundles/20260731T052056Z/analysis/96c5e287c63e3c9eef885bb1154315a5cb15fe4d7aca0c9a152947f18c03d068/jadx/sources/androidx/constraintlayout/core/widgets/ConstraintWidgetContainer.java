package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import okio.FileMetadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstraintWidgetContainer extends ConstraintWidget {
    public final FileMetadata mDependencyGraph;
    public boolean mHeightMeasuredTooSmall;
    public ChainHead[] mHorizontalChainsArray;
    public int mHorizontalChainsSize;
    public WeakReference mHorizontalWrapMax;
    public WeakReference mHorizontalWrapMin;
    public boolean mIsRtl;
    public final BasicMeasure$Measure mMeasure;
    public ConstraintLayout.Measurer mMeasurer;
    public int mOptimizationLevel;
    public int mPaddingLeft;
    public int mPaddingTop;
    public int mPass;
    public final LinearSystem mSystem;
    public ChainHead[] mVerticalChainsArray;
    public int mVerticalChainsSize;
    public WeakReference mVerticalWrapMax;
    public WeakReference mVerticalWrapMin;
    public final HashSet mWidgetsToAdd;
    public boolean mWidthMeasuredTooSmall;
    public ArrayList mChildren = new ArrayList();
    public final SVG mBasicMeasureSolver = new SVG(this);

    public ConstraintWidgetContainer() {
        FileMetadata fileMetadata = new FileMetadata();
        fileMetadata.isRegularFile = true;
        fileMetadata.isDirectory = true;
        fileMetadata.createdAtMillis = new ArrayList();
        new ArrayList();
        fileMetadata.lastModifiedAtMillis = null;
        fileMetadata.lastAccessedAtMillis = new BasicMeasure$Measure();
        fileMetadata.extras = new ArrayList();
        fileMetadata.symlinkTarget = this;
        fileMetadata.size = this;
        this.mDependencyGraph = fileMetadata;
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mOptimizationLevel = 257;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mVerticalWrapMin = null;
        this.mHorizontalWrapMin = null;
        this.mVerticalWrapMax = null;
        this.mHorizontalWrapMax = null;
        this.mWidgetsToAdd = new HashSet();
        this.mMeasure = new BasicMeasure$Measure();
    }

    public static void measure(ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer, BasicMeasure$Measure basicMeasure$Measure) {
        int i;
        int i2;
        if (measurer == null) {
            return;
        }
        int i3 = constraintWidget.mVisibility;
        int[] iArr = constraintWidget.mResolvedMatchConstraintDefault;
        if (i3 == 8 || (constraintWidget instanceof Guideline) || (constraintWidget instanceof Barrier)) {
            basicMeasure$Measure.measuredWidth = 0;
            basicMeasure$Measure.measuredHeight = 0;
            return;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        basicMeasure$Measure.horizontalBehavior = dimensionBehaviourArr[0];
        basicMeasure$Measure.verticalBehavior = dimensionBehaviourArr[1];
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = 0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = basicMeasure$Measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = basicMeasure$Measure.verticalBehavior == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
        if (z && constraintWidget.hasDanglingDimension(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z3) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z2 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z = false;
        }
        if (z2 && constraintWidget.hasDanglingDimension(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z4) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z2 = false;
        }
        if (constraintWidget.isResolvedHorizontally()) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            z = false;
        }
        if (constraintWidget.isResolvedVertically()) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z2) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = basicMeasure$Measure.verticalBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i2 = basicMeasure$Measure.verticalDimension;
                } else {
                    basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.measure(constraintWidget, basicMeasure$Measure);
                    i2 = basicMeasure$Measure.measuredHeight;
                }
                basicMeasure$Measure.horizontalBehavior = dimensionBehaviour4;
                basicMeasure$Measure.horizontalDimension = (int) (constraintWidget.mDimensionRatio * i2);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = basicMeasure$Measure.horizontalBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i = basicMeasure$Measure.horizontalDimension;
                } else {
                    basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.measure(constraintWidget, basicMeasure$Measure);
                    i = basicMeasure$Measure.measuredWidth;
                }
                basicMeasure$Measure.verticalBehavior = dimensionBehaviour6;
                int i4 = constraintWidget.mDimensionRatioSide;
                float f = constraintWidget.mDimensionRatio;
                if (i4 == -1) {
                    basicMeasure$Measure.verticalDimension = (int) (i / f);
                } else {
                    basicMeasure$Measure.verticalDimension = (int) (f * i);
                }
            }
        }
        measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        constraintWidget.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
        basicMeasure$Measure.measureStrategy = 0;
    }

    public final void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            int i2 = this.mHorizontalChainsSize + 1;
            ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
            if (i2 >= chainHeadArr.length) {
                chainHeadArr = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
                this.mHorizontalChainsArray = chainHeadArr;
            }
            int i3 = this.mHorizontalChainsSize;
            chainHeadArr[i3] = new ChainHead(constraintWidget, 0, this.mIsRtl);
            this.mHorizontalChainsSize = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.mVerticalChainsSize + 1;
            ChainHead[] chainHeadArr2 = this.mVerticalChainsArray;
            if (i4 >= chainHeadArr2.length) {
                chainHeadArr2 = (ChainHead[]) Arrays.copyOf(chainHeadArr2, chainHeadArr2.length * 2);
                this.mVerticalChainsArray = chainHeadArr2;
            }
            int i5 = this.mVerticalChainsSize;
            chainHeadArr2[i5] = new ChainHead(constraintWidget, 1, this.mIsRtl);
            this.mVerticalChainsSize = i5 + 1;
        }
    }

    public final void addChildrenToSolver(LinearSystem linearSystem) {
        ConstraintWidgetContainer constraintWidgetContainer;
        LinearSystem linearSystem2;
        boolean optimizeFor = optimizeFor(64);
        addToSolver(linearSystem, optimizeFor);
        int size = this.mChildren.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
            boolean[] zArr = constraintWidget.mIsInBarrier;
            zArr[0] = false;
            zArr[1] = false;
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.mChildren.get(i2);
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    for (int i3 = 0; i3 < barrier.mWidgetsCount; i3++) {
                        ConstraintWidget constraintWidget3 = barrier.mWidgets[i3];
                        if (barrier.mAllowsGoneWidget || constraintWidget3.allowedInBarrier()) {
                            int i4 = barrier.mBarrierType;
                            if (i4 == 0 || i4 == 1) {
                                constraintWidget3.mIsInBarrier[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                constraintWidget3.mIsInBarrier[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.mWidgetsToAdd;
        hashSet.clear();
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget4 = (ConstraintWidget) this.mChildren.get(i5);
            constraintWidget4.getClass();
            boolean z2 = constraintWidget4 instanceof Flow;
            if (z2 || (constraintWidget4 instanceof Guideline)) {
                if (z2) {
                    hashSet.add(constraintWidget4);
                } else {
                    constraintWidget4.addToSolver(linearSystem, optimizeFor);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Flow flow = (Flow) ((ConstraintWidget) it.next());
                for (int i6 = 0; i6 < flow.mWidgetsCount; i6++) {
                    if (hashSet.contains(flow.mWidgets[i6])) {
                        flow.addToSolver(linearSystem, optimizeFor);
                        hashSet.remove(flow);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ConstraintWidget) it2.next()).addToSolver(linearSystem, optimizeFor);
                }
                hashSet.clear();
            }
        }
        if (LinearSystem.USE_DEPENDENCY_ORDERING) {
            HashSet hashSet2 = new HashSet();
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) this.mChildren.get(i7);
                constraintWidget5.getClass();
                if (!(constraintWidget5 instanceof Flow) && !(constraintWidget5 instanceof Guideline)) {
                    hashSet2.add(constraintWidget5);
                }
            }
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            constraintWidgetContainer.addChildrenToSolverByDependency(this, linearSystem2, hashSet2, this.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) it3.next();
                Chain.checkMatchParent(constraintWidgetContainer, linearSystem2, constraintWidget6);
                constraintWidget6.addToSolver(linearSystem2, optimizeFor);
            }
        } else {
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            for (int i8 = 0; i8 < size; i8++) {
                ConstraintWidget constraintWidget7 = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i8);
                if (constraintWidget7 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget7.mListDimensionBehaviors;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget7.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget7.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget7.addToSolver(linearSystem2, optimizeFor);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget7.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget7.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    }
                } else {
                    Chain.checkMatchParent(constraintWidgetContainer, linearSystem2, constraintWidget7);
                    if (!(constraintWidget7 instanceof Flow) && !(constraintWidget7 instanceof Guideline)) {
                        constraintWidget7.addToSolver(linearSystem2, optimizeFor);
                    }
                }
            }
        }
        if (constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem2, null, 0);
        }
        if (constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem2, null, 1);
        }
    }

    public final boolean directMeasureWithOrientation(int i, boolean z) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        FileMetadata fileMetadata = this.mDependencyGraph;
        ArrayList arrayList = (ArrayList) fileMetadata.createdAtMillis;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) fileMetadata.symlinkTarget;
        boolean z3 = false;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidgetContainer.getDimensionBehaviour(1);
        int x = constraintWidgetContainer.getX();
        int y = constraintWidgetContainer.getY();
        if (z && (dimensionBehaviour2 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour3 == dimensionBehaviour)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun widgetRun = (WidgetRun) it.next();
                if (widgetRun.orientation == i && !widgetRun.supportsWrapComputation()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidgetContainer.setWidth(fileMetadata.computeWrap(constraintWidgetContainer, 0));
                    constraintWidgetContainer.mHorizontalRun.mDimension.resolve(constraintWidgetContainer.getWidth());
                }
            } else if (z && dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(fileMetadata.computeWrap(constraintWidgetContainer, 1));
                constraintWidgetContainer.mVerticalRun.mDimension.resolve(constraintWidgetContainer.getHeight());
            }
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.mListDimensionBehaviors;
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
            if (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer.getWidth() + x;
                constraintWidgetContainer.mHorizontalRun.end.resolve(width);
                constraintWidgetContainer.mHorizontalRun.mDimension.resolve(width - x);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[1];
            if (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer.getHeight() + y;
                constraintWidgetContainer.mVerticalRun.end.resolve(height);
                constraintWidgetContainer.mVerticalRun.mDimension.resolve(height - y);
                z2 = true;
            }
            z2 = false;
        }
        fileMetadata.measureWidgets();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            WidgetRun widgetRun2 = (WidgetRun) it2.next();
            if (widgetRun2.orientation == i && (widgetRun2.mWidget != constraintWidgetContainer || widgetRun2.mResolved)) {
                widgetRun2.applyToWidget();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z3 = true;
                break;
            }
            WidgetRun widgetRun3 = (WidgetRun) it3.next();
            if (widgetRun3.orientation == i && (z2 || widgetRun3.mWidget != constraintWidgetContainer)) {
                if (!widgetRun3.start.resolved) {
                    break;
                }
                if (!widgetRun3.end.resolved) {
                    break;
                }
                if (!(widgetRun3 instanceof ChainRun) && !widgetRun3.mDimension.resolved) {
                    break;
                }
            }
        }
        constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        constraintWidgetContainer.setVerticalDimensionBehaviour(dimensionBehaviour3);
        return z3;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void getSceneString(StringBuilder sb) {
        sb.append(this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.mHeight);
        sb.append("\n");
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            ((ConstraintWidget) it.next()).getSceneString(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    /* JADX WARN: Removed duplicated region for block: B:265:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0838 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x08b7  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x08d2  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x08e0  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0919  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x091a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x08dd  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x081c  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x065f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x067a  */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void layout() {
        /*
            Method dump skipped, instructions count: 2359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidgetContainer.layout():void");
    }

    public final boolean optimizeFor(int i) {
        return (this.mOptimizationLevel & i) == i;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mChildren.clear();
        super.reset();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void resetSolverVariables(SVG svg) {
        super.resetSolverVariables(svg);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetSolverVariables(svg);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void updateFromRuns(boolean z, boolean z2) {
        super.updateFromRuns(z, z2);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).updateFromRuns(z, z2);
        }
    }
}
