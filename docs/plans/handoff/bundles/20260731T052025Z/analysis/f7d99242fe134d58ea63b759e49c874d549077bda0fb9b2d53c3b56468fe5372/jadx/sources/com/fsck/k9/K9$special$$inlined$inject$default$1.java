package com.fsck.k9;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import app.k9mail.feature.widget.message.list.MessageListLoader;
import app.k9mail.feature.widget.message.list.MessageListWidgetManager;
import app.k9mail.feature.widget.unread.UnreadWidgetRepository;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.ui.base.locale.SystemLocaleManager;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import org.koin.core.component.KoinComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ K9$special$$inlined$inject$default$1(KoinComponent koinComponent, int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return ViewSizeResolver.CC.m(DefaultGeneralSettingsManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 1:
                return ViewSizeResolver.CC.m(MessageListWidgetManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 2:
                return ViewSizeResolver.CC.m(K9CoreResourceProvider.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 3:
                return ViewSizeResolver.CC.m(MessageListLoader.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 4:
                return ViewSizeResolver.CC.m(K9CoreResourceProvider.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 5:
                return ViewSizeResolver.CC.m(GeneralSettingsManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 6:
                return Sink$CC.$default$getKoin().scopeRegistry.rootScope.resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetRepository.class), null, null);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Sink$CC.$default$getKoin().scopeRegistry.rootScope.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ViewSizeResolver.CC.m(Context.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 9:
                return ViewSizeResolver.CC.m(DefaultAppConfig.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 10:
                return ViewSizeResolver.CC.m(K9JobManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 11:
                return ViewSizeResolver.CC.m(Preferences.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ViewSizeResolver.CC.m(NotificationController.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 13:
                return ViewSizeResolver.CC.m(NoOpTelemetryManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 14:
                return ViewSizeResolver.CC.m(InMemoryFeatureFlagProvider.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case OffsetKt.Horizontal /* 15 */:
                return ViewSizeResolver.CC.m(DefaultFolderProvider.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 16:
                return ViewSizeResolver.CC.m(K9CoreResourceProvider.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 17:
                return ViewSizeResolver.CC.m(PushController.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 18:
                return ViewSizeResolver.CC.m(DefaultTrustedSocketFactory.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 19:
                return ViewSizeResolver.CC.m(RealOAuth2TokenProviderFactory.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            case 20:
                return ViewSizeResolver.CC.m(SystemLocaleManager.class, Sink$CC.$default$getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
            default:
                return Sink$CC.$default$getKoin().scopeRegistry.rootScope.resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
        }
    }
}
