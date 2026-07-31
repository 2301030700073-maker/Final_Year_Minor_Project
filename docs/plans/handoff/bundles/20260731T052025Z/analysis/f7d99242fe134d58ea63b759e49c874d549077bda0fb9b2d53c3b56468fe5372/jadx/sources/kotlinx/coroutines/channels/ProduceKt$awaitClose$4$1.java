package kotlinx.coroutines.channels;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import com.fsck.k9.activity.setup.AccountSetupCompositionViewModel;
import com.fsck.k9.ui.settings.AboutViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CancellableContinuationImpl;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProduceKt$awaitClose$4$1 implements Function1 {
    public Object $cont;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ProduceKt$awaitClose$4$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$cont = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((CancellableContinuationImpl) this.$cont).resumeWith(unit);
                break;
            case 1:
                float[] fArr = ((Matrix) obj).values;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) this.$cont;
                if (layoutCoordinates.isAttached$1()) {
                    RulerKt.findRootCoordinates(layoutCoordinates).mo583transformFromEL8BTi8(layoutCoordinates, fArr);
                    break;
                }
                break;
            case 2:
                ((CancellationHandle) this.$cont).cancel();
                break;
            case 3:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) this.$cont;
                if (pointerInteropFilter != null) {
                    pointerInteropFilter.disallowIntercept = booleanValue;
                    break;
                }
                break;
            case 4:
                ((RealCall) this.$cont).cancel();
                break;
            case 5:
                ((ServerCertificateErrorViewModel) this.$cont).event(obj);
                break;
            case 6:
                ((QrCodeScannerViewModel) this.$cont).event(obj);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((PermissionsViewModel) this.$cont).event(obj);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((AccountSetupCompositionViewModel) this.$cont).event(obj);
                break;
            case 9:
                ((AboutViewModel) this.$cont).event(obj);
                break;
            case 10:
                ((GeneralSettingsViewModel) this.$cont).event(obj);
                break;
            case 11:
                ((ReadingMailSettingsViewModel) this.$cont).event(obj);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((SearchSettingsViewModel) this.$cont).event(obj);
                break;
            case 13:
                ((ChangelogViewModel) this.$cont).event(obj);
                break;
            case 14:
                ((ImmutableList) this.$cont).get(((Number) obj).intValue());
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((SetupArchiveFolderDialogViewModel) ((SetupArchiveFolderDialogContract$ViewModel) this.$cont)).event(obj);
                break;
            case 16:
                ((DrawerViewModel) this.$cont).event(obj);
                break;
            default:
                ((ThundermailOAuthViewModel) this.$cont).event(obj);
                break;
        }
        return unit;
    }

    public /* synthetic */ ProduceKt$awaitClose$4$1() {
        this.$r8$classId = 3;
    }
}
