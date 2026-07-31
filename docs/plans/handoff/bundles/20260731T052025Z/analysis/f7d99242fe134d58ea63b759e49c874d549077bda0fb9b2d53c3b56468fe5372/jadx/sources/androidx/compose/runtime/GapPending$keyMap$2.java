package androidx.compose.runtime;

import androidx.camera.core.CameraX$$ExternalSyntheticLambda0;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerActivity;
import app.k9mail.feature.settings.p000import.ui.PickAppDialogFragment;
import app.k9mail.feature.widget.unread.UnreadWidgetConfigurationActivity;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.EmailAddressValidator;
import com.fsck.k9.activity.EditIdentity;
import com.fsck.k9.activity.UpgradeDatabaseActivity;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.ui.messagesource.MessageHeadersFragment;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.account.FolderListPreference;
import com.fsck.k9.ui.settings.account.VibrationDialogFragment;
import com.fsck.k9.ui.settings.account.Vibrator;
import com.fsck.k9.ui.settings.export.SettingsExportFragment;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogFragment;
import okhttp3.Handshake;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GapPending$keyMap$2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public GapPending$keyMap$2(FolderListPreference folderListPreference, CameraX$$ExternalSyntheticLambda0 cameraX$$ExternalSyntheticLambda0) {
        this.$r8$classId = 11;
        this.this$0 = cameraX$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                ArrayList arrayList = ((GapPending) obj).keyInfos;
                MutableScatterMap mutableScatterMap = new MutableScatterMap(arrayList.size());
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    KeyInfo keyInfo = (KeyInfo) arrayList.get(i2);
                    Object obj2 = keyInfo.objectKey;
                    int i3 = keyInfo.key;
                    MultiValueMap.m381addimpl(mutableScatterMap, obj2 != null ? new JoinedKey(Integer.valueOf(i3), keyInfo.objectKey) : Integer.valueOf(i3), keyInfo);
                }
                return new MultiValueMap(mutableScatterMap);
            case 1:
                TopAppBarColors topAppBarColors = ((SingleRowTopAppBarOverrideScope) obj).colors;
                return new Color(ColorKt.m496lerpjxsXWHM(topAppBarColors.containerColor, topAppBarColors.scrolledContainerColor, EasingKt.FastOutLinearInEasing.transform(0.0f)));
            case 2:
                return AtomicFU.getKoinScope((QrCodeScannerActivity) obj).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
            case 3:
                return (PickAppDialogFragment) obj;
            case 4:
                return AtomicFU.getKoinScope((UnreadWidgetConfigurationActivity) obj).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
            case 5:
                return AtomicFU.getKoinScope((EditIdentity) obj).resolve(Reflection.getOrCreateKotlinClass(EmailAddressValidator.class), null, null);
            case 6:
                return AtomicFU.getKoinScope((UpgradeDatabaseActivity) obj).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return AtomicFU.getKoinScope((AccountSetupComposition) obj).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "getOutboxFolderId: Found Outbox folder with id = " + ((Ref$LongRef) obj).element + ".";
            case 9:
                return (MessageHeadersFragment) obj;
            case 10:
                AccountSettingsActivity accountSettingsActivity = (AccountSettingsActivity) obj;
                return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AccountSettingsViewModel.class), accountSettingsActivity.getViewModelStore(), accountSettingsActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(accountSettingsActivity), null);
            case 11:
                return Sink$CC.$default$getKoin().scopeRegistry.rootScope.get(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, (CameraX$$ExternalSyntheticLambda0) obj);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ViewSizeResolver.CC.m(Vibrator.class, AtomicFU.getKoinScope((VibrationDialogFragment) obj), (Qualifier) null, (ParametersHolder) null);
            case 13:
                return (SettingsExportFragment) obj;
            case 14:
                return AtomicFU.getKoinScope((GeneralSettingsActivity) obj).resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null);
            case OffsetKt.Horizontal /* 15 */:
                return ViewSizeResolver.CC.m(FeatureThemeProvider.class, AtomicFU.getKoinScope((SentFolderNotFoundConfirmationDialogFragment) obj), (Qualifier) null, (ParametersHolder) null);
            default:
                return ViewSizeResolver.CC.m(FeatureThemeProvider.class, AtomicFU.getKoinScope((SetupArchiveFolderDialogFragment) obj), (Qualifier) null, (ParametersHolder) null);
        }
    }

    public /* synthetic */ GapPending$keyMap$2(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
