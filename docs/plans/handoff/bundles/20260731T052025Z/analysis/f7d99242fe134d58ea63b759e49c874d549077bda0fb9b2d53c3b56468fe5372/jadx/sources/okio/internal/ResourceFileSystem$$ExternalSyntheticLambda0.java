package okio.internal;

import android.os.Bundle;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Effect;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import coil3.util.UtilsKt;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.channels.BufferedChannel;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.avatar.DefaultAvatarIcons;
import net.thunderbird.feature.mail.folder.api.FolderServerId;
import net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogFragment;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.changelog.api.ChangelogRoute;
import net.thunderbird.feature.navigation.drawer.dropdown.DropDownDrawer;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.impl.command.DismissInAppNotificationCommand;
import net.thunderbird.feature.notification.impl.command.DisplayInAppNotificationCommand;
import net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okio.FileSystem;
import okio.Options;
import okio.Path;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ResourceFileSystem$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ResourceFileSystem$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int lastIndexOf$default;
        Pair pair;
        Pair pair2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj;
                ClassLoader classLoader = resourceFileSystem.classLoader;
                FileSystem fileSystem = resourceFileSystem.systemFileSystem;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    if (Intrinsics.areEqual(url.getProtocol(), UtilsKt.SCHEME_FILE)) {
                        String str = Path.DIRECTORY_SEPARATOR;
                        pair2 = new Pair(fileSystem, Path.Companion.get$default(new File(url.toURI())));
                    } else {
                        pair2 = null;
                    }
                    if (pair2 != null) {
                        arrayList.add(pair2);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList<URL> list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url2 : list2) {
                    url2.getClass();
                    String url3 = url2.toString();
                    url3.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(url3, "jar:file:", false) && (lastIndexOf$default = StringsKt.lastIndexOf$default(6, url3, "!")) != -1) {
                        String str2 = Path.DIRECTORY_SEPARATOR;
                        pair = new Pair(ZipFilesKt.openZip(Path.Companion.get$default(new File(URI.create(url3.substring(4, lastIndexOf$default)))), fileSystem, new ZipFilesKt$$ExternalSyntheticLambda0(7)), ResourceFileSystem.ROOT);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        arrayList2.add(pair);
                    }
                }
                return CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
            case 1:
                StringBuilder sb = new StringBuilder();
                ((CommonStatePrettyPrinter) obj).getClass();
                sb.append("══ State machine history dump ══");
                sb.append('\n');
                sb.append("BEGINNING OF HISTORY DUMP:");
                sb.append('\n');
                sb.append("---");
                sb.append('\n');
                sb.append("No state transitions to print");
                sb.append('\n');
                sb.append("---");
                sb.append('\n');
                sb.append("END OF HISTORY DUMP");
                sb.append('\n');
                return sb.toString();
            case 2:
                return "save() called with: config = " + ((DisplaySettings) obj);
            case 3:
                return "writeConfig() called with: config = " + ((NotificationPreference) obj);
            case 4:
                BufferedChannel bufferedChannel = ((DraggableNode) obj).channel;
                if (bufferedChannel != null) {
                    bufferedChannel.mo1016trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE);
                }
                return unit;
            case 5:
                return new ParcelableSnapshotMutableIntState(((SettingValue.Color) obj).value);
            case 6:
                String str3 = ((SettingValue.Text) obj).value;
                int length = str3.length();
                return Updater.mutableStateOf$default(new TextFieldValue(4, ParagraphKt.TextRange(length, length), str3));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((DefaultAvatarIcons) obj).icon;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Options.Companion.parametersOf(((ChangelogRoute) obj).changeLogMode);
            case 9:
                return "state.onEach called with: state = " + ((MessageListState) obj);
            case 10:
                SetupArchiveFolderDialogFragment setupArchiveFolderDialogFragment = (SetupArchiveFolderDialogFragment) obj;
                setupArchiveFolderDialogFragment.dismissInternal(false, false);
                Bundle bundle = Bundle.EMPTY;
                bundle.getClass();
                Util.setFragmentResult(setupArchiveFolderDialogFragment, "SetupArchiveFolderDialogFragmentFactory_dialog_dismiss", bundle);
                return unit;
            case 11:
                SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) obj;
                SetupArchiveFolderDialogContract$State.CreateArchiveFolder createArchiveFolder = setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder ? (SetupArchiveFolderDialogContract$State.CreateArchiveFolder) setupArchiveFolderDialogContract$State : null;
                return Updater.mutableStateOf$default(createArchiveFolder != null ? createArchiveFolder.folderName : "");
            case BasicTextKt.ShiftMeta /* 12 */:
                return "Started sync for ".concat(FolderServerId.m1035toStringimpl(((CreateArchiveFolderOutcome$Success.SyncStarted) ((CreateArchiveFolderOutcome$Success) obj)).serverId));
            case 13:
                return "saved sort criteria = " + ((Map) obj);
            case 14:
                return "LoadMessagesLegacySideEffect failed: " + ((Throwable) obj);
            case OffsetKt.Horizontal /* 15 */:
                ((DropDownDrawer) obj).close();
                return unit;
            case 16:
                return "execute() called with: notification = " + ((DismissInAppNotificationCommand) obj).notification;
            case 17:
                return "execute() called with: notification = " + ((DisplayInAppNotificationCommand) obj).notification;
            case 18:
                return "execute() called with notification = " + ((DisplaySystemNotificationCommand) obj).notification;
            case 19:
                return "dismiss() called with: notification = " + ((Notification) obj);
            case 20:
                return "show() called with: notification = " + ((InAppNotification) obj);
            case 21:
                ((ErrorNotificationsDialogFragment) obj).dismissInternal(false, false);
                return unit;
            case 22:
                ((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj).invoke(new ThundermailRoute.AccountSetup());
                return unit;
            case 23:
                return "accountOAuthViewModel.effect() called with: effect = " + ((AccountOAuthContract$Effect) obj);
            default:
                Http2Connection http2Connection = (Http2Connection) obj;
                http2Connection.getClass();
                try {
                    http2Connection.writer.ping(2, 0, false);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return unit;
        }
    }
}
