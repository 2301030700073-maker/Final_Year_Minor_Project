package androidx.room.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.media.ImageReader;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.selection.SimpleLayoutKt$SimpleLayout$1$1;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DividerDefaults;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.semantics.ClearAndSetSemanticsElement;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.util.DebugUtils;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.navigation.NavHostController;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavGraphNavigator;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.autodiscovery.api.ImapServerSettings;
import app.k9mail.autodiscovery.api.SmtpServerSettings;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSetup;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContentKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContentKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContentKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import com.skydoves.landscapist.components.ImagePluginComponent;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.collections.immutable.implementations.immutableList.ObjectRef;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.IconKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda15;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SchemaInfoUtilKt implements ViewPropertyAnimatorListener {
    public static ImageVector _attachment;
    public static ImageVector _security;
    public static Field sDrawableCacheField;
    public static boolean sDrawableCacheFieldFetched;
    public static Field sResourcesImplField;
    public static boolean sResourcesImplFieldFetched;
    public static Class sThemedResourceCacheClazz;
    public static boolean sThemedResourceCacheClazzFetched;
    public static Field sThemedResourceCache_mUnthemedEntriesField;
    public static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    public static final void AutoDiscoveryResultBodyView(AutoDiscoveryResult.Settings settings, Function0 function0, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        Modifier.Companion companion;
        FillElement fillElement;
        settings.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1281733472);
        int i2 = i | (gapComposer.changedInstance(settings) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 384;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(fillElement2, 8.0f, 0.0f, 2);
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            Modifier then = m220paddingVpY3zN4$default.then(companion2);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (settings.isTrusted) {
                companion = companion2;
                fillElement = fillElement2;
                gapComposer.startReplaceGroup(1377312524);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1376984823);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion2, 8.0f));
                fillElement = fillElement2;
                companion = companion2;
                Data.Companion.m825TextBodyMediumZHfKjFs(Operation$State.stringResource(gapComposer, R.string.account_setup_auto_discovery_result_disclaimer_untrusted_configuration), fillElement, 0L, 0, 0, (Function1) null, gapComposer, 48, 124);
                gapComposer.end(false);
            }
            ImapServerSettings imapServerSettings = settings.incomingServerSettings;
            if (imapServerSettings instanceof ImapServerSettings) {
                gapComposer.startReplaceGroup(1377457170);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 8.0f));
                FillElement fillElement3 = fillElement;
                MathKt.m982AutoDiscoveryServerSettingsViewZl2X39w("IMAP", imapServerSettings.hostname, imapServerSettings.port, imapServerSettings.connectionSecurity, fillElement3, imapServerSettings.username, true, gapComposer, 1597446);
                fillElement = fillElement3;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1377974188);
                gapComposer.end(false);
            }
            SmtpServerSettings smtpServerSettings = settings.outgoingServerSettings;
            if (smtpServerSettings instanceof SmtpServerSettings) {
                gapComposer.startReplaceGroup(1378118865);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 8.0f));
                MathKt.m982AutoDiscoveryServerSettingsViewZl2X39w("SMTP", smtpServerSettings.hostname, smtpServerSettings.port, smtpServerSettings.connectionSecurity, fillElement, smtpServerSettings.username, false, gapComposer, 1597446);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1378636844);
                gapComposer.end(false);
            }
            EditConfigurationButton(null, function0, gapComposer, i2 & 112);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4(settings, function0, modifier2, i, 1);
        }
    }

    public static final void BottomBar(PermissionsContract$State permissionsContract$State, Function1 function1, ScrollState scrollState, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(511732248);
        int i2 = (gapComposer.changed(permissionsContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(scrollState) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            MathKt.m983Surface_UMDTes(null, null, 0L, 0L, ((Dp) AnimateAsStateKt.m111animateDpAsStateAjpBEmI(scrollState.getCanScrollForward() ? 8.0f : 0.0f, null, gapComposer, 384, 10).getValue()).value, Expect_jvmKt.rememberComposableLambda(-1049054629, new PermissionsContentKt$$ExternalSyntheticLambda4(permissionsContract$State, function1), gapComposer), gapComposer, 196608, 15);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PermissionsContentKt$$ExternalSyntheticLambda0(permissionsContract$State, function1, scrollState, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CardOutlined(androidx.compose.ui.Modifier r24, kotlin.jvm.functions.Function0 r25, androidx.compose.ui.graphics.Shape r26, app.k9mail.core.ui.compose.designsystem.atom.card.CardColors r27, app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation r28, androidx.compose.foundation.BorderStroke r29, androidx.compose.runtime.internal.ComposableLambdaImpl r30, androidx.compose.runtime.Composer r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.SchemaInfoUtilKt.CardOutlined(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, androidx.compose.ui.graphics.Shape, app.k9mail.core.ui.compose.designsystem.atom.card.CardColors, app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void ContentArea(PermissionsContract$State permissionsContract$State, Function1 function1, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1078438546);
        int i2 = 2;
        int i3 = (gapComposer.changed(permissionsContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Center;
            FillElement fillElement = SizeKt.FillWholeMaxHeight;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 16.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, Alignment.Companion.Start, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (permissionsContract$State.isLoading) {
                gapComposer.startReplaceGroup(1776612684);
                DelayedCircularProgressIndicator(null, gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1776676079);
                PermissionBoxes(permissionsContract$State, function1, gapComposer, i3 & 126);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PermissionsContentKt$$ExternalSyntheticLambda4(permissionsContract$State, function1, i, i2);
        }
    }

    public static final void DelayedCircularProgressIndicator(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1635624848);
        int i2 = i | 6;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new DataStoreImpl$data$1$3(mutableState, null, 20);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            Modifier hide = hide(!((Boolean) mutableState.getValue()).booleanValue());
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            OAuthBearer.m939CircularProgressIndicatoriJQMabo(hide.then(companion), 0L, gapComposer, 0, 2);
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, i3);
        }
    }

    /* renamed from: DividerVertical-9IZ8Weo, reason: not valid java name */
    public static final void m811DividerVertical9IZ8Weo(float f, int i, long j, Composer composer, Modifier modifier) {
        float f2;
        Modifier modifier2;
        long j2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1992596563);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changed(f) ? 32 : 16) | 128;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                float f3 = DividerDefaults.Thickness;
                j = ColorSchemeKt.getValue(ListTokens.Color, gapComposer);
            } else {
                gapComposer.skipToGroupEnd();
            }
            int i3 = i2 & (-897);
            long j3 = j;
            gapComposer.endDefaults();
            f2 = f;
            modifier2 = modifier;
            CardKt.m337VerticalDivider9IZ8Weo(f2, i3 & 1022, j3, gapComposer, modifier2);
            j2 = j3;
        } else {
            f2 = f;
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda15(modifier2, f2, j2, i);
        }
    }

    public static final void EditConfigurationButton(Modifier modifier, Function0 function0, Composer composer, int i) {
        Function0 function02;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1200275704);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Arrangement$End$1 arrangement$End$1 = OffsetKt.f4End;
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = fillElement.then(companion);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.Top, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            function02 = function0;
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.account_setup_auto_discovery_result_edit_configuration_button_label), function02, null, false, new Color(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warning), null, gapComposer, i2 & 112, 44);
            gapComposer.end(true);
            modifier = companion;
        } else {
            function02 = function0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 10, modifier, function02);
        }
    }

    public static final void HeaderArea(String str, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-710843057);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            DBUtil.AppTitleTopHeader(str, null, gapComposer, i2 & 14, 2);
            String stringResource = Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_screen_title);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            IntRectKt.m765TextHeadlineSmallXl4FiYE(stringResource, OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2), 0L, null, 0, 0, gapComposer, 0, 60);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 16.0f));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LoadingItemKt$$ExternalSyntheticLambda0(str, i, 8);
        }
    }

    public static final void IncomingServerSettingsScreen(Function1 function1, Function0 function0, IncomingServerSettingsViewModel incomingServerSettingsViewModel, Modifier modifier, Composer composer, int i) {
        IncomingServerSettingsViewModel incomingServerSettingsViewModel2;
        Modifier modifier2;
        function1.getClass();
        function0.getClass();
        incomingServerSettingsViewModel.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-528322681);
        int i2 = 2;
        int i3 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(incomingServerSettingsViewModel) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            int i4 = i3 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(incomingServerSettingsViewModel.state, gapComposer);
            boolean z = (((i4 & 14) ^ 6) > 4 && gapComposer.changedInstance(incomingServerSettingsViewModel)) || (i4 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(incomingServerSettingsViewModel, 2);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            incomingServerSettingsViewModel2 = incomingServerSettingsViewModel;
            Updater.LaunchedEffect(gapComposer, incomingServerSettingsViewModel.effect, new NavHostKt$NavHost$29$1(incomingServerSettingsViewModel, (Continuation) null, function1, incomingServerSettingsViewModel, function0, 19));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            boolean changed = gapComposer.changed(function12);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(i2, null, function12);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function12);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(11, function12);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), Expect_jvmKt.rememberComposableLambda(-1699985341, new GapComposer$$ExternalSyntheticLambda3(24, incomingServerSettingsViewModel2, function12), gapComposer), Expect_jvmKt.rememberComposableLambda(1557865378, new Updater$$ExternalSyntheticLambda0(i2, function12), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(841852539, new ArchiveOperations$$ExternalSyntheticLambda2(incomingServerSettingsViewModel2, collectAsStateWithLifecycle, function12, 3), gapComposer), gapComposer, 1573296, 56);
            modifier2 = companion;
        } else {
            incomingServerSettingsViewModel2 = incomingServerSettingsViewModel;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(function1, function0, incomingServerSettingsViewModel2, modifier2, i, 5);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x028c, code lost:
    
        if (r14.changed(true) != false) goto L172;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x030b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0373  */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyList(int r38, int r39, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r40, androidx.compose.foundation.gestures.DefaultFlingBehavior r41, androidx.compose.foundation.layout.Arrangement$Vertical r42, androidx.compose.foundation.layout.PaddingValues r43, final androidx.compose.foundation.lazy.LazyListState r44, androidx.compose.runtime.Composer r45, androidx.compose.ui.Alignment.Horizontal r46, androidx.compose.ui.Modifier r47, kotlin.jvm.functions.Function1 r48, boolean r49) {
        /*
            Method dump skipped, instructions count: 985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.SchemaInfoUtilKt.LazyList(int, int, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.gestures.DefaultFlingBehavior, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.lazy.LazyListState, androidx.compose.runtime.Composer, androidx.compose.ui.Alignment$Horizontal, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, boolean):void");
    }

    public static final void LifecycleEventEffect(Lifecycle.Event event, LifecycleOwner lifecycleOwner, Function0 function0, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-709389590);
        int i2 = i | 16 | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            if (event == Lifecycle.Event.ON_DESTROY) {
                UriKt$$ExternalSyntheticBUOutline0.m("LifecycleEventEffect cannot be used to listen for Lifecycle.Event.ON_DESTROY, since Compose disposes of the composition before ON_DESTROY observers are invoked.");
                return;
            }
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(function0, gapComposer);
            boolean changed = gapComposer.changed(rememberUpdatedState) | gapComposer.changedInstance(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SimpleActor$$ExternalSyntheticLambda0(lifecycleOwner, event, rememberUpdatedState, 20);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(lifecycleOwner, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(event, lifecycleOwner2, function0, i, 4);
        }
    }

    public static final void LifecycleStartEffect(Object obj, Object obj2, LifecycleOwner lifecycleOwner, Function1 function1, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(696924721);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(obj2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            } else {
                gapComposer.skipToGroupEnd();
            }
            int i3 = i2 & (-897);
            gapComposer.endDefaults();
            boolean changed = gapComposer.changed(obj) | gapComposer.changed(obj2) | gapComposer.changed(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new LifecycleStartStopEffectScope(lifecycleOwner.getLifecycle());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LifecycleStartEffectImpl(lifecycleOwner, (LifecycleStartStopEffectScope) rememberedValue, function1, gapComposer, (i3 >> 3) & 896);
        } else {
            gapComposer.skipToGroupEnd();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(obj, obj2, lifecycleOwner2, function1, i, 0);
        }
    }

    public static final void LifecycleStartEffectImpl(LifecycleOwner lifecycleOwner, LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Function1 function1, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(228371534);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(lifecycleOwner) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(lifecycleStartStopEffectScope) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean changedInstance = gapComposer.changedInstance(lifecycleStartStopEffectScope) | ((i2 & 896) == 256) | gapComposer.changedInstance(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SimpleActor$$ExternalSyntheticLambda0(lifecycleOwner, lifecycleStartStopEffectScope, function1, 19);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(lifecycleOwner, lifecycleStartStopEffectScope, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(lifecycleOwner, lifecycleStartStopEffectScope, function1, i, 14);
        }
    }

    public static final void LoadingItem(LazyItemScopeImpl lazyItemScopeImpl, Modifier modifier, String str, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        lazyItemScopeImpl.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(812229480);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(lazyItemScopeImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(str) ? 256 : 128;
        }
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ActionBar.ListItem(lazyItemScopeImpl, companion, null, Expect_jvmKt.rememberComposableLambda(563904136, new LoadingItemKt$$ExternalSyntheticLambda0(str, i4), gapComposer), gapComposer, (i3 & 14) | 3072 | (i3 & 112), 2);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(lazyItemScopeImpl, modifier2, str, i, 18);
        }
    }

    public static final void LoadingView(Modifier modifier, String str, Alignment alignment, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        GapComposer gapComposer;
        Alignment alignment2;
        Modifier modifier3;
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        Modifier modifier4;
        BiasAlignment biasAlignment;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(2078949543);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = i | (gapComposer2.changed(modifier2) ? 4 : 2);
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i5 = i3 | (gapComposer2.changed(str) ? 32 : 16) | 384;
        if (gapComposer2.shouldExecute(i5 & 1, (i5 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier modifier5 = i4 != 0 ? companion : modifier2;
            BiasAlignment biasAlignment2 = Alignment.Companion.Center;
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier then = fillElement.then(modifier5);
            int i6 = i5 >> 3;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment2, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i7 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$14);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$15);
            Integer valueOf = Integer.valueOf(i7);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$16);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$17);
            ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 24.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i8 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m218padding3ABfNKs);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$14);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$15);
            Config.CC.m(i8, gapComposer2, composeUiNode$Companion$SetModifier$16, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$17);
            if (str != null) {
                gapComposer2.startReplaceGroup(1564887943);
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                gapComposer = gapComposer2;
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$17;
                biasAlignment = biasAlignment2;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$16;
                modifier4 = modifier5;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$15;
                DebugUtils.m787TextTitleMediumXl4FiYE(str, null, 0L, new TextAlign(3), 0, 0, gapComposer, i6 & 14, 54);
                gapComposer.end(false);
            } else {
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$17;
                modifier4 = modifier5;
                biasAlignment = biasAlignment2;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$15;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$16;
                gapComposer = gapComposer2;
                gapComposer.startReplaceGroup(1565034015);
                gapComposer.end(false);
            }
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(companion, 128.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j3 = gapComposer.compositeKeyHashCode;
            int i9 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m226height3ABfNKs);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$14);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i9, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$1);
            OAuthBearer.m939CircularProgressIndicatoriJQMabo(null, 0L, gapComposer, 0, 3);
            gapComposer.end(true);
            gapComposer.end(true);
            gapComposer.end(true);
            alignment2 = biasAlignment;
            modifier3 = modifier4;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            alignment2 = alignment;
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconKt$$ExternalSyntheticLambda0(modifier3, str, alignment2, i, i2);
        }
    }

    public static final void PermissionBoxes(PermissionsContract$State permissionsContract$State, Function1 function1, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1982423438);
        int i2 = (gapComposer.changed(permissionsContract$State) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ImageVector imageVector = Icons$Filled.Person;
            PermissionsContract$UiPermissionState permissionsContract$UiPermissionState = permissionsContract$State.contactsPermissionState;
            String stringResource = Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_contacts_title);
            String stringResource2 = Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_contacts_description);
            int i4 = i2 & 112;
            boolean z = i4 == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new AboutFragment$$ExternalSyntheticLambda2(21, function1);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ActionBar.PermissionBox(imageVector, permissionsContract$UiPermissionState, stringResource, stringResource2, (Function0) rememberedValue, gapComposer, 0);
            if (permissionsContract$State.isNotificationsPermissionVisible) {
                gapComposer.startReplaceGroup(-1718148224);
                ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings), Modifier.Companion.$$INSTANCE, 32.0f, gapComposer);
                ImageVector imageVector2 = Icons$Filled.Notifications;
                PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2 = permissionsContract$State.notificationsPermissionState;
                String stringResource3 = Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_notifications_title);
                String stringResource4 = Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_notifications_description);
                boolean z2 = i4 == 32;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new AboutFragment$$ExternalSyntheticLambda2(22, function1);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                ActionBar.PermissionBox(imageVector2, permissionsContract$UiPermissionState2, stringResource3, stringResource4, (Function0) rememberedValue2, gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1717667724);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PermissionsContentKt$$ExternalSyntheticLambda4(permissionsContract$State, function1, i, i3);
        }
    }

    public static final void PermissionsContent(PermissionsContract$State permissionsContract$State, Function1 function1, String str, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        permissionsContract$State.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1838809855);
        int i2 = i | (gapComposer.changed(permissionsContract$State) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(str) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), null, Expect_jvmKt.rememberComposableLambda(1088632838, new PermissionsContentKt$$ExternalSyntheticLambda0(permissionsContract$State, function1, rememberScrollState), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(594439565, new PermissionsContentKt$$ExternalSyntheticLambda1(rememberScrollState, str, permissionsContract$State, function1, 0), gapComposer), gapComposer, 1573248, 58);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(permissionsContract$State, function1, str, modifier2, i, 9);
        }
    }

    public static final void SimpleLayout(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1854833411);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = SimpleLayoutKt$SimpleLayout$1$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Config.CC.m(6, composableLambdaImpl, gapComposer, true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 11, modifier, composableLambdaImpl);
        }
    }

    public static final void actionCompose(Context context, LegacyAccountDto legacyAccountDto) {
        String str;
        context.getClass();
        LegacyAccountDto legacyAccountDto2 = (LegacyAccountDto) CollectionsKt.firstOrNull(((Preferences) CloseableKt.get$default(Preferences.class)).getAccounts());
        if (legacyAccountDto == null && legacyAccountDto2 == null) {
            int i = FeatureLauncherActivity.$r8$clinit;
            FeatureLauncherActivity.Companion.launch(context, FeatureLauncherTarget$AccountSetup.INSTANCE);
            return;
        }
        if (legacyAccountDto == null || (str = legacyAccountDto.uuid) == null) {
            str = legacyAccountDto2 != null ? legacyAccountDto2.uuid : null;
            if (str == null) {
                throw new IllegalArgumentException(("Unexpected state. At this point, either account (" + legacyAccountDto + ") or defaultAccount (" + legacyAccountDto2 + ") must have a value.").toString());
            }
        }
        Intent intent = new Intent(context, (Class<?>) MessageCompose.class);
        intent.putExtra("account", str);
        intent.setAction("com.fsck.k9.intent.action.COMPOSE");
        context.startActivity(intent);
    }

    public static final void actionEditDraft(Context context, MessageReference messageReference) {
        context.getClass();
        messageReference.getClass();
        Intent intent = new Intent(context, (Class<?>) MessageCompose.class);
        intent.putExtra("message_reference", messageReference.toIdentityString());
        intent.setAction("com.fsck.k9.intent.action.EDIT_DRAFT");
        context.startActivity(intent);
    }

    public static final void actionReply(Context context, MessageReference messageReference, boolean z, OpenPgpDecryptionResult openPgpDecryptionResult) {
        context.getClass();
        Intent intent = new Intent(context, (Class<?>) MessageCompose.class);
        intent.putExtra("message_decryption_result", openPgpDecryptionResult);
        intent.putExtra("message_reference", messageReference.toIdentityString());
        intent.setAction(z ? "com.fsck.k9.intent.action.REPLY_ALL" : "com.fsck.k9.intent.action.REPLY");
        context.startActivity(intent);
    }

    public static final boolean calculateIfHorizontallyStacked(ArrayList arrayList) {
        List list;
        long j;
        if (arrayList.size() >= 2) {
            if (arrayList.size() <= 1) {
                list = EmptyList.INSTANCE;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Object obj = arrayList.get(0);
                int size = arrayList.size() - 1;
                int i = 0;
                while (i < size) {
                    i++;
                    Object obj2 = arrayList.get(i);
                    SemanticsNode semanticsNode = (SemanticsNode) obj2;
                    SemanticsNode semanticsNode2 = (SemanticsNode) obj;
                    float abs = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m445getCenterF1C5BW0() >> 32)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m445getCenterF1C5BW0() >> 32)));
                    float abs2 = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m445getCenterF1C5BW0() & 4294967295L)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m445getCenterF1C5BW0() & 4294967295L)));
                    arrayList2.add(new Offset((Float.floatToRawIntBits(abs) << 32) | (Float.floatToRawIntBits(abs2) & 4294967295L)));
                    obj = obj2;
                }
                list = arrayList2;
            }
            if (list.size() == 1) {
                j = ((Offset) CollectionsKt.first(list)).packedValue;
            } else {
                if (list.isEmpty()) {
                    ListUtilsKt.throwUnsupportedOperationException("Empty collection can't be reduced.");
                }
                Object first = CollectionsKt.first(list);
                int size2 = list.size() - 1;
                if (1 <= size2) {
                    int i2 = 1;
                    while (true) {
                        first = new Offset(Offset.m441plusMKHz9U(((Offset) first).packedValue, ((Offset) list.get(i2)).packedValue));
                        if (i2 == size2) {
                            break;
                        }
                        i2++;
                    }
                }
                j = ((Offset) first).packedValue;
            }
            if (Float.intBitsToFloat((int) (4294967295L & j)) >= Float.intBitsToFloat((int) (j >> 32))) {
                return false;
            }
        }
        return true;
    }

    public static final void checkElementIndex$runtime(int i, int i2) {
        if (i < 0 || i >= i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkPositionIndex$runtime(int i, int i2) {
        if (i < 0 || i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkRangeIndexes$runtime(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            Regex$$ExternalSyntheticBUOutline0.m(i3, Config.CC.m91m("fromIndex: ", i, ", toIndex: ", i2, ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static final ContentValues contentValuesOf(Pair... pairArr) {
        ContentValues contentValues = new ContentValues(pairArr.length);
        for (Pair pair : pairArr) {
            String str = (String) pair.first;
            Object obj = pair.second;
            if (obj == null) {
                contentValues.putNull(str);
            } else if (obj instanceof String) {
                contentValues.put(str, (String) obj);
            } else if (obj instanceof Integer) {
                contentValues.put(str, (Integer) obj);
            } else if (obj instanceof Long) {
                contentValues.put(str, (Long) obj);
            } else if (obj instanceof Boolean) {
                contentValues.put(str, (Boolean) obj);
            } else if (obj instanceof Float) {
                contentValues.put(str, (Float) obj);
            } else if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
            } else if (obj instanceof byte[]) {
                contentValues.put(str, (byte[]) obj);
            } else if (obj instanceof Byte) {
                contentValues.put(str, (Byte) obj);
            } else {
                if (!(obj instanceof Short)) {
                    DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, 34);
                    return null;
                }
                contentValues.put(str, (Short) obj);
            }
        }
        return contentValues;
    }

    public static GeneralSettingsFragment create(String str) {
        GeneralSettingsFragment generalSettingsFragment = new GeneralSettingsFragment();
        OperationKt.withArguments(generalSettingsFragment, new Pair("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", str));
        return generalSettingsFragment;
    }

    public static LocalFolder.AnonymousClass12 createIsolatedReader(int i, int i2, int i3, int i4) {
        return new LocalFolder.AnonymousClass12(ImageReader.newInstance(i, i2, i3, i4));
    }

    public static final NavHostController createNavController$NavHostControllerKt__NavHostController_androidKt(Context context) {
        context.getClass();
        NavHostController navHostController = new NavHostController(context);
        NavControllerImpl navControllerImpl = navHostController.impl;
        NavigatorProvider navigatorProvider = navControllerImpl._navigatorProvider;
        navigatorProvider.addNavigator(new ComposeNavGraphNavigator(navigatorProvider));
        NavigatorProvider navigatorProvider2 = navControllerImpl._navigatorProvider;
        navigatorProvider2.addNavigator(new ComposeNavigator());
        navigatorProvider2.addNavigator(new DialogNavigator());
        return navHostController;
    }

    public static void flushThemedResourcesCache(Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class cls = sThemedResourceCacheClazz;
        if (cls == null) {
            return;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        Field field = sThemedResourceCache_mUnthemedEntriesField;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    public static final FolderType fromDatabaseFolderType(String str) {
        str.getClass();
        switch (str.hashCode()) {
            case -1323779342:
                if (str.equals("drafts")) {
                    return FolderType.DRAFTS;
                }
                break;
            case -1005526083:
                if (str.equals("outbox")) {
                    return FolderType.OUTBOX;
                }
                break;
            case -748101438:
                if (str.equals("archive")) {
                    return FolderType.ARCHIVE;
                }
                break;
            case 3526552:
                if (str.equals("sent")) {
                    return FolderType.SENT;
                }
                break;
            case 3536713:
                if (str.equals("spam")) {
                    return FolderType.SPAM;
                }
                break;
            case 100344454:
                if (str.equals("inbox")) {
                    return FolderType.INBOX;
                }
                break;
            case 110621496:
                if (str.equals("trash")) {
                    return FolderType.TRASH;
                }
                break;
            case 1086463900:
                if (str.equals("regular")) {
                    return FolderType.REGULAR;
                }
                break;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Unknown folder type: ".concat(str));
        return null;
    }

    public static final ArrayList getLegacyAccountsFromLocalSearch(LocalMessageSearch localMessageSearch, DefaultLegacyAccountManager defaultLegacyAccountManager) {
        localMessageSearch.getClass();
        defaultLegacyAccountManager.getClass();
        List accounts = defaultLegacyAccountManager.getAccounts();
        if (localMessageSearch.accountUuidSet.isEmpty()) {
            return (ArrayList) accounts;
        }
        Set set = CollectionsKt.toSet(localMessageSearch.getAccountUuids());
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) accounts).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (set.contains(((LegacyAccount) next).uuid)) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static final ImageVector getSecurity() {
        ImageVector imageVector = _security;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Security", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(12.0f, 1.0f);
        builder2.lineTo(3.0f, 5.0f);
        builder2.verticalLineToRelative(6.0f);
        builder2.curveToRelative(0.0f, 5.55f, 3.84f, 10.74f, 9.0f, 12.0f);
        builder2.curveToRelative(5.16f, -1.26f, 9.0f, -6.45f, 9.0f, -12.0f);
        builder2.lineTo(21.0f, 5.0f);
        builder2.lineToRelative(-9.0f, -4.0f);
        builder2.close();
        builder2.moveTo(12.0f, 11.99f);
        builder2.horizontalLineToRelative(7.0f);
        builder2.curveToRelative(-0.53f, 4.12f, -3.28f, 7.79f, -7.0f, 8.94f);
        builder2.lineTo(12.0f, 12.0f);
        builder2.lineTo(5.0f, 12.0f);
        builder2.lineTo(5.0f, 6.3f);
        builder2.lineToRelative(7.0f, -3.11f);
        builder2.verticalLineToRelative(8.8f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        ImageVector build = builder.build();
        _security = build;
        return build;
    }

    public static final Modifier hide(boolean z) {
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (!z) {
            return ClipKt.alpha(companion, 1.0f);
        }
        Modifier alpha = ClipKt.alpha(companion, 0.0f);
        KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(16);
        AtomicInteger atomicInteger = SemanticsModifierKt.lastIdentifier;
        return alpha.then(new ClearAndSetSemanticsElement(koinModuleKt$$ExternalSyntheticLambda0));
    }

    public static boolean isAffectedModel(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String str2 = Build.MODEL;
            str2.getClass();
            String upperCase = str2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            if (StringsKt__StringsJVMKt.startsWith(upperCase, str, false)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNotTrailingByte(byte b) {
        return b > -65;
    }

    public static final List readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int columnIndexOf = ActionBar.columnIndexOf(sQLiteStatement, "id");
        int columnIndexOf2 = ActionBar.columnIndexOf(sQLiteStatement, "seq");
        int columnIndexOf3 = ActionBar.columnIndexOf(sQLiteStatement, "from");
        int columnIndexOf4 = ActionBar.columnIndexOf(sQLiteStatement, "to");
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        while (sQLiteStatement.step()) {
            createListBuilder.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(columnIndexOf), (int) sQLiteStatement.getLong(columnIndexOf2), sQLiteStatement.getText(columnIndexOf3), sQLiteStatement.getText(columnIndexOf4)));
        }
        return CollectionsKt.sorted(IntOffsetKt.build(createListBuilder));
    }

    public static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndexOf = ActionBar.columnIndexOf(prepare, "seqno");
            int columnIndexOf2 = ActionBar.columnIndexOf(prepare, "cid");
            int columnIndexOf3 = ActionBar.columnIndexOf(prepare, "name");
            int columnIndexOf4 = ActionBar.columnIndexOf(prepare, "desc");
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1 && columnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (prepare.step()) {
                    if (((int) prepare.getLong(columnIndexOf2)) >= 0) {
                        int i = (int) prepare.getLong(columnIndexOf);
                        String text = prepare.getText(columnIndexOf3);
                        String str2 = prepare.getLong(columnIndexOf4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), text);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List sortedWith = CollectionsKt.sortedWith(linkedHashMap.entrySet(), new ViewPager.AnonymousClass1(6));
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
                Iterator it = sortedWith.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List list = CollectionsKt.toList(arrayList);
                List sortedWith2 = CollectionsKt.sortedWith(linkedHashMap2.entrySet(), new ViewPager.AnonymousClass1(7));
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith2, 10));
                Iterator it2 = sortedWith2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, list, CollectionsKt.toList(arrayList2));
                Cookie.Companion.closeFinally(prepare, null);
                return index;
            }
            Cookie.Companion.closeFinally(prepare, null);
            return null;
        } finally {
        }
    }

    public static final ImagePluginComponent rememberImageComponent(Function3 function3, GapComposer gapComposer) {
        function3.getClass();
        gapComposer.startReplaceGroup(1991601432);
        Object imagePluginComponent = new ImagePluginComponent(new ArrayList(new ArrayList()));
        function3.invoke(imagePluginComponent, gapComposer, 48);
        gapComposer.end(false);
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            gapComposer.updateRememberedValue(imagePluginComponent);
        } else {
            imagePluginComponent = rememberedValue;
        }
        return (ImagePluginComponent) imagePluginComponent;
    }

    /* renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    public static final float m812resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        float m773getValueimpl;
        long m772getTypeUIouoOA = TextUnit.m772getTypeUIouoOA(j);
        if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 4294967296L)) {
            if (density.getFontScale() <= 1.05d) {
                return density.mo176toPxR2X_6o(j);
            }
            m773getValueimpl = TextUnit.m773getValueimpl(j) / TextUnit.m773getValueimpl(density.mo180toSpkPz2Gy4(f));
        } else {
            if (!TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 8589934592L)) {
                return Float.NaN;
            }
            m773getValueimpl = TextUnit.m773getValueimpl(j);
        }
        return m773getValueimpl * f;
    }

    public static final void setCollectionItemInfo(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Object obj = semanticsNode.getConfig().props.get(SemanticsProperties.CollectionItemInfo);
        if (obj == null) {
            obj = null;
        }
        if (obj != null) {
            DBUtil$$ExternalSyntheticBUOutline0.m();
            return;
        }
        SemanticsNode parent = semanticsNode.getParent();
        if (parent == null) {
            return;
        }
        Object obj2 = parent.getConfig().props.get(SemanticsProperties.SelectableGroup);
        if (obj2 == null) {
            obj2 = null;
        }
        if (obj2 != null) {
            Object obj3 = parent.getConfig().props.get(SemanticsProperties.CollectionInfo);
            CollectionInfo collectionInfo = (CollectionInfo) (obj3 != null ? obj3 : null);
            if (collectionInfo == null || (collectionInfo.rowCount >= 0 && collectionInfo.columnCount >= 0)) {
                if (semanticsNode.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                    ArrayList arrayList = new ArrayList();
                    List children$ui$default = SemanticsNode.getChildren$ui$default(4, parent);
                    int size = children$ui$default.size();
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i2);
                        if (semanticsNode2.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                            arrayList.add(semanticsNode2);
                            if (semanticsNode2.layoutNode.getPlaceOrder$ui() < semanticsNode.layoutNode.getPlaceOrder$ui()) {
                                i++;
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    boolean calculateIfHorizontallyStacked = calculateIfHorizontallyStacked(arrayList);
                    int i3 = calculateIfHorizontallyStacked ? 0 : i;
                    int i4 = calculateIfHorizontallyStacked ? i : 0;
                    Object obj4 = semanticsNode.getConfig().props.get(SemanticsProperties.Selected);
                    if (obj4 == null) {
                        obj4 = Boolean.FALSE;
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(ObjectRef.obtain(((Boolean) obj4).booleanValue(), i3, 1, i4, 1));
                }
            }
        }
    }

    /* renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m813setColorRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            spannable.setSpan(new ForegroundColorSpan(ColorKt.m500toArgb8_81llA(j)), i, i2, 33);
        }
    }

    /* renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m814setFontSizeKmRG4DE(Spannable spannable, long j, Density density, int i, int i2) {
        long m772getTypeUIouoOA = TextUnit.m772getTypeUIouoOA(j);
        if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 4294967296L)) {
            spannable.setSpan(new AbsoluteSizeSpan(MathKt.roundToInt(density.mo176toPxR2X_6o(j)), false), i, i2, 33);
        } else if (TextUnitType.m776equalsimpl0(m772getTypeUIouoOA, 8589934592L)) {
            spannable.setSpan(new RelativeSizeSpan(TextUnit.m773getValueimpl(j)), i, i2, 33);
        }
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        LocaleSpan localeSpan;
        if (localeList != null) {
            List list = localeList.localeList;
            if (Build.VERSION.SDK_INT >= 24) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
                }
                Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
                localeSpan = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
            } else {
                localeSpan = new LocaleSpan((list.isEmpty() ? PlatformLocaleKt.platformLocaleDelegate.getCurrent().get() : localeList.get()).platformLocale);
            }
            spannable.setSpan(localeSpan, i, i2, 33);
        }
    }

    public static final String toDatabaseFolderType(FolderType folderType) {
        switch (folderType.ordinal()) {
            case 0:
                return "regular";
            case 1:
                return "inbox";
            case 2:
                return "outbox";
            case 3:
                return "drafts";
            case 4:
                return "sent";
            case 5:
                return "trash";
            case 6:
                return "spam";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "archive";
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }

    public static final boolean validateReflection$window_release(String str, Function0 function0) {
        try {
            boolean booleanValue = ((Boolean) function0.invoke()).booleanValue();
            if (!booleanValue) {
                Log.e("ReflectionGuard", str);
            }
            return booleanValue;
        } catch (ClassNotFoundException unused) {
            Log.e("ReflectionGuard", "ClassNotFound: ".concat(str));
            return false;
        } catch (NoSuchFieldException unused2) {
            Log.e("ReflectionGuard", "NoSuchField: ".concat(str));
            return false;
        } catch (NoSuchMethodException unused3) {
            Log.e("ReflectionGuard", "NoSuchMethod: ".concat(str));
            return false;
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel() {
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart() {
    }
}
