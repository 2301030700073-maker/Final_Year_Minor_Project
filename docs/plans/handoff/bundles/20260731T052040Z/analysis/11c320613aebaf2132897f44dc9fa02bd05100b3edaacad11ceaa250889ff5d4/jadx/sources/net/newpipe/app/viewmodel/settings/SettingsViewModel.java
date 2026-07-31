package net.newpipe.app.viewmodel.settings;

import androidx.lifecycle.ViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.enums.EnumEntriesList;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.newpipe.app.platform.AndroidBuildInfo;
import net.newpipe.app.platform.BuildInfo;
import net.newpipe.app.screen.settings.model.SettingsCategoryType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SettingsViewModel extends ViewModel {
    public final StateFlowImpl categories;

    public SettingsViewModel(BuildInfo buildInfo) {
        EnumEntriesList enumEntriesList = SettingsCategoryType.$ENTRIES;
        ArrayList arrayList = new ArrayList();
        Iterator it = enumEntriesList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            int ordinal = ((SettingsCategoryType) next).ordinal();
            if (ordinal != 6 ? ordinal != 8 ? true : ((AndroidBuildInfo) buildInfo).isDebug : ((Boolean) ((AndroidBuildInfo) buildInfo).isReleaseApk$delegate.getValue()).booleanValue()) {
                arrayList.add(next);
            }
        }
        this.categories = FlowKt.MutableStateFlow(arrayList);
    }
}
