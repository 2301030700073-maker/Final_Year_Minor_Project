package okio;

import android.os.Trace;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadAlignmentLines;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.MeasureAndLayoutDelegate$PostponedRequest;
import androidx.compose.ui.node.MeasureAndLayoutDelegate$WhenMappings;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKindKt;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$localeList$2;
import androidx.compose.ui.unit.Constraints;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BaselineDimensionDependency;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.Dependency;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.DimensionDependency;
import androidx.constraintlayout.core.widgets.analyzer.GuidelineReference;
import androidx.constraintlayout.core.widgets.analyzer.HelperReferences;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.RunGroup;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.BaseRoomConnectionManager$WhenMappings;
import androidx.room.DatabaseConfiguration;
import androidx.room.RoomConnectionManager$NoOpOpenDelegate;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase$createConnectionManager$2;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.android.material.internal.CheckableGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FileMetadata {
    public final /* synthetic */ int $r8$classId;
    public Object createdAtMillis;
    public Object extras;
    public boolean isDirectory;
    public boolean isRegularFile;
    public Object lastAccessedAtMillis;
    public Object lastModifiedAtMillis;
    public Object size;
    public Object symlinkTarget;

    public FileMetadata(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate, RoomDatabase$createConnectionManager$2 roomDatabase$createConnectionManager$2) {
        int i;
        ConnectionPoolImpl connectionPoolImpl;
        Object obj;
        this.$r8$classId = 3;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.sqliteOpenHelperFactory;
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        String str = databaseConfiguration.name;
        this.symlinkTarget = databaseConfiguration;
        this.size = roomOpenDelegate;
        Object obj2 = databaseConfiguration.callbacks;
        this.createdAtMillis = obj2 == null ? EmptyList.INSTANCE : obj2;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = null;
        if (sQLiteDriver != null) {
            this.lastAccessedAtMillis = null;
            if (sQLiteDriver.hasConnectionPool()) {
                obj = new PassthroughConnectionPool(new AndroidSvg(this, sQLiteDriver), str == null ? ":memory:" : str, roomDatabase$createConnectionManager$2);
            } else {
                if (str == null) {
                    connectionPoolImpl = new ConnectionPoolImpl(new AndroidSvg(this, sQLiteDriver));
                } else {
                    AndroidSvg androidSvg = new AndroidSvg(this, sQLiteDriver);
                    journalMode.getClass();
                    int[] iArr = BaseRoomConnectionManager$WhenMappings.$EnumSwitchMapping$0;
                    int i2 = iArr[journalMode.ordinal()];
                    if (i2 == 1) {
                        i = 1;
                    } else {
                        if (i2 != 2) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m$1("Can't get max number of reader for journal mode '", journalMode);
                            throw null;
                        }
                        i = 4;
                    }
                    int i3 = iArr[journalMode.ordinal()];
                    if (i3 != 1 && i3 != 2) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1("Can't get max number of writers for journal mode '", journalMode);
                        throw null;
                    }
                    connectionPoolImpl = new ConnectionPoolImpl(androidSvg, str, i);
                }
                obj = connectionPoolImpl;
            }
            this.lastModifiedAtMillis = obj;
        } else {
            if (factory == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            supportSQLiteOpenHelper = factory.create(new CheckableGroup(databaseConfiguration.context, str, new PriorityQueue(this, roomOpenDelegate.version), false, false));
            this.lastAccessedAtMillis = supportSQLiteOpenHelper;
            this.lastModifiedAtMillis = new PassthroughConnectionPool(new MemoryCacheService(supportSQLiteOpenHelper), str == null ? ":memory:" : str, roomDatabase$createConnectionManager$2);
        }
        boolean z = journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
        }
    }

    public static void configureBusyTimeout(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            prepare.step();
            long j = prepare.getLong(0);
            TuplesKt.closeFinally(prepare, null);
            if (j < 3000) {
                ContextsKt.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                TuplesKt.closeFinally(prepare, th);
                throw th2;
            }
        }
    }

    /* renamed from: doLookaheadRemeasure-sdFAvZA, reason: not valid java name */
    public static boolean m880doLookaheadRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean m559remeasureBRTryo0;
        LayoutNode layoutNode2 = layoutNode.lookaheadRoot;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (layoutNode2 == null) {
            return false;
        }
        if (constraints != null) {
            if (layoutNode2 != null) {
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate.getClass();
                m559remeasureBRTryo0 = lookaheadPassDelegate.m559remeasureBRTryo0(constraints.value);
            }
            m559remeasureBRTryo0 = false;
        } else {
            LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.lookaheadPassDelegate;
            Constraints constraints2 = lookaheadPassDelegate2 != null ? lookaheadPassDelegate2.lookaheadConstraints : null;
            if (constraints2 != null && layoutNode2 != null) {
                lookaheadPassDelegate2.getClass();
                m559remeasureBRTryo0 = lookaheadPassDelegate2.m559remeasureBRTryo0(constraints2.value);
            }
            m559remeasureBRTryo0 = false;
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (m559remeasureBRTryo0 && parent$ui != null) {
            if (parent$ui.lookaheadRoot == null) {
                LayoutNode.requestRemeasure$ui$default(parent$ui, false, 3);
                return m559remeasureBRTryo0;
            }
            if (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestLookaheadRemeasure$ui$default(parent$ui, false, 3);
                return m559remeasureBRTryo0;
            }
            if (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InLayoutBlock) {
                parent$ui.requestLookaheadRelayout$ui(false);
            }
        }
        return m559remeasureBRTryo0;
    }

    /* renamed from: doRemeasure-sdFAvZA, reason: not valid java name */
    public static boolean m881doRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean z;
        if (constraints != null) {
            if (layoutNode.intrinsicsUsageByParent == LayoutNode.UsageByParent.NotUsed) {
                layoutNode.clearSubtreeIntrinsicsUsage$ui();
            }
            z = layoutNode.layoutDelegate.measurePassDelegate.m562remeasureBRTryo0(constraints.value);
        } else {
            MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
            Constraints constraints2 = measurePassDelegate.measuredOnce ? new Constraints(measurePassDelegate.measurementConstraints) : null;
            if (constraints2 != null) {
                if (layoutNode.intrinsicsUsageByParent == LayoutNode.UsageByParent.NotUsed) {
                    layoutNode.clearSubtreeIntrinsicsUsage$ui();
                }
                z = layoutNode.layoutDelegate.measurePassDelegate.m562remeasureBRTryo0(constraints2.value);
            } else {
                layoutNode.getClass();
                z = false;
            }
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (z && parent$ui != null) {
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestRemeasure$ui$default(parent$ui, false, 3);
                return z;
            }
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InLayoutBlock) {
                parent$ui.requestRelayout$ui(false);
            }
        }
        return z;
    }

    public static boolean getCanAffectParentInLookahead(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
            return (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.NotUsed && ((lookaheadPassDelegate = layoutNode.layoutDelegate.lookaheadPassDelegate) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) == null || !lookaheadAlignmentLines.getRequired$ui())) ? false : true;
        }
        return false;
    }

    public static boolean getCanAffectPlacedParent(LayoutNode layoutNode) {
        if (!layoutNode.getMeasurePending$ui()) {
            return false;
        }
        do {
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.NotUsed && !layoutNode.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui()) {
                LayoutNode parent$ui = layoutNode.getParent$ui();
                if ((parent$ui != null ? parent$ui.layoutDelegate.layoutState : null) != LayoutNode.LayoutState.Measuring) {
                    return false;
                }
            }
            layoutNode = layoutNode.getParent$ui();
            if (layoutNode == null) {
                return false;
            }
        } while (!layoutNode.isPlaced());
        return true;
    }

    public static boolean isUsedInMeasureOrLayout(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        return layoutNode.isPlaced() || layoutNodeLayoutDelegate.measurePassDelegate.isPlacedByParent || getCanAffectPlacedParent(layoutNode) || Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) || getCanAffectParentInLookahead(layoutNode) || layoutNodeLayoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui() || !((lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) == null || !lookaheadAlignmentLines.getRequired$ui());
    }

    public void applyGroup(DependencyNode dependencyNode, int i, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.mRun;
        RunGroup runGroup2 = widgetRun.mRunGroup;
        DependencyNode dependencyNode2 = widgetRun.end;
        DependencyNode dependencyNode3 = widgetRun.start;
        if (runGroup2 == null) {
            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.symlinkTarget;
            if (widgetRun == constraintWidgetContainer.mHorizontalRun || widgetRun == constraintWidgetContainer.mVerticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup();
                runGroup.mFirstRun = null;
                runGroup.mRuns = new ArrayList();
                runGroup.mFirstRun = widgetRun;
                arrayList.add(runGroup);
            }
            widgetRun.mRunGroup = runGroup;
            runGroup.mRuns.add(widgetRun);
            Iterator it = dependencyNode3.mDependencies.iterator();
            while (it.hasNext()) {
                Dependency dependency = (Dependency) it.next();
                if (dependency instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency, i, arrayList, runGroup);
                }
            }
            Iterator it2 = dependencyNode2.mDependencies.iterator();
            while (it2.hasNext()) {
                Dependency dependency2 = (Dependency) it2.next();
                if (dependency2 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency2, i, arrayList, runGroup);
                }
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.mDependencies.iterator();
                while (it3.hasNext()) {
                    Dependency dependency3 = (Dependency) it3.next();
                    if (dependency3 instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency3, i, arrayList, runGroup);
                    }
                }
            }
            Iterator it4 = dependencyNode3.mTargets.iterator();
            while (it4.hasNext()) {
                applyGroup((DependencyNode) it4.next(), i, arrayList, runGroup);
            }
            Iterator it5 = dependencyNode2.mTargets.iterator();
            while (it5.hasNext()) {
                applyGroup((DependencyNode) it5.next(), i, arrayList, runGroup);
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it6 = ((VerticalWidgetRun) widgetRun).baseline.mTargets.iterator();
                while (it6.hasNext()) {
                    applyGroup((DependencyNode) it6.next(), i, arrayList, runGroup);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x021b, code lost:
    
        if (r0 != 2) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x021d, code lost:
    
        r4 = r2[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x021f, code lost:
    
        if (r4 == r3) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0221, code lost:
    
        if (r4 != r10) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0224, code lost:
    
        r11 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01bb, code lost:
    
        r1 = 1;
        r6 = r3;
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x028d, code lost:
    
        if (r11 != r12) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x028f, code lost:
    
        if (r3 != r12) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0291, code lost:
    
        if (r14 == r1) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0293, code lost:
    
        if (r0 != r1) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0298, code lost:
    
        if (r0 != 2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x029a, code lost:
    
        if (r14 != 2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x029e, code lost:
    
        if (r2[0] != r6) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02a2, code lost:
    
        if (r2[r1] != r6) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02a4, code lost:
    
        measure(r5, r6, (int) ((r13 * r24.getWidth()) + 0.5f), r6, (int) ((r15 * r24.getHeight()) + 0.5f));
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0295, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02d7, code lost:
    
        measure(r5, r6, 0, r6, 0);
        r5.mHorizontalRun.mDimension.wrapValue = r5.getWidth();
        r5.mVerticalRun.mDimension.wrapValue = r5.getHeight();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0226, code lost:
    
        measure(r5, r6, r5.getWidth(), r3, (int) ((r15 * r24.getHeight()) + 0.5f));
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0254, code lost:
    
        r11 = r6;
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025c, code lost:
    
        if (r4[2].mTarget == null) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0264, code lost:
    
        if (r4[3].mTarget != null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0268, code lost:
    
        r3 = r8;
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x026b, code lost:
    
        measure(r5, r7, 0, r8, 0);
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01ba, code lost:
    
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0152, code lost:
    
        measure(r5, r1, (int) ((r13 * r24.getWidth()) + 0.5f), r3, r5.getHeight());
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0180, code lost:
    
        r8 = r3;
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0188, code lost:
    
        if (r4[0].mTarget == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x018e, code lost:
    
        if (r4[1].mTarget != null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0190, code lost:
    
        measure(r5, r6, 0, r8, 0);
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x00ea, code lost:
    
        r8 = r3;
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x00dc, code lost:
    
        if (r3 == r1) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cb, code lost:
    
        if (r11 == r1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ce, code lost:
    
        r6 = r1;
        r1 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e2, code lost:
    
        if (r11 != r12) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e4, code lost:
    
        if (r3 == r6) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e6, code lost:
    
        if (r3 != r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ee, code lost:
    
        if (r14 != 3) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f0, code lost:
    
        if (r3 != r6) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f2, code lost:
    
        measure(r5, r6, 0, r6, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fa, code lost:
    
        r9 = r5.getHeight();
        measure(r5, r1, (int) ((r9 * r5.mDimensionRatio) + 0.5f), r1, r9);
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x012d, code lost:
    
        if (r14 != 1) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x012f, code lost:
    
        measure(r5, r6, 0, r3, 0);
        r5.mHorizontalRun.mDimension.wrapValue = r5.getWidth();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0143, code lost:
    
        if (r14 != 2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0145, code lost:
    
        r1 = r2[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0147, code lost:
    
        if (r1 == r1) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0149, code lost:
    
        if (r1 != r10) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014c, code lost:
    
        r8 = r3;
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01b2, code lost:
    
        if (r8 != r12) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01b4, code lost:
    
        if (r11 == r6) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b6, code lost:
    
        if (r11 != r3) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c0, code lost:
    
        if (r0 != 3) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c2, code lost:
    
        if (r11 != r6) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c4, code lost:
    
        measure(r5, r6, 0, r6, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01cc, code lost:
    
        r7 = r5.getWidth();
        r0 = r5.mDimensionRatio;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d5, code lost:
    
        if (r5.mDimensionRatioSide != (-1)) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d7, code lost:
    
        r0 = r17 / r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d9, code lost:
    
        measure(r5, r3, r7, r3, (int) ((r7 * r0) + 0.5f));
        r5.mHorizontalRun.mDimension.resolve(r5.getWidth());
        r5.mVerticalRun.mDimension.resolve(r5.getHeight());
        r5.measured = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0201, code lost:
    
        if (r0 != 1) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0203, code lost:
    
        measure(r5, r11, 0, r6, 0);
        r5.mVerticalRun.mDimension.wrapValue = r5.getHeight();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0218, code lost:
    
        r7 = r6;
        r6 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r24) {
        /*
            Method dump skipped, instructions count: 830
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):void");
    }

    public void buildGraph() {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.symlinkTarget;
        ArrayList arrayList = (ArrayList) this.extras;
        ArrayList arrayList2 = (ArrayList) this.createdAtMillis;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) this.size;
        constraintWidgetContainer2.mHorizontalRun.clear();
        constraintWidgetContainer2.mVerticalRun.clear();
        arrayList2.add(constraintWidgetContainer2.mHorizontalRun);
        arrayList2.add(constraintWidgetContainer2.mVerticalRun);
        Iterator it = constraintWidgetContainer2.mChildren.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (constraintWidget instanceof Guideline) {
                GuidelineReference guidelineReference = new GuidelineReference(constraintWidget);
                constraintWidget.mHorizontalRun.clear();
                constraintWidget.mVerticalRun.clear();
                guidelineReference.orientation = ((Guideline) constraintWidget).mOrientation;
                arrayList2.add(guidelineReference);
            } else {
                if (constraintWidget.isInHorizontalChain()) {
                    if (constraintWidget.horizontalChainRun == null) {
                        constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.horizontalChainRun);
                } else {
                    arrayList2.add(constraintWidget.mHorizontalRun);
                }
                if (constraintWidget.isInVerticalChain()) {
                    if (constraintWidget.verticalChainRun == null) {
                        constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.verticalChainRun);
                } else {
                    arrayList2.add(constraintWidget.mVerticalRun);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList2.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((WidgetRun) it2.next()).clear();
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it3.next();
            if (widgetRun.mWidget != constraintWidgetContainer2) {
                widgetRun.apply();
            }
        }
        arrayList.clear();
        findGroup(constraintWidgetContainer.mHorizontalRun, 0, arrayList);
        findGroup(constraintWidgetContainer.mVerticalRun, 1, arrayList);
        this.isRegularFile = false;
    }

    public int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        ArrayList arrayList;
        int i2;
        long max;
        float f;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        ArrayList arrayList2 = (ArrayList) this.extras;
        int size = arrayList2.size();
        long j = 0;
        int i3 = 0;
        long j2 = 0;
        while (i3 < size) {
            WidgetRun widgetRun = ((RunGroup) arrayList2.get(i3)).mFirstRun;
            if (!(widgetRun instanceof ChainRun) ? !(i != 0 ? (widgetRun instanceof VerticalWidgetRun) : (widgetRun instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun).orientation != i) {
                DependencyNode dependencyNode = (i == 0 ? constraintWidgetContainer2.mHorizontalRun : constraintWidgetContainer2.mVerticalRun).start;
                DependencyNode dependencyNode2 = (i == 0 ? constraintWidgetContainer2.mHorizontalRun : constraintWidgetContainer2.mVerticalRun).end;
                DependencyNode dependencyNode3 = widgetRun.start;
                DependencyNode dependencyNode4 = widgetRun.end;
                boolean contains = dependencyNode3.mTargets.contains(dependencyNode);
                boolean contains2 = dependencyNode4.mTargets.contains(dependencyNode2);
                long wrapDimension = widgetRun.getWrapDimension();
                if (contains && contains2) {
                    long traverseStart = RunGroup.traverseStart(dependencyNode3, j);
                    arrayList = arrayList2;
                    long traverseEnd = RunGroup.traverseEnd(dependencyNode4, j);
                    long j3 = traverseStart - wrapDimension;
                    int i4 = dependencyNode4.mMargin;
                    i2 = i3;
                    if (j3 >= (-i4)) {
                        j3 += i4;
                    }
                    long j4 = dependencyNode3.mMargin;
                    long j5 = ((-traverseEnd) - wrapDimension) - j4;
                    if (j5 >= j4) {
                        j5 -= j4;
                    }
                    ConstraintWidget constraintWidget = widgetRun.mWidget;
                    if (i == 0) {
                        f = constraintWidget.mHorizontalBiasPercent;
                    } else if (i == 1) {
                        f = constraintWidget.mVerticalBiasPercent;
                    } else {
                        constraintWidget.getClass();
                        f = -1.0f;
                    }
                    float f2 = f > RecyclerView.DECELERATION_RATE ? (long) ((j3 / (1.0f - f)) + (j5 / f)) : 0L;
                    max = (dependencyNode3.mMargin + ((((long) ((f2 * f) + 0.5f)) + wrapDimension) + ((long) Animation.CC.m(1.0f, f, f2, 0.5f)))) - dependencyNode4.mMargin;
                } else {
                    arrayList = arrayList2;
                    i2 = i3;
                    max = contains ? Math.max(RunGroup.traverseStart(dependencyNode3, dependencyNode3.mMargin), dependencyNode3.mMargin + wrapDimension) : contains2 ? Math.max(-RunGroup.traverseEnd(dependencyNode4, dependencyNode4.mMargin), (-dependencyNode4.mMargin) + wrapDimension) : (widgetRun.getWrapDimension() + dependencyNode3.mMargin) - dependencyNode4.mMargin;
                }
            } else {
                arrayList = arrayList2;
                max = j;
                i2 = i3;
            }
            j2 = Math.max(j2, max);
            i3 = i2 + 1;
            arrayList2 = arrayList;
            constraintWidgetContainer2 = constraintWidgetContainer;
            j = 0;
        }
        return (int) j2;
    }

    public void configureDatabase(SQLiteConnection sQLiteConnection) {
        Object failure;
        RoomOpenDelegate roomOpenDelegate = (RoomOpenDelegate) this.size;
        configureBusyTimeout(sQLiteConnection);
        DatabaseConfiguration databaseConfiguration = (DatabaseConfiguration) this.symlinkTarget;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        RoomDatabase.JournalMode journalMode2 = RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        if (journalMode == journalMode2) {
            ContextsKt.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            ContextsKt.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
        if (databaseConfiguration.journalMode == journalMode2) {
            ContextsKt.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            ContextsKt.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            TuplesKt.closeFinally(prepare, null);
            int i2 = roomOpenDelegate.version;
            int i3 = roomOpenDelegate.version;
            if (i != i2) {
                ContextsKt.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        onCreate(sQLiteConnection);
                    } else {
                        onMigrate(sQLiteConnection, i, i3);
                    }
                    ContextsKt.execSQL(sQLiteConnection, "PRAGMA user_version = " + i3);
                    failure = Unit.INSTANCE;
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    ContextsKt.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable m815exceptionOrNullimpl = Result.m815exceptionOrNullimpl(failure);
                if (m815exceptionOrNullimpl != null) {
                    ContextsKt.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw m815exceptionOrNullimpl;
                }
            }
            onOpen(sQLiteConnection);
        } finally {
        }
    }

    public void dispatchOnPositionedCallbacks(boolean z) {
        CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.createdAtMillis;
        MutableVector mutableVector = (MutableVector) anonymousClass1.mCardBackground;
        if (z) {
            LayoutNode layoutNode = (LayoutNode) this.symlinkTarget;
            if (layoutNode.globallyPositionedObservers > 0) {
                mutableVector.clear();
                mutableVector.add(layoutNode);
                layoutNode.needsOnGloballyPositionedDispatch = true;
            }
        }
        if (mutableVector.size != 0) {
            Trace.beginSection("Compose:onPositionedCallbacks");
            try {
                anonymousClass1.dispatch();
            } finally {
                Trace.endSection();
            }
        }
    }

    public void drainPostponedMeasureRequests() {
        MutableVector mutableVector = (MutableVector) this.lastAccessedAtMillis;
        int i = mutableVector.size;
        if (i != 0) {
            Object[] objArr = mutableVector.content;
            for (int i2 = 0; i2 < i; i2++) {
                MeasureAndLayoutDelegate$PostponedRequest measureAndLayoutDelegate$PostponedRequest = (MeasureAndLayoutDelegate$PostponedRequest) objArr[i2];
                if (measureAndLayoutDelegate$PostponedRequest.node.isAttached()) {
                    boolean z = measureAndLayoutDelegate$PostponedRequest.isLookahead;
                    LayoutNode layoutNode = measureAndLayoutDelegate$PostponedRequest.node;
                    boolean z2 = measureAndLayoutDelegate$PostponedRequest.isForced;
                    if (z) {
                        LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, z2, 2);
                    } else {
                        LayoutNode.requestRemeasure$ui$default(layoutNode, z2, 2);
                    }
                }
            }
            mutableVector.clear();
        }
    }

    public void ensureSubtreeLookaheadReplaced(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (Intrinsics.areEqual(layoutNode2.isPlacedInLookahead(), Boolean.TRUE) && !layoutNode2.isDeactivated) {
                if (((SVG) this.size).contains(layoutNode2)) {
                    layoutNode2.lookaheadReplace$ui();
                }
                ensureSubtreeLookaheadReplaced(layoutNode2);
            }
        }
    }

    public void findGroup(WidgetRun widgetRun, int i, ArrayList arrayList) {
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        Iterator it = dependencyNode.mDependencies.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i, arrayList, null);
            }
        }
        Iterator it2 = dependencyNode2.mDependencies.iterator();
        while (it2.hasNext()) {
            Dependency dependency2 = (Dependency) it2.next();
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.mDependencies.iterator();
            while (it3.hasNext()) {
                Dependency dependency3 = (Dependency) it3.next();
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, arrayList, null);
                }
            }
        }
    }

    public void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z) {
        if (!this.isRegularFile) {
            InlineClassHelperKt.throwIllegalStateException("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (z ? layoutNode.layoutDelegate.lookaheadMeasurePending : layoutNode.getMeasurePending$ui()) {
            InlineClassHelperKt.throwIllegalArgumentException("node not yet measured");
        }
        forceMeasureTheSubtreeInternal(layoutNode, z);
    }

    public void forceMeasureTheSubtreeInternal(LayoutNode layoutNode, boolean z) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if ((!z && (layoutNode2.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode2.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui())) || (z && (layoutNode2.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InMeasureBlock || ((lookaheadPassDelegate = layoutNode2.layoutDelegate.lookaheadPassDelegate) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) != null && lookaheadAlignmentLines.getRequired$ui())))) {
                boolean isOutMostLookaheadRoot = HitTestResultKt.isOutMostLookaheadRoot(layoutNode2);
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.layoutDelegate;
                if (isOutMostLookaheadRoot && !z) {
                    if (layoutNodeLayoutDelegate.lookaheadMeasurePending && ((SVG) this.size).contains(layoutNode2)) {
                        remeasureIfNeeded(layoutNode2, true);
                    } else {
                        forceMeasureTheSubtree(layoutNode2, true);
                    }
                }
                if (z ? layoutNodeLayoutDelegate.lookaheadMeasurePending : layoutNode2.getMeasurePending$ui()) {
                    remeasureIfNeeded(layoutNode2, z);
                }
                if (!(z ? layoutNodeLayoutDelegate.lookaheadMeasurePending : layoutNode2.getMeasurePending$ui())) {
                    forceMeasureTheSubtreeInternal(layoutNode2, z);
                }
            }
        }
        if (z ? layoutNode.layoutDelegate.lookaheadMeasurePending : layoutNode.getMeasurePending$ui()) {
            remeasureIfNeeded(layoutNode, z);
        }
    }

    public void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.lastAccessedAtMillis;
        basicMeasure$Measure.horizontalBehavior = dimensionBehaviour;
        basicMeasure$Measure.verticalBehavior = dimensionBehaviour2;
        basicMeasure$Measure.horizontalDimension = i;
        basicMeasure$Measure.verticalDimension = i2;
        ((ConstraintLayout.Measurer) this.lastModifiedAtMillis).measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        constraintWidget.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public boolean measureAndLayout(AndroidComposeView$localeList$2 androidComposeView$localeList$2) {
        boolean z;
        Modifier.Node node;
        boolean z2;
        LayoutNode layoutNode;
        boolean z3;
        boolean remeasureIfNeeded;
        SVG svg = (SVG) this.size;
        HintHandler hintHandler = (HintHandler) svg.rootElement;
        LayoutNode layoutNode2 = (LayoutNode) this.symlinkTarget;
        if (!layoutNode2.isAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.isPlaced()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
        }
        if (this.isRegularFile) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
        }
        boolean z4 = false;
        if (((Constraints) this.extras) != null) {
            this.isRegularFile = true;
            this.isDirectory = true;
            try {
                if (svg.isNotEmpty()) {
                    z = false;
                    while (true) {
                        HintHandler hintHandler2 = (HintHandler) svg.idToElementMap;
                        SortedSet sortedSet = (SortedSet) hintHandler2.state;
                        HintHandler hintHandler3 = (HintHandler) svg.cssRules;
                        SortedSet sortedSet2 = (SortedSet) hintHandler3.state;
                        if (!((SortedSet) hintHandler.state).isEmpty()) {
                            layoutNode = (LayoutNode) ((SortedSet) hintHandler.state).first();
                            hintHandler.remove(layoutNode);
                            z3 = layoutNode.lookaheadRoot != null;
                            z2 = false;
                        } else if (!sortedSet2.isEmpty()) {
                            layoutNode = (LayoutNode) sortedSet2.first();
                            hintHandler3.remove(layoutNode);
                            z3 = layoutNode.lookaheadRoot != null;
                            z2 = true;
                        } else {
                            if (sortedSet.isEmpty()) {
                                break;
                            }
                            LayoutNode layoutNode3 = (LayoutNode) sortedSet.first();
                            hintHandler2.remove(layoutNode3);
                            z2 = true;
                            layoutNode = layoutNode3;
                            z3 = false;
                        }
                        if (z2) {
                            remeasureIfNeeded = remeasureAndRelayoutIfNeeded(layoutNode, z3);
                        } else {
                            remeasureIfNeeded = remeasureIfNeeded(layoutNode, z3);
                            if (layoutNode.layoutDelegate.lookaheadLayoutPending) {
                                svg.add(layoutNode, Invalidation.LookaheadPlacement);
                            }
                            if (layoutNode.getLayoutPending$ui()) {
                                svg.add(layoutNode, Invalidation.Placement);
                            }
                        }
                        if (layoutNode == layoutNode2 && remeasureIfNeeded) {
                            z = true;
                        }
                    }
                    if (androidComposeView$localeList$2 != null) {
                        androidComposeView$localeList$2.invoke();
                    }
                } else {
                    z = false;
                }
            } finally {
            }
        } else {
            z = false;
        }
        MutableVector mutableVector = (MutableVector) this.lastModifiedAtMillis;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        int i2 = 0;
        while (i2 < i) {
            NodeChain nodeChain = ((LayoutNode) objArr[i2]).nodes;
            InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) nodeChain.innerCoordinator;
            boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(4194304);
            Modifier.Node node2 = innerNodeCoordinator.tail;
            if (m580getIncludeSelfInTraversalH91voCI || (node2 = node2.parent) != null) {
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                Modifier.Node headNode = innerNodeCoordinator.headNode(m580getIncludeSelfInTraversalH91voCI);
                while (headNode != null && (headNode.aggregateChildKindSet & 4194304) != 0) {
                    if ((headNode.kindSet & 4194304) != 0) {
                        DelegatingNode delegatingNode = headNode;
                        MutableVector mutableVector2 = null;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof LayoutAwareModifierNode) {
                                ((LayoutAwareModifierNode) delegatingNode).onPlaced((InnerNodeCoordinator) nodeChain.innerCoordinator);
                            } else if ((delegatingNode.kindSet & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node3 = delegatingNode.delegate;
                                ?? r15 = z4;
                                node = delegatingNode;
                                mutableVector2 = mutableVector2;
                                while (node3 != null) {
                                    if ((node3.kindSet & 4194304) != 0) {
                                        r15++;
                                        mutableVector2 = mutableVector2;
                                        if (r15 == 1) {
                                            node = node3;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node != null) {
                                                mutableVector2.add(node);
                                                node = null;
                                            }
                                            mutableVector2.add(node3);
                                        }
                                    }
                                    node3 = node3.child;
                                    node = node;
                                    mutableVector2 = mutableVector2;
                                    r15 = r15;
                                }
                                if (r15 == 1) {
                                    z4 = false;
                                    delegatingNode = node;
                                    mutableVector2 = mutableVector2;
                                }
                            }
                            node = HitTestResultKt.pop(mutableVector2);
                            z4 = false;
                            delegatingNode = node;
                            mutableVector2 = mutableVector2;
                        }
                    }
                    if (headNode != node2) {
                        headNode = headNode.child;
                        z4 = false;
                    }
                }
            }
            i2++;
            z4 = false;
        }
        mutableVector.clear();
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0081 A[Catch: all -> 0x0067, TryCatch #1 {all -> 0x0067, blocks: (B:20:0x003e, B:22:0x0062, B:25:0x0078, B:27:0x0081, B:28:0x0084, B:31:0x0092, B:33:0x009a, B:34:0x009f, B:36:0x00a7, B:37:0x00aa, B:39:0x00b0, B:41:0x00b6, B:43:0x00c1, B:44:0x00ca, B:47:0x0069, B:49:0x0075), top: B:19:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a A[Catch: all -> 0x0067, TryCatch #1 {all -> 0x0067, blocks: (B:20:0x003e, B:22:0x0062, B:25:0x0078, B:27:0x0081, B:28:0x0084, B:31:0x0092, B:33:0x009a, B:34:0x009f, B:36:0x00a7, B:37:0x00aa, B:39:0x00b0, B:41:0x00b6, B:43:0x00c1, B:44:0x00ca, B:47:0x0069, B:49:0x0075), top: B:19:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f A[Catch: all -> 0x0067, TryCatch #1 {all -> 0x0067, blocks: (B:20:0x003e, B:22:0x0062, B:25:0x0078, B:27:0x0081, B:28:0x0084, B:31:0x0092, B:33:0x009a, B:34:0x009f, B:36:0x00a7, B:37:0x00aa, B:39:0x00b0, B:41:0x00b6, B:43:0x00c1, B:44:0x00ca, B:47:0x0069, B:49:0x0075), top: B:19:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c1 A[Catch: all -> 0x0067, TryCatch #1 {all -> 0x0067, blocks: (B:20:0x003e, B:22:0x0062, B:25:0x0078, B:27:0x0081, B:28:0x0084, B:31:0x0092, B:33:0x009a, B:34:0x009f, B:36:0x00a7, B:37:0x00aa, B:39:0x00b0, B:41:0x00b6, B:43:0x00c1, B:44:0x00ca, B:47:0x0069, B:49:0x0075), top: B:19:0x003e }] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m882measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode r13, long r14) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.m882measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode, long):void");
    }

    public void measureOnly() {
        LayoutNode layoutNode = (LayoutNode) this.symlinkTarget;
        SVG svg = (SVG) this.size;
        if (svg.isNotEmpty()) {
            if (!layoutNode.isAttached()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
            }
            if (!layoutNode.isPlaced()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
            }
            if (this.isRegularFile) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
            }
            if (((Constraints) this.extras) != null) {
                this.isRegularFile = true;
                this.isDirectory = false;
                try {
                    if ((((SortedSet) ((HintHandler) svg.idToElementMap).state).isEmpty() || ((SortedSet) ((HintHandler) svg.rootElement).state).isEmpty()) ? false : true) {
                        if (layoutNode.lookaheadRoot != null) {
                            remeasureOnly(layoutNode, true);
                        } else {
                            remeasureLookaheadRootsInSubtree(layoutNode);
                        }
                    }
                    remeasureOnly(layoutNode, false);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        this.isRegularFile = false;
                        this.isDirectory = false;
                    }
                }
            }
        }
    }

    public void measureWidgets() {
        FileMetadata fileMetadata;
        BaselineDimensionDependency baselineDimensionDependency;
        Iterator it = ((ConstraintWidgetContainer) this.symlinkTarget).mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (!constraintWidget.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                boolean z = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = constraintWidget.mMatchConstraintDefaultWidth;
                int i2 = constraintWidget.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z2 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                DimensionDependency dimensionDependency = constraintWidget.mHorizontalRun.mDimension;
                boolean z3 = dimensionDependency.resolved;
                DimensionDependency dimensionDependency2 = constraintWidget.mVerticalRun.mDimension;
                boolean z4 = dimensionDependency2.resolved;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    fileMetadata = this;
                    fileMetadata.measure(constraintWidget, dimensionBehaviour4, dimensionDependency.value, dimensionBehaviour4, dimensionDependency2.value);
                    constraintWidget.measured = true;
                } else if (z3 && z) {
                    fileMetadata = this;
                    fileMetadata.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency.value, dimensionBehaviour3, dimensionDependency2.value);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget.mVerticalRun;
                    if (dimensionBehaviour2 == dimensionBehaviour5) {
                        verticalWidgetRun.mDimension.wrapValue = constraintWidget.getHeight();
                    } else {
                        verticalWidgetRun.mDimension.resolve(constraintWidget.getHeight());
                        constraintWidget.measured = true;
                    }
                } else {
                    fileMetadata = this;
                    if (z4 && z2) {
                        fileMetadata.measure(constraintWidget, dimensionBehaviour3, dimensionDependency.value, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency2.value);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget.mHorizontalRun;
                        if (dimensionBehaviour == dimensionBehaviour6) {
                            horizontalWidgetRun.mDimension.wrapValue = constraintWidget.getWidth();
                        } else {
                            horizontalWidgetRun.mDimension.resolve(constraintWidget.getWidth());
                            constraintWidget.measured = true;
                        }
                    }
                }
                if (constraintWidget.measured && (baselineDimensionDependency = constraintWidget.mVerticalRun.mBaselineDimension) != null) {
                    baselineDimensionDependency.resolve(constraintWidget.mBaselineDistance);
                }
                this = fileMetadata;
            }
        }
    }

    public void onCreate(SQLiteConnection sQLiteConnection) {
        RoomOpenDelegate roomOpenDelegate = (RoomOpenDelegate) this.size;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (prepare.step()) {
                if (prepare.getLong(0) == 0) {
                    z = true;
                }
            }
            TuplesKt.closeFinally(prepare, null);
            roomOpenDelegate.createAllTables(sQLiteConnection);
            if (!z) {
                RoomOpenDelegate.ValidationResult onValidateSchema = roomOpenDelegate.onValidateSchema(sQLiteConnection);
                if (!onValidateSchema.isValid) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Pre-packaged database has an invalid schema: ", onValidateSchema.expectedFoundMsg);
                    return;
                }
            }
            updateIdentity(sQLiteConnection);
            roomOpenDelegate.onCreate(sQLiteConnection);
            Iterator it = ((List) this.createdAtMillis).iterator();
            while (it.hasNext()) {
                ((RoomDatabase.Callback) it.next()).getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    ((SupportSQLiteConnection) sQLiteConnection).db.getClass();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00a1 A[EDGE_INSN: B:130:0x00a1->B:114:0x00a1 BREAK  A[LOOP:4: B:92:0x0028->B:115:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMigrate(androidx.sqlite.SQLiteConnection r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.onMigrate(androidx.sqlite.SQLiteConnection, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onOpen(androidx.sqlite.SQLiteConnection r11) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.onOpen(androidx.sqlite.SQLiteConnection):void");
    }

    public boolean remeasureAndRelayoutIfNeeded(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        LayoutNode parent$ui;
        LayoutNode layoutNode2 = (LayoutNode) this.symlinkTarget;
        boolean z2 = layoutNode.isDeactivated;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (!z2 && isUsedInMeasureOrLayout(layoutNode)) {
            if (layoutNode == layoutNode2) {
                constraints = (Constraints) this.extras;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                r3 = layoutNodeLayoutDelegate.lookaheadMeasurePending ? m880doLookaheadRemeasuresdFAvZA(layoutNode, constraints) : false;
                if ((r3 || layoutNodeLayoutDelegate.lookaheadLayoutPending) && Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE)) {
                    layoutNode.lookaheadReplace$ui();
                }
            } else {
                boolean m881doRemeasuresdFAvZA = layoutNode.getMeasurePending$ui() ? m881doRemeasuresdFAvZA(layoutNode, constraints) : false;
                if (layoutNode.getLayoutPending$ui() && (layoutNode == layoutNode2 || ((parent$ui = layoutNode.getParent$ui()) != null && parent$ui.isPlaced() && layoutNodeLayoutDelegate.measurePassDelegate.isPlacedByParent))) {
                    if (layoutNode == layoutNode2) {
                        if (layoutNode.intrinsicsUsageByParent == LayoutNode.UsageByParent.NotUsed) {
                            layoutNode.clearSubtreePlacementIntrinsicsUsage();
                        }
                        LayoutNode parent$ui2 = layoutNode.getParent$ui();
                        Placeable.PlacementScope.placeRelative$default(parent$ui2 != null ? ((InnerNodeCoordinator) parent$ui2.nodes.innerCoordinator).placementScope : ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getPlacementScope(), layoutNodeLayoutDelegate.measurePassDelegate, 0, 0);
                    } else {
                        layoutNode.replace$ui();
                    }
                    CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.createdAtMillis;
                    if (layoutNode.globallyPositionedObservers > 0) {
                        ((MutableVector) anonymousClass1.mCardBackground).add(layoutNode);
                        layoutNode.needsOnGloballyPositionedDispatch = true;
                    }
                }
                r3 = m881doRemeasuresdFAvZA;
            }
            drainPostponedMeasureRequests();
        }
        return r3;
    }

    public boolean remeasureIfNeeded(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        boolean z2 = false;
        if (!layoutNode.isDeactivated && isUsedInMeasureOrLayout(layoutNode)) {
            if (layoutNode == ((LayoutNode) this.symlinkTarget)) {
                constraints = (Constraints) this.extras;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
                    z2 = m880doLookaheadRemeasuresdFAvZA(layoutNode, constraints);
                }
            } else if (layoutNode.getMeasurePending$ui()) {
                z2 = m881doRemeasuresdFAvZA(layoutNode, constraints);
            }
            drainPostponedMeasureRequests();
        }
        return z2;
    }

    public void remeasureLookaheadRootsInSubtree(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode2.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui()) {
                if (HitTestResultKt.isOutMostLookaheadRoot(layoutNode2)) {
                    remeasureOnly(layoutNode2, true);
                } else {
                    remeasureLookaheadRootsInSubtree(layoutNode2);
                }
            }
        }
    }

    public void remeasureOnly(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        if (layoutNode.isDeactivated) {
            return;
        }
        if (layoutNode == ((LayoutNode) this.symlinkTarget)) {
            constraints = (Constraints) this.extras;
            constraints.getClass();
        } else {
            constraints = null;
        }
        if (z) {
            m880doLookaheadRemeasuresdFAvZA(layoutNode, constraints);
        } else {
            m881doRemeasuresdFAvZA(layoutNode, constraints);
        }
    }

    public boolean requestRemeasure(LayoutNode layoutNode, boolean z) {
        int i = MeasureAndLayoutDelegate$WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutDelegate.layoutState.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3 || i == 4) {
                ((MutableVector) this.lastAccessedAtMillis).add(new MeasureAndLayoutDelegate$PostponedRequest(layoutNode, false, z));
            } else {
                if (i != 5) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return false;
                }
                if (!layoutNode.getMeasurePending$ui() || z) {
                    layoutNode.layoutDelegate.measurePassDelegate.measurePending = true;
                    if (!layoutNode.isDeactivated && (layoutNode.isPlaced() || getCanAffectPlacedParent(layoutNode))) {
                        LayoutNode parent$ui = layoutNode.getParent$ui();
                        if (parent$ui == null || !parent$ui.getMeasurePending$ui()) {
                            ((SVG) this.size).add(layoutNode, Invalidation.Measurement);
                        }
                        if (!this.isDirectory) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                Map map = (Map) this.extras;
                Long l = (Long) this.lastAccessedAtMillis;
                Long l2 = (Long) this.lastModifiedAtMillis;
                Long l3 = (Long) this.createdAtMillis;
                Long l4 = (Long) this.size;
                ArrayList arrayList = new ArrayList();
                if (this.isRegularFile) {
                    arrayList.add("isRegularFile");
                }
                if (this.isDirectory) {
                    arrayList.add("isDirectory");
                }
                if (l4 != null) {
                    arrayList.add("byteCount=" + l4.longValue());
                }
                if (l3 != null) {
                    arrayList.add("createdAt=" + l3.longValue());
                }
                if (l2 != null) {
                    arrayList.add("lastModifiedAt=" + l2.longValue());
                }
                if (l != null) {
                    arrayList.add("lastAccessedAt=" + l.longValue());
                }
                if (!map.isEmpty()) {
                    arrayList.add("extras=" + map);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "FileMetadata(", ")", null, 56);
            default:
                return super.toString();
        }
    }

    public void updateIdentity(SQLiteConnection sQLiteConnection) {
        ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        ContextsKt.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) ((RoomOpenDelegate) this.size).identityHash) + "')");
    }

    /* renamed from: updateRootConstraints-BRTryo0, reason: not valid java name */
    public void m883updateRootConstraintsBRTryo0(long j) {
        LayoutNode layoutNode = (LayoutNode) this.symlinkTarget;
        Constraints constraints = (Constraints) this.extras;
        if (constraints == null ? false : Constraints.m675equalsimpl0(constraints.value, j)) {
            return;
        }
        if (this.isRegularFile) {
            InlineClassHelperKt.throwIllegalArgumentException("updateRootConstraints called while measuring");
        }
        this.extras = new Constraints(j);
        LayoutNode layoutNode2 = layoutNode.lookaheadRoot;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (layoutNode2 != null) {
            layoutNodeLayoutDelegate.lookaheadMeasurePending = true;
        }
        layoutNodeLayoutDelegate.measurePassDelegate.measurePending = true;
        ((SVG) this.size).add(layoutNode, layoutNode2 != null ? Invalidation.LookaheadMeasurement : Invalidation.Measurement);
    }

    public /* synthetic */ FileMetadata() {
        this.$r8$classId = 2;
    }

    public FileMetadata(DatabaseConfiguration databaseConfiguration, Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0, RoomDatabase$createConnectionManager$2 roomDatabase$createConnectionManager$2) {
        this.$r8$classId = 3;
        this.symlinkTarget = databaseConfiguration;
        this.size = new RoomConnectionManager$NoOpOpenDelegate(-1, "", "");
        List list = databaseConfiguration.callbacks;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.createdAtMillis = list == null ? emptyList : list;
        final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(18, this);
        CollectionsKt.plus((Collection) (list == null ? emptyList : list), (Object) new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public final void onOpen(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                frameworkSQLiteDatabase.getClass();
                DiskLruCache$$ExternalSyntheticLambda0.this.invoke(frameworkSQLiteDatabase);
            }
        });
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        Executor executor = databaseConfiguration.queryExecutor;
        Executor executor2 = databaseConfiguration.transactionExecutor;
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        throw new NotImplementedError(0);
    }

    public FileMetadata(LayoutNode layoutNode) {
        this.$r8$classId = 1;
        this.symlinkTarget = layoutNode;
        this.size = new SVG(10);
        this.createdAtMillis = new CardView.AnonymousClass1(17);
        this.lastModifiedAtMillis = new MutableVector(new LayoutNode[16]);
        this.lastAccessedAtMillis = new MutableVector(new MeasureAndLayoutDelegate$PostponedRequest[16]);
    }

    public FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map map) {
        this.$r8$classId = 0;
        map.getClass();
        this.isRegularFile = z;
        this.isDirectory = z2;
        this.symlinkTarget = path;
        this.size = l;
        this.createdAtMillis = l2;
        this.lastModifiedAtMillis = l3;
        this.lastAccessedAtMillis = l4;
        this.extras = MapsKt__MapsKt.toMap(map);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4) {
        this(z, z2, path, l, l2, l3, l4, EmptyMap.INSTANCE);
        this.$r8$classId = 0;
    }
}
