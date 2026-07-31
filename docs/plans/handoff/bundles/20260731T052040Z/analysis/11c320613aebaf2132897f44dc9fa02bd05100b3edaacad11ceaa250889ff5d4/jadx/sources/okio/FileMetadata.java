package okio;

import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
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
import androidx.core.os.BundleKt;
import androidx.room.DatabaseConfiguration;
import androidx.room.RoomConnectionManager$NoOpOpenDelegate;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase$createConnectionManager$2;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.work.Data;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.impl.CleanupCallback;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.C;
import com.google.android.material.internal.CheckableGroup;
import com.grack.nanojson.JsonBuilder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        Object connectionPoolImpl;
        this.$r8$classId = 2;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.sqliteOpenHelperFactory;
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        String str = databaseConfiguration.name;
        this.symlinkTarget = databaseConfiguration;
        this.size = roomOpenDelegate;
        Object obj = databaseConfiguration.callbacks;
        this.createdAtMillis = obj == null ? EmptyList.INSTANCE : obj;
        if (sQLiteDriver != null) {
            this.lastAccessedAtMillis = null;
            if (sQLiteDriver.hasConnectionPool()) {
                connectionPoolImpl = new PassthroughConnectionPool(new JsonBuilder(this, sQLiteDriver), str == null ? ":memory:" : str, roomDatabase$createConnectionManager$2);
            } else if (str == null) {
                connectionPoolImpl = new ConnectionPoolImpl(new JsonBuilder(this, sQLiteDriver));
            } else {
                JsonBuilder jsonBuilder = new JsonBuilder(this, sQLiteDriver);
                int ordinal = journalMode.ordinal();
                if (ordinal == 1) {
                    i = 1;
                } else {
                    if (ordinal != 2) {
                        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
                    }
                    i = 4;
                }
                int ordinal2 = journalMode.ordinal();
                if (ordinal2 != 1 && ordinal2 != 2) {
                    throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
                }
                connectionPoolImpl = new ConnectionPoolImpl(jsonBuilder, str, i);
            }
            this.lastModifiedAtMillis = connectionPoolImpl;
        } else {
            if (factory == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            Context context = databaseConfiguration.context;
            context.getClass();
            SupportSQLiteOpenHelper create = factory.create(new CheckableGroup(context, str, new PriorityQueue(this, roomOpenDelegate.version), false, false));
            this.lastAccessedAtMillis = create;
            create.getClass();
            MemoryCacheService memoryCacheService = new MemoryCacheService();
            memoryCacheService.imageLoader = create;
            this.lastModifiedAtMillis = new PassthroughConnectionPool(memoryCacheService, str == null ? ":memory:" : str, roomDatabase$createConnectionManager$2);
        }
        boolean z = journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) this.lastAccessedAtMillis;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
        }
    }

    public static final void access$configureDatabase(FileMetadata fileMetadata, SQLiteConnection sQLiteConnection) {
        Object failure;
        RoomOpenDelegate roomOpenDelegate = (RoomOpenDelegate) fileMetadata.size;
        configureBusyTimeout(sQLiteConnection);
        DatabaseConfiguration databaseConfiguration = (DatabaseConfiguration) fileMetadata.symlinkTarget;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        RoomDatabase.JournalMode journalMode2 = RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        if (journalMode == journalMode2) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
        if (databaseConfiguration.journalMode == journalMode2) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            BundleKt.closeFinally(prepare, null);
            int i2 = roomOpenDelegate.version;
            if (i != i2) {
                SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        fileMetadata.onCreate(sQLiteConnection);
                    } else {
                        fileMetadata.onMigrate(sQLiteConnection, i, i2);
                    }
                    SQLite.execSQL(sQLiteConnection, "PRAGMA user_version = " + i2);
                    failure = Unit.INSTANCE;
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable m656exceptionOrNullimpl = Result.m656exceptionOrNullimpl(failure);
                if (m656exceptionOrNullimpl != null) {
                    SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw m656exceptionOrNullimpl;
                }
            }
            fileMetadata.onOpen(sQLiteConnection);
        } finally {
        }
    }

    public static void configureBusyTimeout(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            prepare.step();
            long j = prepare.getLong(0);
            BundleKt.closeFinally(prepare, null);
            if (j < C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                BundleKt.closeFinally(prepare, th);
                throw th2;
            }
        }
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

    /* JADX WARN: Removed duplicated region for block: B:143:0x028c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x019d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x000a A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r25) {
        /*
            Method dump skipped, instructions count: 845
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
                if (constraintWidget instanceof Barrier) {
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
                    float f2 = f > 0.0f ? (long) ((j3 / (1.0f - f)) + (j5 / f)) : 0L;
                    max = (dependencyNode3.mMargin + ((((long) ((f2 * f) + 0.5f)) + wrapDimension) + ((long) Modifier.CC.m(1.0f, f, f2, 0.5f)))) - dependencyNode4.mMargin;
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

    public void measure(int i, int i2, int i3, int i4, ConstraintWidget constraintWidget) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.lastAccessedAtMillis;
        basicMeasure$Measure.horizontalBehavior = i;
        basicMeasure$Measure.verticalBehavior = i3;
        basicMeasure$Measure.horizontalDimension = i2;
        basicMeasure$Measure.verticalDimension = i4;
        ((ConstraintLayout.Measurer) this.lastModifiedAtMillis).measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        int i5 = basicMeasure$Measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i5;
        constraintWidget.mHasBaseline = i5 > 0;
    }

    public void measureWidgets() {
        FileMetadata fileMetadata;
        BaselineDimensionDependency baselineDimensionDependency;
        Iterator it = ((ConstraintWidgetContainer) this.symlinkTarget).mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (!constraintWidget.measured) {
                int[] iArr = constraintWidget.mListDimensionBehaviors;
                boolean z = false;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = constraintWidget.mMatchConstraintDefaultWidth;
                int i4 = constraintWidget.mMatchConstraintDefaultHeight;
                boolean z2 = i == 2 || (i == 3 && i3 == 1);
                if (i2 == 2 || (i2 == 3 && i4 == 1)) {
                    z = true;
                }
                DimensionDependency dimensionDependency = constraintWidget.mHorizontalRun.mDimension;
                boolean z3 = dimensionDependency.resolved;
                DimensionDependency dimensionDependency2 = constraintWidget.mVerticalRun.mDimension;
                boolean z4 = dimensionDependency2.resolved;
                boolean z5 = z2;
                if (z3 && z4) {
                    fileMetadata = this;
                    fileMetadata.measure(1, dimensionDependency.value, 1, dimensionDependency2.value, constraintWidget);
                    constraintWidget.measured = true;
                } else if (z3 && z) {
                    fileMetadata = this;
                    fileMetadata.measure(1, dimensionDependency.value, 2, dimensionDependency2.value, constraintWidget);
                    VerticalWidgetRun verticalWidgetRun = constraintWidget.mVerticalRun;
                    if (i2 == 3) {
                        verticalWidgetRun.mDimension.wrapValue = constraintWidget.getHeight();
                    } else {
                        verticalWidgetRun.mDimension.resolve(constraintWidget.getHeight());
                        constraintWidget.measured = true;
                    }
                } else {
                    fileMetadata = this;
                    if (z4 && z5) {
                        fileMetadata.measure(2, dimensionDependency.value, 1, dimensionDependency2.value, constraintWidget);
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget.mHorizontalRun;
                        if (i == 3) {
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
            BundleKt.closeFinally(prepare, null);
            roomOpenDelegate.createAllTables(sQLiteConnection);
            if (!z) {
                Composer onValidateSchema = roomOpenDelegate.onValidateSchema(sQLiteConnection);
                if (!onValidateSchema.writingFirst) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m((String) onValidateSchema.writer, "Pre-packaged database has an invalid schema: ");
                    return;
                }
            }
            updateIdentity(sQLiteConnection);
            roomOpenDelegate.onCreate(sQLiteConnection);
            Iterator it = ((List) this.createdAtMillis).iterator();
            while (it.hasNext()) {
                ((CleanupCallback) it.next()).getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    ((SupportSQLiteConnection) sQLiteConnection).db.getClass();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00a8 A[EDGE_INSN: B:130:0x00a8->B:114:0x00a8 BREAK  A[LOOP:4: B:92:0x002b->B:115:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMigrate(androidx.sqlite.SQLiteConnection r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.onMigrate(androidx.sqlite.SQLiteConnection, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onOpen(androidx.sqlite.SQLiteConnection r11) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.FileMetadata.onOpen(androidx.sqlite.SQLiteConnection):void");
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
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) ((RoomOpenDelegate) this.size).identityHash) + "')");
    }

    public /* synthetic */ FileMetadata() {
        this.$r8$classId = 1;
    }

    public FileMetadata(DatabaseConfiguration databaseConfiguration, Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0, RoomDatabase$createConnectionManager$2 roomDatabase$createConnectionManager$2) {
        this.$r8$classId = 2;
        this.symlinkTarget = databaseConfiguration;
        this.size = new RoomConnectionManager$NoOpOpenDelegate("", -1, "");
        List list = databaseConfiguration.callbacks;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.createdAtMillis = list == null ? emptyList : list;
        CollectionsKt.plus(list == null ? emptyList : list, new CleanupCallback(new DiskLruCache$$ExternalSyntheticLambda0(this, 26)));
        Context context = databaseConfiguration.context;
        Data.Builder builder = databaseConfiguration.migrationContainer;
        Executor executor = databaseConfiguration.queryExecutor;
        Executor executor2 = databaseConfiguration.transactionExecutor;
        List list2 = databaseConfiguration.typeConverters;
        List list3 = databaseConfiguration.autoMigrationSpecs;
        context.getClass();
        builder.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        throw new NotImplementedError(0);
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
