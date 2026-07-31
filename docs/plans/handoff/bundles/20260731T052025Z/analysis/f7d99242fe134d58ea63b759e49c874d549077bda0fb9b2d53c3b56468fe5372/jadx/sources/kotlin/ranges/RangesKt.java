package kotlin.ranges;

import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.BasicDialogKt$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity$$ExternalSyntheticLambda5;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda6;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.ReversedListReadOnly;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.DialogSettingViewKt$$ExternalSyntheticLambda2;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.FolderDrawerState;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewKt$DrawerView$2$1;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import net.thunderbird.feature.notification.VibratePattern;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.MediaType;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.AndroidContextProviderKt;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jsoup.nodes.NodeUtils;
import org.koin.compose.KoinApplicationKt;
import org.slf4j.helpers.Util;

/* loaded from: classes.dex */
public abstract class RangesKt {
    public final /* synthetic */ int $r8$classId = 2;

    public static final void ChooseArchiveFolderDialogButtons(RowScope rowScope, SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        rowScope.getClass();
        chooseArchiveFolder.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1604223482);
        if ((i & 48) == 0) {
            i2 = (gapComposer.changed(chooseArchiveFolder) ? 32 : 16) | i;
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
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_create_new_folder), function0, null, false, null, null, gapComposer, (i2 >> 3) & 112, 60);
            Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_done), function02, null, !chooseArchiveFolder.isLoadingFolders, null, null, gapComposer, (i2 >> 6) & 112, 52);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(rowScope, chooseArchiveFolder, function0, function02, i, 15);
        }
    }

    public static final void DrawerView(final FolderDrawerState folderDrawerState, final AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0, final ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0, final MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda5, final MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda52, final MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda53, final MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda54, final Function0 function0, DrawerViewModel drawerViewModel, Composer composer, final int i) {
        final DrawerViewModel drawerViewModel2;
        DrawerViewModel drawerViewModel3;
        int i2;
        folderDrawerState.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-352707157);
        int i3 = 16;
        int i4 = i | (gapComposer.changed(folderDrawerState) ? 4 : 2) | (gapComposer.changedInstance(abstractMap$$ExternalSyntheticLambda0) ? 32 : 16) | (gapComposer.changedInstance(composerKt$$ExternalSyntheticLambda0) ? 256 : 128) | (gapComposer.changedInstance(messageHomeActivity$$ExternalSyntheticLambda5) ? 2048 : 1024) | (gapComposer.changedInstance(messageHomeActivity$$ExternalSyntheticLambda52) ? 16384 : 8192) | (gapComposer.changedInstance(messageHomeActivity$$ExternalSyntheticLambda53) ? 131072 : 65536) | (gapComposer.changedInstance(messageHomeActivity$$ExternalSyntheticLambda54) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | 33554432;
        if (gapComposer.shouldExecute(i4 & 1, (38347923 & i4) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    drawerViewModel3 = (DrawerViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(DrawerViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                    i2 = i4 & (-234881025);
                }
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i4 & (-234881025);
                drawerViewModel3 = drawerViewModel;
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(drawerViewModel3.state, gapComposer);
            boolean changedInstance = gapComposer.changedInstance(drawerViewModel3);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                rememberedValue = new ProduceKt$awaitClose$4$1(i3, drawerViewModel3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            DrawerViewModel drawerViewModel4 = drawerViewModel3;
            Updater.LaunchedEffect(gapComposer, drawerViewModel3.effect, new AsyncCache$getOrLoad$2(drawerViewModel4, null, abstractMap$$ExternalSyntheticLambda0, composerKt$$ExternalSyntheticLambda0, messageHomeActivity$$ExternalSyntheticLambda5, messageHomeActivity$$ExternalSyntheticLambda52, messageHomeActivity$$ExternalSyntheticLambda53, messageHomeActivity$$ExternalSyntheticLambda54, function0));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            String str = folderDrawerState.selectedAccountUuid;
            int i5 = i2 & 14;
            boolean changed = gapComposer.changed(function1) | (i5 == 4);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Continuation continuation = null;
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new DrawerViewKt$DrawerView$2$1(function1, folderDrawerState, continuation, 0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, str, (Function2) rememberedValue2);
            String str2 = folderDrawerState.selectedFolderId;
            boolean changed2 = (i5 == 4) | gapComposer.changed(function1);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new DrawerViewKt$DrawerView$2$1(function1, folderDrawerState, continuation, 1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer, str2, (Function2) rememberedValue3);
            DrawerContract$State drawerContract$State = (DrawerContract$State) collectAsStateWithLifecycle.getValue();
            boolean changed3 = gapComposer.changed(function1);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new ChangelogScreenKt$$ExternalSyntheticLambda7(16, function1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Handshake.Companion.DrawerContent(drawerContract$State, (Function1) rememberedValue4, null, gapComposer, 0);
            drawerViewModel2 = drawerViewModel4;
        } else {
            gapComposer.skipToGroupEnd();
            drawerViewModel2 = drawerViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(abstractMap$$ExternalSyntheticLambda0, composerKt$$ExternalSyntheticLambda0, messageHomeActivity$$ExternalSyntheticLambda5, messageHomeActivity$$ExternalSyntheticLambda52, messageHomeActivity$$ExternalSyntheticLambda53, messageHomeActivity$$ExternalSyntheticLambda54, function0, drawerViewModel2, i) { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewKt$$ExternalSyntheticLambda1
                public final /* synthetic */ AbstractMap$$ExternalSyntheticLambda0 f$1;
                public final /* synthetic */ ComposerKt$$ExternalSyntheticLambda0 f$2;
                public final /* synthetic */ MessageHomeActivity$$ExternalSyntheticLambda5 f$3;
                public final /* synthetic */ MessageHomeActivity$$ExternalSyntheticLambda5 f$4;
                public final /* synthetic */ MessageHomeActivity$$ExternalSyntheticLambda5 f$5;
                public final /* synthetic */ MessageHomeActivity$$ExternalSyntheticLambda5 f$6;
                public final /* synthetic */ Function0 f$7;
                public final /* synthetic */ DrawerViewModel f$8;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    RangesKt.DrawerView(FolderDrawerState.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: GeneralSettingsProfileView-T042LqI, reason: not valid java name */
    public static final void m988GeneralSettingsProfileViewT042LqI(String str, long j, Avatar avatar, Modifier modifier, Composer composer, int i) {
        int i2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1465248743);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(j) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(avatar) : gapComposer.changedInstance(avatar) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(modifier) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(modifier, 16.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ProfileCard(str, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 32.0f, 0.0f, 0.0f, 13).then(SizeKt.FillWholeMaxWidth), gapComposer, i2 & 126);
            NodeUtils.m1078AvatarOadGlvw(avatar, j, AvatarSize.LARGE, null, null, gapComposer, ((i2 >> 9) & 14) | 384 | ((i2 >> 3) & 112), 56);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconKt$$ExternalSyntheticLambda2(str, j, avatar, modifier, i);
        }
    }

    public static final void ProfileCard(String str, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1569101905);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            OAuthBearer.CardElevated(modifier.then(SizeKt.FillWholeMaxWidth), null, null, null, Expect_jvmKt.rememberComposableLambda(1971997717, new BasicDialogKt$$ExternalSyntheticLambda0(str, 5), gapComposer), gapComposer, 196608);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda6(str, modifier, i, i3);
        }
    }

    public static final void SelectItem(SettingValue.Select select, Function0 function0, Modifier modifier, Composer composer, int i) {
        int i2;
        select.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1832400767);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(select) : gapComposer.changedInstance(select) ? 4 : 2) | i;
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
            Cookie.Companion.SettingItemLayout(function0, (ImageVector) select.icon.invoke(), modifier, null, Expect_jvmKt.rememberComposableLambda(1623384049, new MovableContentKt$$ExternalSyntheticLambda0(11, select), gapComposer), gapComposer, ((i2 >> 3) & 14) | 24576 | (i2 & 896), 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(select, function0, modifier, i, 3);
        }
    }

    public static final void SettingTopBar(String str, String str2, Function0 function0, Function3 function3, Composer composer, int i) {
        String str3;
        Function3 function32;
        Function0 function02;
        String str4;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1856447405);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function3) ? 2048 : 1024);
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            str3 = str;
            function32 = function3;
            function02 = function0;
            str4 = str2;
            gapComposer.skipToGroupEnd();
        } else if (str2 != null) {
            gapComposer.startReplaceGroup(869398584);
            str3 = str;
            TopAppBarKt.SubtitleTopAppBarWithBackButton(str3, str2, function0, null, function3, gapComposer, (i2 & 1022) | ((i2 << 3) & 57344));
            str4 = str2;
            function02 = function0;
            function32 = function3;
            gapComposer = gapComposer;
            gapComposer.end(false);
        } else {
            str3 = str;
            function32 = function3;
            function02 = function0;
            str4 = str2;
            gapComposer.startReplaceGroup(869583840);
            TopAppBarKt.TopAppBarWithBackButton(str3, function02, null, null, gapComposer, (i2 & 14) | ((i2 >> 3) & 112));
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DialogSettingViewKt$$ExternalSyntheticLambda2(str3, str4, function02, function32, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitClose(kotlinx.coroutines.channels.ProducerScope r4, kotlin.jvm.functions.Function0 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlin.jvm.functions.Function0 r5 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L28
            goto L65
        L28:
            r4 = move-exception
            goto L6b
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.Job$Key r1 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r1)
            if (r6 != r4) goto L6f
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L28
            r0.label = r3     // Catch: java.lang.Throwable -> L28
            kotlinx.coroutines.CancellableContinuationImpl r6 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L28
            kotlin.coroutines.Continuation r0 = kotlinx.atomicfu.AtomicFU.intercepted(r0)     // Catch: java.lang.Throwable -> L28
            r6.<init>(r3, r0)     // Catch: java.lang.Throwable -> L28
            r6.initCancellability()     // Catch: java.lang.Throwable -> L28
            kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1     // Catch: java.lang.Throwable -> L28
            r1 = 0
            r0.<init>(r1, r6)     // Catch: java.lang.Throwable -> L28
            kotlinx.coroutines.channels.ProducerCoroutine r4 = (kotlinx.coroutines.channels.ProducerCoroutine) r4     // Catch: java.lang.Throwable -> L28
            kotlinx.coroutines.channels.BufferedChannel r4 = r4._channel     // Catch: java.lang.Throwable -> L28
            r4.invokeOnClose(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.Object r4 = r6.getResult()     // Catch: java.lang.Throwable -> L28
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r6) goto L65
            return r6
        L65:
            r5.invoke()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L6b:
            r5.invoke()
            throw r4
        L6f:
            java.lang.String r4 = "awaitClose() can only be invoked from the producer context"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.RangesKt.awaitClose(kotlinx.coroutines.channels.ProducerScope, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static String encodeToString(byte[] bArr) {
        int length = ((int) (8.0d - ((bArr.length % 5) * 1.6d))) % 8;
        System.arraycopy(bArr, 0, new byte[bArr.length + length], 0, bArr.length);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 5) {
            long j = ((r2[i] & 255) << 32) + ((r2[i + 1] & 255) << 24) + ((r2[i + 2] & 255) << 16) + ((r2[i + 3] & 255) << 8) + (r2[i + 4] & 255);
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 35) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 30) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 25) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 20) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 15) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 10) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) ((j >> 5) & 31)));
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int) (j & 31)));
        }
        return ViewSizeResolver.CC.m(sb.substring(0, sb.length() - length), "======".substring(0, length));
    }

    public static MediaType get(String str) {
        str.getClass();
        MatcherMatchResult matchAt = MediaType.TYPE_SUBTYPE.matchAt(0, str);
        if (matchAt == null) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m('\"', "No subtype found for: \"", str));
            return null;
        }
        String str2 = (String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(1);
        Locale locale = Locale.ROOT;
        String lowerCase = str2.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = ((String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(2)).toLowerCase(locale);
        lowerCase2.getClass();
        ArrayList arrayList = new ArrayList();
        int i = matchAt.getRange().last;
        while (true) {
            int i2 = i + 1;
            if (i2 >= str.length()) {
                return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
            }
            MatcherMatchResult matchAt2 = MediaType.PARAMETER.matchAt(i2, str);
            if (matchAt2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Parameter is not formatted correctly: \"", str.substring(i2), "\" for: \"", str, 34);
                return null;
            }
            MatcherMatchResult$groups$1 matcherMatchResult$groups$1 = matchAt2.groups;
            MatchGroup matchGroup = matcherMatchResult$groups$1.get(1);
            String str3 = matchGroup != null ? matchGroup.value : null;
            if (str3 == null) {
                i = matchAt2.getRange().last;
            } else {
                MatchGroup matchGroup2 = matcherMatchResult$groups$1.get(2);
                String str4 = matchGroup2 != null ? matchGroup2.value : null;
                if (str4 == null) {
                    MatchGroup matchGroup3 = matcherMatchResult$groups$1.get(3);
                    matchGroup3.getClass();
                    str4 = matchGroup3.value;
                } else if (str4.length() > 0 && CharsKt__CharKt.equals(str4.charAt(0), '\'', false) && StringsKt.endsWith$default('\'', str4) && str4.length() > 2) {
                    str4 = str4.substring(1, str4.length() - 1);
                }
                arrayList.add(str3);
                arrayList.add(str4);
                i = matchAt2.getRange().last;
            }
        }
    }

    public static final DefaultAndroidResourceReader getCurrentOrPreview(ProvidableCompositionLocal providableCompositionLocal, Composer composer) {
        providableCompositionLocal.getClass();
        AndroidContextProviderKt.PreviewContextConfigurationEffect(composer, 0);
        return (DefaultAndroidResourceReader) ((GapComposer) composer).consume(providableCompositionLocal);
    }

    public static long[] getSystemPattern(VibratePattern vibratePattern, int i) {
        vibratePattern.getClass();
        long[] jArr = vibratePattern.vibrationPattern;
        long[] jArr2 = new long[2 * i];
        for (int i2 = 0; i2 < i; i2++) {
            ArraysKt___ArraysKt.copyInto(jArr, jArr2, i2 * 2, 0, 2);
        }
        jArr2[0] = 0;
        return jArr2;
    }

    public static IntProgression step(IntRange intRange, int i) {
        intRange.getClass();
        boolean z = i > 0;
        Integer valueOf = Integer.valueOf(i);
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + valueOf + '.');
        }
        int i2 = intRange.first;
        int i3 = intRange.last;
        if (intRange.step <= 0) {
            i = -i;
        }
        return new IntProgression(i2, i3, i);
    }

    public static final Map toPropertyMap(Object obj) {
        if ((obj instanceof Collection) || (obj instanceof Map)) {
            return EmptyMap.INSTANCE;
        }
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        declaredFields.getClass();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (!java.lang.reflect.Modifier.isStatic(field.getModifiers()) && !field.isSynthetic()) {
                arrayList.add(field);
            }
        }
        List<Field> sortedWith = CollectionsKt.sortedWith(arrayList, new ViewPager.AnonymousClass1(23));
        MapBuilder mapBuilder = new MapBuilder();
        for (Field field2 : sortedWith) {
            try {
                field2.setAccessible(true);
                String name = field2.getName();
                name.getClass();
                mapBuilder.put(name, field2.get(obj));
            } catch (RuntimeException unused) {
            }
        }
        return mapBuilder.build();
    }

    public static IntRange until(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new IntRange(i, i2 - 1, 1);
        }
        IntRange intRange = IntRange.EMPTY;
        return IntRange.EMPTY;
    }

    public int hashCode() {
        switch (this.$r8$classId) {
            case 2:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
                simpleName.getClass();
                return simpleName;
            default:
                return super.toString();
        }
    }

    public static int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }
}
