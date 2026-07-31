package kotlin.text;

import android.content.res.Resources;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.feature.launcher.ui.FeatureLauncherAppKt$$ExternalSyntheticLambda3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.datetime.FixedOffsetTimeZone;
import kotlinx.datetime.TimeZone;
import kotlinx.datetime.UtcOffset;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.modules.SerialModuleImpl;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.logging.LogLevelProvider;
import net.thunderbird.core.logging.composite.DefaultCompositeLogSink;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListItemBadgeKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListItemBadgeKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.ResourceEnvironment;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceEnvironmentKt$DefaultComposeEnvironment$1;
import org.jetbrains.compose.resources.ResourceReaderKt;
import org.jetbrains.compose.resources.ResourceState_blockingKt$rememberResourceState$1$1;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CharsKt__CharKt {
    public static final void AccountCountAndStarredBadge(int i, int i2, boolean z, Modifier modifier, Composer composer, int i3) {
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1366770254);
        if ((i3 & 6) == 0) {
            i4 = (gapComposer.changed(i) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposer.changed(i2) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i4 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.End, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) ((j >>> 32) ^ j);
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
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            if (i > 0) {
                gapComposer.startReplaceGroup(-1930179896);
                MathKt.NavigationDrawerItemBadge(AtomicFU.labelForCount(i, resources), null, z ? Icons$Filled.Dot : null, gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1929905050);
                gapComposer.end(false);
            }
            if (!z || i2 <= 0) {
                gapComposer.startReplaceGroup(-1929519162);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1929843019);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(Modifier.Companion.$$INSTANCE, 4.0f));
                MathKt.NavigationDrawerItemBadge(AtomicFU.labelForCount(i2, resources), null, Icons$Filled.Star, gapComposer, 0);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FolderListItemBadgeKt$$ExternalSyntheticLambda1(i, i2, z, modifier, i3, 1);
        }
    }

    public static final void AccountListItemBadge(int i, int i2, boolean z, Modifier modifier, Composer composer, int i3) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-308898422);
        int i4 = i3 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(i2) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AccountCountAndStarredBadge(i, i2, z, companion, gapComposer, i4 & 8190);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FolderListItemBadgeKt$$ExternalSyntheticLambda0(i, i2, z, modifier2, i3, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006e  */
    /* renamed from: ColorView-FJfuzF0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m989ColorViewFJfuzF0(final int r16, final kotlin.jvm.functions.Function1 r17, final androidx.compose.ui.Modifier r18, boolean r19, float r20, androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.CharsKt__CharKt.m989ColorViewFJfuzF0(int, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, float, androidx.compose.runtime.Composer, int, int):void");
    }

    public static DefaultCompositeLogSink CompositeLogSink$default(LogLevelProvider logLevelProvider, List list) {
        return new DefaultCompositeLogSink(logLevelProvider, new Headers.Builder(12), list);
    }

    public static final void CreateNewArchiveFolderDialogButtons(RowScope rowScope, boolean z, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        rowScope.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1346082507);
        if ((i & 48) == 0) {
            i2 = (gapComposer.changed(z) ? 32 : 16) | i;
        } else {
            i2 = i;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1169) != 1168)) {
            boolean z2 = !z;
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_cancel), function0, null, z2, null, null, gapComposer, (i2 >> 3) & 112, 52);
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_create_and_set_new_folder), function02, null, z2, null, null, gapComposer, (i2 >> 6) & 112, 52);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda0(rowScope, z, function0, function02, i);
        }
    }

    public static final void ReadingMailSettingsScreen(AccountId accountId, Function0 function0, ReadingMailSettingsViewModel readingMailSettingsViewModel, DialogSettingViewProvider dialogSettingViewProvider, ReadingMailSettingsBuilder readingMailSettingsBuilder, AppNameProvider appNameProvider, Composer composer, int i) {
        ReadingMailSettingsViewModel readingMailSettingsViewModel2;
        DialogSettingViewProvider dialogSettingViewProvider2;
        ReadingMailSettingsBuilder readingMailSettingsBuilder2;
        AppNameProvider appNameProvider2;
        DialogSettingViewProvider dialogSettingViewProvider3;
        ReadingMailSettingsBuilder readingMailSettingsBuilder3;
        AppNameProvider appNameProvider3;
        int i2;
        ReadingMailSettingsViewModel readingMailSettingsViewModel3;
        accountId.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(635048016);
        int i3 = i | (gapComposer.changedInstance(accountId) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 74880;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer.startDefaults();
            int i4 = i & 1;
            int i5 = 8;
            Continuation continuation = null;
            Object obj = Composer.Companion.Empty;
            if (i4 == 0 || gapComposer.getDefaultsInvalid()) {
                boolean changedInstance = gapComposer.changedInstance(accountId);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, i5);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                ReadingMailSettingsViewModel readingMailSettingsViewModel4 = (ReadingMailSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ReadingMailSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    rememberedValue2 = ViewSizeResolver.CC.m(DialogSettingViewProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                dialogSettingViewProvider3 = (DialogSettingViewProvider) rememberedValue2;
                Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope2);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue3 == obj) {
                    rememberedValue3 = ViewSizeResolver.CC.m(ReadingMailSettingsBuilder.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                readingMailSettingsBuilder3 = (ReadingMailSettingsBuilder) rememberedValue3;
                Scope currentKoinScope3 = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed3 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope3);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue4 == obj) {
                    rememberedValue4 = ViewSizeResolver.CC.m(AppNameProvider.class, currentKoinScope3, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                appNameProvider3 = (AppNameProvider) rememberedValue4;
                i2 = i3 & (-524161);
                readingMailSettingsViewModel3 = readingMailSettingsViewModel4;
            } else {
                gapComposer.skipToGroupEnd();
                dialogSettingViewProvider3 = dialogSettingViewProvider;
                readingMailSettingsBuilder3 = readingMailSettingsBuilder;
                appNameProvider3 = appNameProvider;
                i2 = i3 & (-524161);
                readingMailSettingsViewModel3 = readingMailSettingsViewModel;
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(readingMailSettingsViewModel3.state, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(readingMailSettingsViewModel3);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == obj) {
                rememberedValue5 = new ProduceKt$awaitClose$4$1(11, readingMailSettingsViewModel3);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Function1 function1 = (Function1) rememberedValue5;
            Updater.LaunchedEffect(gapComposer, readingMailSettingsViewModel3.effect, new Preferences$getAccountsFlow$1(readingMailSettingsViewModel3, continuation, function0, 29));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
            consume.getClass();
            ComponentActivity componentActivity = (ComponentActivity) consume;
            DebugUtils.BackHandler(false, function0, gapComposer, i2 & 112, 1);
            ReadingMailSettingsContract$State readingMailSettingsContract$State = (ReadingMailSettingsContract$State) collectAsStateWithLifecycle.getValue();
            boolean changed4 = gapComposer.changed(function1);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue6 == obj) {
                rememberedValue6 = new ChangelogScreenKt$$ExternalSyntheticLambda7(8, function1);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function1 function12 = (Function1) rememberedValue6;
            boolean changedInstance3 = gapComposer.changedInstance(componentActivity);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue7 == obj) {
                rememberedValue7 = new FeatureLauncherAppKt$$ExternalSyntheticLambda3(componentActivity, 2);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function0 function03 = (Function0) rememberedValue7;
            DialogSettingViewProvider dialogSettingViewProvider4 = dialogSettingViewProvider3;
            ReadingMailSettingsBuilder readingMailSettingsBuilder4 = readingMailSettingsBuilder3;
            Base64.ReadingMailSettingsContent(readingMailSettingsContract$State, function12, function03, dialogSettingViewProvider4, readingMailSettingsBuilder4, appNameProvider3, null, gapComposer, 0);
            readingMailSettingsViewModel2 = readingMailSettingsViewModel3;
            dialogSettingViewProvider2 = dialogSettingViewProvider4;
            readingMailSettingsBuilder2 = readingMailSettingsBuilder4;
            appNameProvider2 = appNameProvider3;
        } else {
            gapComposer.skipToGroupEnd();
            readingMailSettingsViewModel2 = readingMailSettingsViewModel;
            dialogSettingViewProvider2 = dialogSettingViewProvider;
            readingMailSettingsBuilder2 = readingMailSettingsBuilder;
            appNameProvider2 = appNameProvider;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda14(accountId, function0, readingMailSettingsViewModel2, dialogSettingViewProvider2, readingMailSettingsBuilder2, appNameProvider2, i, 4);
        }
    }

    public static final void ResolvedNotificationActionButton(NotificationAction notificationAction, Function1 function1, Modifier modifier, Composer composer, int i) {
        notificationAction.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1370698706);
        int i2 = (gapComposer.changedInstance(notificationAction) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        boolean z = true;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            StringResource labelResource = notificationAction.getLabelResource();
            if (labelResource == null) {
                gapComposer.startReplaceGroup(1313514322);
                gapComposer.end(false);
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) Reflection.getOrCreateKotlinClass(notificationAction.getClass()).getSimpleName(), "You must specify at least one of labelResource or label in ");
                return;
            }
            gapComposer.startReplaceGroup(1313520139);
            String stringResource = stringResource(labelResource, gapComposer);
            gapComposer.end(false);
            boolean z2 = (i2 & 112) == 32;
            if ((i2 & 14) != 4 && !gapComposer.changedInstance(notificationAction)) {
                z = false;
            }
            boolean z3 = z2 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SealedClassSerializer$$ExternalSyntheticLambda0(11, function1, notificationAction);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Data.Companion.NotificationActionButton(stringResource, (Function0) rememberedValue, modifier, gapComposer, i2 & 896, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(notificationAction, function1, modifier, i, 9);
        }
    }

    public static final void TextItem(SettingValue.Text text, Function0 function0, Modifier modifier, Composer composer, int i) {
        int i2;
        text.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-500223602);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(text) : gapComposer.changedInstance(text) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Cookie.Companion.SettingItemLayout(function0, (ImageVector) text.icon.invoke(), modifier, null, Expect_jvmKt.rememberComposableLambda(1530238848, new MovableContentKt$$ExternalSyntheticLambda0(12, text), gapComposer), gapComposer, ((i2 >> 3) & 14) | 24576 | (i2 & 896), 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(text, function0, modifier, i, 0);
        }
    }

    public static void checkRadix(int i) {
        if (2 > i || i >= 37) {
            Regex$$ExternalSyntheticBUOutline0.m(new IntRange(2, 36, 1), CameraDevices$CC.m30m(i, "radix ", " was not in valid range "));
        }
    }

    public static final void commonAddLenient(Headers.Builder builder, String str, String str2) {
        builder.getClass();
        str2.getClass();
        ArrayList arrayList = builder.namesAndValues;
        arrayList.add(str);
        arrayList.add(StringsKt.trim(str2).toString());
    }

    public static TimeZone currentSystemDefault() {
        boolean z;
        ZoneId systemDefault = ZoneId.systemDefault();
        systemDefault.getClass();
        if (systemDefault instanceof ZoneOffset) {
            ZoneOffset zoneOffset = (ZoneOffset) systemDefault;
            new UtcOffset(zoneOffset);
            return new FixedOffsetTimeZone(zoneOffset);
        }
        try {
            z = systemDefault.getRules().isFixedOffset();
        } catch (ArrayIndexOutOfBoundsException unused) {
            z = false;
        }
        if (!z) {
            return new TimeZone(systemDefault);
        }
        ZoneId normalized = systemDefault.normalized();
        normalized.getClass();
        new UtcOffset((ZoneOffset) normalized);
        return new FixedOffsetTimeZone(systemDefault);
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c);
        char upperCase2 = Character.toUpperCase(c2);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static Object getRandomFrom(Set set, Random random) {
        int nextInt = random.nextInt(set.size());
        Iterator it = set.iterator();
        for (int i = 0; i < nextInt && it.hasNext(); i++) {
            it.next();
        }
        return it.next();
    }

    public static final void headersCheckName(String str) {
        str.getClass();
        if (str.length() <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("name is empty");
            return;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('!' > charAt || charAt >= 127) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in header name: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static final void headersCheckValue(String str, String str2) {
        str.getClass();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(str2);
                sb.append(" value");
                sb.append(_UtilCommonKt.isSensitiveHeader(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static boolean isWhitespace(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object loadString(org.jetbrains.compose.resources.StringResource r7, org.jetbrains.compose.resources.DefaultAndroidResourceReader r8, org.jetbrains.compose.resources.ResourceEnvironment r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof org.jetbrains.compose.resources.StringResourcesKt$loadString$1
            if (r0 == 0) goto L13
            r0 = r10
            org.jetbrains.compose.resources.StringResourcesKt$loadString$1 r0 = (org.jetbrains.compose.resources.StringResourcesKt$loadString$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.jetbrains.compose.resources.StringResourcesKt$loadString$1 r0 = new org.jetbrains.compose.resources.StringResourcesKt$loadString$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L26
            kotlin.ResultKt.throwOnFailure(r10)
            goto L70
        L26:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r3
        L2c:
            kotlin.ResultKt.throwOnFailure(r10)
            org.jetbrains.compose.resources.ResourceItem r7 = org.jetbrains.compose.resources.ResourceEnvironmentKt.getResourceItemByEnvironment(r7, r9)
            r0.label = r2
            org.jsoup.internal.SoftPool r9 = org.jetbrains.compose.resources.StringResourcesUtilsKt.stringItemsCache
            java.lang.String r10 = r7.path
            long r1 = r7.offset
            long r4 = r7.size
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r10)
            java.lang.String r10 = "/"
            r6.append(r10)
            r6.append(r1)
            java.lang.String r10 = "-"
            r6.append(r10)
            r6.append(r4)
            java.lang.String r10 = r6.toString()
            androidx.datastore.core.FileReadScope$readData$2 r1 = new androidx.datastore.core.FileReadScope$readData$2
            r2 = 7
            r1.<init>(r8, r7, r3, r2)
            r9.getClass()
            org.jetbrains.compose.resources.AsyncCache$getOrLoad$2 r7 = new org.jetbrains.compose.resources.AsyncCache$getOrLoad$2
            r7.<init>(r9, r10, r1, r3)
            java.lang.Object r10 = kotlinx.coroutines.JobKt.coroutineScope(r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r7) goto L70
            return r7
        L70:
            r10.getClass()
            org.jetbrains.compose.resources.StringItem$Value r10 = (org.jetbrains.compose.resources.StringItem$Value) r10
            java.lang.String r7 = r10.text
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.CharsKt__CharKt.loadString(org.jetbrains.compose.resources.StringResource, org.jetbrains.compose.resources.DefaultAndroidResourceReader, org.jetbrains.compose.resources.ResourceEnvironment, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final String stringResource(StringResource stringResource, Composer composer) {
        stringResource.getClass();
        DefaultAndroidResourceReader currentOrPreview = RangesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, composer);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new KoinJavaComponent$$ExternalSyntheticLambda0(10);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Function0 function0 = (Function0) rememberedValue;
        boolean changed = gapComposer.changed(stringResource) | gapComposer.changedInstance(currentOrPreview);
        Object rememberedValue2 = gapComposer.rememberedValue();
        int i = 0;
        Continuation continuation = null;
        if (changed || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new StringResourcesKt$stringResource$str$3$1(stringResource, currentOrPreview, continuation, i);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Function2 function2 = (Function2) rememberedValue2;
        function0.getClass();
        function2.getClass();
        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
        boolean changed2 = gapComposer.changed(stringResource) | gapComposer.changed(rememberEnvironment);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = Updater.mutableStateOf$default(JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$1$1(function2, rememberEnvironment, continuation, i)));
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        return (String) ((MutableState) rememberedValue3).getValue();
    }

    public CharsKt__CharKt beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    public void encodeBoolean(boolean z) {
        encodeValue(Boolean.valueOf(z));
    }

    public void encodeByte(byte b) {
        encodeValue(Byte.valueOf(b));
    }

    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    public abstract void encodeElement(SerialDescriptor serialDescriptor, int i);

    public void encodeEnum(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        encodeValue(Integer.valueOf(i));
    }

    public void encodeFloat(float f) {
        encodeValue(Float.valueOf(f));
    }

    public abstract CharsKt__CharKt encodeInline(SerialDescriptor serialDescriptor);

    public CharsKt__CharKt encodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        encodeElement(primitiveArrayDescriptor, i);
        return encodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    public void encodeInt(int i) {
        encodeValue(Integer.valueOf(i));
    }

    public void encodeLong(long j) {
        encodeValue(Long.valueOf(j));
    }

    public abstract void encodeNull();

    public void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        if (kSerializer.getDescriptor().isNullable()) {
            encodeSerializableValue(kSerializer, obj);
        } else if (obj == null) {
            encodeNull();
        } else {
            encodeSerializableValue(kSerializer, obj);
        }
    }

    public void encodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        encodeElement(serialDescriptor, i);
        encodeSerializableValue(kSerializer, obj);
    }

    public abstract void encodeSerializableValue(KSerializer kSerializer, Object obj);

    public void encodeShort(short s) {
        encodeValue(Short.valueOf(s));
    }

    public void encodeString(String str) {
        str.getClass();
        encodeValue(str);
    }

    public void encodeStringElement(SerialDescriptor serialDescriptor, int i, String str) {
        serialDescriptor.getClass();
        str.getClass();
        encodeElement(serialDescriptor, i);
        encodeString(str);
    }

    public void encodeValue(Object obj) {
        obj.getClass();
        throw new SerializationException("Non-serializable " + Reflection.getOrCreateKotlinClass(obj.getClass()) + " is not supported by " + Reflection.getOrCreateKotlinClass(getClass()) + " encoder");
    }

    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    public abstract SerialModuleImpl getSerializersModule();

    public boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object loadString(org.jetbrains.compose.resources.StringResource r4, java.util.ArrayList r5, org.jetbrains.compose.resources.DefaultAndroidResourceReader r6, org.jetbrains.compose.resources.ResourceEnvironment r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof org.jetbrains.compose.resources.StringResourcesKt$loadString$2
            if (r0 == 0) goto L13
            r0 = r8
            org.jetbrains.compose.resources.StringResourcesKt$loadString$2 r0 = (org.jetbrains.compose.resources.StringResourcesKt$loadString$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.jetbrains.compose.resources.StringResourcesKt$loadString$2 r0 = new org.jetbrains.compose.resources.StringResourcesKt$loadString$2
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            java.util.ArrayList r5 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3e
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$1 = r5
            r0.label = r2
            java.lang.Object r8 = loadString(r4, r6, r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r4) goto L3e
            return r4
        L3e:
            java.lang.String r8 = (java.lang.String) r8
            kotlin.text.Regex r4 = org.jetbrains.compose.resources.StringResourcesUtilsKt.SimpleStringFormatRegex
            r8.getClass()
            r5.getClass()
            kotlin.text.Regex r4 = org.jetbrains.compose.resources.StringResourcesUtilsKt.SimpleStringFormatRegex
            androidx.camera.camera2.impl.UseCaseSurfaceManager$$ExternalSyntheticLambda0 r6 = new androidx.camera.camera2.impl.UseCaseSurfaceManager$$ExternalSyntheticLambda0
            r7 = 2
            r6.<init>(r7, r5)
            java.lang.String r4 = r4.replace(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.CharsKt__CharKt.loadString(org.jetbrains.compose.resources.StringResource, java.util.ArrayList, org.jetbrains.compose.resources.DefaultAndroidResourceReader, org.jetbrains.compose.resources.ResourceEnvironment, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
