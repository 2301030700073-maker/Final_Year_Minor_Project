package androidx.compose.material3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.certificate.domain.entity.ServerCertificateProperties;
import app.k9mail.feature.account.server.certificate.ui.DefaultFingerprintFormatter;
import app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultHeaderState;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.components.ImageComponent;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogKt;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;
import okhttp3.Handshake;
import okio.Okio;
import okio.Options;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialThemeKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ MaterialThemeKt$$ExternalSyntheticLambda0(AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState, MutableState mutableState, AutoDiscoveryResult.Settings settings, Function0 function0) {
        this.$r8$classId = 8;
        this.f$0 = autoDiscoveryResultHeaderState;
        this.f$1 = mutableState;
        this.f$2 = settings;
        this.f$3 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                MaterialThemeKt.MaterialTheme((ColorScheme) obj6, (Shapes) obj5, (Typography) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                Modifier modifier = (Modifier) obj6;
                MutableState mutableState = (MutableState) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 6);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, (Function1) rememberedValue);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) ((j >>> 32) ^ j);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onGloballyPositioned);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 8);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    basicTextContextMenuProvider.ContextMenu((Function0) rememberedValue2, gapComposer, 6);
                    gapComposer.end(true);
                    break;
                }
            case 2:
                ((Integer) obj2).getClass();
                IntOffsetKt.ButtonBar((ServerCertificateErrorContract$State) obj6, (Function1) obj5, (ScrollState) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(9));
                break;
            case 3:
                ((Integer) obj2).getClass();
                IntRectKt.ServerCertificateView((ServerCertificateProperties) obj6, (Modifier) obj5, (DefaultServerNameFormatter) obj4, (DefaultFingerprintFormatter) obj3, (Composer) obj, Updater.updateChangedFlags(9));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ActionBar.IncomingServerSettingsContent((InteractionMode) obj6, (IncomingServerSettingsContract$State) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(65));
                break;
            case 5:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.IncomingServerSettingsScreen((Function1) obj6, (Function0) obj5, (IncomingServerSettingsViewModel) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case 6:
                ((Integer) obj2).getClass();
                MathKt.OutgoingServerSettingsContent((InteractionMode) obj6, (OutgoingServerSettingsContract$State) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(65));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                Operation$State.OutgoingServerSettingsScreen((Function0) obj6, (Function0) obj5, (OutgoingServerSettingsViewModel) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState = (AutoDiscoveryResultHeaderState) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                AutoDiscoveryResult.Settings settings = (AutoDiscoveryResult.Settings) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(Modifier.Companion.$$INSTANCE, 8.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) ((j2 >>> 32) ^ j2);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m218padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    Utf8.SafeProcessor.AutoDiscoveryResultHeaderView(autoDiscoveryResultHeaderState, ((Boolean) mutableState2.getValue()).booleanValue(), null, gapComposer2, 0);
                    if (settings != null) {
                        gapComposer2.startReplaceGroup(2117910056);
                        CrossfadeKt.AnimatedVisibility(((Boolean) mutableState2.getValue()).booleanValue(), null, null, null, null, Expect_jvmKt.rememberComposableLambda(1598290602, new BufferedChannel$$ExternalSyntheticLambda1(15, settings, function0), gapComposer2), gapComposer2, 1572870, 30);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(2118214693);
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(true);
                    break;
                }
            case 9:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.PermissionsContent((PermissionsContract$State) obj6, (Function1) obj5, (String) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                WelcomeScreenKt.WelcomeContent((Function0) obj6, (Function0) obj5, (String) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                Data.Companion.SettingsImportScreen((SettingsImportAction) obj6, (Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                ActionBar.ComposeFailureStatePlugins((ImageComponent) obj6, (Modifier) obj5, (ImageOptions) obj4, (Throwable) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                ActionBar.ComposeLoadingStatePlugins((ImageComponent) obj6, (Modifier) obj5, (ImageOptions) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(3073));
                break;
            case 14:
                ((Integer) obj2).getClass();
                Okio.SettingItem((Setting) obj6, (Function0) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(3073));
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj2).getClass();
                Options.Companion.SettingList((ImmutableList) obj6, (Function2) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 16:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.AvatarIcon((String) obj6, (AvatarSize) obj5, (Modifier) obj4, (DefaultAvatarIconCatalog) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                SentFolderNotFoundConfirmationDialogKt.SentFolderNotFoundConfirmationDialog((Function0) obj6, (Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                break;
            case 18:
                ((Integer) obj2).getClass();
                Handshake.Companion.MessageList((DefaultMessageListScope) obj6, (MessageListState) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(3073));
                break;
            case 19:
                ((Integer) obj2).getClass();
                Jsoup.SetupArchiveFolderDialog((AccountId) obj6, (Function0) obj5, (Modifier) obj4, (SetupArchiveFolderDialogContract$ViewModel) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                AttachmentCardKt.AttachmentCard((AttachmentUiItem) obj6, (Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 21:
                ((Integer) obj2).getClass();
                Options.Companion.NavigationDrawerLabel((String) obj6, (ComposableLambdaImpl) obj3, (Modifier) obj5, (MutableState) obj4, (Composer) obj, Updater.updateChangedFlags(49));
                break;
            case 22:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.BannerInlineNotificationListHost((InAppNotificationHostStateHolder) obj6, (Function1) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(3073));
                break;
            case 23:
                ((Integer) obj2).getClass();
                ThundermailOAuthRedirectScreenKt.ThundermailOAuthRedirectScreen((NavController$$ExternalSyntheticLambda0) obj6, (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj5, (Modifier) obj4, (ThundermailOAuthViewModel) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                CloseableKt.ThundermailButtonPanel((Function0) obj6, (Function0) obj5, (Modifier) obj4, (InMemoryFeatureFlagProvider) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ MaterialThemeKt$$ExternalSyntheticLambda0(Modifier modifier, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, BasicTextContextMenuProvider basicTextContextMenuProvider) {
        this.$r8$classId = 1;
        this.f$0 = modifier;
        this.f$1 = mutableState;
        this.f$3 = composableLambdaImpl;
        this.f$2 = basicTextContextMenuProvider;
    }

    public /* synthetic */ MaterialThemeKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ MaterialThemeKt$$ExternalSyntheticLambda0(String str, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, MutableState mutableState, int i) {
        this.$r8$classId = 21;
        this.f$0 = str;
        this.f$3 = composableLambdaImpl;
        this.f$1 = modifier;
        this.f$2 = mutableState;
    }
}
