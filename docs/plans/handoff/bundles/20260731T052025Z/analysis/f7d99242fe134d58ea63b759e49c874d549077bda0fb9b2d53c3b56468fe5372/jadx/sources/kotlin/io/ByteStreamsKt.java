package kotlin.io;

import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.work.Operation$State;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import app.k9mail.core.ui.compose.designsystem.organism.AlertDialogKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.activity.setup.AccountSetupCompositionKt$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import j$.net.URLEncoder;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.IDN;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.modules.SerialModuleImpl;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingDecoration$Custom;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.SettingViewProvider$ComposeDefaultImpls;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda12;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageBadgeStyle;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemLeadingConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.organism.MessageItemColors;
import net.thunderbird.feature.mail.message.list.ui.component.organism.MessageItemKt$WhenMappings;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.api.SearchCondition;
import net.thunderbird.feature.search.legacy.api.SearchFieldType;
import okhttp3.CacheControl;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ByteStreamsKt {
    public static final void AdvancedFetchingMailSettingsContent(FetchingMailSettingsContract$State fetchingMailSettingsContract$State, Function1 function1, DialogSettingViewProvider dialogSettingViewProvider, FetchingMailSettingsBuilder fetchingMailSettingsBuilder, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        int i3;
        fetchingMailSettingsContract$State.getClass();
        function1.getClass();
        dialogSettingViewProvider.getClass();
        fetchingMailSettingsBuilder.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1236913052);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(fetchingMailSettingsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(dialogSettingViewProvider) : gapComposer.changedInstance(dialogSettingViewProvider) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(fetchingMailSettingsBuilder) : gapComposer.changedInstance(fetchingMailSettingsBuilder) ? 2048 : 1024;
        }
        int i4 = i2 | 24576;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            int i5 = i4 & 112;
            boolean z = ((i4 & 14) == 4) | ((i4 & 7168) == 2048 || ((i4 & 4096) != 0 && gapComposer.changed(fetchingMailSettingsBuilder))) | (i5 == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                SettingValue.Select.SelectOption selectOption = fetchingMailSettingsContract$State.maxFolderToCheckWithPush;
                FetchingMailSettingsBuilder$$ExternalSyntheticLambda0 fetchingMailSettingsBuilder$$ExternalSyntheticLambda0 = new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 12);
                int i6 = 24;
                ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda0 = new ThemeSizesKt$$ExternalSyntheticLambda0(i6);
                ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda02 = new ThemeSizesKt$$ExternalSyntheticLambda0(i6);
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = fetchingMailSettingsBuilder.fetchingMailSettingsOptionsMapper;
                i3 = i4;
                arrayList.add(new SettingValue.Select("max_folder_to_check_with_push", fetchingMailSettingsBuilder$$ExternalSyntheticLambda0, themeSizesKt$$ExternalSyntheticLambda0, themeSizesKt$$ExternalSyntheticLambda02, true, selectOption, fetchingMailSettingsOptionsMapper.maxFolderToCheckWithPushOptions));
                int i7 = 24;
                arrayList.add(new SettingValue.Select("refresh_idle_connection", new FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(fetchingMailSettingsBuilder, 10), new ThemeSizesKt$$ExternalSyntheticLambda0(i7), new ThemeSizesKt$$ExternalSyntheticLambda0(i7), true, fetchingMailSettingsContract$State.refreshIdleConnection, fetchingMailSettingsOptionsMapper.refreshIdleConnectionOptions));
                rememberedValue = Okio.toImmutableList(arrayList);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                i3 = i4;
            }
            ImmutableList immutableList = (ImmutableList) rememberedValue;
            String stringResource = Operation$State.stringResource(gapComposer, R.string.account_settings_push_advanced_title);
            String str = fetchingMailSettingsContract$State.subtitle;
            boolean z2 = i5 == 32;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ChangelogScreenKt$$ExternalSyntheticLambda7(3, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function12 = (Function1) rememberedValue2;
            boolean z3 = i5 == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z3 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(29, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            SettingViewProvider$ComposeDefaultImpls.SettingView$default(stringResource, immutableList, function12, (Function0) rememberedValue3, str, null, dialogSettingViewProvider, gapComposer, (i3 & 57344) | ((i3 << 15) & 29360128), 64);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) fetchingMailSettingsContract$State, (Function) function1, (Object) dialogSettingViewProvider, (Object) fetchingMailSettingsBuilder, modifier2, i, 10);
        }
    }

    public static final void CustomItem(SettingDecoration$Custom settingDecoration$Custom, Composer composer, int i) {
        int i2;
        settingDecoration$Custom.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2010160523);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(settingDecoration$Custom) : gapComposer.changedInstance(settingDecoration$Custom) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i & 48;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 |= gapComposer.changed(companion) ? 32 : 16;
        }
        int i4 = 3;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            settingDecoration$Custom.customUi.invoke(companion, gapComposer, Integer.valueOf((i2 >> 3) & 14));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyListItemProviderImpl$$ExternalSyntheticLambda0(i, i4, settingDecoration$Custom);
        }
    }

    public static final void FolderList(DisplayTreeFolder displayTreeFolder, DisplayFolder displayFolder, Function1 function1, boolean z, Modifier modifier, boolean z2, Composer composer, int i) {
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(306553612);
        int i2 = i | (gapComposer.changedInstance(displayTreeFolder) ? 4 : 2) | (gapComposer.changed(displayFolder) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changed(modifier) ? 16384 : 8192) | (gapComposer.changed(z2) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new FolderNameFormatter(resources);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            FolderNameFormatter folderNameFormatter = (FolderNameFormatter) rememberedValue;
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
            Modifier then = modifier.then(SizeKt.FillWholeMaxWidth);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(1, 0.0f);
            boolean changedInstance = ((i2 & 14) == 4 || gapComposer.changedInstance(displayTreeFolder)) | ((i2 & 112) == 32) | ((i2 & 896) == 256) | ((i2 & 7168) == 2048) | gapComposer.changedInstance(folderNameFormatter) | ((i2 & 458752) == 131072);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1 textFieldPointerModifier_commonKt$$ExternalSyntheticLambda1 = new TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1(displayTreeFolder, displayFolder, function1, z, folderNameFormatter, z2);
                gapComposer.updateRememberedValue(textFieldPointerModifier_commonKt$$ExternalSyntheticLambda1);
                rememberedValue2 = textFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;
            }
            ActionBar.LazyColumn(0, 504, null, null, null, m213PaddingValuesYgX7TsA$default, rememberLazyListState, gapComposer, null, then, (Function1) rememberedValue2, false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FolderListKt$$ExternalSyntheticLambda1(displayTreeFolder, displayFolder, function1, z, modifier, z2, i);
        }
    }

    public static final void LeadingElements(boolean z, MessageItemLeadingConfiguration messageItemLeadingConfiguration, Function0 function0, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1326205565);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(messageItemLeadingConfiguration) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(2.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            FillElement fillElement = SizeKt.FillWholeMaxHeight;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            MessageBadgeStyle messageBadgeStyle = messageItemLeadingConfiguration.badgeStyle;
            int i4 = messageBadgeStyle == null ? -1 : MessageItemKt$WhenMappings.$EnumSwitchMapping$0[messageBadgeStyle.ordinal()];
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i4 == -1) {
                gapComposer.startReplaceGroup(-50510380);
                OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 14.0f));
                gapComposer.end(false);
            } else if (i4 == 1) {
                gapComposer.startReplaceGroup(-50513576);
                AtomicFU.NewMessageBadge(null, gapComposer, 0);
                gapComposer.end(false);
            } else {
                if (i4 != 2) {
                    throw ViewSizeResolver.CC.m(gapComposer, -50515640, false);
                }
                gapComposer.startReplaceGroup(-50511717);
                AtomicFU.UnreadMessageBadge(null, gapComposer, 0);
                gapComposer.end(false);
            }
            CrossfadeKt.AnimatedContent(Boolean.valueOf(z), null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(1560460842, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(5, function0, messageItemLeadingConfiguration), gapComposer), gapComposer, (i2 & 14) | 1572864, 62);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda12(z, messageItemLeadingConfiguration, function0, modifier2, i);
        }
    }

    public static final void MessageItem(final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, final String str, final String str2, final MessageItemConfiguration messageItemConfiguration, final Modifier modifier, final MessageItemColors messageItemColors, final boolean z, final PaddingValuesImpl paddingValuesImpl, final Function0 function0, final Function0 function02, final Function0 function03, final Function1 function1, Composer composer, final int i, final int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl3;
        String str3;
        boolean z2;
        int i4;
        GapComposer gapComposer;
        messageItemConfiguration.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(338418992);
        if ((i & 6) == 0) {
            i3 = (gapComposer2.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            composableLambdaImpl3 = composableLambdaImpl2;
            i3 |= gapComposer2.changedInstance(composableLambdaImpl3) ? 32 : 16;
        } else {
            composableLambdaImpl3 = composableLambdaImpl2;
        }
        if ((i & 384) == 0) {
            str3 = str;
            i3 |= gapComposer2.changed(str3) ? 256 : 128;
        } else {
            str3 = str;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.changed(str2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= (32768 & i) == 0 ? gapComposer2.changed(messageItemConfiguration) : gapComposer2.changedInstance(messageItemConfiguration) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer2.changed(modifier) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= (2097152 & i) == 0 ? gapComposer2.changed(messageItemColors) : gapComposer2.changedInstance(messageItemColors) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            z2 = z;
            i3 |= gapComposer2.changed(z2) ? 8388608 : 4194304;
        } else {
            z2 = z;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer2.changed(paddingValuesImpl) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i3 |= gapComposer2.changedInstance(function0) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer2.changedInstance(function02) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer2.changedInstance(function03) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= gapComposer2.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer2.shouldExecute(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 147) == 146) ? false : true)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
            }
            gapComposer2.endDefaults();
            gapComposer = gapComposer2;
            MathKt.m983Surface_UMDTes(ImageKt.m138combinedClickablehoGz1lA$default(modifier, function02, function0, 239).then(ClipKt.drawWithCache(Modifier.Companion.$$INSTANCE, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(7, ((ThemeColorScheme) gapComposer2.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).outlineVariant))), null, messageItemColors.containerColor, messageItemColors.contentColor, 0.0f, Expect_jvmKt.rememberComposableLambda(1143363507, new AlertDialogKt$$ExternalSyntheticLambda1(paddingValuesImpl, z2, messageItemConfiguration, function03, str2, composableLambdaImpl, str3, composableLambdaImpl3, function1), gapComposer), gapComposer, 196608, 18);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: net.thunderbird.feature.mail.message.list.ui.component.organism.MessageItemKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    ByteStreamsKt.MessageItem(ComposableLambdaImpl.this, composableLambdaImpl2, str, str2, messageItemConfiguration, modifier, messageItemColors, z, paddingValuesImpl, function0, function02, function03, function1, (Composer) obj, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void MessageListItem(MessageItemUi messageItemUi, boolean z, MessageListPreferences messageListPreferences, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Composer composer, int i) {
        long j = messageItemUi.account.color;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1565012486);
        int i2 = i | (gapComposer.changed(messageItemUi) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changed(messageListPreferences) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536) | (gapComposer.changedInstance(function03) ? 1048576 : 524288) | (gapComposer.changedInstance(function04) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            int ordinal = messageItemUi.state.ordinal();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(738457671);
                MessageItemAccountIndicator messageItemAccountIndicator = z ? new MessageItemAccountIndicator(j) : null;
                boolean z2 = (i2 & 29360128) == 8388608;
                Object rememberedValue = gapComposer.rememberedValue();
                if (z2 || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new AppBarKt$$ExternalSyntheticLambda0(7, function04);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                int i3 = i2 >> 3;
                CloseableKt.NewMessageItem(messageItemUi, messageListPreferences, messageItemAccountIndicator, function0, function02, function03, (Function1) rememberedValue, TestTagKt.testTag(modifier, "NewMessageListItem_Root"), gapComposer, (i2 & 14) | (i3 & 112) | (i3 & 7168) | (i3 & 57344) | (i3 & 458752));
                gapComposer.end(false);
            } else if (ordinal == 1) {
                gapComposer.startReplaceGroup(738476329);
                MessageItemAccountIndicator messageItemAccountIndicator2 = z ? new MessageItemAccountIndicator(j) : null;
                boolean z3 = (i2 & 29360128) == 8388608;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z3 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new AppBarKt$$ExternalSyntheticLambda0(8, function04);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                int i4 = i2 >> 3;
                CacheControl.Companion.ReadMessageItem(messageItemUi, messageListPreferences, messageItemAccountIndicator2, function0, function02, function03, (Function1) rememberedValue2, TestTagKt.testTag(modifier, "ReadMessageListItem_Root"), gapComposer, (i2 & 14) | (i4 & 112) | (i4 & 7168) | (i4 & 57344) | (i4 & 458752), 0);
                gapComposer.end(false);
            } else {
                if (ordinal != 2) {
                    throw ViewSizeResolver.CC.m(gapComposer, 738457055, false);
                }
                gapComposer.startReplaceGroup(738495117);
                MessageItemAccountIndicator messageItemAccountIndicator3 = z ? new MessageItemAccountIndicator(j) : null;
                boolean z4 = (i2 & 29360128) == 8388608;
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z4 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new AppBarKt$$ExternalSyntheticLambda0(9, function04);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                int i5 = i2 & 14;
                int i6 = i2 >> 3;
                Cookie.Companion.UnreadMessageItem(messageItemUi, messageListPreferences, messageItemAccountIndicator3, function0, function02, function03, (Function1) rememberedValue3, TestTagKt.testTag(modifier, "UnreadMessageListItem_Root"), gapComposer, (i6 & 458752) | i5 | (i6 & 112) | (i6 & 7168) | (i6 & 57344), 0);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AccountSetupCompositionKt$$ExternalSyntheticLambda3(messageItemUi, z, messageListPreferences, modifier, function0, function02, function03, function04, i);
        }
    }

    public static final Object[] access$insertEntryAtIndex(Object[] objArr, int i, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i + 2, i, objArr.length);
        objArr2[i] = obj;
        objArr2[i + 1] = obj2;
        return objArr2;
    }

    public static final Object[] access$removeEntryAtIndex(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i, i + 2, objArr.length);
        return objArr2;
    }

    public static void appendQueryParameterIfNotNull(Uri.Builder builder, String str, Object obj) {
        if (obj == null || obj.toString() == null) {
            return;
        }
        builder.appendQueryParameter(str, obj.toString());
    }

    public static final void binds(KoinDefinition koinDefinition, KClass[] kClassArr) {
        String str;
        SingleInstanceFactory singleInstanceFactory = koinDefinition.factory;
        BeanDefinition beanDefinition = singleInstanceFactory.beanDefinition;
        List list = beanDefinition.secondaryTypes;
        ArrayList arrayList = new ArrayList(list.size() + kClassArr.length);
        arrayList.addAll(list);
        CollectionsKt.addAll(arrayList, kClassArr);
        beanDefinition.secondaryTypes = arrayList;
        for (KClass kClass : kClassArr) {
            Qualifier qualifier = beanDefinition.qualifier;
            Qualifier qualifier2 = beanDefinition.scopeQualifier;
            StringBuilder sb = new StringBuilder();
            sb.append(KClassExtKt.getFullName(kClass));
            sb.append(':');
            if (qualifier == null || (str = qualifier.getValue()) == null) {
                str = "";
            }
            sb.append(str);
            sb.append(':');
            sb.append(qualifier2);
            koinDefinition.module.mappings.put(sb.toString(), singleInstanceFactory);
        }
    }

    public static void buildWhereClause(SearchConditionTreeNode searchConditionTreeNode, StringBuilder sb, ArrayList arrayList) {
        if (searchConditionTreeNode == null) {
            sb.append(DiskLruCache.VERSION);
            return;
        }
        SearchConditionTreeNode.Operator operator = searchConditionTreeNode.operator;
        SearchConditionTreeNode searchConditionTreeNode2 = searchConditionTreeNode.right;
        SearchConditionTreeNode searchConditionTreeNode3 = searchConditionTreeNode.left;
        if (searchConditionTreeNode3 != null || searchConditionTreeNode2 != null) {
            if (operator == SearchConditionTreeNode.Operator.NOT) {
                sb.append("NOT (");
                buildWhereClause(searchConditionTreeNode3, sb, arrayList);
                sb.append(")");
                return;
            }
            sb.append("(");
            buildWhereClause(searchConditionTreeNode3, sb, arrayList);
            sb.append(") ");
            sb.append(operator.name());
            sb.append(" (");
            buildWhereClause(searchConditionTreeNode2, sb, arrayList);
            sb.append(")");
            return;
        }
        SearchCondition searchCondition = searchConditionTreeNode.condition;
        if (searchCondition == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Leaf node missing condition");
            return;
        }
        String str = searchCondition.value;
        SearchAttribute searchAttribute = searchCondition.attribute;
        MessageSearchField messageSearchField = (MessageSearchField) searchCondition.field;
        if (messageSearchField.fieldType == SearchFieldType.CUSTOM) {
            if (searchAttribute != SearchAttribute.CONTAINS) {
                UriKt$$ExternalSyntheticBUOutline0.m("Custom fields only support CONTAINS");
                return;
            }
            String str2 = messageSearchField.customQueryTemplate;
            if (str2 != null) {
                str2.getClass();
                if (str2.length() != 0) {
                    sb.append(messageSearchField.customQueryTemplate);
                    arrayList.add(str);
                    return;
                }
            }
            UriKt$$ExternalSyntheticBUOutline0.m("Custom field has no query template!");
            return;
        }
        sb.append(messageSearchField.fieldName);
        sb.append(" ");
        int ordinal = searchAttribute.ordinal();
        if (ordinal == 0) {
            sb.append("LIKE ?");
            str = "%" + str + "%";
        } else if (ordinal != 1) {
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            } else if (messageSearchField.fieldType == SearchFieldType.NUMBER) {
                sb.append("!= ?");
            } else {
                sb.append("NOT LIKE ?");
            }
        } else if (messageSearchField.fieldType == SearchFieldType.NUMBER) {
            sb.append("= ?");
        } else {
            sb.append("LIKE ?");
        }
        arrayList.add(str);
    }

    public static final long copyTo(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        int read = inputStream.read(bArr);
        long j = 0;
        while (read >= 0) {
            outputStream.write(bArr, 0, read);
            j += read;
            read = inputStream.read(bArr);
        }
        return j;
    }

    public static String formUrlEncode(HashMap hashMap) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            StringBuilder sb = new StringBuilder();
            sb.append((String) entry.getKey());
            sb.append("=");
            String str = (String) entry.getValue();
            str.getClass();
            try {
                sb.append(URLEncoder.encode(str, "utf-8"));
                arrayList.add(sb.toString());
            } catch (UnsupportedEncodingException unused) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unable to encode using UTF-8");
                return null;
            }
        }
        return TextUtils.join("&", arrayList);
    }

    public static ThemeColorScheme getColors(Composer composer) {
        return (ThemeColorScheme) ((GapComposer) composer).consume(ThemeColorSchemeKt.LocalThemeColorScheme);
    }

    public static ThemeSpacings getSpacings(Composer composer) {
        return (ThemeSpacings) ((GapComposer) composer).consume(ThemeSpacingsKt.LocalThemeSpacings);
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static String normalizeUnicode(String str) {
        char charAt;
        if (str == null) {
            return null;
        }
        try {
            str = IDN.toUnicode(str);
        } catch (IllegalArgumentException unused) {
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        while (length > 0 && ((charAt = str.charAt(i)) < 'A' || charAt > 'Z')) {
            i++;
            length--;
        }
        if (length <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append((CharSequence) str, 0, i);
        while (length > 0) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 'A' || charAt2 > 'Z') {
                sb.append(charAt2);
            } else {
                sb.append((char) (charAt2 + ' '));
            }
            i++;
            length--;
        }
        return sb.toString();
    }

    public static final KSerializer parametrizedSerializerOrNull(KClass kClass, ArrayList arrayList, Function0 function0) {
        KSerializer hashSetSerializer;
        KSerializer referenceArraySerializer;
        KSerializer contextualSerializer;
        kClass.getClass();
        if (kClass.equals(Reflection.getOrCreateKotlinClass(Collection.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(List.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(List.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(ArrayList.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 1);
        } else if (kClass.equals(Reflection.getOrCreateKotlinClass(HashSet.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 0);
        } else if (kClass.equals(Reflection.getOrCreateKotlinClass(Set.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(Set.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(LinkedHashSet.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 2);
        } else if (kClass.equals(Reflection.getOrCreateKotlinClass(HashMap.class))) {
            hashSetSerializer = new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), 0);
        } else if (kClass.equals(Reflection.getOrCreateKotlinClass(Map.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(Map.class)) || kClass.equals(Reflection.getOrCreateKotlinClass(LinkedHashMap.class))) {
            hashSetSerializer = new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), 1);
        } else {
            if (kClass.equals(Reflection.getOrCreateKotlinClass(Map.Entry.class))) {
                KSerializer kSerializer = (KSerializer) arrayList.get(0);
                KSerializer kSerializer2 = (KSerializer) arrayList.get(1);
                kSerializer.getClass();
                kSerializer2.getClass();
                contextualSerializer = new PairSerializer(kSerializer, kSerializer2, 1);
            } else {
                if (kClass.equals(Reflection.getOrCreateKotlinClass(Pair.class))) {
                    KSerializer kSerializer3 = (KSerializer) arrayList.get(0);
                    KSerializer kSerializer4 = (KSerializer) arrayList.get(1);
                    kSerializer3.getClass();
                    kSerializer4.getClass();
                    referenceArraySerializer = new PairSerializer(kSerializer3, kSerializer4, 0);
                } else if (kClass.equals(Reflection.getOrCreateKotlinClass(Triple.class))) {
                    KSerializer kSerializer5 = (KSerializer) arrayList.get(0);
                    KSerializer kSerializer6 = (KSerializer) arrayList.get(1);
                    KSerializer kSerializer7 = (KSerializer) arrayList.get(2);
                    kSerializer5.getClass();
                    kSerializer6.getClass();
                    kSerializer7.getClass();
                    contextualSerializer = new ContextualSerializer(kSerializer5, kSerializer6, kSerializer7);
                } else if (Handshake.Companion.getJavaClass(kClass).isArray()) {
                    Object invoke = function0.invoke();
                    invoke.getClass();
                    KSerializer kSerializer8 = (KSerializer) arrayList.get(0);
                    kSerializer8.getClass();
                    referenceArraySerializer = new ReferenceArraySerializer((KClass) invoke, kSerializer8);
                } else {
                    hashSetSerializer = null;
                }
                hashSetSerializer = referenceArraySerializer;
            }
            hashSetSerializer = contextualSerializer;
        }
        if (hashSetSerializer != null) {
            return hashSetSerializer;
        }
        KSerializer[] kSerializerArr = (KSerializer[]) arrayList.toArray(new KSerializer[0]);
        return TuplesKt.constructSerializerForGivenTypeArgs(kClass, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    public static final KSerializer serializer(KClass kClass) {
        kClass.getClass();
        KSerializer serializerOrNull = serializerOrNull(kClass);
        if (serializerOrNull != null) {
            return serializerOrNull;
        }
        TuplesKt.serializerNotRegistered(kClass);
        throw null;
    }

    public static final KSerializer serializerOrNull(KClass kClass) {
        kClass.getClass();
        KSerializer constructSerializerForGivenTypeArgs = TuplesKt.constructSerializerForGivenTypeArgs(kClass, new KSerializer[0]);
        return constructSerializerForGivenTypeArgs == null ? (KSerializer) PrimitivesKt.BUILTIN_SERIALIZERS.get(kClass) : constructSerializerForGivenTypeArgs;
    }

    public static final ArrayList serializersForParameters(SerialModuleImpl serialModuleImpl, List list, boolean z) {
        serialModuleImpl.getClass();
        list.getClass();
        if (!z) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                KSerializer serializerOrNull = serializerOrNull(serialModuleImpl, (KType) it.next());
                if (serializerOrNull == null) {
                    return null;
                }
                arrayList.add(serializerOrNull);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            KType kType = (KType) it2.next();
            kType.getClass();
            KSerializer serializerByKTypeImpl$SerializersKt__SerializersKt = CloseableKt.serializerByKTypeImpl$SerializersKt__SerializersKt(serialModuleImpl, kType, true);
            if (serializerByKTypeImpl$SerializersKt__SerializersKt == null) {
                TuplesKt.serializerNotRegistered(TuplesKt.kclass(kType));
                throw null;
            }
            arrayList2.add(serializerByKTypeImpl$SerializersKt__SerializersKt);
        }
        return arrayList2;
    }

    public static final KSerializer serializerOrNull(SerialModuleImpl serialModuleImpl, KType kType) {
        serialModuleImpl.getClass();
        kType.getClass();
        return CloseableKt.serializerByKTypeImpl$SerializersKt__SerializersKt(serialModuleImpl, kType, false);
    }
}
