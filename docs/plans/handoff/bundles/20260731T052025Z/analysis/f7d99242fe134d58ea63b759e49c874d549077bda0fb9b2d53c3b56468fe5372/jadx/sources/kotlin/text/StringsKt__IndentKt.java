package kotlin.text;

import androidx.activity.ComponentActivity;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.selection.ToggleableElement;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RadialGradient;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SweepGradient;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.room.util.RelationUtil;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda1;
import app.k9mail.feature.launcher.ui.FeatureLauncherAppKt$$ExternalSyntheticLambda3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.math.MathKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.datetime.format.AbstractDateTimeFormatBuilder;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.common.window.WindowSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.common.window.WindowWidthSizeClass;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.DefaultAvatarIcons;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogDefaults;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogKt$$ExternalSyntheticLambda0;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.vector.XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;
import org.jetbrains.compose.resources.vector.XmlVectorParserKt$childrenSequence$1;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.minidns.util.Hex;
import org.slf4j.helpers.Util;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StringsKt__IndentKt {

    /* renamed from: android, reason: collision with root package name */
    public static Boolean f36android;

    public static final void AccountList(ImmutableList immutableList, DisplayAccount displayAccount, Function1 function1, boolean z, Modifier modifier, Composer composer, int i) {
        immutableList.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(499350918);
        int i2 = i | (gapComposer.changed(immutableList) ? 4 : 2) | (gapComposer.changed(displayAccount) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changed(modifier) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
            Modifier then = modifier.then(SizeKt.FillWholeMaxWidth);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(1, 0.0f);
            boolean z2 = ((i2 & 14) == 4) | ((i2 & 896) == 256) | ((i2 & 112) == 32) | ((i2 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer.Companion.Empty) {
                WorkerWrapper$$ExternalSyntheticLambda1 workerWrapper$$ExternalSyntheticLambda1 = new WorkerWrapper$$ExternalSyntheticLambda1(immutableList, function1, displayAccount, z, 3);
                gapComposer.updateRememberedValue(workerWrapper$$ExternalSyntheticLambda1);
                rememberedValue = workerWrapper$$ExternalSyntheticLambda1;
            }
            ActionBar.LazyColumn(0, 504, null, null, null, m213PaddingValuesYgX7TsA$default, rememberLazyListState, gapComposer, null, then, (Function1) rememberedValue, false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(immutableList, displayAccount, function1, z, modifier, i);
        }
    }

    public static final void AvatarIcon(String str, AvatarSize avatarSize, Modifier modifier, DefaultAvatarIconCatalog defaultAvatarIconCatalog, Composer composer, int i) {
        int i2;
        float f;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(56513065);
        int i3 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(avatarSize.ordinal()) ? 32 : 16) | 1408;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposer.startDefaults();
            int i4 = i & 1;
            Object obj = null;
            Object obj2 = Composer.Companion.Empty;
            if (i4 == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj3 = rememberedValue;
                if (changed || rememberedValue == obj2) {
                    obj3 = ViewSizeResolver.CC.m(DefaultAvatarIconCatalog.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                defaultAvatarIconCatalog = (DefaultAvatarIconCatalog) obj3;
                i2 = i3 & (-7169);
                modifier = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-7169);
            }
            gapComposer.endDefaults();
            boolean z = (i2 & 14) == 4;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == obj2) {
                defaultAvatarIconCatalog.getClass();
                Iterator it = DefaultAvatarIcons.$ENTRIES.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String str2 = ((DefaultAvatarIcons) next).id;
                    String lowerCase = str.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    if (Intrinsics.areEqual(str2, lowerCase)) {
                        obj = next;
                        break;
                    }
                }
                Object obj4 = (DefaultAvatarIcons) obj;
                rememberedValue2 = obj4 != null ? obj4 : defaultAvatarIconCatalog.defaultIcon;
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            DefaultAvatarIcons defaultAvatarIcons = (DefaultAvatarIcons) rememberedValue2;
            int ordinal = avatarSize.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(1532897625);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                gapComposer.end(false);
                f = 32.0f;
            } else {
                if (ordinal != 1) {
                    throw ViewSizeResolver.CC.m(gapComposer, 1532895857, false);
                }
                gapComposer.startReplaceGroup(1532899354);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                gapComposer.end(false);
                f = 48.0f;
            }
            AtomicFU.m1009IconxqIIw2o(defaultAvatarIcons.icon, SizeKt.m234size3ABfNKs(modifier, f), new Color(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSecondary), gapComposer, 384, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        DefaultAvatarIconCatalog defaultAvatarIconCatalog2 = defaultAvatarIconCatalog;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(str, avatarSize, modifier2, defaultAvatarIconCatalog2, i, 16);
        }
    }

    public static final void EmailCantBeArchivedDialogButtons(SetupArchiveFolderDialogContract$State.EmailCantBeArchived emailCantBeArchived, Function0 function0, Function0 function02, Function1 function1, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        Modifier then;
        emailCantBeArchived.getClass();
        function0.getClass();
        function02.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(273371906);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(emailCantBeArchived) : gapComposer.changedInstance(emailCantBeArchived) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        int i3 = i2 | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(12.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, horizontal, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.End);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, horizontalAlignElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
            long j3 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            boolean z = false;
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_skip_for_now), function02, null, false, null, null, gapComposer, (i3 >> 3) & 112, 60);
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_set_archive_folder), function0, null, false, null, null, gapComposer, i3 & 112, 60);
            gapComposer.end(true);
            gapComposer.end(true);
            HorizontalAlignElement horizontalAlignElement2 = new HorizontalAlignElement(horizontal);
            boolean z2 = emailCantBeArchived.isDoNotShowDialogAgainChecked;
            Role role = new Role(1);
            boolean z3 = (i3 & 7168) == 2048;
            int i7 = 8;
            if ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposer.changedInstance(emailCantBeArchived))) {
                z = true;
            }
            boolean z4 = z3 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z4 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(i7, function1, emailCantBeArchived);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            then = horizontalAlignElement2.then(new ToggleableElement(z2, null, true, role, (Function1) rememberedValue));
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical, gapComposer, 48);
            long j4 = gapComposer.compositeKeyHashCode;
            int i8 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, then);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i8, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$14);
            RelationUtil.Checkbox(emailCantBeArchived.isDoNotShowDialogAgainChecked, null, null, false, gapComposer, 48);
            Util.m1093TextLabelSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_dont_show_again), null, 0L, 0, 0, gapComposer, 0, 62);
            gapComposer.end(true);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) emailCantBeArchived, (Function) function0, (Object) function02, (Object) function1, modifier2, i, 13);
        }
    }

    public static final void ErrorNotificationsDialog(ImmutableSet immutableSet, Function0 function0, Function1 function1, Modifier modifier, DialogProperties dialogProperties, Composer composer, int i) {
        DialogProperties dialogProperties2;
        immutableSet.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1925833450);
        int i2 = i | (gapComposer.changed(immutableSet) ? 4 : 2);
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i3 = i2 | (gapComposer.changedInstance(function1) ? 256 : 128) | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            DialogProperties dialogProperties3 = ErrorNotificationsDialogDefaults.defaultProperties;
            boolean z = (i3 & 14) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = Boolean.valueOf(!immutableSet.isEmpty());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            if (((Boolean) rememberedValue).booleanValue()) {
                gapComposer.startReplaceGroup(-330785293);
                DebugUtils.Dialog(function0, dialogProperties3, Expect_jvmKt.rememberComposableLambda(-1034268252, new ErrorNotificationsDialogKt$$ExternalSyntheticLambda0(immutableSet, function0, function1, modifier), gapComposer), gapComposer, ((i3 >> 3) & 14) | 432);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-330422996);
                gapComposer.end(false);
            }
            dialogProperties2 = dialogProperties3;
        } else {
            gapComposer.skipToGroupEnd();
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) immutableSet, (Object) function0, (Function) function1, modifier, (Object) dialogProperties2, i, 14);
        }
    }

    public static final void ErrorNotificationsDialogContent(int i, Composer composer, Modifier modifier, Function0 function0, Function1 function1, ImmutableSet immutableSet) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1131266976);
        int i2 = (gapComposer.changed(immutableSet) ? 4 : 2) | i | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            MathKt.m983Surface_UMDTes(modifier, null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-1430693405, new SegmentedButtonKt$$ExternalSyntheticLambda4(immutableSet, function1, function0, 29), gapComposer), gapComposer, ((i2 >> 9) & 14) | 196608, 30);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ErrorNotificationsDialogKt$$ExternalSyntheticLambda0(immutableSet, function0, function1, modifier, i);
        }
    }

    public static final void SearchSettingsScreen(AccountId accountId, Function0 function0, SearchSettingsViewModel searchSettingsViewModel, DialogSettingViewProvider dialogSettingViewProvider, SearchSettingBuilder searchSettingBuilder, AppNameProvider appNameProvider, Composer composer, int i) {
        SearchSettingsViewModel searchSettingsViewModel2;
        DialogSettingViewProvider dialogSettingViewProvider2;
        SearchSettingBuilder searchSettingBuilder2;
        AppNameProvider appNameProvider2;
        DialogSettingViewProvider dialogSettingViewProvider3;
        SearchSettingBuilder searchSettingBuilder3;
        AppNameProvider appNameProvider3;
        int i2;
        SearchSettingsViewModel searchSettingsViewModel3;
        accountId.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(780802493);
        int i3 = i | (gapComposer.changedInstance(accountId) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 74880;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer.startDefaults();
            int i5 = i & 1;
            Continuation continuation = null;
            Object obj = Composer.Companion.Empty;
            if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                boolean changedInstance = gapComposer.changedInstance(accountId);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 9);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                SearchSettingsViewModel searchSettingsViewModel4 = (SearchSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SearchSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
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
                    rememberedValue3 = ViewSizeResolver.CC.m(SearchSettingBuilder.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                searchSettingBuilder3 = (SearchSettingBuilder) rememberedValue3;
                Scope currentKoinScope3 = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed3 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope3);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue4 == obj) {
                    rememberedValue4 = ViewSizeResolver.CC.m(AppNameProvider.class, currentKoinScope3, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                appNameProvider3 = (AppNameProvider) rememberedValue4;
                i2 = i3 & (-524161);
                searchSettingsViewModel3 = searchSettingsViewModel4;
            } else {
                gapComposer.skipToGroupEnd();
                dialogSettingViewProvider3 = dialogSettingViewProvider;
                searchSettingBuilder3 = searchSettingBuilder;
                appNameProvider3 = appNameProvider;
                i2 = i3 & (-524161);
                searchSettingsViewModel3 = searchSettingsViewModel;
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(searchSettingsViewModel3.state, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(searchSettingsViewModel3);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == obj) {
                rememberedValue5 = new ProduceKt$awaitClose$4$1(12, searchSettingsViewModel3);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Function1 function1 = (Function1) rememberedValue5;
            Updater.LaunchedEffect(gapComposer, searchSettingsViewModel3.effect, new OutboxFolderManager$getOutboxFolderIdSync$1(searchSettingsViewModel3, continuation, function0, i4));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
            consume.getClass();
            ComponentActivity componentActivity = (ComponentActivity) consume;
            DebugUtils.BackHandler(false, function0, gapComposer, i2 & 112, 1);
            SearchSettingsContract$State searchSettingsContract$State = (SearchSettingsContract$State) collectAsStateWithLifecycle.getValue();
            boolean changed4 = gapComposer.changed(function1);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue6 == obj) {
                rememberedValue6 = new ChangelogScreenKt$$ExternalSyntheticLambda7(10, function1);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function1 function12 = (Function1) rememberedValue6;
            boolean changedInstance3 = gapComposer.changedInstance(componentActivity);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue7 == obj) {
                rememberedValue7 = new FeatureLauncherAppKt$$ExternalSyntheticLambda3(componentActivity, 3);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function0 function03 = (Function0) rememberedValue7;
            DialogSettingViewProvider dialogSettingViewProvider4 = dialogSettingViewProvider3;
            SearchSettingBuilder searchSettingBuilder4 = searchSettingBuilder3;
            AppNameProvider appNameProvider4 = appNameProvider3;
            Hex.SearchSettingContent(searchSettingsContract$State, function12, function03, dialogSettingViewProvider4, appNameProvider4, searchSettingBuilder4, null, gapComposer, 0);
            searchSettingsViewModel2 = searchSettingsViewModel3;
            dialogSettingViewProvider2 = dialogSettingViewProvider4;
            appNameProvider2 = appNameProvider4;
            searchSettingBuilder2 = searchSettingBuilder4;
        } else {
            gapComposer.skipToGroupEnd();
            searchSettingsViewModel2 = searchSettingsViewModel;
            dialogSettingViewProvider2 = dialogSettingViewProvider;
            searchSettingBuilder2 = searchSettingBuilder;
            appNameProvider2 = appNameProvider;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda14(accountId, function0, searchSettingsViewModel2, dialogSettingViewProvider2, searchSettingBuilder2, appNameProvider2, i, 5);
        }
    }

    public static final void SettingDialog(Setting setting, Function1 function1, Function0 function0, Function0 function02, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        setting.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1988083373);
        int i2 = i | (gapComposer.changed(setting) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function02) ? 2048 : 1024) | 24576;
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        } else {
            if (!(setting instanceof SettingValue)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Unsupported setting type: ".concat(setting.getClass().getSimpleName()));
                return;
            }
            SettingValue settingValue = (SettingValue) setting;
            if (settingValue instanceof SettingValue.Text) {
                gapComposer.startReplaceGroup(607617435);
                AtomicFU.TextDialogView((SettingValue.Text) setting, function1, function0, function02, gapComposer, i2 & 65534);
                gapComposer.end(false);
            } else if (settingValue instanceof SettingValue.Color) {
                gapComposer.startReplaceGroup(607925978);
                NodeUtils.ColorDialogView((SettingValue.Color) setting, function1, function0, function02, gapComposer, i2 & 65534);
                gapComposer.end(false);
            } else if (settingValue instanceof SettingValue.Select) {
                gapComposer.startReplaceGroup(608236505);
                UuidKt.SelectDialogView((SettingValue.Select) setting, function1, function0, function02, gapComposer, i2 & 65534);
                gapComposer.end(false);
            } else {
                if (!(settingValue instanceof SettingValue.IconList) && !(settingValue instanceof SettingValue.SegmentedButton) && !(settingValue instanceof SettingValue.Switch) && !(settingValue instanceof SettingValue.ActionText)) {
                    throw ViewSizeResolver.CC.m(gapComposer, 712336527, false);
                }
                gapComposer.startReplaceGroup(712371799);
                gapComposer.end(false);
            }
            modifier2 = Modifier.Companion.$$INSTANCE;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(setting, function1, function0, function02, modifier2, i, 15);
        }
    }

    public static final void alternativeParsing(DateTimeFormatBuilder dateTimeFormatBuilder, Function1[] function1Arr, Function1 function1) {
        dateTimeFormatBuilder.getClass();
        if (!(dateTimeFormatBuilder instanceof AbstractDateTimeFormatBuilder)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("impossible");
            return;
        }
        Function1[] function1Arr2 = (Function1[]) Arrays.copyOf(function1Arr, function1Arr.length);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
        ((AbstractDateTimeFormatBuilder) dateTimeFormatBuilder).appendAlternativeParsingImpl(function1Arr2, function1);
    }

    public static void appendElement(Appendable appendable, Object obj, Function1 function1) {
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }

    public static final ElementImpl apptAttr(ElementImpl elementImpl, String str) {
        String lookupPrefix = ((Node) elementImpl.safelist).lookupPrefix("http://schemas.android.com/apk/res/android");
        lookupPrefix.getClass();
        Object obj = null;
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(3, new XmlVectorParserKt$childrenSequence$1(elementImpl, null)), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE));
        while (true) {
            if (!filteringSequence$iterator$1.hasNext()) {
                break;
            }
            Object next = filteringSequence$iterator$1.next();
            ElementImpl elementImpl2 = (ElementImpl) next;
            String namespaceURI = ((Node) elementImpl2.safelist).getNamespaceURI();
            namespaceURI.getClass();
            if (namespaceURI.equals("http://schemas.android.com/aapt")) {
                String localName = ((Node) elementImpl2.safelist).getLocalName();
                localName.getClass();
                if (localName.equals("attr")) {
                    String attribute = elementImpl2.element.getAttribute("name");
                    attribute.getClass();
                    if (attribute.equals(lookupPrefix + ":" + str)) {
                        obj = next;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return (ElementImpl) obj;
    }

    public static final String attributeOrNull(ElementImpl elementImpl, String str) {
        elementImpl.getClass();
        String attributeNS = elementImpl.element.getAttributeNS("http://schemas.android.com/apk/res/android", str);
        attributeNS.getClass();
        if (StringsKt.isBlank(attributeNS)) {
            return null;
        }
        return attributeNS;
    }

    public static Set builtInParams(String... strArr) {
        return strArr.length == 0 ? Collections.EMPTY_SET : DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    public static final PaddingValuesImpl calculateResponsiveWidthPadding(Composer composer) {
        float f;
        float m749getWidthD9Ej5fM;
        float f2;
        WindowSizeInfo calculateWindowSizeInfo = Jsoup.calculateWindowSizeInfo(composer);
        WindowSizeClass windowSizeClass = calculateWindowSizeInfo.sizeClass;
        long j = calculateWindowSizeInfo.size;
        int ordinal = windowSizeClass.widthSizeClass.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            f = 0.0f;
        } else {
            Transition.AnonymousClass1 anonymousClass1 = WindowWidthSizeClass.Companion;
            if (ordinal == 2) {
                m749getWidthD9Ej5fM = DpSize.m749getWidthD9Ej5fM(j);
                anonymousClass1.getClass();
                f2 = WindowWidthSizeClass.BREAKPOINT_COMPACT;
            } else {
                if (ordinal != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                m749getWidthD9Ej5fM = DpSize.m749getWidthD9Ej5fM(j);
                anonymousClass1.getClass();
                f2 = WindowWidthSizeClass.BREAKPOINT_MEDIUM;
            }
            f = (m749getWidthD9Ej5fM - f2) / 2.0f;
        }
        return OffsetKt.m213PaddingValuesYgX7TsA$default(2, f);
    }

    /* renamed from: char, reason: not valid java name */
    public static final void m991char(DateTimeFormatBuilder dateTimeFormatBuilder, char c) {
        dateTimeFormatBuilder.getClass();
        dateTimeFormatBuilder.chars(String.valueOf(c));
    }

    public static Map checkAdditionalParams(Map map, Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Okio.checkNotNull(str, "additional parameter keys cannot be null");
            Okio.checkNotNull(str2, "additional parameter values cannot be null");
            if (set.contains(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Parameter ", str, " is directly supported via the authorization request builder, use the builder method instead"));
                return null;
            }
            linkedHashMap.put(str, str2);
        }
        return DesugarCollections.unmodifiableMap(linkedHashMap);
    }

    public static final String formatDuration(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - 500000000) / 1000000000) + " s ";
        } else if (j <= -999500) {
            str = ((j - 500000) / 1000000) + " ms";
        } else if (j <= 0) {
            str = ((j - 500) / 1000) + " µs";
        } else if (j < 999500) {
            str = ((j + 500) / 1000) + " µs";
        } else if (j < 999500000) {
            str = ((j + 500000) / 1000000) + " ms";
        } else {
            str = ((j + 500000000) / 1000000000) + " s ";
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
    }

    public static boolean isAndroid() {
        if (f36android == null) {
            try {
                Class.forName("android.Manifest");
                f36android = Boolean.TRUE;
            } catch (Exception unused) {
                f36android = Boolean.FALSE;
            }
        }
        return f36android.booleanValue();
    }

    public static final void optional(DateTimeFormatBuilder dateTimeFormatBuilder, String str, Function1 function1) {
        dateTimeFormatBuilder.getClass();
        if (!(dateTimeFormatBuilder instanceof AbstractDateTimeFormatBuilder)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("impossible");
        } else {
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
            ((AbstractDateTimeFormatBuilder) dateTimeFormatBuilder).appendOptionalImpl(str, function1);
        }
    }

    public static final Pair[] parseColorStops(ElementImpl elementImpl) {
        List list = SequencesKt.toList(new FilteringSequence(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(3, new XmlVectorParserKt$childrenSequence$1(elementImpl, null)), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE$1), true, new ZipFilesKt$$ExternalSyntheticLambda0(10)));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            ElementImpl elementImpl2 = (ElementImpl) obj;
            float f = i;
            int size = list.size() - 1;
            if (size < 1) {
                size = 1;
            }
            float f2 = f / size;
            String attributeOrNull = attributeOrNull(elementImpl2, "offset");
            if (attributeOrNull != null) {
                f2 = Float.parseFloat(attributeOrNull);
            }
            String attributeOrNull2 = attributeOrNull(elementImpl2, "color");
            Pair pair = attributeOrNull2 != null ? new Pair(Float.valueOf(f2), new Color(ColorKt.Color(Hex.parseColorValue(attributeOrNull2)))) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
            i = i2;
        }
        if (arrayList.isEmpty()) {
            String attributeOrNull3 = attributeOrNull(elementImpl, "startColor");
            Integer valueOf = attributeOrNull3 != null ? Integer.valueOf(Hex.parseColorValue(attributeOrNull3)) : null;
            String attributeOrNull4 = attributeOrNull(elementImpl, "centerColor");
            Integer valueOf2 = attributeOrNull4 != null ? Integer.valueOf(Hex.parseColorValue(attributeOrNull4)) : null;
            String attributeOrNull5 = attributeOrNull(elementImpl, "endColor");
            Integer valueOf3 = attributeOrNull5 != null ? Integer.valueOf(Hex.parseColorValue(attributeOrNull5)) : null;
            if (valueOf != null) {
                arrayList.add(new Pair(Float.valueOf(0.0f), new Color(ColorKt.Color(valueOf.intValue()))));
            }
            if (valueOf2 != null) {
                arrayList.add(new Pair(Float.valueOf(0.5f), new Color(ColorKt.Color(valueOf2.intValue()))));
            }
            if (valueOf3 != null) {
                arrayList.add(new Pair(Float.valueOf(1.0f), new Color(ColorKt.Color(valueOf3.intValue()))));
            }
        }
        return (Pair[]) arrayList.toArray(new Pair[0]);
    }

    public static final ShaderBrush parseElementBrush(ElementImpl elementImpl) {
        Object obj;
        String attributeOrNull;
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(3, new XmlVectorParserKt$childrenSequence$1(elementImpl, null)), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE$2));
        while (true) {
            if (!filteringSequence$iterator$1.hasNext()) {
                obj = null;
                break;
            }
            obj = filteringSequence$iterator$1.next();
            String nodeName = ((Node) ((ElementImpl) obj).safelist).getNodeName();
            nodeName.getClass();
            if (nodeName.equals("gradient")) {
                break;
            }
        }
        ElementImpl elementImpl2 = (ElementImpl) obj;
        if (elementImpl2 != null && (attributeOrNull = attributeOrNull(elementImpl2, "type")) != null) {
            int hashCode = attributeOrNull.hashCode();
            int i = 0;
            if (hashCode != -1102672091) {
                if (hashCode != -938579425) {
                    if (hashCode == 109850348 && attributeOrNull.equals("sweep")) {
                        Pair[] parseColorStops = parseColorStops(elementImpl2);
                        Pair[] pairArr = (Pair[]) Arrays.copyOf(parseColorStops, parseColorStops.length);
                        String attributeOrNull2 = attributeOrNull(elementImpl2, "centerX");
                        float parseFloat = attributeOrNull2 != null ? Float.parseFloat(attributeOrNull2) : 0.0f;
                        long floatToRawIntBits = (Float.floatToRawIntBits(parseFloat) << 32) | (Float.floatToRawIntBits(attributeOrNull(elementImpl2, "centerY") != null ? Float.parseFloat(r2) : 0.0f) & 4294967295L);
                        ArrayList arrayList = new ArrayList(pairArr.length);
                        for (Pair pair : pairArr) {
                            arrayList.add(new Color(((Color) pair.second).value));
                        }
                        int length = pairArr.length;
                        ArrayList arrayList2 = new ArrayList(length);
                        while (i < length) {
                            arrayList2.add(Float.valueOf(((Number) pairArr[i].first).floatValue()));
                            i++;
                        }
                        return new SweepGradient(floatToRawIntBits, arrayList, arrayList2);
                    }
                } else if (attributeOrNull.equals("radial")) {
                    Pair[] parseColorStops2 = parseColorStops(elementImpl2);
                    Pair[] pairArr2 = (Pair[]) Arrays.copyOf(parseColorStops2, parseColorStops2.length);
                    String attributeOrNull3 = attributeOrNull(elementImpl2, "centerX");
                    float parseFloat2 = attributeOrNull3 != null ? Float.parseFloat(attributeOrNull3) : 0.0f;
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(parseFloat2) << 32) | (Float.floatToRawIntBits(attributeOrNull(elementImpl2, "centerY") != null ? Float.parseFloat(r3) : 0.0f) & 4294967295L);
                    String attributeOrNull4 = attributeOrNull(elementImpl2, "gradientRadius");
                    float parseFloat3 = attributeOrNull4 != null ? Float.parseFloat(attributeOrNull4) : 0.0f;
                    String attributeOrNull5 = attributeOrNull(elementImpl2, "tileMode");
                    int parseTileMode = attributeOrNull5 != null ? Hex.parseTileMode(attributeOrNull5) : 0;
                    ArrayList arrayList3 = new ArrayList(pairArr2.length);
                    for (Pair pair2 : pairArr2) {
                        arrayList3.add(new Color(((Color) pair2.second).value));
                    }
                    int length2 = pairArr2.length;
                    ArrayList arrayList4 = new ArrayList(length2);
                    while (i < length2) {
                        arrayList4.add(Float.valueOf(((Number) pairArr2[i].first).floatValue()));
                        i++;
                    }
                    return new RadialGradient(arrayList3, arrayList4, floatToRawIntBits2, parseFloat3, parseTileMode);
                }
            } else if (attributeOrNull.equals("linear")) {
                Pair[] parseColorStops3 = parseColorStops(elementImpl2);
                Pair[] pairArr3 = (Pair[]) Arrays.copyOf(parseColorStops3, parseColorStops3.length);
                String attributeOrNull6 = attributeOrNull(elementImpl2, "startX");
                float parseFloat4 = attributeOrNull6 != null ? Float.parseFloat(attributeOrNull6) : 0.0f;
                long floatToRawIntBits3 = (Float.floatToRawIntBits(parseFloat4) << 32) | (Float.floatToRawIntBits(attributeOrNull(elementImpl2, "startY") != null ? Float.parseFloat(r3) : 0.0f) & 4294967295L);
                String attributeOrNull7 = attributeOrNull(elementImpl2, "endX");
                float parseFloat5 = attributeOrNull7 != null ? Float.parseFloat(attributeOrNull7) : 0.0f;
                long floatToRawIntBits4 = (Float.floatToRawIntBits(parseFloat5) << 32) | (4294967295L & Float.floatToRawIntBits(attributeOrNull(elementImpl2, "endY") != null ? Float.parseFloat(r3) : 0.0f));
                String attributeOrNull8 = attributeOrNull(elementImpl2, "tileMode");
                int parseTileMode2 = attributeOrNull8 != null ? Hex.parseTileMode(attributeOrNull8) : 0;
                ArrayList arrayList5 = new ArrayList(pairArr3.length);
                for (Pair pair3 : pairArr3) {
                    arrayList5.add(new Color(((Color) pair3.second).value));
                }
                int length3 = pairArr3.length;
                ArrayList arrayList6 = new ArrayList(length3);
                while (i < length3) {
                    arrayList6.add(Float.valueOf(((Number) pairArr3[i].first).floatValue()));
                    i++;
                }
                return new LinearGradient(arrayList5, arrayList6, floatToRawIntBits3, floatToRawIntBits4, parseTileMode2);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0205  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void parseVectorNodes(org.jetbrains.compose.resources.vector.xmldom.ElementImpl r22, androidx.compose.ui.graphics.vector.ImageVector.Builder r23, okhttp3.Headers.Builder r24) {
        /*
            Method dump skipped, instructions count: 747
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__IndentKt.parseVectorNodes(org.jetbrains.compose.resources.vector.xmldom.ElementImpl, androidx.compose.ui.graphics.vector.ImageVector$Builder, okhttp3.Headers$Builder):void");
    }

    public static String prependIndent(String str, String str2) {
        str2.getClass();
        int i = 0;
        return SequencesKt.joinToString$default(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i, str), new StringsKt__IndentKt$$ExternalSyntheticLambda0(str2, i), 2), "\n", 62);
    }

    public static String trimIndent(String str) {
        int i;
        Comparable comparable;
        String str2;
        List lines = StringsKt.lines(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                }
                if (!CharsKt__CharKt.isWhitespace(str3.charAt(i))) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                i = str3.length();
            }
            arrayList2.add(Integer.valueOf(i));
        }
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int intValue = num != null ? num.intValue() : 0;
        int length2 = str.length();
        lines.size();
        int size = lines.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : lines) {
            int i2 = i + 1;
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            String str4 = (String) obj2;
            if ((i == 0 || i == size) && StringsKt.isBlank(str4)) {
                str2 = null;
            } else {
                str4.getClass();
                if (intValue < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(intValue, "Requested character count ", " is less than zero."));
                    return null;
                }
                int length3 = str4.length();
                if (intValue <= length3) {
                    length3 = intValue;
                }
                str2 = str4.substring(length3);
            }
            if (str2 != null) {
                arrayList3.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length2);
        CollectionsKt.joinTo$default(arrayList3, sb, "\n", null, null, null, 124);
        return sb.toString();
    }

    public static String trimMargin$default(String str) {
        if (StringsKt.isBlank("|")) {
            UriKt$$ExternalSyntheticBUOutline0.m("marginPrefix must be non-blank string.");
            return null;
        }
        List lines = StringsKt.lines(str);
        int length = str.length();
        lines.size();
        int size = lines.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : lines) {
            int i2 = i + 1;
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            String str2 = (String) obj;
            if ((i == 0 || i == size) && StringsKt.isBlank(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!CharsKt__CharKt.isWhitespace(str2.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                String substring = (i3 != -1 && StringsKt__StringsJVMKt.startsWith(i3, str2, "|", false)) ? str2.substring("|".length() + i3) : null;
                if (substring != null) {
                    str2 = substring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        CollectionsKt.joinTo$default(arrayList, sb, "\n", null, null, null, 124);
        return sb.toString();
    }
}
