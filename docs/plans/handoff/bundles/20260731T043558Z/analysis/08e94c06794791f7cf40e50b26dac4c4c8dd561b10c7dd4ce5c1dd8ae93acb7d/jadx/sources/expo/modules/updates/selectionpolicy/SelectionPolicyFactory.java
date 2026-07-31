package expo.modules.updates.selectionpolicy;

import expo.modules.updates.UpdatesConfiguration;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SelectionPolicyFactory.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lexpo/modules/updates/selectionpolicy/SelectionPolicyFactory;", "", "<init>", "()V", "createFilterAwarePolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", UpdatesConfiguration.UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY, "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class SelectionPolicyFactory {
    public static final SelectionPolicyFactory INSTANCE = new SelectionPolicyFactory();

    private SelectionPolicyFactory() {
    }

    @JvmStatic
    public static final SelectionPolicy createFilterAwarePolicy(String runtimeVersion) {
        Intrinsics.checkNotNullParameter(runtimeVersion, "runtimeVersion");
        return new SelectionPolicy(new LauncherSelectionPolicyFilterAware(runtimeVersion), new LoaderSelectionPolicyFilterAware(), new ReaperSelectionPolicyFilterAware());
    }
}
