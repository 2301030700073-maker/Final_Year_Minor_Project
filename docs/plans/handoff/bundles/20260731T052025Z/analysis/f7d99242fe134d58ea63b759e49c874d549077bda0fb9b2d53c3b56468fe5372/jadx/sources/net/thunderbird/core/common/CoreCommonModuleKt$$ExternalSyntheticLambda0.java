package net.thunderbird.core.common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.auth.K9OAuthConfigurationFactory;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import com.fsck.k9.backends.DefaultImapBackendFactory;
import com.fsck.k9.mailstore.DefaultAttachmentViewInfoMapper;
import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory;
import com.fsck.k9.mailstore.SpecialFolderSelectionStrategy;
import com.fsck.k9.preferences.DrawerConfigManager;
import com.fsck.k9.ui.helper.SizeFormatter;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.Clock;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.feature.MessageListLauncher;
import net.thunderbird.app.common.feature.NavigationDrawerConfigLoader;
import net.thunderbird.app.common.feature.NavigationDrawerConfigWriter;
import net.thunderbird.app.common.feature.mail.RemoteFolderCreatorResolver;
import net.thunderbird.app.common.feature.mail.message.MailMessageModuleKt$mailMessageModule$1$3$1;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.app.common.startup.DefaultDatabaseUpgradeInterceptor;
import net.thunderbird.app.common.startup.DefaultStartupRouter;
import net.thunderbird.backend.api.BackendFactory;
import net.thunderbird.backend.imap.DefaultImapRemoteFolderCreatorFactory;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.android.logging.LogcatLogFileWriter;
import net.thunderbird.core.android.logging.RealProcessExecutor;
import net.thunderbird.core.android.network.ConnectivityManagerApi23;
import net.thunderbird.core.android.network.ConnectivityManagerApi24;
import net.thunderbird.core.common.oauth.InMemoryOAuthConfigurationProvider;
import net.thunderbird.core.common.resources.PluralsResourceManager;
import net.thunderbird.core.common.resources.ResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.file.DefaultFileManager;
import net.thunderbird.core.logging.DefaultLogger;
import net.thunderbird.core.logging.LogLevelProvider;
import net.thunderbird.core.logging.LogSink;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.file.AndroidFileLogSink;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.mail.message.export.DefaultMessageFileNameSuggester;
import net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreCommonModuleKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ CoreCommonModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return Clock.System.INSTANCE;
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return IntOffsetKt.listOf(scope.resolve(Reflection.getOrCreateKotlinClass(FileLogSink.class), null, new StringQualifier("syncDebug")));
            case 2:
                Scope scope2 = (Scope) obj;
                return CharsKt__CharKt.CompositeLogSink$default((LogLevelProvider) ViewSizeResolver.CC.m(scope2, (ParametersHolder) obj2, LogLevelProvider.class, (Qualifier) null, (ParametersHolder) null), (List) scope2.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier("syncDebug")));
            case 3:
                Scope scope3 = (Scope) obj;
                String path = ((Context) ViewSizeResolver.CC.m(scope3, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getFilesDir().getPath();
                path.getClass();
                return new AndroidFileLogSink(path, (DefaultFileManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultFileManager.class), null, null));
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLogger((LogSink) scope4.resolve(Reflection.getOrCreateKotlinClass(CompositeLogSink.class), null, new StringQualifier("syncDebug")));
            case 5:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DialogSettingViewProvider();
            case 6:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListLauncher(Okio.androidContext(scope5));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NavigationDrawerConfigLoader((DrawerConfigManager) scope6.resolve(Reflection.getOrCreateKotlinClass(DrawerConfigManager.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NavigationDrawerConfigWriter();
            case 9:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultSpecialFolderUpdater$Factory((DefaultLegacyAccountManager) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultFolderRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (SpecialFolderSelectionStrategy) scope8.resolve(Reflection.getOrCreateKotlinClass(SpecialFolderSelectionStrategy.class), null, null), (CoroutineScope) scope8.resolve(Reflection.getOrCreateKotlinClass(CoroutineScope.class), null, new StringQualifier("AppCoroutineScope")));
            case 10:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultImapRemoteFolderCreatorFactory((Logger) scope9.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (BackendFactory) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultImapBackendFactory.class), null, null));
            case 11:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RemoteFolderCreatorResolver((DefaultLegacyAccountManager) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultImapRemoteFolderCreatorFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultImapRemoteFolderCreatorFactory.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessageFileNameSuggester();
            case 13:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new EmlMessageExporter((DefaultFileManager) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultFileManager.class), null, null));
            case 14:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return MailMessageModuleKt$mailMessageModule$1$3$1.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LegacyUpdateSortCriteria((Logger) scope12.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (DefaultLegacyAccountManager) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null));
            case 16:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                Resources resources = Okio.androidApplication(scope13).getResources();
                resources.getClass();
                return new DefaultAttachmentViewInfoMapper(new InvalidationTracker$implementation$1(1, new SizeFormatter(resources), SizeFormatter.class, "formatSize", "formatSize(J)Ljava/lang/String;", 0, 21));
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDatabaseUpgradeInterceptor();
            case 18:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultStartupRouter((DefaultLegacyAccountManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultBackgroundAccountRemover) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultBackgroundAccountRemover.class), null, null));
            case 19:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidResourceManager(Okio.androidApplication(scope15));
            case 20:
                return (ResourceManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, AndroidResourceManager.class, (Qualifier) null, (ParametersHolder) null);
            case 21:
                return (StringsResourceManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, AndroidResourceManager.class, (Qualifier) null, (ParametersHolder) null);
            case 22:
                return (PluralsResourceManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, AndroidResourceManager.class, (Qualifier) null, (ParametersHolder) null);
            case 23:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new RealProcessExecutor();
            case 24:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LogcatLogFileWriter((ContentResolver) scope16.resolve(Reflection.getOrCreateKotlinClass(ContentResolver.class), null, null), (RealProcessExecutor) scope16.resolve(Reflection.getOrCreateKotlinClass(RealProcessExecutor.class), null, null));
            case 25:
                Object systemService = ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getSystemService("connectivity");
                systemService.getClass();
                return (ConnectivityManager) systemService;
            case 26:
                ConnectivityManager connectivityManager = (ConnectivityManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, ConnectivityManager.class, (Qualifier) null, (ParametersHolder) null);
                return Build.VERSION.SDK_INT >= 24 ? new ConnectivityManagerApi24(connectivityManager) : new ConnectivityManagerApi23(connectivityManager);
            case 27:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new InMemoryOAuthConfigurationProvider((K9OAuthConfigurationFactory) scope17.resolve(Reflection.getOrCreateKotlinClass(K9OAuthConfigurationFactory.class), null, null));
            case 28:
                ((Integer) obj).intValue();
                Map.Entry entry = (Map.Entry) obj2;
                entry.getClass();
                return String.valueOf(entry.getKey());
            default:
                return String.valueOf(((Integer) obj).intValue());
        }
    }
}
