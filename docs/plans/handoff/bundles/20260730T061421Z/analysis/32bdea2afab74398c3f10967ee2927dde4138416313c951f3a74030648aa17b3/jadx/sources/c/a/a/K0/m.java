package c.a.a.K0;

import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.hybridhotseat.HotseatEduController;
import com.android.launcher3.hybridhotseat.HotseatEduDialog;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.Snackbar;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HotseatPredictionController f1428a;

    public /* synthetic */ m(HotseatPredictionController hotseatPredictionController) {
        this.f1428a = hotseatPredictionController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final HotseatPredictionController hotseatPredictionController = this.f1428a;
        if (hotseatPredictionController.mComponentKeyMappers.isEmpty()) {
            Snackbar.show(hotseatPredictionController.mLauncher, R.string.hotsaet_tip_prediction_disabled, R.string.hotseat_prediction_settings, null, new Runnable() { // from class: c.a.a.K0.j
                @Override // java.lang.Runnable
                public final void run() {
                    HotseatPredictionController.this.mLauncher.startActivity(HotseatEduController.getSettingsIntent());
                }
            });
            return;
        }
        int size = ((ArrayList) hotseatPredictionController.getPredictedIcons()).size();
        int i = (hotseatPredictionController.mHotSeatItemsCount + 1) / 2;
        int i2 = R.string.hotseat_tip_no_empty_slots;
        if (size >= i) {
            if (((ArrayList) hotseatPredictionController.getPredictedIcons()).isEmpty()) {
                new ArrowTipView(hotseatPredictionController.mLauncher).show(hotseatPredictionController.mLauncher.getString(R.string.hotseat_tip_no_empty_slots), hotseatPredictionController.mHotseat.getTop());
                return;
            } else {
                Snackbar.show(hotseatPredictionController.mLauncher, R.string.hotseat_tip_gaps_filled, R.string.hotseat_prediction_settings, null, new Runnable() { // from class: c.a.a.K0.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        HotseatPredictionController.this.mLauncher.startActivity(HotseatEduController.getSettingsIntent());
                    }
                });
                return;
            }
        }
        final HotseatEduController hotseatEduController = new HotseatEduController(hotseatPredictionController.mLauncher, hotseatPredictionController.mRestoreHelper, new Runnable() { // from class: c.a.a.K0.a
            @Override // java.lang.Runnable
            public final void run() {
                HotseatPredictionController.this.createPredictor();
            }
        });
        hotseatEduController.mPredictedApps = hotseatPredictionController.mapToWorkspaceItemInfo(hotseatPredictionController.mComponentKeyMappers);
        int childCount = hotseatEduController.mHotseat.mShortcutsAndWidgets.getChildCount();
        CellLayout screenWithId = hotseatEduController.mLauncher.mWorkspace.getScreenWithId(0);
        boolean anyMatch = IntStream.range(0, childCount).anyMatch(new IntPredicate() { // from class: c.a.a.K0.c
            @Override // java.util.function.IntPredicate
            public final boolean test(int i3) {
                View childAt = HotseatEduController.this.mHotseat.mShortcutsAndWidgets.getChildAt(i3);
                return (childAt == null || childAt.getTag() == null || ((ItemInfo) childAt.getTag()).container == -103) ? false : true;
            }
        });
        boolean makeSpaceForHotseatMigration = screenWithId.makeSpaceForHotseatMigration(false);
        if (!anyMatch || !makeSpaceForHotseatMigration) {
            ArrowTipView arrowTipView = new ArrowTipView(hotseatEduController.mLauncher);
            Launcher launcher = hotseatEduController.mLauncher;
            if (!anyMatch) {
                i2 = R.string.hotseat_auto_enrolled;
            }
            arrowTipView.show(launcher.getString(i2), hotseatEduController.mHotseat.getTop());
            hotseatEduController.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_ONLY_TIP);
            hotseatEduController.mOnOnboardingComplete.run();
            return;
        }
        List list = hotseatEduController.mPredictedApps;
        if (list == null || list.isEmpty()) {
            return;
        }
        HotseatEduDialog hotseatEduDialog = hotseatEduController.mActiveDialog;
        if (hotseatEduDialog != null) {
            hotseatEduDialog.handleClose(false);
        }
        HotseatEduDialog dialog = HotseatEduDialog.getDialog(hotseatEduController.mLauncher);
        hotseatEduController.mActiveDialog = dialog;
        dialog.mHotseatEduController = hotseatEduController;
        List list2 = hotseatEduController.mPredictedApps;
        if (dialog.getParent() != null || list2.size() < dialog.mLauncher.getDeviceProfile().inv.numHotseatIcons || dialog.mHotseatEduController == null) {
            return;
        }
        AbstractFloatingView.closeAllOpenViews(dialog.mLauncher);
        dialog.attachToContainer();
        dialog.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_SEEN);
        if (!dialog.mIsOpen && !dialog.mOpenCloseAnimator.isRunning()) {
            dialog.mIsOpen = true;
            dialog.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) AbstractSlideInView.TRANSLATION_SHIFT, RecentsState.NO_OFFSET));
            dialog.mOpenCloseAnimator.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
            dialog.mOpenCloseAnimator.start();
        }
        for (int i3 = 0; i3 < dialog.mLauncher.getDeviceProfile().inv.numHotseatIcons; i3++) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) list2.get(i3);
            PredictedAppIcon createIcon = PredictedAppIcon.createIcon(dialog.mSampleHotseat, workspaceItemInfo);
            createIcon.setEnabled(false);
            createIcon.setImportantForAccessibility(2);
            createIcon.verifyHighRes();
            dialog.mSampleHotseat.addViewToCellLayout(createIcon, i3, workspaceItemInfo.getViewId(), new CellLayout.LayoutParams(i3, 0, 1, 1), true);
        }
    }
}
