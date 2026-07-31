package net.thunderbird.feature.debug.settings.navigation;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class SecretDebugSettingsRoute {
    public final String basePath;
    public final Tab tab;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new ThemeSizesKt$$ExternalSyntheticLambda0(27)), null};

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return SecretDebugSettingsRoute$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Tab {
        public static final /* synthetic */ Tab[] $VALUES;
        public static final Tab FeatureFlag;
        public static final Tab Notification;

        static {
            Tab tab = new Tab("Notification", 0);
            Notification = tab;
            Tab tab2 = new Tab("FeatureFlag", 1);
            FeatureFlag = tab2;
            $VALUES = new Tab[]{tab, tab2};
        }

        public static Tab valueOf(String str) {
            return (Tab) Enum.valueOf(Tab.class, str);
        }

        public static Tab[] values() {
            return (Tab[]) $VALUES.clone();
        }
    }

    public /* synthetic */ SecretDebugSettingsRoute(int i, Tab tab, String str) {
        this.tab = (i & 1) == 0 ? Tab.Notification : tab;
        if ((i & 2) == 0) {
            this.basePath = "app://secret_debug_settings/{tab}";
        } else {
            this.basePath = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SecretDebugSettingsRoute) && this.tab == ((SecretDebugSettingsRoute) obj).tab;
    }

    public final int hashCode() {
        return this.tab.hashCode();
    }

    public final String toString() {
        return "SecretDebugSettingsRoute(tab=" + this.tab + ")";
    }

    public SecretDebugSettingsRoute() {
        this.tab = Tab.FeatureFlag;
        this.basePath = "app://secret_debug_settings/{tab}";
    }
}
