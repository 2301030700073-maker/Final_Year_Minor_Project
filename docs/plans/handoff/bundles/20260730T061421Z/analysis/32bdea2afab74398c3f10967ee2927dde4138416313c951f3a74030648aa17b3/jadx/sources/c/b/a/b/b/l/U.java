package c.b.a.b.b.l;

import android.content.Intent;
import android.text.TextUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;

/* loaded from: classes.dex */
public class U extends PendingAddShortcutInfo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppInfo f2644a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ V f2645b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(V v, ShortcutConfigActivityInfo shortcutConfigActivityInfo, AppInfo appInfo) {
        super(shortcutConfigActivityInfo);
        this.f2645b = v;
        this.f2644a = appInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom$ContainerInfo getContainerInfo() {
        String queryParameter = this.f2645b.f2647b.getQueryParameter("searchQueryLength");
        LauncherAtom$SearchResultContainer.Builder builder = (LauncherAtom$SearchResultContainer.Builder) LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE.createBuilder();
        int parseInt = TextUtils.isEmpty(queryParameter) ? 0 : Integer.parseInt(queryParameter);
        builder.copyOnWrite();
        LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer = (LauncherAtom$SearchResultContainer) builder.instance;
        launcherAtom$SearchResultContainer.bitField0_ |= 1;
        launcherAtom$SearchResultContainer.queryLength_ = parseInt;
        int i = ((LauncherState) this.f2645b.mLauncher.getStateManager().mState).containerType;
        if (i == 1) {
            LauncherAtom$WorkspaceContainer.Builder newBuilder = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder.setPageIndex(this.f2645b.mLauncher.mWorkspace.getCurrentPage());
            builder.copyOnWrite();
            LauncherAtom$SearchResultContainer.access$9100((LauncherAtom$SearchResultContainer) builder.instance, newBuilder);
        } else if (i == 4) {
            LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer = LauncherAtom$AllAppsContainer.DEFAULT_INSTANCE;
            builder.copyOnWrite();
            LauncherAtom$SearchResultContainer.access$9400((LauncherAtom$SearchResultContainer) builder.instance, launcherAtom$AllAppsContainer);
        }
        LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
        newBuilder2.copyOnWrite();
        LauncherAtom$ContainerInfo.access$6000((LauncherAtom$ContainerInfo) newBuilder2.instance, builder);
        return (LauncherAtom$ContainerInfo) newBuilder2.build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public Intent getIntent() {
        return this.f2644a.getIntent();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public boolean isDisabled() {
        return this.f2644a.isDisabled();
    }
}
