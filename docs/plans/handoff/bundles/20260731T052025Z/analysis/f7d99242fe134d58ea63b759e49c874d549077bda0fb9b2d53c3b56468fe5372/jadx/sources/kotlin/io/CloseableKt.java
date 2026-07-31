package kotlin.io;

import android.os.Build;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.webkit.internal.WebSettingsNoOpAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;
import app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.view.MessageWebView;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeVariants;
import net.thunderbird.core.ui.compose.theme2.ThemeConfig;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeImageVariants;
import net.thunderbird.core.ui.compose.theme2.ThemeImagesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.core.ui.compose.theme2.p001default.DefaultThemeSizesKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageConversationCounterBadgeColor;
import net.thunderbird.feature.mail.message.list.ui.component.organism.MessageItemColors;
import net.thunderbird.feature.mail.message.list.ui.component.organism.NewMessageItemKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.ui.component.organism.NewMessageItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.mail.message.list.ui.component.organism.NewMessageItemKt$$ExternalSyntheticLambda2;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda5;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.Options;
import org.apache.hc.core5.util.Tokenizer$$ExternalSyntheticLambda1;
import org.apache.james.mime4j.dom.address.DomainList;
import org.apache.james.mime4j.dom.address.Mailbox;
import org.apache.james.mime4j.field.address.ASTaddr_spec;
import org.apache.james.mime4j.field.address.ASTangle_addr;
import org.apache.james.mime4j.field.address.ASTdomain;
import org.apache.james.mime4j.field.address.ASTlocal_part;
import org.apache.james.mime4j.field.address.ASTroute;
import org.apache.james.mime4j.field.address.SimpleNode;
import org.apache.james.mime4j.field.address.Token;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.Koin;
import org.koin.core.context.GlobalContext;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CloseableKt {
    public static final void AccountSettingList(final Function0 function0, final Function0 function02, final Function0 function03, final boolean z, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        function03.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-461343823);
        int i2 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | (gapComposer.changedInstance(function02) ? 32 : 16) | (gapComposer.changedInstance(function03) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            WindowSizeInfo calculateWindowSizeInfo = Jsoup.calculateWindowSizeInfo(gapComposer);
            final boolean z2 = (Dp.m744compareTo0680j_4(DpSize.m749getWidthD9Ej5fM(calculateWindowSizeInfo.size), DpSize.m748getHeightD9Ej5fM(calculateWindowSizeInfo.size)) > 0) && (calculateWindowSizeInfo.sizeClass.heightSizeClass == WindowHeightSizeClass.Compact);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = OffsetKt.m220paddingVpY3zN4$default(companion, 0.0f, 8.0f, 1).then(SizeKt.FillWholeMaxWidth);
            boolean changed = ((i2 & 14) == 4) | ((i2 & 112) == 32) | gapComposer.changed(z2) | ((i2 & 7168) == 2048) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Function1() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.setting.AccountSettingListKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) obj;
                        lazyGridIntervalContent.getClass();
                        boolean z3 = z2;
                        int i3 = 2;
                        Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z3, i3), new ComposableLambdaImpl(-665560469, new AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8(function02, z, 1), true));
                        int i4 = 3;
                        Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z3, i4), new ComposableLambdaImpl(-1034201452, new TextFieldImplKt$$ExternalSyntheticLambda9(i3, function0), true));
                        Modifier.CC.item$default(lazyGridIntervalContent, new DrawerContentKt$$ExternalSyntheticLambda5(z3, 4), new ComposableLambdaImpl(1925392115, new TextFieldImplKt$$ExternalSyntheticLambda9(i4, function03), true));
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Handshake.Companion.SettingList(0, gapComposer, then, (Function1) rememberedValue);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(function0, function02, function03, z, modifier2, i);
        }
    }

    public static final void ActionTextItem(SettingValue.ActionText actionText, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        actionText.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-332343740);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(actionText) : gapComposer.changedInstance(actionText) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            modifier2 = modifier;
            Cookie.Companion.SettingItemLayout(actionText.onClick, (ImageVector) actionText.icon.invoke(), modifier2, null, Expect_jvmKt.rememberComposableLambda(666053174, new MovableContentKt$$ExternalSyntheticLambda0(10, actionText), gapComposer), gapComposer, ((i2 << 3) & 896) | 24576, 8);
        } else {
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 15, actionText, modifier2);
        }
    }

    public static final void AdvancedFetchingMailSettingsScreen(AccountId accountId, Function0 function0, FetchingMailSettingsViewModel fetchingMailSettingsViewModel, DialogSettingViewProvider dialogSettingViewProvider, FetchingMailSettingsBuilder fetchingMailSettingsBuilder, Composer composer, int i) {
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel2;
        DialogSettingViewProvider dialogSettingViewProvider2;
        FetchingMailSettingsBuilder fetchingMailSettingsBuilder2;
        FetchingMailSettingsBuilder fetchingMailSettingsBuilder3;
        int i2;
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel3;
        DialogSettingViewProvider dialogSettingViewProvider3;
        accountId.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-153267355);
        int i3 = i | (gapComposer.changedInstance(accountId) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 9344;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposer.startDefaults();
            int i5 = i & 1;
            Continuation continuation = null;
            Object obj = Composer.Companion.Empty;
            if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                boolean changedInstance = gapComposer.changedInstance(accountId);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 6);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                FetchingMailSettingsViewModel fetchingMailSettingsViewModel4 = (FetchingMailSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(FetchingMailSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    rememberedValue2 = ViewSizeResolver.CC.m(DialogSettingViewProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                DialogSettingViewProvider dialogSettingViewProvider4 = (DialogSettingViewProvider) rememberedValue2;
                Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope2);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue3 == obj) {
                    rememberedValue3 = ViewSizeResolver.CC.m(FetchingMailSettingsBuilder.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                fetchingMailSettingsBuilder3 = (FetchingMailSettingsBuilder) rememberedValue3;
                i2 = i3 & (-65409);
                fetchingMailSettingsViewModel3 = fetchingMailSettingsViewModel4;
                dialogSettingViewProvider3 = dialogSettingViewProvider4;
            } else {
                gapComposer.skipToGroupEnd();
                dialogSettingViewProvider3 = dialogSettingViewProvider;
                fetchingMailSettingsBuilder3 = fetchingMailSettingsBuilder;
                i2 = i3 & (-65409);
                fetchingMailSettingsViewModel3 = fetchingMailSettingsViewModel;
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(fetchingMailSettingsViewModel3.state, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(fetchingMailSettingsViewModel3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1(fetchingMailSettingsViewModel3, i4);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function1 function1 = (Function1) rememberedValue4;
            Updater.LaunchedEffect(gapComposer, fetchingMailSettingsViewModel3.effect, new Preferences$getAccountsFlow$1(fetchingMailSettingsViewModel3, continuation, function0, 26));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            DebugUtils.BackHandler(false, function0, gapComposer, i2 & 112, 1);
            FetchingMailSettingsContract$State fetchingMailSettingsContract$State = (FetchingMailSettingsContract$State) collectAsStateWithLifecycle.getValue();
            boolean changed3 = gapComposer.changed(function1);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue5 == obj) {
                rememberedValue5 = new ChangelogScreenKt$$ExternalSyntheticLambda7(4, function1);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Function1 function12 = (Function1) rememberedValue5;
            FetchingMailSettingsBuilder fetchingMailSettingsBuilder4 = fetchingMailSettingsBuilder3;
            ByteStreamsKt.AdvancedFetchingMailSettingsContent(fetchingMailSettingsContract$State, function12, dialogSettingViewProvider3, fetchingMailSettingsBuilder4, null, gapComposer, 0);
            fetchingMailSettingsViewModel2 = fetchingMailSettingsViewModel3;
            dialogSettingViewProvider2 = dialogSettingViewProvider3;
            fetchingMailSettingsBuilder2 = fetchingMailSettingsBuilder4;
        } else {
            gapComposer.skipToGroupEnd();
            fetchingMailSettingsViewModel2 = fetchingMailSettingsViewModel;
            dialogSettingViewProvider2 = dialogSettingViewProvider;
            fetchingMailSettingsBuilder2 = fetchingMailSettingsBuilder;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(accountId, function0, fetchingMailSettingsViewModel2, dialogSettingViewProvider2, fetchingMailSettingsBuilder2, i, 16);
        }
    }

    public static final void MainTheme(ThemeConfig themeConfig, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(641436254);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(themeConfig) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            ThemeColorSchemeVariants themeColorSchemeVariants = themeConfig.colors;
            ThemeColorScheme themeColorScheme = z ? themeColorSchemeVariants.dark : themeColorSchemeVariants.light;
            ThemeImageVariants themeImageVariants = themeConfig.images;
            Updater.CompositionLocalProvider(new ProvidedValue[]{ThemeColorSchemeKt.LocalThemeColorScheme.defaultProvidedValue$runtime(themeColorScheme), ThemeElevationsKt.LocalThemeElevations.defaultProvidedValue$runtime(DefaultThemeSizesKt.defaultThemeElevations), ThemeImagesKt.LocalThemeImages.defaultProvidedValue$runtime(z ? themeImageVariants.dark : themeImageVariants.light), ThemeShapesKt.LocalThemeShapes.defaultProvidedValue$runtime(themeConfig.shapes), ThemeSizesKt.LocalThemeSizes.defaultProvidedValue$runtime(DefaultThemeSizesKt.defaultThemeSizes), ThemeSpacingsKt.LocalThemeSpacings.defaultProvidedValue$runtime(DefaultThemeSizesKt.defaultThemeSpacings), ThemeTypographyKt.LocalThemeTypography.defaultProvidedValue$runtime(themeConfig.typography)}, Expect_jvmKt.rememberComposableLambda(1084403486, new SegmentedButtonKt$$ExternalSyntheticLambda4(21, composableLambdaImpl, themeColorScheme, themeConfig), gapComposer), gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda3(themeConfig, z, composableLambdaImpl, i);
        }
    }

    public static final void MessageListFooter(MessageListState messageListState, Function1 function1, Modifier modifier, Composer composer, int i) {
        messageListState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(584566088);
        int i2 = (gapComposer.changed(messageListState) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(modifier.then(SizeKt.FillWholeMaxWidth), 64.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m226height3ABfNKs);
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
            String str = messageListState.getMetadata().footer.text;
            boolean z = (i2 & 112) == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new InAppNotificationHostKt$$ExternalSyntheticLambda4(5, function1);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Util.m1089ButtonTextjM_yU8I(str, (Function0) rememberedValue, null, false, null, null, gapComposer, 0, 60);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(messageListState, function1, modifier, i, 25);
        }
    }

    public static final void NewMessageItem(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, MessageItemAccountIndicator messageItemAccountIndicator, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Modifier modifier, Composer composer, int i) {
        int i2;
        Function1 function12;
        boolean z;
        MessageItemColors messageItemColors;
        int i3;
        function0.getClass();
        function02.getClass();
        function03.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1445971458);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(messageItemUi) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(messageListPreferences) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(messageItemAccountIndicator) : gapComposer.changedInstance(messageItemAccountIndicator) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function03) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changed(modifier) ? 8388608 : 4194304;
        }
        int i4 = i2;
        if (gapComposer.shouldExecute(i4 & 1, (4793491 & i4) != 4793490)) {
            String str = messageItemUi.excerpt;
            String str2 = messageItemUi.formattedReceivedAt;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
            int i5 = i4 & 112;
            MessageItemConfiguration rememberMessageItemConfiguration = Okio.rememberMessageItemConfiguration(messageItemUi, messageListPreferences, new MessageConversationCounterBadgeColor(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onPrimary, null), messageItemAccountIndicator, gapComposer, (i4 & 126) | ((i4 << 3) & 7168));
            boolean z2 = messageItemUi.selected;
            if (z2) {
                gapComposer.startReplaceGroup(1990892889);
                ThemeColorScheme themeColorScheme = (ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal);
                z = z2;
                messageItemColors = new MessageItemColors(themeColorScheme.surfaceContainer, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onSurface);
                i3 = 0;
                gapComposer.end(false);
            } else {
                z = z2;
                if (messageItemUi.active) {
                    gapComposer.startReplaceGroup(1990895319);
                    messageItemColors = new MessageItemColors(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).infoContainer, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onSurface);
                    i3 = 0;
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(1990897428);
                    messageItemColors = new MessageItemColors(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surfaceContainerLowest, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onSurface);
                    i3 = 0;
                    gapComposer.end(false);
                }
            }
            PaddingValuesImpl contentPadding$api = Options.Companion.toContentPadding$api(messageListPreferences.density, gapComposer);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(699105487, new NewMessageItemKt$$ExternalSyntheticLambda0(messageItemUi, messageListPreferences, i3), gapComposer);
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1709400717, new NewMessageItemKt$$ExternalSyntheticLambda1(messageItemUi, messageListPreferences, i3), gapComposer);
            boolean z3 = (i5 == 32) | ((i4 & 3670016) == 1048576);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                function12 = function1;
                rememberedValue = new NewMessageItemKt$$ExternalSyntheticLambda2(messageListPreferences, function12, 0);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                function12 = function1;
            }
            ByteStreamsKt.MessageItem(rememberComposableLambda, rememberComposableLambda2, str, str2, rememberMessageItemConfiguration, modifier, messageItemColors, z, contentPadding$api, function0, function02, function03, (Function1) rememberedValue, gapComposer, (458752 & (i4 >> 6)) | 54 | ((i4 << 18) & 1879048192), (i4 >> 12) & 126);
        } else {
            function12 = function1;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(messageItemUi, messageListPreferences, messageItemAccountIndicator, function0, function02, function03, function12, modifier, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0077, code lost:
    
        if (r7 == androidx.compose.runtime.Composer.Companion.Empty) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ThundermailButtonPanel(kotlin.jvm.functions.Function0 r23, kotlin.jvm.functions.Function0 r24, androidx.compose.ui.Modifier r25, net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider r26, androidx.compose.runtime.Composer r27, int r28) {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.ThundermailButtonPanel(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider, androidx.compose.runtime.Composer, int):void");
    }

    public static void addSpecials(StringBuilder sb, Token token) {
        if (token != null) {
            addSpecials(sb, token.specialToken);
            sb.append(token.image);
        }
    }

    public static Mailbox buildAddrSpec(DomainList domainList, ASTaddr_spec aSTaddr_spec) {
        aSTaddr_spec.jjtGetNumChildren();
        return new Mailbox(null, domainList, buildString((ASTlocal_part) aSTaddr_spec.children[0], true), buildString((ASTdomain) aSTaddr_spec.children[1], true));
    }

    public static Mailbox buildAngleAddr(ASTangle_addr aSTangle_addr) {
        DomainList domainList;
        aSTangle_addr.jjtGetNumChildren();
        int i = 0;
        SimpleNode simpleNode = aSTangle_addr.children[0];
        if (simpleNode instanceof ASTroute) {
            ASTroute aSTroute = (ASTroute) simpleNode;
            ArrayList arrayList = new ArrayList(aSTroute.jjtGetNumChildren());
            int jjtGetNumChildren = aSTroute.jjtGetNumChildren();
            while (i < jjtGetNumChildren) {
                int i2 = i + 1;
                SimpleNode simpleNode2 = aSTroute.children[i];
                if (!(simpleNode2 instanceof ASTdomain)) {
                    Tokenizer$$ExternalSyntheticLambda1.m(simpleNode2, "Address \"domain\" is expected but got \"");
                    return null;
                }
                arrayList.add(buildString((ASTdomain) simpleNode2, true));
                i = i2;
            }
            DomainList domainList2 = new DomainList((List) arrayList);
            simpleNode = aSTangle_addr.children[1];
            domainList = domainList2;
        } else {
            if (!(simpleNode instanceof ASTaddr_spec)) {
                Tokenizer$$ExternalSyntheticLambda1.m(simpleNode, "Address \"route\" or \"addr_spec\" is expected but got \"");
                return null;
            }
            domainList = null;
        }
        if (simpleNode instanceof ASTaddr_spec) {
            return buildAddrSpec(domainList, (ASTaddr_spec) simpleNode);
        }
        Tokenizer$$ExternalSyntheticLambda1.m(simpleNode, "Address \"addr_spec\" is expected but got \"");
        return null;
    }

    public static String buildString(SimpleNode simpleNode, boolean z) {
        Token token = simpleNode.firstToken;
        Token token2 = simpleNode.lastToken;
        StringBuilder sb = new StringBuilder();
        while (token != token2) {
            sb.append(token.image);
            token = token.next;
            if (!z) {
                addSpecials(sb, token.specialToken);
            }
        }
        sb.append(token2.image);
        return sb.toString();
    }

    public static final void checkElementIndex$kotlinx_collections_immutable(int i, int i2) {
        if (i < 0 || i >= i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkPositionIndex$kotlinx_collections_immutable(int i, int i2) {
        if (i < 0 || i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkRangeIndexes$kotlinx_collections_immutable(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            Regex$$ExternalSyntheticBUOutline0.m(i3, Config.CC.m91m("fromIndex: ", i, ", toIndex: ", i2, ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ResultKt.addSuppressed(th, th2);
            }
        }
    }

    public static Object get$default(Class cls) {
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(cls);
        Koin koin = GlobalContext._koin;
        if (koin != null) {
            return koin.scopeRegistry.rootScope.get(orCreateKotlinClass, null, null);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0048, code lost:
    
        if (r7 != null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.KSerializer serializerByKTypeImpl$SerializersKt__SerializersKt(kotlinx.serialization.modules.SerialModuleImpl r6, kotlin.reflect.KType r7, boolean r8) {
        /*
            kotlin.reflect.KClass r0 = kotlinx.serialization.internal.TuplesKt.kclass(r7)
            kotlinx.serialization.internal.KTypeWrapper r7 = (kotlinx.serialization.internal.KTypeWrapper) r7
            boolean r1 = r7.isMarkedNullable()
            java.util.List r7 = r7.getArguments()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r7, r3)
            r2.<init>(r3)
            java.util.Iterator r7 = r7.iterator()
            boolean r3 = r7.hasNext()
            if (r3 != 0) goto Lcc
            boolean r7 = r2.isEmpty()
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
            r4 = 0
            if (r7 == 0) goto L52
            java.lang.Class r7 = okhttp3.Handshake.Companion.getJavaClass(r0)
            boolean r7 = r7.isInterface()
            if (r7 == 0) goto L3e
            kotlinx.serialization.KSerializer r7 = r6.getContextual(r0, r3)
            if (r7 == 0) goto L3e
        L3c:
            r7 = r4
            goto L6f
        L3e:
            kotlinx.serialization.internal.SerializerCache r7 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            if (r1 != 0) goto L4b
            kotlinx.serialization.internal.SerializerCache r7 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            kotlinx.serialization.KSerializer r7 = r7.get(r0)
            if (r7 == 0) goto L3c
            goto L6f
        L4b:
            kotlinx.serialization.internal.SerializerCache r7 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE_NULLABLE
            kotlinx.serialization.KSerializer r7 = r7.get(r0)
            goto L6f
        L52:
            boolean r7 = r6.hasInterfaceContextualSerializers
            if (r7 == 0) goto L57
            goto L3c
        L57:
            kotlinx.serialization.internal.SerializerCache r7 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            if (r1 != 0) goto L62
            kotlinx.serialization.internal.ParametrizedSerializerCache r7 = kotlinx.serialization.SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE
            java.lang.Object r7 = r7.mo949getgIAlus(r0, r2)
            goto L68
        L62:
            kotlinx.serialization.internal.ParametrizedSerializerCache r7 = kotlinx.serialization.SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE
            java.lang.Object r7 = r7.mo949getgIAlus(r0, r2)
        L68:
            boolean r5 = r7 instanceof kotlin.Result.Failure
            if (r5 == 0) goto L6d
            r7 = r4
        L6d:
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7
        L6f:
            if (r7 == 0) goto L72
            return r7
        L72:
            boolean r7 = r2.isEmpty()
            if (r7 == 0) goto L97
            kotlinx.serialization.KSerializer r7 = kotlin.io.ByteStreamsKt.serializerOrNull(r0)
            if (r7 != 0) goto Lc1
            kotlinx.serialization.KSerializer r7 = r6.getContextual(r0, r3)
            if (r7 != 0) goto Lc1
            java.lang.Class r6 = okhttp3.Handshake.Companion.getJavaClass(r0)
            boolean r6 = r6.isInterface()
            if (r6 == 0) goto L95
            kotlinx.serialization.PolymorphicSerializer r6 = new kotlinx.serialization.PolymorphicSerializer
            r6.<init>(r0)
        L93:
            r7 = r6
            goto Lc1
        L95:
            r7 = r4
            goto Lc1
        L97:
            java.util.ArrayList r7 = kotlin.io.ByteStreamsKt.serializersForParameters(r6, r2, r8)
            if (r7 != 0) goto L9e
            goto Lcb
        L9e:
            com.fsck.k9.backend.imap.CommandRefreshFolderList$$ExternalSyntheticLambda1 r8 = new com.fsck.k9.backend.imap.CommandRefreshFolderList$$ExternalSyntheticLambda1
            r3 = 1
            r8.<init>(r3, r2)
            kotlinx.serialization.KSerializer r8 = kotlin.io.ByteStreamsKt.parametrizedSerializerOrNull(r0, r7, r8)
            if (r8 != 0) goto Lc0
            kotlinx.serialization.KSerializer r7 = r6.getContextual(r0, r7)
            if (r7 != 0) goto Lc1
            java.lang.Class r6 = okhttp3.Handshake.Companion.getJavaClass(r0)
            boolean r6 = r6.isInterface()
            if (r6 == 0) goto L95
            kotlinx.serialization.PolymorphicSerializer r6 = new kotlinx.serialization.PolymorphicSerializer
            r6.<init>(r0)
            goto L93
        Lc0:
            r7 = r8
        Lc1:
            if (r7 == 0) goto Lcb
            if (r1 == 0) goto Lca
            kotlinx.serialization.KSerializer r6 = okhttp3.CacheControl.Companion.getNullable(r7)
            return r6
        Lca:
            return r7
        Lcb:
            return r4
        Lcc:
            java.lang.ClassCastException r6 = androidx.camera.core.impl.Config.CC.m(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.serializerByKTypeImpl$SerializersKt__SerializersKt(kotlinx.serialization.modules.SerialModuleImpl, kotlin.reflect.KType, boolean):kotlinx.serialization.KSerializer");
    }

    public static final void setupThemeMode(MessageWebView messageWebView, boolean z) {
        Fragment.AnonymousClass7 webSettingsNoOpAdapter;
        if (OAuthBearer.isFeatureSupported("ALGORITHMIC_DARKENING")) {
            WebSettings settings = messageWebView.getSettings();
            if (!WebViewFeatureInternal.ALGORITHMIC_DARKENING.isSupportedByWebView()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("This method is not supported by the current version of the framework and the current WebView APK");
                return;
            }
            try {
                webSettingsNoOpAdapter = new Fragment.AnonymousClass7((WebSettingsBoundaryInterface) IntOffsetKt.castToSuppLibClass(WebSettingsBoundaryInterface.class, ((WebkitToCompatConverterBoundaryInterface) WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER.INSTANCE.workerFactory).convertSettings(settings)));
            } catch (ClassCastException e) {
                if (Build.VERSION.SDK_INT != 30 || !"android.webkit.WebSettingsWrapper".equals(settings.getClass().getCanonicalName())) {
                    throw e;
                }
                Log.e("WebSettingsCompat", "Error converting WebSettings to Chrome implementation. All AndroidX method calls on this WebSettings instance will be no-op calls. See https://crbug.com/388824130 for more info.", e);
                webSettingsNoOpAdapter = new WebSettingsNoOpAdapter(null);
            }
            webSettingsNoOpAdapter.setAlgorithmicDarkeningAllowed(z);
        }
    }
}
