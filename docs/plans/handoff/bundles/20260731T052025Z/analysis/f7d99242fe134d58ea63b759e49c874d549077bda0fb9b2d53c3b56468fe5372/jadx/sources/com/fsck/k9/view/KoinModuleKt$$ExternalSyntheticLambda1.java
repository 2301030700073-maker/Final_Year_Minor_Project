package com.fsck.k9.view;

import android.content.Context;
import android.os.Vibrator;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.ImageLoader;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.helper.NamedThreadFactory;
import com.fsck.k9.helper.ReplyToParser;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.mailstore.AttachmentResolver;
import com.fsck.k9.mailstore.SpecialFolderSelectionStrategy;
import com.fsck.k9.message.ReplyActionStrategy;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.ui.helper.RelativeDateTimeFormatter;
import com.fsck.k9.ui.settings.account.AccountSettingsDataStoreFactory;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.account.AndroidVibrator;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.general.GeneralSettingsDataStore;
import com.fsck.k9.ui.settings.general.GeneralSettingsViewModel;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItem;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import com.fsck.k9.view.MessageWebView;
import com.skydoves.landscapist.coil3.CoilImageKt;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Unit;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import kotlinx.coroutines.CoroutineDispatcher;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.android.logging.LogcatLogFileWriter;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ImageLoader CoilImage$lambda$0;
        ImageLoader CoilImage$lambda$4;
        CombinedContext combinedContext;
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new WebViewConfigProvider((ThemeManager) scope.resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null), (GeneralSettingsManager) scope.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 1:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsViewModel((LogcatLogFileWriter) scope2.resolve(Reflection.getOrCreateKotlinClass(LogcatLogFileWriter.class), null, null), (FileLogSink) scope2.resolve(Reflection.getOrCreateKotlinClass(FileLogSink.class), null, new StringQualifier("syncDebug")));
            case 2:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsDataStore((K9JobManager) scope3.resolve(Reflection.getOrCreateKotlinClass(K9JobManager.class), null, null), (AppLanguageManager) scope3.resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null), (GeneralSettingsManager) scope3.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (NoOpTelemetryManager) scope3.resolve(Reflection.getOrCreateKotlinClass(NoOpTelemetryManager.class), null, null));
            case 3:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return Executors.newSingleThreadExecutor(new NamedThreadFactory());
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountSettingsViewModel((LegacyAccountDtoManager) scope4.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (DefaultFolderRepository) scope4.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (SpecialFolderSelectionStrategy) scope4.resolve(Reflection.getOrCreateKotlinClass(SpecialFolderSelectionStrategy.class), null, null));
            case 5:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountSettingsDataStoreFactory((Preferences) scope5.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (K9JobManager) scope5.resolve(Reflection.getOrCreateKotlinClass(K9JobManager.class), null, null), (ExecutorService) scope5.resolve(Reflection.getOrCreateKotlinClass(ExecutorService.class), null, new StringQualifier("SaveSettingsExecutorService")), (NotificationChannelManager) scope5.resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null), (NotificationController) scope5.resolve(Reflection.getOrCreateKotlinClass(NotificationController.class), null, null), (MessagingController) scope5.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null));
            case 6:
                Vibrator vibrator = (Vibrator) ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getSystemService(Vibrator.class);
                if (vibrator != null) {
                    return new AndroidVibrator(vibrator);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Vibrator service missing");
                return null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsExportViewModel((LegacyAccountDtoManager) scope6.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (SettingsExporter) scope6.resolve(Reflection.getOrCreateKotlinClass(SettingsExporter.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SwipeActions swipeActions = (SwipeActions) obj;
                SwipeAction swipeAction = (SwipeAction) obj2;
                swipeActions.getClass();
                swipeAction.getClass();
                return SwipeActions.copy$default(swipeActions, null, swipeAction, 1);
            case 9:
                SwipeActions swipeActions2 = (SwipeActions) obj;
                SwipeAction swipeAction2 = (SwipeAction) obj2;
                swipeActions2.getClass();
                swipeAction2.getClass();
                return SwipeActions.copy$default(swipeActions2, swipeAction2, null, 2);
            case 10:
                ((Integer) obj).intValue();
                NotificationListItem notificationListItem = (NotificationListItem) obj2;
                notificationListItem.getClass();
                return NotificationListItemKt.getKey(notificationListItem);
            case 11:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RelativeDateTimeFormatter((Context) scope7.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (Clock) scope7.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new ReplyToParser();
            case 13:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ReplyActionStrategy();
            case 14:
                Scope scope9 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope9.getClass();
                parametersHolder.getClass();
                return new K9WebViewClient((ClipboardManager) scope9.resolve(Reflection.getOrCreateKotlinClass(ClipboardManager.class), null, null), (AttachmentResolver) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(AttachmentResolver.class)), (MessageWebView.OnPageFinishedListener) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(MessageWebView.OnPageFinishedListener.class)));
            case OffsetKt.Horizontal /* 15 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new WebViewClientFactory();
            case 16:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new UserInputEmailAddressParser();
            case 17:
                CoilImage$lambda$0 = CoilImageKt.CoilImage$lambda$0((Composer) obj, ((Integer) obj2).intValue());
                return CoilImage$lambda$0;
            case 18:
                CoilImage$lambda$4 = CoilImageKt.CoilImage$lambda$4((Composer) obj, ((Integer) obj2).intValue());
                return CoilImage$lambda$4;
            case 19:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    throw null;
                }
                gapComposer.skipToGroupEnd();
                return Unit.INSTANCE;
            case 20:
                String str = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                str.getClass();
                element.getClass();
                if (str.length() == 0) {
                    return element.toString();
                }
                return str + ", " + element;
            case 21:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                coroutineContext.getClass();
                element2.getClass();
                CoroutineContext minusKey = coroutineContext.minusKey(element2.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (minusKey == emptyCoroutineContext) {
                    return element2;
                }
                ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
                CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) minusKey.get(continuationInterceptor$Key);
                if (coroutineDispatcher == null) {
                    combinedContext = new CombinedContext(element2, minusKey);
                } else {
                    CoroutineContext minusKey2 = minusKey.minusKey(continuationInterceptor$Key);
                    if (minusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(coroutineDispatcher, element2);
                    }
                    combinedContext = new CombinedContext(coroutineDispatcher, new CombinedContext(element2, minusKey2));
                }
                return combinedContext;
            case 22:
                ((Links) obj).getClass();
                ((Links) obj2).getClass();
                return Boolean.TRUE;
            case 23:
                ((Links) obj).getClass();
                ((Links) obj2).getClass();
                return Boolean.TRUE;
            case 24:
                ((Links) obj).getClass();
                ((Links) obj2).getClass();
                return Boolean.TRUE;
            case 25:
                ((Links) obj).getClass();
                ((Links) obj2).getClass();
                return Boolean.TRUE;
            case 26:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 27:
                return ((CoroutineContext) obj).plus((CoroutineContext.Element) obj2);
            case 28:
                return ((CoroutineContext) obj).plus((CoroutineContext.Element) obj2);
            default:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
        }
    }
}
