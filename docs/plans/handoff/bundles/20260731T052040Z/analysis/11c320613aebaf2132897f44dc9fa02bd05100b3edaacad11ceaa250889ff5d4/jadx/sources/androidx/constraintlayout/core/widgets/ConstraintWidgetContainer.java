package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileMetadata;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final ProcessFinisher mBasicMeasureSolver = new ProcessFinisher(this);

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
        this.mOptimizationLevel = TsExtractor.TS_STREAM_TYPE_AIT;
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
        int[] iArr2 = constraintWidget.mListDimensionBehaviors;
        basicMeasure$Measure.horizontalBehavior = iArr2[0];
        basicMeasure$Measure.verticalBehavior = iArr2[1];
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = 0;
        boolean z = basicMeasure$Measure.horizontalBehavior == 3;
        boolean z2 = basicMeasure$Measure.verticalBehavior == 3;
        boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        if (z && constraintWidget.hasDanglingDimension(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z3) {
            basicMeasure$Measure.horizontalBehavior = 2;
            if (z2 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                basicMeasure$Measure.horizontalBehavior = 1;
            }
            z = false;
        }
        if (z2 && constraintWidget.hasDanglingDimension(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z4) {
            basicMeasure$Measure.verticalBehavior = 2;
            if (z && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                basicMeasure$Measure.verticalBehavior = 1;
            }
            z2 = false;
        }
        if (constraintWidget.isResolvedHorizontally()) {
            basicMeasure$Measure.horizontalBehavior = 1;
            z = false;
        }
        if (constraintWidget.isResolvedVertically()) {
            basicMeasure$Measure.verticalBehavior = 1;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                basicMeasure$Measure.horizontalBehavior = 1;
            } else if (!z2) {
                if (basicMeasure$Measure.verticalBehavior == 1) {
                    i2 = basicMeasure$Measure.verticalDimension;
                } else {
                    basicMeasure$Measure.horizontalBehavior = 2;
                    measurer.measure(constraintWidget, basicMeasure$Measure);
                    i2 = basicMeasure$Measure.measuredHeight;
                }
                basicMeasure$Measure.horizontalBehavior = 1;
                basicMeasure$Measure.horizontalDimension = (int) (constraintWidget.mDimensionRatio * i2);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                basicMeasure$Measure.verticalBehavior = 1;
            } else if (!z) {
                if (basicMeasure$Measure.horizontalBehavior == 1) {
                    i = basicMeasure$Measure.horizontalDimension;
                } else {
                    basicMeasure$Measure.verticalBehavior = 2;
                    measurer.measure(constraintWidget, basicMeasure$Measure);
                    i = basicMeasure$Measure.measuredWidth;
                }
                basicMeasure$Measure.verticalBehavior = 1;
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
        int i5 = basicMeasure$Measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i5;
        constraintWidget.mHasBaseline = i5 > 0;
        basicMeasure$Measure.measureStrategy = 0;
    }

    public final void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            int i2 = this.mHorizontalChainsSize + 1;
            ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
            if (i2 >= chainHeadArr.length) {
                this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            ChainHead[] chainHeadArr2 = this.mHorizontalChainsArray;
            int i3 = this.mHorizontalChainsSize;
            chainHeadArr2[i3] = new ChainHead(constraintWidget, 0, this.mIsRtl);
            this.mHorizontalChainsSize = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.mVerticalChainsSize + 1;
            ChainHead[] chainHeadArr3 = this.mVerticalChainsArray;
            if (i4 >= chainHeadArr3.length) {
                this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr3, chainHeadArr3.length * 2);
            }
            ChainHead[] chainHeadArr4 = this.mVerticalChainsArray;
            int i5 = this.mVerticalChainsSize;
            chainHeadArr4[i5] = new ChainHead(constraintWidget, 1, this.mIsRtl);
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
            if (constraintWidget4 instanceof Guideline) {
                constraintWidget4.addToSolver(linearSystem, optimizeFor);
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            if (it.hasNext()) {
                ((ConstraintWidget) it.next()).getClass();
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                return;
            } else if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ConstraintWidget) it2.next()).addToSolver(linearSystem, optimizeFor);
                }
                hashSet.clear();
            }
        }
        if (LinearSystem.USE_DEPENDENCY_ORDERING) {
            HashSet hashSet2 = new HashSet();
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) this.mChildren.get(i6);
                constraintWidget5.getClass();
                if (!(constraintWidget5 instanceof Guideline)) {
                    hashSet2.add(constraintWidget5);
                }
            }
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            constraintWidgetContainer.addChildrenToSolverByDependency(this, linearSystem2, hashSet2, this.mListDimensionBehaviors[0] == 2 ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) it3.next();
                Chain.checkMatchParent(constraintWidgetContainer, linearSystem2, constraintWidget6);
                constraintWidget6.addToSolver(linearSystem2, optimizeFor);
            }
        } else {
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget7 = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i7);
                if (constraintWidget7 instanceof ConstraintWidgetContainer) {
                    int[] iArr = constraintWidget7.mListDimensionBehaviors;
                    int i8 = iArr[0];
                    int i9 = iArr[1];
                    if (i8 == 2) {
                        constraintWidget7.setHorizontalDimensionBehaviour(1);
                    }
                    if (i9 == 2) {
                        constraintWidget7.setVerticalDimensionBehaviour(1);
                    }
                    constraintWidget7.addToSolver(linearSystem2, optimizeFor);
                    if (i8 == 2) {
                        constraintWidget7.setHorizontalDimensionBehaviour(i8);
                    }
                    if (i9 == 2) {
                        constraintWidget7.setVerticalDimensionBehaviour(i9);
                    }
                } else {
                    Chain.checkMatchParent(constraintWidgetContainer, linearSystem2, constraintWidget7);
                    if (!(constraintWidget7 instanceof Guideline)) {
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
        FileMetadata fileMetadata = this.mDependencyGraph;
        ArrayList arrayList = (ArrayList) fileMetadata.createdAtMillis;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) fileMetadata.symlinkTarget;
        boolean z3 = false;
        int dimensionBehaviour = constraintWidgetContainer.getDimensionBehaviour(0);
        int dimensionBehaviour2 = constraintWidgetContainer.getDimensionBehaviour(1);
        int x = constraintWidgetContainer.getX();
        int y = constraintWidgetContainer.getY();
        if (z && (dimensionBehaviour == 2 || dimensionBehaviour2 == 2)) {
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
                if (z && dimensionBehaviour == 2) {
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(1);
                    constraintWidgetContainer.setWidth(fileMetadata.computeWrap(constraintWidgetContainer, 0));
                    constraintWidgetContainer.mHorizontalRun.mDimension.resolve(constraintWidgetContainer.getWidth());
                }
            } else if (z && dimensionBehaviour2 == 2) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(1);
                constraintWidgetContainer.setHeight(fileMetadata.computeWrap(constraintWidgetContainer, 1));
                constraintWidgetContainer.mVerticalRun.mDimension.resolve(constraintWidgetContainer.getHeight());
            }
        }
        int[] iArr = constraintWidgetContainer.mListDimensionBehaviors;
        if (i == 0) {
            int i2 = iArr[0];
            if (i2 == 1 || i2 == 4) {
                int width = constraintWidgetContainer.getWidth() + x;
                constraintWidgetContainer.mHorizontalRun.end.resolve(width);
                constraintWidgetContainer.mHorizontalRun.mDimension.resolve(width - x);
                z2 = true;
            }
            z2 = false;
        } else {
            int i3 = iArr[1];
            if (i3 == 1 || i3 == 4) {
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
        constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
        constraintWidgetContainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0609  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0635 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0670  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0686 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x06c0  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x07bd  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x081b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0828 A[LOOP:33: B:531:0x0826->B:532:0x0828, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:545:0x088e  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x08ae  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x08f2  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x08b7  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x089b  */
    /* JADX WARN: Removed duplicated region for block: B:572:0x07fe  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0907  */
    /* JADX WARN: Type inference failed for: r5v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void layout() {
        /*
            Method dump skipped, instructions count: 2325
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
    public final void resetSolverVariables(ProcessFinisher processFinisher) {
        super.resetSolverVariables(processFinisher);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetSolverVariables(processFinisher);
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
