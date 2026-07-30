package c.b.a.b.b.n;

import android.net.Uri;
import android.text.TextUtils;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.util.ComponentKey;

/* loaded from: classes.dex */
public class o extends p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Uri f2775b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(ComponentKey componentKey, boolean z, Uri uri) {
        super(componentKey, z, null);
        this.f2775b = uri;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom$ContainerInfo getContainerInfo() {
        String queryParameter = this.f2775b.getQueryParameter("searchQueryLength");
        LauncherAtom$SearchResultContainer.Builder builder = (LauncherAtom$SearchResultContainer.Builder) LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE.createBuilder();
        int parseInt = TextUtils.isEmpty(queryParameter) ? 0 : Integer.parseInt(queryParameter);
        builder.copyOnWrite();
        LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer = (LauncherAtom$SearchResultContainer) builder.instance;
        launcherAtom$SearchResultContainer.bitField0_ |= 1;
        launcherAtom$SearchResultContainer.queryLength_ = parseInt;
        Launcher launcher = (Launcher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
        int i = ((LauncherState) launcher.getStateManager().mState).containerType;
        if (i == 1) {
            LauncherAtom$WorkspaceContainer.Builder newBuilder = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder.setPageIndex(launcher.mWorkspace.getCurrentPage());
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
}
