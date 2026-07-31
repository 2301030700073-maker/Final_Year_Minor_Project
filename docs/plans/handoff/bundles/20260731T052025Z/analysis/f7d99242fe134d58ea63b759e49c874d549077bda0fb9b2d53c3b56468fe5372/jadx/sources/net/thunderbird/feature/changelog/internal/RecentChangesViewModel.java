package net.thunderbird.feature.changelog.internal;

import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.ui.choosefolder.ChooseFolderViewModel$special$$inlined$flatMapLatest$1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecentChangesViewModel extends ViewModel {
    public final ChangeLogManager changeLogManager;
    public final GeneralSettingsManager generalSettingsManager;
    public final CoroutineLiveData shouldShowRecentChangesHint;

    public RecentChangesViewModel(GeneralSettingsManager generalSettingsManager, ChangeLogManager changeLogManager) {
        this.generalSettingsManager = generalSettingsManager;
        this.changeLogManager = changeLogManager;
        this.shouldShowRecentChangesHint = ViewModelKt.asLiveData$default(FlowKt.transformLatest((Flow) changeLogManager.changeLogFlow$delegate.getValue(), new ChooseFolderViewModel$special$$inlined$flatMapLatest$1(null, this, 1)));
    }
}
