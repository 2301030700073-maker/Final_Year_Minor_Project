package app.k9mail;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.feature.widget.shortcut.LauncherShortcutActivity;
import com.fsck.k9.DefaultAppConfig;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.provider.UnreadWidgetProvider;
import com.fsck.k9.widget.list.MessageListWidgetProvider;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class K9KoinModuleKt {
    public static final DefaultAppConfig appConfig;
    public static final Module appModule;

    static {
        Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0 = new Data$$ExternalSyntheticLambda0(14);
        Module module = new Module();
        data$$ExternalSyntheticLambda0.invoke(module);
        appModule = module;
        appConfig = new DefaultAppConfig(IntOffsetKt.listOf((Object[]) new Class[]{MessageCompose.class, LauncherShortcutActivity.class, UnreadWidgetProvider.class, MessageListWidgetProvider.class}));
    }
}
