package com.android.quickstep.logging;

import android.content.Context;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$Shortcut;
import com.android.launcher3.logger.LauncherAtom$Task;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.LooperExecutor;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.concurrent.Callable;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public class StatsLogCompatManager extends StatsLogManager {
    public static final int DEFAULT_PAGE_INDEX = -2;
    public static final int FOLDER_HIERARCHY_OFFSET = 100;
    public static final int SEARCH_RESULT_HIERARCHY_OFFSET = 200;
    public static Context sContext;
    public static final String TAG = "StatsLog";
    public static final boolean IS_VERBOSE = Utilities.isPropertyEnabled(TAG);
    public static final InstanceId DEFAULT_INSTANCE_ID = InstanceId.fakeInstanceId(0);

    /* renamed from: com.android.quickstep.logging.StatsLogCompatManager$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase;
        public static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase;

        static {
            int[] iArr = new int[LauncherAtom$ItemInfo.ItemCase.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[LauncherAtom$ContainerInfo.ContainerCase.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase = iArr2;
            try {
                iArr2[9] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[6] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[2] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class SnapshotWorker extends BaseModelUpdateTask {
        public final InstanceId mInstanceId = new InstanceIdSequence(FrameProtoTracer.BUFFER_CAPACITY).newInstanceId();

        public SnapshotWorker() {
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            IntSparseArrayMap clone = bgDataModel.folders.clone();
            ArrayList arrayList = (ArrayList) bgDataModel.workspaceItems.clone();
            ArrayList arrayList2 = (ArrayList) bgDataModel.appWidgets.clone();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                StatsLogCompatManager.writeSnapshot(((ItemInfo) it.next()).buildProto(null), this.mInstanceId);
            }
            Objects.requireNonNull(clone);
            int i = 0;
            while (true) {
                if (!(i < clone.size())) {
                    break;
                }
                int i2 = i + 1;
                FolderInfo folderInfo = (FolderInfo) clone.valueAt(i);
                try {
                    LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                    final ArrayList arrayList3 = folderInfo.contents;
                    Objects.requireNonNull(arrayList3);
                    Iterator it2 = ((ArrayList) looperExecutor.submit(new Callable() { // from class: c.a.b.b2.c
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return arrayList3.clone();
                        }
                    }).get()).iterator();
                    while (it2.hasNext()) {
                        StatsLogCompatManager.writeSnapshot(((ItemInfo) it2.next()).buildProto(folderInfo), this.mInstanceId);
                    }
                } catch (Exception unused) {
                }
                i = i2;
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                StatsLogCompatManager.writeSnapshot(((ItemInfo) it3.next()).buildProto(null), this.mInstanceId);
            }
        }
    }

    public StatsLogCompatManager(Context context) {
        sContext = context;
    }

    public static int getCardinality(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal();
        if (ordinal == 6) {
            return launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer().queryLength_;
        }
        if (ordinal != 9) {
            return launcherAtom$ItemInfo.getFolderIcon().cardinality_;
        }
        LauncherAtom$ContainerInfo containerInfo = launcherAtom$ItemInfo.getContainerInfo();
        return (containerInfo.containerCase_ == 10 ? (LauncherAtom$PredictedHotseatContainer) containerInfo.container_ : LauncherAtom$PredictedHotseatContainer.DEFAULT_INSTANCE).cardinality_;
    }

    public static String getComponentName(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getItemCase().ordinal();
        if (ordinal == 0) {
            return (launcherAtom$ItemInfo.itemCase_ == 1 ? (LauncherAtom$Application) launcherAtom$ItemInfo.item_ : LauncherAtom$Application.DEFAULT_INSTANCE).componentName_;
        }
        if (ordinal == 1) {
            return (launcherAtom$ItemInfo.itemCase_ == 2 ? (LauncherAtom$Task) launcherAtom$ItemInfo.item_ : LauncherAtom$Task.DEFAULT_INSTANCE).componentName_;
        }
        if (ordinal == 2) {
            return (launcherAtom$ItemInfo.itemCase_ == 3 ? (LauncherAtom$Shortcut) launcherAtom$ItemInfo.item_ : LauncherAtom$Shortcut.DEFAULT_INSTANCE).shortcutName_;
        }
        if (ordinal != 3) {
            return null;
        }
        return launcherAtom$ItemInfo.getWidget().componentName_;
    }

    public static int getGridX(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z) {
        return launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER ? z ? launcherAtom$ItemInfo.getContainerInfo().getFolder().getWorkspace().gridX_ : launcherAtom$ItemInfo.getContainerInfo().getFolder().gridX_ : launcherAtom$ItemInfo.getContainerInfo().getWorkspace().gridX_;
    }

    public static int getGridY(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z) {
        return launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER ? z ? launcherAtom$ItemInfo.getContainerInfo().getFolder().getWorkspace().gridY_ : launcherAtom$ItemInfo.getContainerInfo().getFolder().gridY_ : launcherAtom$ItemInfo.getContainerInfo().getWorkspace().gridY_;
    }

    public static int getHierarchy(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        LauncherAtom$SearchResultContainer.ParentContainerCase parentContainerCase = null;
        LauncherAtom$FolderContainer.ParentContainerCase parentContainerCase2 = null;
        if (launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER) {
            int i = launcherAtom$ItemInfo.getContainerInfo().getFolder().parentContainerCase_;
            if (i == 0) {
                parentContainerCase2 = LauncherAtom$FolderContainer.ParentContainerCase.PARENTCONTAINER_NOT_SET;
            } else if (i == 4) {
                parentContainerCase2 = LauncherAtom$FolderContainer.ParentContainerCase.WORKSPACE;
            } else if (i == 5) {
                parentContainerCase2 = LauncherAtom$FolderContainer.ParentContainerCase.HOTSEAT;
            }
            return parentContainerCase2.value + 100;
        }
        if (launcherAtom$ItemInfo.getContainerInfo().getContainerCase() != LauncherAtom$ContainerInfo.ContainerCase.SEARCH_RESULT_CONTAINER) {
            return launcherAtom$ItemInfo.getContainerInfo().getContainerCase().value;
        }
        int i2 = launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer().parentContainerCase_;
        if (i2 == 0) {
            parentContainerCase = LauncherAtom$SearchResultContainer.ParentContainerCase.PARENTCONTAINER_NOT_SET;
        } else if (i2 == 2) {
            parentContainerCase = LauncherAtom$SearchResultContainer.ParentContainerCase.WORKSPACE;
        } else if (i2 == 3) {
            parentContainerCase = LauncherAtom$SearchResultContainer.ParentContainerCase.ALL_APPS_CONTAINER;
        }
        return parentContainerCase.value + 200;
    }

    public static String getPackageName(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getItemCase().ordinal();
        if (ordinal == 0) {
            return (launcherAtom$ItemInfo.itemCase_ == 1 ? (LauncherAtom$Application) launcherAtom$ItemInfo.item_ : LauncherAtom$Application.DEFAULT_INSTANCE).packageName_;
        }
        if (ordinal == 1) {
            return (launcherAtom$ItemInfo.itemCase_ == 2 ? (LauncherAtom$Task) launcherAtom$ItemInfo.item_ : LauncherAtom$Task.DEFAULT_INSTANCE).packageName_;
        }
        if (ordinal == 2) {
            return (launcherAtom$ItemInfo.itemCase_ == 3 ? (LauncherAtom$Shortcut) launcherAtom$ItemInfo.item_ : LauncherAtom$Shortcut.DEFAULT_INSTANCE).shortcutName_;
        }
        if (ordinal != 3) {
            return null;
        }
        return launcherAtom$ItemInfo.getWidget().packageName_;
    }

    public static int getPageId(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        return launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal() != 2 ? launcherAtom$ItemInfo.getContainerInfo().getWorkspace().pageIndex_ : launcherAtom$ItemInfo.getContainerInfo().getFolder().pageIndex_;
    }

    public static int getParentPageId(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal();
        if (ordinal == 2) {
            return launcherAtom$ItemInfo.getContainerInfo().getFolder().getWorkspace().pageIndex_;
        }
        if (ordinal != 6) {
            return launcherAtom$ItemInfo.getContainerInfo().getWorkspace().pageIndex_;
        }
        LauncherAtom$SearchResultContainer searchResultContainer = launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer();
        return (searchResultContainer.parentContainerCase_ == 2 ? (LauncherAtom$WorkspaceContainer) searchResultContainer.parentContainer_ : LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE).pageIndex_;
    }

    public static String getStateString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "INVALID" : "ALLAPPS" : "OVERVIEW" : "HOME" : "BACKGROUND";
    }

    public static void writeSnapshot(LauncherAtom$ItemInfo launcherAtom$ItemInfo, InstanceId instanceId) {
        if (IS_VERBOSE) {
            Log.d(TAG, String.format("\nwriteSnapshot(%d):\n%s", Integer.valueOf(instanceId.getId()), launcherAtom$ItemInfo));
        }
        if (Utilities.ATLEAST_R) {
            int i = StatsLogManager.LauncherEvent.LAUNCHER_WORKSPACE_SNAPSHOT.mId;
            int i2 = launcherAtom$ItemInfo.getItemCase().value;
            int id = instanceId.getId();
            String packageName = getPackageName(launcherAtom$ItemInfo);
            String componentName = getComponentName(launcherAtom$ItemInfo);
            int gridX = getGridX(launcherAtom$ItemInfo, false);
            int gridY = getGridY(launcherAtom$ItemInfo, false);
            int pageId = getPageId(launcherAtom$ItemInfo);
            int gridX2 = getGridX(launcherAtom$ItemInfo, true);
            int gridY2 = getGridY(launcherAtom$ItemInfo, true);
            int parentPageId = getParentPageId(launcherAtom$ItemInfo);
            int hierarchy = getHierarchy(launcherAtom$ItemInfo);
            boolean z = launcherAtom$ItemInfo.isWork_;
            LauncherAtom$Attribute forNumber = LauncherAtom$Attribute.forNumber(launcherAtom$ItemInfo.attribute_);
            if (forNumber == null) {
                forNumber = LauncherAtom$Attribute.UNKNOWN;
            }
            SysUiStatsLog.write(SysUiStatsLog.LAUNCHER_SNAPSHOT, i, i2, id, 0, packageName, componentName, gridX, gridY, pageId, gridX2, gridY2, parentPageId, hierarchy, z, forNumber.value, getCardinality(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getWidget().spanX_, launcherAtom$ItemInfo.getWidget().spanY_);
        }
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public void log(StatsLogManager.EventEnum eventEnum, InstanceId instanceId, String str, int i) {
        SysUiStatsLog.write(SysUiStatsLog.RANKING_SELECTED, eventEnum.getId(), str, instanceId.getId(), i);
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public void logSnapshot() {
        LauncherAppState.getInstance(sContext).mModel.enqueueModelUpdateTask(new SnapshotWorker());
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public StatsLogManager.StatsLogger logger() {
        return new StatsCompatLogger(null);
    }

    public class StatsCompatLogger implements StatsLogManager.StatsLogger {
        public static final ItemInfo DEFAULT_ITEM_INFO = new ItemInfo();
        public Optional mContainerInfo;
        public int mDstState;
        public Optional mEditText;
        public Optional mFromState;
        public InstanceId mInstanceId;
        public ItemInfo mItemInfo;
        public OptionalInt mRank;
        public int mSrcState;
        public Optional mToState;

        public StatsCompatLogger() {
            this.mItemInfo = DEFAULT_ITEM_INFO;
            this.mInstanceId = StatsLogCompatManager.DEFAULT_INSTANCE_ID;
            this.mRank = OptionalInt.empty();
            this.mContainerInfo = Optional.empty();
            this.mSrcState = 0;
            this.mDstState = 0;
            this.mFromState = Optional.empty();
            this.mToState = Optional.empty();
            this.mEditText = Optional.empty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public LauncherAtom$ItemInfo applyOverwrites(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
            final LauncherAtom$ItemInfo.Builder builder = (LauncherAtom$ItemInfo.Builder) launcherAtom$ItemInfo.toBuilder();
            this.mRank.ifPresent(new IntConsumer() { // from class: c.a.b.b2.d
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    LauncherAtom$ItemInfo.Builder builder2 = LauncherAtom$ItemInfo.Builder.this;
                    builder2.copyOnWrite();
                    LauncherAtom$ItemInfo launcherAtom$ItemInfo2 = (LauncherAtom$ItemInfo) builder2.instance;
                    launcherAtom$ItemInfo2.bitField0_ |= 32;
                    launcherAtom$ItemInfo2.rank_ = i;
                }
            });
            this.mContainerInfo.ifPresent(new Consumer() { // from class: c.a.b.b2.f
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LauncherAtom$ItemInfo.Builder.this.setContainerInfo((LauncherAtom$ContainerInfo) obj);
                }
            });
            if (this.mFromState.isPresent() || this.mToState.isPresent() || this.mEditText.isPresent()) {
                final LauncherAtom$FolderIcon.Builder builder2 = (LauncherAtom$FolderIcon.Builder) ((LauncherAtom$ItemInfo) builder.instance).getFolderIcon().toBuilder();
                this.mFromState.ifPresent(new Consumer() { // from class: c.a.b.b2.a
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        LauncherAtom$FolderIcon.Builder builder3 = LauncherAtom$FolderIcon.Builder.this;
                        builder3.copyOnWrite();
                        LauncherAtom$FolderIcon.access$14500((LauncherAtom$FolderIcon) builder3.instance, (LauncherAtom$FromState) obj);
                    }
                });
                this.mToState.ifPresent(new Consumer() { // from class: c.a.b.b2.b
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        LauncherAtom$FolderIcon.Builder builder3 = LauncherAtom$FolderIcon.Builder.this;
                        builder3.copyOnWrite();
                        LauncherAtom$FolderIcon.access$14700((LauncherAtom$FolderIcon) builder3.instance, (LauncherAtom$ToState) obj);
                    }
                });
                this.mEditText.ifPresent(new Consumer() { // from class: c.a.b.b2.e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        LauncherAtom$FolderIcon.Builder builder3 = LauncherAtom$FolderIcon.Builder.this;
                        builder3.copyOnWrite();
                        LauncherAtom$FolderIcon.access$14900((LauncherAtom$FolderIcon) builder3.instance, (String) obj);
                    }
                });
                builder.copyOnWrite();
                LauncherAtom$ItemInfo.access$1900((LauncherAtom$ItemInfo) builder.instance, builder2);
            }
            return (LauncherAtom$ItemInfo) builder.build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public void write(StatsLogManager.EventEnum eventEnum, InstanceId instanceId, LauncherAtom$ItemInfo launcherAtom$ItemInfo, int i, int i2) {
            String str;
            if (StatsLogCompatManager.IS_VERBOSE) {
                if (eventEnum instanceof Enum) {
                    str = ((Enum) eventEnum).name();
                } else {
                    str = eventEnum.getId() + "";
                }
                Log.d(StatsLogCompatManager.TAG, instanceId == StatsLogCompatManager.DEFAULT_INSTANCE_ID ? String.format("\n%s (State:%s->%s)\n%s", str, StatsLogCompatManager.getStateString(i), StatsLogCompatManager.getStateString(i2), launcherAtom$ItemInfo) : String.format("\n%s (State:%s->%s) (InstanceId:%s)\n%s", str, StatsLogCompatManager.getStateString(i), StatsLogCompatManager.getStateString(i2), instanceId, launcherAtom$ItemInfo));
            }
            int id = eventEnum.getId();
            int i3 = launcherAtom$ItemInfo.getItemCase().value;
            int id2 = instanceId.getId();
            String packageName = StatsLogCompatManager.getPackageName(launcherAtom$ItemInfo);
            String componentName = StatsLogCompatManager.getComponentName(launcherAtom$ItemInfo);
            int gridX = StatsLogCompatManager.getGridX(launcherAtom$ItemInfo, false);
            int gridY = StatsLogCompatManager.getGridY(launcherAtom$ItemInfo, false);
            int pageId = StatsLogCompatManager.getPageId(launcherAtom$ItemInfo);
            int gridX2 = StatsLogCompatManager.getGridX(launcherAtom$ItemInfo, true);
            int gridY2 = StatsLogCompatManager.getGridY(launcherAtom$ItemInfo, true);
            int parentPageId = StatsLogCompatManager.getParentPageId(launcherAtom$ItemInfo);
            int hierarchy = StatsLogCompatManager.getHierarchy(launcherAtom$ItemInfo);
            boolean z = launcherAtom$ItemInfo.isWork_;
            int i4 = launcherAtom$ItemInfo.rank_;
            LauncherAtom$FromState forNumber = LauncherAtom$FromState.forNumber(launcherAtom$ItemInfo.getFolderIcon().fromLabelState_);
            if (forNumber == null) {
                forNumber = LauncherAtom$FromState.FROM_STATE_UNSPECIFIED;
            }
            int i5 = forNumber.value;
            LauncherAtom$ToState forNumber2 = LauncherAtom$ToState.forNumber(launcherAtom$ItemInfo.getFolderIcon().toLabelState_);
            if (forNumber2 == null) {
                forNumber2 = LauncherAtom$ToState.TO_STATE_UNSPECIFIED;
            }
            SysUiStatsLog.write(19, 0, i, i2, null, false, id, i3, id2, 0, packageName, componentName, gridX, gridY, pageId, gridX2, gridY2, parentPageId, hierarchy, z, i4, i5, forNumber2.value, launcherAtom$ItemInfo.getFolderIcon().labelInfo_, StatsLogCompatManager.getCardinality(launcherAtom$ItemInfo));
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public void log(final StatsLogManager.EventEnum eventEnum) {
            if (Utilities.ATLEAST_R) {
                ItemInfo itemInfo = this.mItemInfo;
                if (itemInfo.container < 0) {
                    write(eventEnum, this.mInstanceId, applyOverwrites(itemInfo.buildProto()), this.mSrcState, this.mDstState);
                } else {
                    LauncherAppState.getInstance(StatsLogCompatManager.sContext).mModel.enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.quickstep.logging.StatsLogCompatManager.StatsCompatLogger.1
                        @Override // com.android.launcher3.model.BaseModelUpdateTask
                        public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                            FolderInfo folderInfo = (FolderInfo) bgDataModel.folders.get(StatsCompatLogger.this.mItemInfo.container);
                            StatsCompatLogger statsCompatLogger = StatsCompatLogger.this;
                            StatsLogManager.EventEnum eventEnum2 = eventEnum;
                            InstanceId instanceId = statsCompatLogger.mInstanceId;
                            StatsCompatLogger statsCompatLogger2 = StatsCompatLogger.this;
                            statsCompatLogger.write(eventEnum2, instanceId, statsCompatLogger2.applyOverwrites(statsCompatLogger2.mItemInfo.buildProto(folderInfo)), StatsCompatLogger.this.mSrcState, StatsCompatLogger.this.mDstState);
                        }
                    });
                }
            }
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withContainerInfo(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
            if (this.mItemInfo != DEFAULT_ITEM_INFO) {
                throw new IllegalArgumentException("ItemInfo and ContainerInfo are mutual exclusive; cannot log both.");
            }
            this.mContainerInfo = Optional.of(launcherAtom$ContainerInfo);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withDstState(int i) {
            this.mDstState = i;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withEditText(String str) {
            this.mEditText = Optional.of(str);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withFromState(LauncherAtom$FromState launcherAtom$FromState) {
            this.mFromState = Optional.of(launcherAtom$FromState);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withInstanceId(InstanceId instanceId) {
            this.mInstanceId = instanceId;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withItemInfo(ItemInfo itemInfo) {
            if (this.mContainerInfo.isPresent()) {
                throw new IllegalArgumentException("ItemInfo and ContainerInfo are mutual exclusive; cannot log both.");
            }
            this.mItemInfo = itemInfo;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withRank(int i) {
            this.mRank = OptionalInt.of(i);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withSrcState(int i) {
            this.mSrcState = i;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withToState(LauncherAtom$ToState launcherAtom$ToState) {
            this.mToState = Optional.of(launcherAtom$ToState);
            return this;
        }

        public /* synthetic */ StatsCompatLogger(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
