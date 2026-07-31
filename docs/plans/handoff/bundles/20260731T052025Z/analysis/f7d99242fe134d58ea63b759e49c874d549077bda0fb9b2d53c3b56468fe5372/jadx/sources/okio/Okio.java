package okio;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda3;
import app.k9mail.provider.K9AppNameProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.enums.EnumEntriesList;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import kotlinx.coroutines.JobKt;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda2;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda4;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.core.ui.setting.SettingDecoration$Custom;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.SettingViewProvider$ComposeDefaultImpls;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingContentKt$$ExternalSyntheticLambda3;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageBadgeStyle;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemLeadingConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemTrailingConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemTrailingElement;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageSublineConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageSublineLeadingIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageConversationCounterBadgeColor;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListItemBadgeKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListItemBadgeKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import net.thunderbird.feature.notification.api.ui.style.builder.InAppNotificationStyleBuilder;
import okhttp3.CacheControl;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.ResourceEnvironment;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceEnvironmentKt$DefaultComposeEnvironment$1;
import org.jetbrains.compose.resources.ResourceReaderKt;
import org.jetbrains.compose.resources.ResourceState_blockingKt$rememberResourceState$1$1;
import org.koin.android.error.MissingAndroidContextException;
import org.koin.core.error.NoDefinitionFoundException;
import org.koin.core.scope.Scope;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;

/* loaded from: classes.dex */
public abstract class Okio {
    public static final void FetchingMailSettingsContent(FetchingMailSettingsContract$State fetchingMailSettingsContract$State, Function1 function1, Function0 function0, DialogSettingViewProvider dialogSettingViewProvider, FetchingMailSettingsBuilder fetchingMailSettingsBuilder, AppNameProvider appNameProvider, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        int i3;
        int i4;
        MutableState mutableState;
        fetchingMailSettingsContract$State.getClass();
        function1.getClass();
        function0.getClass();
        dialogSettingViewProvider.getClass();
        fetchingMailSettingsBuilder.getClass();
        appNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1760149223);
        int i5 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(fetchingMailSettingsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(dialogSettingViewProvider) : gapComposer.changedInstance(dialogSettingViewProvider) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (i & 32768) == 0 ? gapComposer.changed(fetchingMailSettingsBuilder) : gapComposer.changedInstance(fetchingMailSettingsBuilder) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= (262144 & i) == 0 ? gapComposer.changed(appNameProvider) : gapComposer.changedInstance(appNameProvider) ? 131072 : 65536;
        }
        int i6 = i2 | 1572864;
        if (gapComposer.shouldExecute(i6 & 1, (i6 & 599187) != 599186)) {
            int i7 = i6 & 112;
            boolean z = ((i6 & 14) == 4) | ((i6 & 57344) == 16384 || ((i6 & 32768) != 0 && gapComposer.changed(fetchingMailSettingsBuilder))) | (i7 == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                SettingValue.Select.SelectOption selectOption = fetchingMailSettingsContract$State.localFolderSize;
                FetchingMailSettingsBuilder$$ExternalSyntheticLambda0 fetchingMailSettingsBuilder$$ExternalSyntheticLambda0 = new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, i5);
                int i8 = 24;
                ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda0 = new ThemeSizesKt$$ExternalSyntheticLambda0(i8);
                i3 = i6;
                ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda02 = new ThemeSizesKt$$ExternalSyntheticLambda0(i8);
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = fetchingMailSettingsBuilder.fetchingMailSettingsOptionsMapper;
                arrayList.add(new SettingValue.Select("local_folder_size", fetchingMailSettingsBuilder$$ExternalSyntheticLambda0, themeSizesKt$$ExternalSyntheticLambda0, themeSizesKt$$ExternalSyntheticLambda02, true, selectOption, fetchingMailSettingsOptionsMapper.localFolderSizeOptions));
                int i9 = 24;
                arrayList.add(new SettingValue.Select("sync_message_from", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 13), new ThemeSizesKt$$ExternalSyntheticLambda0(i9), new ThemeSizesKt$$ExternalSyntheticLambda0(i9), true, fetchingMailSettingsContract$State.syncMessageFrom, fetchingMailSettingsOptionsMapper.syncMessageFromOptions));
                int i10 = 24;
                arrayList.add(new SettingValue.Select("fetch_message_up_to", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 7), new ThemeSizesKt$$ExternalSyntheticLambda0(i10), new ThemeSizesKt$$ExternalSyntheticLambda0(i10), true, fetchingMailSettingsContract$State.fetchMessageUpTo, fetchingMailSettingsOptionsMapper.fetchMessageUpToOptions));
                int i11 = 24;
                arrayList.add(new SettingValue.Select("folder_poll_frequency", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 11), new ThemeSizesKt$$ExternalSyntheticLambda0(i11), new ThemeSizesKt$$ExternalSyntheticLambda0(i11), true, fetchingMailSettingsContract$State.folderPollFrequency, fetchingMailSettingsOptionsMapper.folderPollFrequencyOptions));
                arrayList.add(new SettingValue.Switch("sync_server_deletions", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 1), new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 2), fetchingMailSettingsContract$State.syncServerDeletions));
                arrayList.add(new SettingValue.Switch("mark_as_read_when_deleted", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 0), new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 6), fetchingMailSettingsContract$State.markAsReadWhenDeleted));
                int i12 = 24;
                arrayList.add(new SettingValue.Select("when_i_delete_a_message", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 5), new ThemeSizesKt$$ExternalSyntheticLambda0(i12), new ThemeSizesKt$$ExternalSyntheticLambda0(i12), true, fetchingMailSettingsContract$State.whenIDeleteAMessage, fetchingMailSettingsOptionsMapper.whenIDeleteAMessageOptions));
                int i13 = 24;
                arrayList.add(new SettingValue.Select("erase_deleted_message_on_server", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 9), new ThemeSizesKt$$ExternalSyntheticLambda0(i13), new ThemeSizesKt$$ExternalSyntheticLambda0(i13), true, fetchingMailSettingsContract$State.eraseDeletedMessageOnServer, fetchingMailSettingsOptionsMapper.eraseDeletedMessageOnServerOptions));
                arrayList.add(new SettingValue.ActionText("in_coming_server", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 8), new ThemeSizesKt$$ExternalSyntheticLambda0(i13), new ThemeSizesKt$$ExternalSyntheticLambda0(i13), ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_incoming_summary), new AboutFragment$$ExternalSyntheticLambda2(27, function1)));
                int i14 = 24;
                arrayList.add(new SettingValue.ActionText("advance", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 3), new ThemeSizesKt$$ExternalSyntheticLambda0(i14), new ThemeSizesKt$$ExternalSyntheticLambda0(i14), "", new AboutFragment$$ExternalSyntheticLambda2(26, function1)));
                rememberedValue = toImmutableList(arrayList);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                i3 = i6;
            }
            ImmutableList immutableList = (ImmutableList) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            String stringResource = Operation$State.stringResource(gapComposer, R.string.account_settings_fetching_mail);
            String str = fetchingMailSettingsContract$State.subtitle;
            boolean z2 = i7 == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == neverEqualPolicy) {
                i4 = 1;
                rememberedValue3 = new ChangelogScreenKt$$ExternalSyntheticLambda7(i4, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            } else {
                i4 = 1;
            }
            Function1 function12 = (Function1) rememberedValue3;
            int i15 = i7 == 32 ? i4 : 0;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (i15 != 0 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new AboutFragment$$ExternalSyntheticLambda2(28, function1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            int i16 = i3;
            int i17 = 1;
            SettingViewProvider$ComposeDefaultImpls.SettingView$default(stringResource, immutableList, function12, (Function0) rememberedValue4, str, Expect_jvmKt.rememberComposableLambda(-1747953643, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState2, 2), gapComposer), dialogSettingViewProvider, gapComposer, ((i3 >> 6) & 57344) | 1572864 | ((i3 << 12) & 29360128), 0);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(651804835);
                String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_settings_account_delete_dlg_title);
                String stringResource3 = Operation$State.stringResource(R.string.account_settings_account_delete_dlg_instructions_fmt, new Object[]{String.valueOf(fetchingMailSettingsContract$State.subtitle), ((K9AppNameProvider) appNameProvider).getAppName()}, gapComposer);
                String stringResource4 = Operation$State.stringResource(gapComposer, R.string.account_settings_okay_action);
                String stringResource5 = Operation$State.stringResource(gapComposer, R.string.account_settings_cancel_action);
                boolean z3 = (i16 & 896) == 256;
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (z3 || rememberedValue5 == neverEqualPolicy) {
                    mutableState = mutableState2;
                    rememberedValue5 = new SearchSettingContentKt$$ExternalSyntheticLambda3(function0, mutableState, i17);
                    gapComposer.updateRememberedValue(rememberedValue5);
                } else {
                    mutableState = mutableState2;
                }
                Function0 function02 = (Function0) rememberedValue5;
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 16);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function0 function03 = (Function0) rememberedValue6;
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (rememberedValue7 == neverEqualPolicy) {
                    rememberedValue7 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 17);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                TopAppBarKt.AlertDialog(stringResource2, stringResource3, stringResource4, function02, function03, (Modifier) null, stringResource5, (Function0) rememberedValue7, false, (Composer) gapComposer, 100687872);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(652493097);
                gapComposer.end(false);
            }
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(fetchingMailSettingsContract$State, function1, function0, dialogSettingViewProvider, fetchingMailSettingsBuilder, appNameProvider, modifier2, i, 4);
        }
    }

    public static final void FolderCountAndStarredBadge(int i, int i2, boolean z, Modifier modifier, Composer composer, int i3) {
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-557491851);
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
                gapComposer.startReplaceGroup(-1401244167);
                MathKt.NavigationDrawerItemBadge(AtomicFU.labelForCount(i, resources), null, z ? Icons$Filled.Dot : null, gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1400969321);
                gapComposer.end(false);
            }
            if (!z || i2 <= 0) {
                gapComposer.startReplaceGroup(-1400593353);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1400907600);
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
            endRestartGroup.block = new FolderListItemBadgeKt$$ExternalSyntheticLambda1(i, i2, z, modifier, i3, 0);
        }
    }

    public static final void FolderListItemBadge(int i, int i2, boolean z, Modifier modifier, Composer composer, int i3) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1931032999);
        int i4 = i3 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(i2) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            FolderCountAndStarredBadge(i, i2, z, companion, gapComposer, i4 & 8190);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FolderListItemBadgeKt$$ExternalSyntheticLambda0(i, i2, z, modifier2, i3, 0);
        }
    }

    public static final void RenderSettingDecoration(SettingDecoration$Custom settingDecoration$Custom, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(518650011);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(settingDecoration$Custom) : gapComposer.changedInstance(settingDecoration$Custom) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if (!gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            gapComposer.skipToGroupEnd();
        } else {
            if (!(settingDecoration$Custom instanceof SettingDecoration$Custom)) {
                throw ViewSizeResolver.CC.m(gapComposer, 206458065, false);
            }
            gapComposer.startReplaceGroup(2105276462);
            ByteStreamsKt.CustomItem(settingDecoration$Custom, gapComposer, i3 & 126);
            gapComposer.end(false);
            modifier = Modifier.Companion.$$INSTANCE;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 14, settingDecoration$Custom, modifier);
        }
    }

    public static final void RenderSettingValue(SettingValue settingValue, Function0 function0, Function1 function1, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1081663836);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(settingValue) : gapComposer.changedInstance(settingValue) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.skipToGroupEnd();
        } else if (settingValue instanceof SettingValue.Text) {
            gapComposer.startReplaceGroup(1292510596);
            CharsKt__CharKt.TextItem((SettingValue.Text) settingValue, function0, modifier, gapComposer, ((i2 >> 3) & 896) | (i2 & 126));
            gapComposer.end(false);
        } else if (settingValue instanceof SettingValue.ActionText) {
            gapComposer.startReplaceGroup(1292702145);
            CloseableKt.ActionTextItem((SettingValue.ActionText) settingValue, modifier, gapComposer, ((i2 >> 6) & 112) | (i2 & 14));
            gapComposer.end(false);
        } else if (settingValue instanceof SettingValue.Color) {
            gapComposer.startReplaceGroup(1292861795);
            CacheControl.Companion.ColorItem((SettingValue.Color) settingValue, function0, modifier, gapComposer, ((i2 >> 3) & 896) | (i2 & 126));
            gapComposer.end(false);
        } else if (settingValue instanceof SettingValue.IconList) {
            gapComposer.startReplaceGroup(1293054150);
            int i3 = i2 & 14;
            int i4 = i2 >> 3;
            Cookie.Companion.IconListItem((SettingValue.IconList) settingValue, function1, modifier, gapComposer, (i4 & 896) | i3 | (i4 & 112));
            gapComposer.end(false);
        } else if (settingValue instanceof SettingValue.SegmentedButton) {
            gapComposer.startReplaceGroup(1293284511);
            int i5 = i2 & 14;
            int i6 = i2 >> 3;
            Handshake.Companion.SegmentedButtonItem((SettingValue.SegmentedButton) settingValue, function1, modifier, gapComposer, (i6 & 896) | i5 | (i6 & 112));
            gapComposer.end(false);
        } else if (settingValue instanceof SettingValue.Select) {
            gapComposer.startReplaceGroup(1293508610);
            RangesKt.SelectItem((SettingValue.Select) settingValue, function0, modifier, gapComposer, ((i2 >> 3) & 896) | (i2 & 126));
            gapComposer.end(false);
        } else {
            if (!(settingValue instanceof SettingValue.Switch)) {
                throw ViewSizeResolver.CC.m(gapComposer, -96853729, false);
            }
            gapComposer.startReplaceGroup(1293713024);
            Base64.SwitchItem((SettingValue.Switch) settingValue, modifier, function1, gapComposer, (i2 & 896) | (i2 & 14) | ((i2 >> 6) & 112));
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(settingValue, function0, function1, modifier, i);
        }
    }

    public static final void SettingItem(Setting setting, Function0 function0, Function1 function1, Modifier modifier, Composer composer, int i) {
        setting.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1907601987);
        int i2 = (gapComposer.changed(setting) ? 4 : 2) | i | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128);
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.skipToGroupEnd();
        } else if (setting instanceof SettingValue) {
            gapComposer.startReplaceGroup(1636678276);
            RenderSettingValue((SettingValue) setting, function0, function1, modifier, gapComposer, i2 & 8190);
            gapComposer.end(false);
        } else {
            if (!(setting instanceof SettingDecoration$Custom)) {
                throw ViewSizeResolver.CC.m(gapComposer, 745531414, false);
            }
            gapComposer.startReplaceGroup(1636931236);
            RenderSettingDecoration((SettingDecoration$Custom) setting, null, gapComposer, i2 & 14);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(setting, function0, function1, modifier, i, 14);
        }
    }

    public static final void SwipeableRow(final SwipeableRowState swipeableRowState, final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final boolean z, final Function1 function1, Function1 function12, final ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        Function1 function13;
        boolean z2;
        List list;
        Object obj;
        Object obj2;
        Continuation continuation;
        Object mutableStateOf$default;
        CustomAccessibilityAction customAccessibilityAction;
        swipeableRowState.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1780454506);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(swipeableRowState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 16384 : 8192;
        }
        int i3 = i2 | 196608;
        if ((1572864 & i) == 0) {
            i3 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 1048576 : 524288;
        }
        if (gapComposer2.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj3 = Composer.Companion.Empty;
            if (rememberedValue == obj3) {
                rememberedValue = new JsonObject$$ExternalSyntheticLambda0(25);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Function1 function14 = (Function1) rememberedValue;
            final HapticFeedback hapticFeedback = (HapticFeedback) gapComposer2.consume(CompositionLocalsKt.LocalHapticFeedback);
            int i4 = i3 & 14;
            boolean z3 = (i4 == 4) | ((i3 & 458752) == 131072);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            Continuation continuation2 = null;
            if (z3 || rememberedValue2 == obj3) {
                rememberedValue2 = new Preferences$getAccountsFlow$1(swipeableRowState, function14, continuation2, 24);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(swipeableRowState, function14, (Function2) rememberedValue2, gapComposer2);
            boolean changedInstance = ((i3 & 57344) == 16384) | (i4 == 4) | gapComposer2.changedInstance(hapticFeedback);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue3 == obj3) {
                rememberedValue3 = new SimpleActor$$ExternalSyntheticLambda0(swipeableRowState, hapticFeedback, function1, 29);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Object obj4 = (Function1) rememberedValue3;
            gapComposer2.startReplaceGroup(176897124);
            if (z) {
                ImmutableList immutableList = swipeableRowState.accessibilityActions;
                ArrayList arrayList = new ArrayList();
                Iterator it = immutableList.iterator();
                while (it.hasNext()) {
                    SwipeDirectionAccessibilityAction swipeDirectionAccessibilityAction = (SwipeDirectionAccessibilityAction) it.next();
                    Iterator it2 = it;
                    SwipeDirection swipeDirection = (!(swipeDirectionAccessibilityAction instanceof SwipeDirectionAccessibilityAction.EndToStartAccessibilityAction) || (swipeableRowState.endToStartBehaviour instanceof SwipeBehaviour.Disabled)) ? (!(swipeDirectionAccessibilityAction instanceof SwipeDirectionAccessibilityAction.StartToEndAccessibilityAction) || (swipeableRowState.startToEndBehaviour instanceof SwipeBehaviour.Disabled)) ? null : SwipeDirection.StartToEnd : SwipeDirection.EndToStart;
                    if (swipeDirection == null) {
                        gapComposer2.startReplaceGroup(884108109);
                        gapComposer2.end(false);
                        customAccessibilityAction = null;
                        continuation = null;
                    } else {
                        gapComposer2.startReplaceGroup(884108110);
                        Object descriptionStringRes = swipeDirectionAccessibilityAction.getDescriptionStringRes();
                        Object[] objArr = {swipeDirectionAccessibilityAction.getActionLabel().invoke(gapComposer2, 0)};
                        descriptionStringRes.getClass();
                        Object currentOrPreview = RangesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer2);
                        ArrayList arrayList2 = new ArrayList(1);
                        arrayList2.add(objArr[0].toString());
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (rememberedValue4 == obj3) {
                            rememberedValue4 = new KoinJavaComponent$$ExternalSyntheticLambda0(10);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Function0 function0 = (Function0) rememberedValue4;
                        boolean changed = gapComposer2.changed(descriptionStringRes) | gapComposer2.changedInstance(arrayList2) | gapComposer2.changedInstance(currentOrPreview);
                        Object rememberedValue5 = gapComposer2.rememberedValue();
                        if (changed || rememberedValue5 == obj3) {
                            rememberedValue5 = new NavHostKt$NavHost$29$1(descriptionStringRes, arrayList2, currentOrPreview, (Continuation) null, 26);
                            obj = descriptionStringRes;
                            obj2 = arrayList2;
                            continuation = null;
                            gapComposer2.updateRememberedValue(rememberedValue5);
                        } else {
                            obj2 = arrayList2;
                            obj = descriptionStringRes;
                            continuation = null;
                        }
                        Function2 function2 = (Function2) rememberedValue5;
                        function0.getClass();
                        function2.getClass();
                        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer2.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
                        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer2);
                        boolean changed2 = gapComposer2.changed(obj) | gapComposer2.changed(obj2) | gapComposer2.changed(rememberEnvironment);
                        Object rememberedValue6 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue6 == obj3) {
                            mutableStateOf$default = Updater.mutableStateOf$default(JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$1$1(function2, rememberEnvironment, continuation, 1)));
                            gapComposer2.updateRememberedValue(mutableStateOf$default);
                        } else {
                            mutableStateOf$default = rememberedValue6;
                        }
                        String str = (String) ((MutableState) mutableStateOf$default).getValue();
                        boolean changed3 = gapComposer2.changed(obj4) | gapComposer2.changed(swipeDirection.ordinal());
                        Object rememberedValue7 = gapComposer2.rememberedValue();
                        if (changed3 || rememberedValue7 == obj3) {
                            rememberedValue7 = new SealedClassSerializer$$ExternalSyntheticLambda0(6, obj4, swipeDirection);
                            gapComposer2.updateRememberedValue(rememberedValue7);
                        }
                        customAccessibilityAction = new CustomAccessibilityAction(str, (Function0) rememberedValue7);
                        gapComposer2.end(false);
                    }
                    if (customAccessibilityAction != null) {
                        arrayList.add(customAccessibilityAction);
                    }
                    it = it2;
                }
                z2 = true;
                gapComposer2.end(false);
                list = arrayList;
            } else {
                gapComposer2.end(false);
                list = EmptyList.INSTANCE;
                z2 = true;
            }
            boolean z4 = swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem() == SwipeState.Dismissed ? z2 : false;
            Modifier testTag = TestTagKt.testTag(modifier, "SwipeableRow_AnimatedContent");
            Boolean valueOf = Boolean.valueOf(z4);
            boolean z5 = i4 == 4 ? z2 : false;
            Object rememberedValue8 = gapComposer2.rememberedValue();
            if (z5 || rememberedValue8 == obj3) {
                rememberedValue8 = new SwipeableRowKt$$ExternalSyntheticLambda2(swipeableRowState, 0);
                gapComposer2.updateRememberedValue(rememberedValue8);
            }
            final List list2 = list;
            gapComposer = gapComposer2;
            CrossfadeKt.AnimatedContent(valueOf, testTag, (Function1) rememberedValue8, null, "SwipeableRowContentAnimation", null, Expect_jvmKt.rememberComposableLambda(-1270977619, new Function4() { // from class: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda3
                /* JADX WARN: Removed duplicated region for block: B:42:0x0196  */
                /* JADX WARN: Removed duplicated region for block: B:47:0x019a  */
                @Override // kotlin.jvm.functions.Function4
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r19, java.lang.Object r20, java.lang.Object r21, java.lang.Object r22) {
                    /*
                        Method dump skipped, instructions count: 469
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda3.invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
                }
            }, gapComposer2), gapComposer, 1597440, 40);
            function13 = function14;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwipeableRowKt$$ExternalSyntheticLambda4(swipeableRowState, composableLambdaImpl, modifier, z, function1, function13, composableLambdaImpl2, i);
        }
    }

    public static final void SwipeableRowBackground(SwipeableRowState swipeableRowState, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1982976622);
        int i2 = (gapComposer.changed(swipeableRowState) ? 32 : 16) | i | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024);
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.skipToGroupEnd();
        } else if (!z || ((SwipeDirection) swipeableRowState.swipeDirection$delegate.getValue()) == SwipeDirection.Settled) {
            gapComposer.startReplaceGroup(-1875900496);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1876110180);
            Modifier testTag = TestTagKt.testTag(BoxScopeInstance.INSTANCE.matchParentSize(), "SwipeableRow_background_content");
            int i3 = i2 & 7168;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, testTag);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(RowScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i3 >> 6) & 112) | 6));
            gapComposer.end(true);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda3(i, 5, swipeableRowState, composableLambdaImpl, z);
        }
    }

    public static final Application androidApplication(Scope scope) {
        scope.getClass();
        try {
            return (Application) scope.resolve(Reflection.getOrCreateKotlinClass(Application.class), null, null);
        } catch (NoDefinitionFoundException unused) {
            throw new MissingAndroidContextException("Can't resolve Application instance. Please use androidContext() function in your KoinApplication configuration.", 0);
        }
    }

    public static final Context androidContext(Scope scope) {
        scope.getClass();
        try {
            return (Context) scope.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        } catch (NoDefinitionFoundException unused) {
            throw new MissingAndroidContextException("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.", 0);
        }
    }

    public static final RealBufferedSink buffer(Sink sink) {
        sink.getClass();
        return new RealBufferedSink(sink);
    }

    public static void checkArgument(String str, boolean z) {
        if (z) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(str);
    }

    public static void checkNotEmpty(String str, String str2) {
        checkNotNull(str, str2);
        checkArgument(str2, !TextUtils.isEmpty(str));
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        Regex$$ExternalSyntheticBUOutline0.m(str);
    }

    public static void checkNullOrNotEmpty(String str, String str2) {
        if (str != null) {
            checkNotEmpty(str, str2);
        }
    }

    public static final EnumEntriesList enumEntries(Enum[] enumArr) {
        enumArr.getClass();
        return new EnumEntriesList(enumArr);
    }

    public static final InAppNotificationStyle inAppNotificationStyle(Function1 function1) {
        InAppNotificationStyleBuilder inAppNotificationStyleBuilder = new InAppNotificationStyleBuilder();
        InAppNotificationStyle.Undefined undefined = InAppNotificationStyle.Undefined.INSTANCE;
        inAppNotificationStyleBuilder.style = undefined;
        function1.invoke(inAppNotificationStyleBuilder);
        if (!Intrinsics.areEqual(inAppNotificationStyleBuilder.style, undefined)) {
            return inAppNotificationStyleBuilder.style;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must pick one in-app notification style.");
        return null;
    }

    public static final AbstractPersistentList persistentListOf(Object... objArr) {
        List asList = Arrays.asList(objArr);
        asList.getClass();
        return SmallPersistentVector.EMPTY.addAll((Collection) asList);
    }

    public static final PersistentOrderedSet persistentSetOf(Object... objArr) {
        PersistentOrderedSet persistentOrderedSet = PersistentOrderedSet.EMPTY;
        List asList = Arrays.asList(objArr);
        asList.getClass();
        persistentOrderedSet.getClass();
        if (asList.isEmpty()) {
            return persistentOrderedSet;
        }
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = new PersistentOrderedSetBuilder(persistentOrderedSet);
        persistentOrderedSetBuilder.addAll(asList);
        return persistentOrderedSetBuilder.build();
    }

    public static final MessageItemConfiguration rememberMessageItemConfiguration(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, MessageConversationCounterBadgeColor messageConversationCounterBadgeColor, MessageItemAccountIndicator messageItemAccountIndicator, Composer composer, int i) {
        MessageBadgeStyle messageBadgeStyle;
        messageItemUi.getClass();
        messageListPreferences.getClass();
        boolean z = messageListPreferences.showFavouriteButton;
        int i2 = messageListPreferences.excerptLines;
        boolean z2 = ((((i & 14) ^ 6) > 4 && ((GapComposer) composer).changed(messageItemUi)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && ((GapComposer) composer).changed(messageListPreferences)) || (i & 48) == 32);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (z2 || rememberedValue == Composer.Companion.Empty) {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            int i3 = messageItemUi.threadCount;
            if (i3 > 1) {
                createListBuilder.add(new MessageSublineLeadingIndicator.ConversationCounterBadge(i3, messageConversationCounterBadgeColor));
            }
            if (messageItemUi.hasAttachments) {
                createListBuilder.add(MessageSublineLeadingIndicator.AttachmentIcon.INSTANCE);
            }
            AbstractPersistentList persistentList = toPersistentList(IntOffsetKt.build(createListBuilder));
            int i4 = messageListPreferences.excerptLines;
            int ordinal = messageItemUi.state.ordinal();
            if (ordinal != 0) {
                messageBadgeStyle = null;
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    messageBadgeStyle = MessageBadgeStyle.Unread;
                }
            } else {
                messageBadgeStyle = MessageBadgeStyle.New;
            }
            ComposedAddressUi composedAddressUi = messageItemUi.senders;
            MessageItemLeadingConfiguration messageItemLeadingConfiguration = new MessageItemLeadingConfiguration(messageBadgeStyle, composedAddressUi.avatar, composedAddressUi.color);
            SmallPersistentVector smallPersistentVector = SmallPersistentVector.EMPTY;
            MessageSublineConfiguration messageSublineConfiguration = new MessageSublineConfiguration(i2 == 0 ? persistentList : smallPersistentVector);
            if (i2 <= 0) {
                persistentList = smallPersistentVector;
            }
            MessageSublineConfiguration messageSublineConfiguration2 = new MessageSublineConfiguration(persistentList);
            ListBuilder createListBuilder2 = IntOffsetKt.createListBuilder();
            if (messageItemUi.encrypted) {
                createListBuilder2.add(new MessageItemTrailingElement.EncryptedBadge(!z));
            }
            if (z) {
                createListBuilder2.add(new MessageItemTrailingElement.FavouriteIconButton(messageItemUi.starred));
            }
            rememberedValue = new MessageItemConfiguration(i4, messageItemLeadingConfiguration, messageItemAccountIndicator, messageSublineConfiguration, messageSublineConfiguration2, new MessageItemTrailingConfiguration(toPersistentList(IntOffsetKt.build(createListBuilder2))));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (MessageItemConfiguration) rememberedValue;
    }

    public static final InputStreamSource source(InputStream inputStream) {
        inputStream.getClass();
        return new InputStreamSource(inputStream, new Timeout());
    }

    public static final void throwUnknownIndexException(int i) {
        throw new SerializationException(CameraDevices$CC.m("An unknown field for index ", i));
    }

    public static final Integer toAccessibilityStringRes(SwipeAction swipeAction) {
        switch (swipeAction.ordinal()) {
            case 0:
                return null;
            case 1:
                return Integer.valueOf(R.string.swipe_action_select);
            case 2:
                return Integer.valueOf(R.string.swipe_action_mark_as_read);
            case 3:
                return Integer.valueOf(R.string.swipe_action_add_star);
            case 4:
                return Integer.valueOf(R.string.swipe_action_archive);
            case 5:
                return Integer.valueOf(R.string.swipe_action_change_swipe_gestures);
            case 6:
                return Integer.valueOf(R.string.swipe_action_archive_folder_not_set);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Integer.valueOf(R.string.swipe_action_delete);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Integer.valueOf(R.string.swipe_action_spam);
            case 9:
                return Integer.valueOf(R.string.swipe_action_move);
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }

    public static final ImmutableList toImmutableList(Iterable iterable) {
        iterable.getClass();
        ImmutableList immutableList = iterable instanceof ImmutableList ? (ImmutableList) iterable : null;
        return immutableList == null ? toPersistentList(iterable) : immutableList;
    }

    public static final PersistentMap toImmutableMap(Map map) {
        map.getClass();
        PersistentMap persistentMap = map instanceof PersistentMap ? (PersistentMap) map : null;
        if (persistentMap != null) {
            return persistentMap;
        }
        PersistentMap.Builder builder = map instanceof PersistentMap.Builder ? (PersistentMap.Builder) map : null;
        PersistentMap build = builder != null ? builder.build() : null;
        if (build != null) {
            return build;
        }
        PersistentOrderedMap persistentOrderedMap = PersistentOrderedMap.EMPTY;
        persistentOrderedMap.getClass();
        if (map.isEmpty()) {
            return persistentOrderedMap;
        }
        PersistentOrderedMapBuilder persistentOrderedMapBuilder = new PersistentOrderedMapBuilder(persistentOrderedMap);
        persistentOrderedMapBuilder.putAll(map);
        return persistentOrderedMapBuilder.build();
    }

    public static final AbstractPersistentList toPersistentList(Iterable iterable) {
        iterable.getClass();
        AbstractPersistentList abstractPersistentList = iterable instanceof AbstractPersistentList ? (AbstractPersistentList) iterable : null;
        if (abstractPersistentList != null) {
            return abstractPersistentList;
        }
        PersistentVectorBuilder persistentVectorBuilder = iterable instanceof PersistentVectorBuilder ? (PersistentVectorBuilder) iterable : null;
        AbstractPersistentList build = persistentVectorBuilder != null ? persistentVectorBuilder.build() : null;
        if (build != null) {
            return build;
        }
        SmallPersistentVector smallPersistentVector = SmallPersistentVector.EMPTY;
        smallPersistentVector.getClass();
        if (iterable instanceof Collection) {
            return smallPersistentVector.addAll((Collection) iterable);
        }
        PersistentVectorBuilder builder = smallPersistentVector.builder();
        CollectionsKt.addAll(iterable, builder);
        return builder.build();
    }

    public static final PersistentOrderedSet toPersistentSet(Iterable iterable) {
        iterable.getClass();
        PersistentOrderedSet persistentOrderedSet = iterable instanceof PersistentOrderedSet ? (PersistentOrderedSet) iterable : null;
        if (persistentOrderedSet != null) {
            return persistentOrderedSet;
        }
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = iterable instanceof PersistentOrderedSetBuilder ? (PersistentOrderedSetBuilder) iterable : null;
        PersistentOrderedSet build = persistentOrderedSetBuilder != null ? persistentOrderedSetBuilder.build() : null;
        if (build != null) {
            return build;
        }
        PersistentOrderedSet persistentOrderedSet2 = PersistentOrderedSet.EMPTY;
        persistentOrderedSet2.getClass();
        if (!(iterable instanceof Collection)) {
            PersistentOrderedSetBuilder persistentOrderedSetBuilder2 = new PersistentOrderedSetBuilder(persistentOrderedSet2);
            CollectionsKt.addAll(iterable, persistentOrderedSetBuilder2);
            return persistentOrderedSetBuilder2.build();
        }
        Collection collection = (Collection) iterable;
        if (collection.isEmpty()) {
            return persistentOrderedSet2;
        }
        PersistentOrderedSetBuilder persistentOrderedSetBuilder3 = new PersistentOrderedSetBuilder(persistentOrderedSet2);
        persistentOrderedSetBuilder3.addAll(collection);
        return persistentOrderedSetBuilder3.build();
    }

    public static final RealBufferedSource buffer(Source source) {
        source.getClass();
        return new RealBufferedSource(source);
    }
}
