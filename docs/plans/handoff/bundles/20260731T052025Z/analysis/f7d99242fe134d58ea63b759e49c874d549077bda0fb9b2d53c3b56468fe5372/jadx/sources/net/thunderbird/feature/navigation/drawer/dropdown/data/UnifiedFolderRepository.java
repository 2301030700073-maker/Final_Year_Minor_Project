package net.thunderbird.feature.navigation.drawer.dropdown.data;

import com.fsck.k9.controller.DefaultMessageCountsProvider;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayFolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnifiedFolderRepository {
    public final DefaultMessageCountsProvider messageCountsProvider;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UnifiedDisplayFolderType.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public UnifiedFolderRepository(DefaultMessageCountsProvider defaultMessageCountsProvider) {
        this.messageCountsProvider = defaultMessageCountsProvider;
    }
}
