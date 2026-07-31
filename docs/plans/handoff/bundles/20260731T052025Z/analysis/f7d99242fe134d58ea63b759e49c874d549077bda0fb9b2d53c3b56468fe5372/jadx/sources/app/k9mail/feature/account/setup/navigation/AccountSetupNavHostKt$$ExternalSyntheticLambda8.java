package app.k9mail.feature.account.setup.navigation;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavHostController;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountViewModel;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemLeadingConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageItemAvatarCircleColors;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda8 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda8(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        long j;
        long Color;
        long Color2;
        long Color3;
        int i = this.$r8$classId;
        Object obj5 = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj6 = this.f$0;
        Object obj7 = this.f$1;
        switch (i) {
            case 0:
                Function1 function1 = (Function1) obj6;
                NavHostController navHostController = (NavHostController) obj7;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changed = gapComposer.changed(function1);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj5) {
                    rememberedValue = new MonotonicFrameClockKt$withFrameMillis$2(2, function1);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function1 function12 = (Function1) rememberedValue;
                boolean changedInstance = gapComposer.changedInstance(navHostController);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == obj5) {
                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController, 19);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function0 = (Function0) rememberedValue2;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    CreateAccountViewModel createAccountViewModel = (CreateAccountViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(CreateAccountViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue3 == obj5) {
                        rememberedValue3 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    CreateAccountScreenKt.CreateAccountScreen(function12, function0, createAccountViewModel, (BrandNameProvider) rememberedValue3, null, gapComposer, 512);
                    break;
                }
            case 1:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OAuthBearer.AccountSetupNavHost((Function0) obj6, (DI$$ExternalSyntheticLambda0) obj7, false, (Composer) obj3, 0, 4);
                break;
            case 2:
                NoOpOnboardingMigrationManager noOpOnboardingMigrationManager = (NoOpOnboardingMigrationManager) obj6;
                NavHostController navHostController2 = (NavHostController) obj7;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj3);
                boolean changedInstance2 = gapComposer2.changedInstance(noOpOnboardingMigrationManager) | gapComposer2.changedInstance(navHostController2);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changedInstance2 || rememberedValue4 == obj5) {
                    rememberedValue4 = new Regex$$ExternalSyntheticLambda1(12, noOpOnboardingMigrationManager, navHostController2);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function02 = (Function0) rememberedValue4;
                boolean changedInstance3 = gapComposer2.changedInstance(navHostController2);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue5 == obj5) {
                    rememberedValue5 = new NavController$$ExternalSyntheticLambda0(navHostController2, 21);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                Function0 function03 = (Function0) rememberedValue5;
                Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed3 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope2);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changed3 || rememberedValue6 == obj5) {
                    rememberedValue6 = ViewSizeResolver.CC.m(AppNameProvider.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                AppNameProvider appNameProvider = (AppNameProvider) rememberedValue6;
                Scope currentKoinScope3 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed4 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope3);
                Object rememberedValue7 = gapComposer2.rememberedValue();
                if (changed4 || rememberedValue7 == obj5) {
                    rememberedValue7 = ViewSizeResolver.CC.m(NoOpOnboardingMigrationManager.class, currentKoinScope3, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                WelcomeScreenKt.WelcomeScreen(function02, function03, appNameProvider, (NoOpOnboardingMigrationManager) rememberedValue7, null, gapComposer2, 0);
                break;
            case 3:
                NavHostController navHostController3 = (NavHostController) obj7;
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj6;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer3 = (GapComposer) ((Composer) obj3);
                boolean changedInstance4 = gapComposer3.changedInstance(navHostController3);
                Object rememberedValue8 = gapComposer3.rememberedValue();
                if (changedInstance4 || rememberedValue8 == obj5) {
                    rememberedValue8 = new NavController$$ExternalSyntheticLambda0(navHostController3, 27);
                    gapComposer3.updateRememberedValue(rememberedValue8);
                }
                Function0 function04 = (Function0) rememberedValue8;
                boolean changedInstance5 = gapComposer3.changedInstance(navHostController3) | gapComposer3.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                Object rememberedValue9 = gapComposer3.rememberedValue();
                if (changedInstance5 || rememberedValue9 == obj5) {
                    rememberedValue9 = new DI$$ExternalSyntheticLambda0(15, navHostController3, featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                    gapComposer3.updateRememberedValue(rememberedValue9);
                }
                OAuthBearer.AccountSetupNavHost(function04, (Function1) rememberedValue9, false, gapComposer3, 384, 0);
                break;
            case 4:
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda22 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj6;
                MutableState mutableState = (MutableState) obj7;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer4 = (GapComposer) ((Composer) obj3);
                boolean changed5 = gapComposer4.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda22) | gapComposer4.changed(mutableState);
                Object rememberedValue10 = gapComposer4.rememberedValue();
                if (changed5 || rememberedValue10 == obj5) {
                    rememberedValue10 = new Regex$$ExternalSyntheticLambda1(13, featureLauncherNavHostKt$$ExternalSyntheticLambda22, mutableState);
                    gapComposer4.updateRememberedValue(rememberedValue10);
                }
                Utf8.SafeProcessor.PermissionsScreen(null, null, (Function0) rememberedValue10, gapComposer4, 0);
                break;
            case 5:
                Function0 function05 = (Function0) obj6;
                MessageItemLeadingConfiguration messageItemLeadingConfiguration = (MessageItemLeadingConfiguration) obj7;
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                if ((intValue & 48) == 0) {
                    intValue |= ((GapComposer) composer).changed(booleanValue) ? 32 : 16;
                }
                GapComposer gapComposer5 = (GapComposer) composer;
                if (!gapComposer5.shouldExecute(intValue & 1, (intValue & 145) != 144)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else if (!booleanValue) {
                    if (messageItemLeadingConfiguration.avatar == null) {
                        gapComposer5.startReplaceGroup(659316910);
                        gapComposer5.end(false);
                        break;
                    } else {
                        gapComposer5.startReplaceGroup(659305472);
                        Avatar avatar = messageItemLeadingConfiguration.avatar;
                        Color color = messageItemLeadingConfiguration.avatarColor;
                        if (color == null) {
                            gapComposer5.startReplaceGroup(659312540);
                            j = ((ThemeColorScheme) gapComposer5.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).secondaryContainer;
                            gapComposer5.end(false);
                        } else {
                            gapComposer5.startReplaceGroup(659311114);
                            gapComposer5.end(false);
                            j = color.value;
                        }
                        Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), 0.15f, Color.m485getColorSpaceimpl(j));
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
                        MessageBodyContentKt.MessageItemAvatarCircle(avatar, new MessageItemAvatarCircleColors(j, Color, ColorSchemeKt.m341contentColorForek8zF_U(j, gapComposer5)), function05, null, false, gapComposer5, 0);
                        gapComposer5.end(false);
                        break;
                    }
                } else {
                    gapComposer5.startReplaceGroup(-1036989853);
                    ImageVector imageVector = Icons$Outlined.Check;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeColorSchemeKt.LocalThemeColorScheme;
                    long j2 = ((ThemeColorScheme) gapComposer5.consume(staticProvidableCompositionLocal2)).secondaryContainer;
                    long m341contentColorForek8zF_U = ColorSchemeKt.m341contentColorForek8zF_U(((ThemeColorScheme) gapComposer5.consume(staticProvidableCompositionLocal2)).secondaryContainer, gapComposer5);
                    long j3 = Color.Unspecified;
                    ColorScheme colorScheme = (ColorScheme) gapComposer5.consume(ColorSchemeKt.LocalColorScheme);
                    IconButtonColors iconButtonColors = colorScheme.defaultFilledIconButtonColorsCached;
                    if (iconButtonColors == null) {
                        long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.ContainerColor$5);
                        long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.Color$1);
                        Color2 = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), ListTokens.DisabledContainerOpacity$3, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledContainerColor$3)));
                        Color3 = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), ListTokens.DisabledOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledColor)));
                        iconButtonColors = new IconButtonColors(fromToken, fromToken2, Color2, Color3);
                        colorScheme.defaultFilledIconButtonColorsCached = iconButtonColors;
                    }
                    ButtonIconColors buttonIconColors = IntRectKt.toButtonIconColors(iconButtonColors.m343copyjRlVdoo(j2, m341contentColorForek8zF_U, j3, j3));
                    ((ThemeSizes) gapComposer5.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 48.0f);
                    ((ThemeSpacings) gapComposer5.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    IntRectKt.ButtonIcon(function05, imageVector, OffsetKt.m218padding3ABfNKs(m234size3ABfNKs, 4.0f), false, null, buttonIconColors, gapComposer5, 0, 24);
                    gapComposer5.end(false);
                    break;
                }
            case 6:
                Function1 function13 = (Function1) obj6;
                Function0 function06 = (Function0) obj7;
                boolean z = true;
                ImmutableSet immutableSet = (ImmutableSet) obj2;
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                immutableSet.getClass();
                if ((intValue2 & 48) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(immutableSet) ? 32 : 16;
                }
                if ((intValue2 & 145) == 144) {
                    z = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer2;
                if (!gapComposer6.shouldExecute(intValue2 & 1, z)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else if (!immutableSet.isEmpty()) {
                    gapComposer6.startReplaceGroup(611299592);
                    InAppNotificationHostKt.BannerInlineNotificationListHostLayout(((intValue2 >> 3) & 14) | 3072, gapComposer6, SizeKt.FillWholeMaxWidth, function06, function13, immutableSet);
                    gapComposer6.end(false);
                    break;
                } else {
                    gapComposer6.startReplaceGroup(611585970);
                    gapComposer6.end(false);
                    break;
                }
            default:
                ImmutableSet immutableSet2 = (ImmutableSet) obj7;
                final Function1 function14 = (Function1) obj6;
                final int intValue3 = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue4 & 48) == 0) {
                    intValue4 |= ((GapComposer) composer3).changed(intValue3) ? 32 : 16;
                }
                GapComposer gapComposer7 = (GapComposer) composer3;
                if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    final BannerInlineVisual bannerInlineVisual = (BannerInlineVisual) CollectionsKt.elementAt(immutableSet2, intValue3);
                    BannerInlineNotificationCardKt.ErrorBannerInlineNotificationCard(bannerInlineVisual.title, bannerInlineVisual.supportingText, Expect_jvmKt.rememberComposableLambda(-780627094, new Function3() { // from class: net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj8, Object obj9, Object obj10) {
                            Composer composer4 = (Composer) obj9;
                            int intValue5 = ((Integer) obj10).intValue();
                            ((RowScope) obj8).getClass();
                            int i2 = 0;
                            GapComposer gapComposer8 = (GapComposer) composer4;
                            if (gapComposer8.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                for (Object obj11 : BannerInlineVisual.this.actions) {
                                    int i3 = i2 + 1;
                                    if (i2 < 0) {
                                        IntOffsetKt.throwIndexOverflow();
                                        throw null;
                                    }
                                    DialogProperties dialogProperties = ErrorNotificationsDialogDefaults.defaultProperties;
                                    CharsKt__CharKt.ResolvedNotificationActionButton((NotificationAction) obj11, function14, TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "error_notifications_dialog_banner_inline_notification_list_item_action_" + intValue3 + "_" + i2), gapComposer8, 8);
                                    i2 = i3;
                                }
                            } else {
                                gapComposer8.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer7), null, BannerInlineNotificationCardBehaviour.Expanded, null, gapComposer7, 24960, 40);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda8(int i, Object obj, Function1 function1) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$0 = function1;
    }
}
