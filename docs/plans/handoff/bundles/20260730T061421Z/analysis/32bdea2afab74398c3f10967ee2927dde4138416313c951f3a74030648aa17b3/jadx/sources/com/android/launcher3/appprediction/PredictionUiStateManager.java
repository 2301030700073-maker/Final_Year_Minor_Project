package com.android.launcher3.appprediction;

import android.app.prediction.AppTarget;
import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.appprediction.ComponentKeyMapper;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.OptionalInt;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public class PredictionUiStateManager implements StateManager.StateListener, IconCache.ItemInfoUpdateReceiver, InvariantDeviceProfile.OnIDPChangeListener, AllAppsStore.OnUpdateListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.F0.k
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new PredictionUiStateManager(context);
        }
    });
    public Client mActiveClient = Client.HOME;
    public AllAppsContainerView mAppsView;
    public final Context mContext;
    public PredictionState mCurrentState;
    public final DynamicItemCache mDynamicItemCache;
    public boolean mGettingValidPredictionResults;
    public int mMaxIconsPerRow;
    public PredictionState mPendingState;
    public final List[] mPredictionServicePredictions;

    public enum Client {
        HOME("home"),
        OVERVIEW("overview");

        public final String id;

        Client(String str) {
            this.id = str;
        }
    }

    public class PredictionState {
        public List apps;
        public boolean isEnabled;
    }

    public PredictionUiStateManager(Context context) {
        this.mContext = context;
        this.mDynamicItemCache = new DynamicItemCache(context, new Runnable() { // from class: c.a.a.F0.p
            @Override // java.lang.Runnable
            public final void run() {
                PredictionUiStateManager.this.dispatchOnChange(false);
            }
        });
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        this.mMaxIconsPerRow = idp.numColumns;
        idp.mChangeListeners.add(this);
        this.mPredictionServicePredictions = new List[Client.values().length];
        int i = 0;
        while (true) {
            List[] listArr = this.mPredictionServicePredictions;
            if (i >= listArr.length) {
                this.mGettingValidPredictionResults = Utilities.getDevicePrefs(context).getBoolean("last_prediction_enabled_state", true);
                this.mCurrentState = parseLastState();
                return;
            } else {
                listArr[i] = Collections.emptyList();
                i++;
            }
        }
    }

    public static boolean a(ComponentKey componentKey, List list, int i) {
        return componentKey.equals(((ComponentKeyMapper) list.get(i)).componentKey);
    }

    public static boolean c(ComponentKey componentKey, List list, int i) {
        return componentKey.equals(((ComponentKeyMapper) list.get(i)).componentKey);
    }

    public static void fillInPredictedRank(ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target) {
        PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) INSTANCE.mValue;
        if (predictionUiStateManager == null || itemInfo.getTargetComponent() == null || itemInfo.user == null) {
            return;
        }
        int i = itemInfo.itemType;
        if (i == 0 || i == 1 || i == 6) {
            if (itemInfo.container == -102) {
                final ComponentKey componentKey = new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user);
                final List list = predictionUiStateManager.mCurrentState.apps;
                IntStream.range(0, list.size()).filter(new IntPredicate() { // from class: c.a.a.F0.o
                    @Override // java.util.function.IntPredicate
                    public final boolean test(int i2) {
                        return PredictionUiStateManager.a(ComponentKey.this, list, i2);
                    }
                }).findFirst().ifPresent(new IntConsumer() { // from class: c.a.a.F0.l
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i2) {
                        LauncherLogProto$Target.this.predictedRank = 0 - i2;
                    }
                });
                return;
            }
            QuickstepLauncher quickstepLauncher = (QuickstepLauncher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
            if (quickstepLauncher == null || quickstepLauncher.mHotseatPredictionController == null || itemInfo.getTargetComponent() == null) {
                return;
            }
            HotseatPredictionController hotseatPredictionController = quickstepLauncher.mHotseatPredictionController;
            final ComponentKey componentKey2 = new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user);
            final List list2 = hotseatPredictionController.mComponentKeyMappers;
            OptionalInt findFirst = IntStream.range(0, list2.size()).filter(new IntPredicate() { // from class: c.a.a.K0.o
                @Override // java.util.function.IntPredicate
                public final boolean test(int i2) {
                    return ComponentKey.this.equals(((ComponentKeyMapper) list2.get(i2)).componentKey);
                }
            }).findFirst();
            launcherLogProto$Target.predictedRank = (hotseatPredictionController.mPredictedSpotsCount * 100) + 10000 + (findFirst.isPresent() ? findFirst.getAsInt() + 1 : 0);
        }
    }

    public final void applyState(PredictionState predictionState) {
        List list;
        this.mCurrentState = predictionState;
        AllAppsContainerView allAppsContainerView = this.mAppsView;
        if (allAppsContainerView != null) {
            PredictionRowView predictionRowView = (PredictionRowView) allAppsContainerView.mHeader.findFixedRowByType(PredictionRowView.class);
            List list2 = this.mCurrentState.apps;
            predictionRowView.mPredictedAppComponents.clear();
            predictionRowView.mPredictedAppComponents.addAll(list2);
            predictionRowView.mPredictedApps.clear();
            ArrayList arrayList = predictionRowView.mPredictedApps;
            List list3 = predictionRowView.mPredictedAppComponents;
            if (predictionRowView.getAppsStore().mApps.length == 0) {
                list = Collections.emptyList();
            } else {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    ItemInfoWithIcon app = ((ComponentKeyMapper) it.next()).getApp(predictionRowView.getAppsStore());
                    if (app != null) {
                        ItemInfoWithIcon mo1clone = app.mo1clone();
                        mo1clone.container = -102;
                        arrayList2.add(mo1clone);
                    }
                    if (arrayList2.size() == predictionRowView.mNumPredictedAppsPerRow) {
                        break;
                    }
                }
                list = arrayList2;
            }
            arrayList.addAll(list);
            predictionRowView.applyPredictionApps();
        }
    }

    public final boolean canApplyPredictions(PredictionState predictionState) {
        AllAppsContainerView allAppsContainerView = this.mAppsView;
        if (allAppsContainerView == null) {
            return true;
        }
        Launcher launcher = Launcher.getLauncher(allAppsContainerView.getContext());
        PredictionRowView predictionRowView = (PredictionRowView) this.mAppsView.mHeader.findFixedRowByType(PredictionRowView.class);
        if (!predictionRowView.isShown() || predictionRowView.getAlpha() == RecentsState.NO_OFFSET || launcher.isForceInvisible()) {
            return true;
        }
        PredictionState predictionState2 = this.mCurrentState;
        if (predictionState2.isEnabled != predictionState.isEnabled || predictionState2.apps.isEmpty() != predictionState.apps.isEmpty()) {
            return true;
        }
        if (launcher.getDeviceProfile().isVerticalBarLayout()) {
            return false;
        }
        return (launcher.isInState(LauncherState.OVERVIEW) || launcher.isInState(LauncherState.BACKGROUND_APP)) && launcher.mAllAppsController.mProgress > 1.0f;
    }

    public final void dispatchOnChange(boolean z) {
        PredictionState predictionState;
        if (z) {
            predictionState = parseLastState();
        } else {
            PredictionState predictionState2 = this.mPendingState;
            predictionState = (predictionState2 == null || !canApplyPredictions(predictionState2)) ? this.mCurrentState : this.mPendingState;
        }
        if (!z || this.mAppsView == null || canApplyPredictions(predictionState)) {
            applyState(predictionState);
            return;
        }
        boolean z2 = this.mPendingState == null;
        this.mPendingState = predictionState;
        if (z2) {
            Launcher.getLauncher(this.mAppsView.getContext()).getStateManager().mListeners.add(this);
        }
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public void onAppsUpdated() {
        dispatchOnChange(false);
    }

    @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile) {
        this.mMaxIconsPerRow = invariantDeviceProfile.numColumns;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(Object obj) {
        if (this.mAppsView == null) {
            return;
        }
        PredictionState predictionState = this.mPendingState;
        if (predictionState != null && canApplyPredictions(predictionState)) {
            applyState(this.mPendingState);
            this.mPendingState = null;
        }
        if (this.mPendingState == null) {
            Launcher.getLauncher(this.mAppsView.getContext()).getStateManager().mListeners.remove(this);
        }
    }

    public final PredictionState parseLastState() {
        PredictionState predictionState = new PredictionState();
        boolean z = this.mGettingValidPredictionResults;
        predictionState.isEnabled = z;
        if (!z) {
            predictionState.apps = Collections.EMPTY_LIST;
            return predictionState;
        }
        predictionState.apps = new ArrayList();
        List<AppTarget> list = this.mPredictionServicePredictions[this.mActiveClient.ordinal()];
        if (!list.isEmpty()) {
            for (AppTarget appTarget : list) {
                predictionState.apps.add(new ComponentKeyMapper(appTarget.getShortcutInfo() != null ? ShortcutKey.fromInfo(appTarget.getShortcutInfo()) : new ComponentKey(new ComponentName(appTarget.getPackageName(), appTarget.getClassName()), appTarget.getUser()), this.mDynamicItemCache));
            }
        }
        updateDependencies(predictionState);
        return predictionState;
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
    }

    public void setTargetAppsView(AllAppsContainerView allAppsContainerView) {
        AllAppsContainerView allAppsContainerView2 = this.mAppsView;
        if (allAppsContainerView2 != null) {
            allAppsContainerView2.mAllAppsStore.mUpdateListeners.remove(this);
        }
        this.mAppsView = allAppsContainerView;
        if (allAppsContainerView != null) {
            allAppsContainerView.mAllAppsStore.mUpdateListeners.add(this);
        }
        PredictionState predictionState = this.mPendingState;
        if (predictionState != null) {
            applyState(predictionState);
            this.mPendingState = null;
        } else {
            applyState(this.mCurrentState);
        }
        updateDependencies(this.mCurrentState);
    }

    public final void updateDependencies(PredictionState predictionState) {
        AllAppsContainerView allAppsContainerView;
        if (!predictionState.isEnabled || (allAppsContainerView = this.mAppsView) == null) {
            return;
        }
        this.mDynamicItemCache.updateDependencies(predictionState.apps, allAppsContainerView.mAllAppsStore, this, this.mMaxIconsPerRow);
    }
}
