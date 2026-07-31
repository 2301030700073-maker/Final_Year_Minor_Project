package com.fsck.k9.ui.settings.general;

import android.content.Context;
import android.content.Intent;
import androidx.preference.Preference;
import androidx.room.TransactionExecutor;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsActivity;
import kotlin.text.Regex$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class GeneralSettingsFragment$$ExternalSyntheticLambda3 implements Preference.OnPreferenceClickListener, Preference.OnPreferenceChangeListener {
    public final /* synthetic */ GeneralSettingsFragment f$0;

    public /* synthetic */ GeneralSettingsFragment$$ExternalSyntheticLambda3(GeneralSettingsFragment generalSettingsFragment) {
        this.f$0 = generalSettingsFragment;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public void onPreferenceChange(Preference preference, Object obj) {
        int i = GeneralSettingsFragment.$r8$clinit;
        obj.getClass();
        boolean booleanValue = ((Boolean) obj).booleanValue();
        GeneralSettingsFragment generalSettingsFragment = this.f$0;
        if (booleanValue) {
            generalSettingsFragment.choseFileSyncDebugLogsResultContract.launch(GeneralSettingsFragment.formatFileExportUriString());
            return;
        }
        WorkManagerImpl workManagerImpl = ((K9JobManager) generalSettingsFragment.jobManager$delegate.getValue()).syncDebugFileLogManager.workManager;
        SystemClock systemClock = workManagerImpl.mConfiguration.tracer;
        String concat = "CancelWorkByName_".concat("sync_debug_timer");
        TransactionExecutor transactionExecutor = (TransactionExecutor) workManagerImpl.mWorkTaskExecutor.executorServiceOrNull;
        transactionExecutor.getClass();
        OperationKt.launchOperation(systemClock, concat, transactionExecutor, new Regex$$ExternalSyntheticLambda1(6, "sync_debug_timer", workManagerImpl));
        generalSettingsFragment.exportSyncDebugLogsResultContract.launch(GeneralSettingsFragment.formatFileExportUriString());
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = GeneralSettingsFragment.$r8$clinit;
        Context context = this.f$0.getContext();
        if (context == null) {
            return true;
        }
        int i2 = NotificationActionsSettingsActivity.$r8$clinit;
        context.startActivity(new Intent(context, (Class<?>) NotificationActionsSettingsActivity.class));
        return true;
    }
}
