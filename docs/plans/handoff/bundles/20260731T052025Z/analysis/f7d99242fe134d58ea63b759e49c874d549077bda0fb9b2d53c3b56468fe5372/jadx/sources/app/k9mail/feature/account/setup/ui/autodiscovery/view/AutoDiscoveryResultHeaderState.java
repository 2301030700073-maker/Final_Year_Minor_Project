package app.k9mail.feature.account.setup.ui.autodiscovery.view;

import androidx.compose.ui.graphics.vector.ImageVector;
import com.fsck.k9.R;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NoSettings' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoDiscoveryResultHeaderState {
    public static final /* synthetic */ AutoDiscoveryResultHeaderState[] $VALUES;
    public static final AutoDiscoveryResultHeaderState NoSettings;
    public static final AutoDiscoveryResultHeaderState Trusted;
    public static final AutoDiscoveryResultHeaderState Untrusted;
    public final ImageVector icon;
    public final boolean isExpandable;
    public final int subtitleResourceId;
    public final int titleResourceId;

    static {
        ImageVector imageVector = Icons$Outlined.Info;
        AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState = new AutoDiscoveryResultHeaderState("NoSettings", 0, imageVector, R.string.account_setup_auto_discovery_result_header_title_configuration_not_found, R.string.account_setup_auto_discovery_result_header_subtitle_configuration_not_found, false);
        NoSettings = autoDiscoveryResultHeaderState;
        AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState2 = new AutoDiscoveryResultHeaderState("Trusted", 1, Icons$Outlined.Check, R.string.account_setup_auto_discovery_status_header_title_configuration_found, R.string.account_setup_auto_discovery_result_header_subtitle_configuration_trusted, true);
        Trusted = autoDiscoveryResultHeaderState2;
        AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState3 = new AutoDiscoveryResultHeaderState("Untrusted", 2, imageVector, R.string.account_setup_auto_discovery_status_header_title_configuration_found, R.string.account_setup_auto_discovery_result_header_subtitle_configuration_untrusted, true);
        Untrusted = autoDiscoveryResultHeaderState3;
        $VALUES = new AutoDiscoveryResultHeaderState[]{autoDiscoveryResultHeaderState, autoDiscoveryResultHeaderState2, autoDiscoveryResultHeaderState3};
    }

    public AutoDiscoveryResultHeaderState(String str, int i, ImageVector imageVector, int i2, int i3, boolean z) {
        this.icon = imageVector;
        this.titleResourceId = i2;
        this.subtitleResourceId = i3;
        this.isExpandable = z;
    }

    public static AutoDiscoveryResultHeaderState valueOf(String str) {
        return (AutoDiscoveryResultHeaderState) Enum.valueOf(AutoDiscoveryResultHeaderState.class, str);
    }

    public static AutoDiscoveryResultHeaderState[] values() {
        return (AutoDiscoveryResultHeaderState[]) $VALUES.clone();
    }
}
