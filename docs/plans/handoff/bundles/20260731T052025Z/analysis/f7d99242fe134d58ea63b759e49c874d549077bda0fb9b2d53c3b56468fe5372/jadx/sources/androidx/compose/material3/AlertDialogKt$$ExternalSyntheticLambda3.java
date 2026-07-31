package androidx.compose.material3;

import android.view.View;
import androidx.camera.view.PreviewView;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.room.util.DBUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsScreenKt;
import app.k9mail.feature.account.server.certificate.ui.DefaultFingerprintFormatter;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$State;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.notificationactions.DragCallbacks;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import com.fsck.k9.ui.settings.notificationactions.RowDragState;
import com.skydoves.landscapist.ImageOptions;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.setting.SettingValue;
import okhttp3.CacheControl;
import okio.ByteString;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(int i, ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2) {
        this.$r8$classId = 12;
        this.f$3 = composableLambdaImpl;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$4 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AlertDialogKt.BasicAlertDialog((Function0) obj5, (DialogProperties) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.ContextMenuColumnBuilder((Modifier) obj5, (ContextMenuColors) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(1), this.f$4);
                break;
            case 2:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.ContextMenuColumn((ContextMenuColors) obj5, (Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                LazyLayoutKt.m255SkippableItemJVlU9Rs((LazyLayoutItemProvider) obj5, this.f$2, this.f$4, this.f$3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ((LazySaveableStateHolder) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                ((TextLinkScope) obj5).StyleAnnotation((Object[]) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).intValue();
                DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu((TextContextMenuSession) obj4, (TextContextMenuDataProvider) obj3, (Function0) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                IntOffsetKt.ProvideBasicTextContextMenu((Modifier) obj5, (ProvidableCompositionLocal) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                Util.HandlePopup((OffsetProvider) obj5, (Alignment) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).intValue();
                CardKt.SoftKeyboardListener((View) obj4, (Density) obj3, (Function0) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                CardKt.SnackbarHost((PreviewView.AnonymousClass1) obj5, (Modifier) obj4, (Function3) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                Icons$Filled.WrappedAnchor((TooltipStateImpl) obj5, (MutableState) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj3).invoke(obj5, obj4, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 13:
                ((Integer) obj2).getClass();
                ((SaveableStateHolderImpl) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 14:
                ((Integer) obj2).intValue();
                SchemaInfoUtilKt.LifecycleStartEffectImpl((LifecycleOwner) obj5, (LifecycleStartStopEffectScope) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case OffsetKt.Horizontal /* 15 */:
                CharSequence charSequence = (CharSequence) obj5;
                BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour = (BannerInlineNotificationCardBehaviour) obj4;
                Function1 function1 = (Function1) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(bannerInlineNotificationCardBehaviour.ordinal()) | gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new DI$$ExternalSyntheticLambda0(10, bannerInlineNotificationCardBehaviour, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    BannerInlineNotificationCardKt.BannerInlineNotificationSupportingText(charSequence, bannerInlineNotificationCardBehaviour, this.f$4, null, (Function1) rememberedValue, gapComposer, 0);
                    break;
                }
                break;
            case 16:
                ((Integer) obj2).getClass();
                BannerInlineNotificationCardKt.BannerInlineNotificationTitle((CharSequence) obj5, (BannerInlineNotificationCardBehaviour) obj4, this.f$4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                Operation$State.NavigationDrawerItem((String) obj4, (Function0) obj5, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 18:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.LoadingItem((LazyItemScopeImpl) obj5, (Modifier) obj4, (String) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 19:
                ((Integer) obj2).getClass();
                SaveServerSettingsScreenKt.SaveServerSettingsContent((SaveServerSettingsContract$State) obj5, (PaddingValues) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 20:
                ((Integer) obj2).intValue();
                OperationKt.ServerCertificateErrorContent((PaddingValues) obj5, (ServerCertificateErrorContract$State) obj4, (ScrollState) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 21:
                ((Integer) obj2).getClass();
                IntRectKt.Fingerprint((String) obj5, (ByteString) obj4, (DefaultFingerprintFormatter) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 22:
                ((Integer) obj2).getClass();
                IntRectKt.ServerValidationMainScreen((BaseServerValidationViewModel) obj5, (BrandNameProvider) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 23:
                ((Integer) obj2).getClass();
                DBUtil.ServerValidationToolbarScreen((String) obj5, (BaseServerValidationViewModel) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 24:
                ((Integer) obj2).getClass();
                CreateAccountScreenKt.CreateAccountContent((CreateAccountContract$State) obj5, (PaddingValues) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 25:
                ((Integer) obj2).getClass();
                WelcomeScreenKt.WelcomeFooter((Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 26:
                ((Integer) obj2).getClass();
                NotificationListItemKt.NotificationActionsContent((String) obj5, (NotificationActionsReorderController) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 27:
                ((Integer) obj2).getClass();
                NotificationListItemKt.NotificationCutoffRow((RowDragState) obj5, (DragCallbacks) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 28:
                ((Integer) obj2).getClass();
                OAuthBearer.LandscapistImage((ImageOptions) obj5, (Modifier) obj4, (Painter) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                CacheControl.Companion.ColorItem((SettingValue.Color) obj4, (Function0) obj5, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, int i, int i2) {
        this.$r8$classId = 1;
        this.f$0 = modifier;
        this.f$2 = contextMenuColors;
        this.f$3 = function1;
        this.f$4 = i2;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(CharSequence charSequence, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, int i, Function1 function1) {
        this.$r8$classId = 15;
        this.f$0 = charSequence;
        this.f$2 = bannerInlineNotificationCardBehaviour;
        this.f$4 = i;
        this.f$3 = function1;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(Object obj, Object obj2, int i, Object obj3, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$4 = i;
        this.f$3 = obj3;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$3 = obj3;
        this.f$4 = i;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(Object obj, Object obj2, Function0 function0, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = obj;
        this.f$3 = obj2;
        this.f$0 = function0;
        this.f$4 = i;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(Object obj, Function0 function0, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = obj;
        this.f$0 = function0;
        this.f$3 = obj2;
        this.f$4 = i;
    }
}
