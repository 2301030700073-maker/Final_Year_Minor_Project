package androidx.lifecycle.compose;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import coil3.ImageLoader;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import com.skydoves.landscapist.DataSource;
import com.skydoves.landscapist.coil3.ProvideCoilSourceFile_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import okio.Okio;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LifecycleEffectKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(SubcomposeMeasureScope subcomposeMeasureScope, int i, BannerInlineListScrollState bannerInlineListScrollState, PaddingValues paddingValues, Function3 function3) {
        this.$r8$classId = 17;
        this.f$0 = subcomposeMeasureScope;
        this.f$4 = i;
        this.f$1 = bannerInlineListScrollState;
        this.f$2 = paddingValues;
        this.f$3 = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit ProvideCoilSourceFile$lambda$1;
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Object obj3 = this.f$0;
        Object obj4 = this.f$1;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.LifecycleStartEffect(this.f$0, this.f$1, (LifecycleOwner) obj6, (Function1) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Icons$Filled.BasicTooltipBox((PopupPositionProvider) obj3, (ComposableLambdaImpl) obj4, (TooltipStateImpl) obj6, (ComposableLambdaImpl) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj6).invoke(this.f$0, this.f$1, this.f$3, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 3:
                ((Integer) obj2).getClass();
                TextFieldLabelKt.TextFieldOutlinedFakeSelect((String) obj3, (Function0) obj4, (Modifier) obj6, (String) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                TopAppBarKt.SubtitleTopAppBar((String) obj3, (String) obj4, (ComposableLambdaImpl) obj6, (Function3) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                TopAppBarKt.TopAppBarWithBackButton((String) obj3, (Function0) obj4, (Modifier) obj6, (Function3) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                BannerInlineNotificationCardKt.BannerInlineNotificationSupportingText((CharSequence) obj3, (BannerInlineNotificationCardBehaviour) obj4, this.f$4, (Modifier) obj6, (Function1) obj5, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                IntOffsetKt.ServerCertificateErrorScreen((Function0) obj3, (Function0) obj4, (Modifier) obj6, (ServerCertificateErrorViewModel) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                Data.Companion.SettingsImportContent((SettingsImportAction) obj3, (Function0) obj4, (Function0) obj6, (PaddingValues) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                NotificationListItemKt.NotificationActionsSettingsScreen((String) obj3, (ImmutableList) obj4, this.f$4, (Function2) obj6, (Modifier) obj5, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 10:
                ProvideCoilSourceFile$lambda$1 = ProvideCoilSourceFile_androidKt.ProvideCoilSourceFile$lambda$1((ImageLoader) obj4, this.f$0, (DataSource) obj6, (Function2) obj5, this.f$4, (Composer) obj, ((Integer) obj2).intValue());
                break;
            case 11:
                ((Integer) obj2).getClass();
                NodeUtils.ColorDialogView((SettingValue.Color) obj3, (Function1) obj5, (Function0) obj4, (Function0) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                UuidKt.SelectDialogView((SettingValue.Select) obj3, (Function1) obj5, (Function0) obj4, (Function0) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                AtomicFU.TextDialogView((SettingValue.Text) obj3, (Function1) obj5, (Function0) obj4, (Function0) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                Okio.RenderSettingValue((SettingValue) obj3, (Function0) obj4, (Function1) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj2).intValue();
                RangesKt.ChooseArchiveFolderDialogButtons((RowScope) obj3, (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj4, (Function0) obj6, (Function0) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 16:
                Modifier modifier = (Modifier) obj6;
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.BannerInlineNotificationListHostLayout(Updater.updateChangedFlags(i2 | 1), (Composer) obj, modifier, (Function0) obj4, (Function1) obj5, (ImmutableSet) obj3);
                break;
            default:
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj3;
                BannerInlineListScrollState bannerInlineListScrollState = (BannerInlineListScrollState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj6;
                Function3 function3 = (Function3) obj5;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    LayoutDirection layoutDirection = subcomposeMeasureScope.getLayoutDirection();
                    function3.invoke(new PaddingValuesImpl(OffsetKt.calculateStartPadding(paddingValues, layoutDirection), paddingValues.mo211calculateTopPaddingD9Ej5fM() + subcomposeMeasureScope.mo173toDpu2uoSUM(i2 + (bannerInlineListScrollState.isBannerListOffScreen() ? 0.0f : bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue() + bannerInlineListScrollState.bannerInlineListHeight$delegate.getFloatValue())), OffsetKt.calculateEndPadding(paddingValues, layoutDirection), paddingValues.mo208calculateBottomPaddingD9Ej5fM()), gapComposer, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = 2;
        this.f$2 = composableLambdaImpl;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$4 = i;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(ImageLoader imageLoader, Object obj, DataSource dataSource, Function2 function2, int i) {
        this.$r8$classId = 10;
        this.f$1 = imageLoader;
        this.f$0 = obj;
        this.f$2 = dataSource;
        this.f$3 = function2;
        this.f$4 = i;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(CharSequence charSequence, Object obj, int i, Object obj2, Object obj3, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = charSequence;
        this.f$1 = obj;
        this.f$4 = i;
        this.f$2 = obj2;
        this.f$3 = obj3;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = i;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(Object obj, Function1 function1, Function0 function0, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$3 = function1;
        this.f$1 = function0;
        this.f$2 = obj2;
        this.f$4 = i;
    }

    public /* synthetic */ LifecycleEffectKt$$ExternalSyntheticLambda0(SettingValue settingValue, Function0 function0, Function1 function1, Modifier modifier, int i) {
        this.$r8$classId = 14;
        this.f$0 = settingValue;
        this.f$1 = function0;
        this.f$3 = function1;
        this.f$2 = modifier;
        this.f$4 = i;
    }
}
