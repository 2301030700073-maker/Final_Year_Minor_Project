package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingMailSettingsBuilder$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingMailSettingsBuilder f$0;

    public /* synthetic */ ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(ReadingMailSettingsBuilder readingMailSettingsBuilder, int i) {
        this.$r8$classId = i;
        this.f$0 = readingMailSettingsBuilder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ReadingMailSettingsBuilder readingMailSettingsBuilder = this.f$0;
        switch (i) {
            case 0:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_show_pictures_label);
            case 1:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mark_message_as_read_on_view_label);
            case 2:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mark_message_as_read_on_view_summary);
            case 3:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_show_pictures_never);
            case 4:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_show_pictures_always);
            default:
                return ((AndroidResourceManager) readingMailSettingsBuilder.resources).stringResource(R.string.account_settings_show_pictures_only_from_contacts);
        }
    }
}
