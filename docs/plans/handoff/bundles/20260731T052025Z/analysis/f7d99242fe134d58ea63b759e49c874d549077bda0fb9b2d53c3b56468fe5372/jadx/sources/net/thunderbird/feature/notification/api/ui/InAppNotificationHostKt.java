package net.thunderbird.feature.notification.api.ui;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda5;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.organism.banner.global.BannerGlobalNotificationCardKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldFabPosition;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.item.ListItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.ImageLoadKt$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.Collection;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.navigation.changelog.api.ChangelogRoute$$ExternalSyntheticLambda0;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.host.DisplayInAppNotificationFlag;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollBehaviour;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import net.thunderbird.feature.notification.impl.inject.NotificationModuleKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;
import net.thunderbird.feature.notification.resources.api.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InAppNotificationHostKt {
    public static final ComposableLambdaImpl lambda$25181172 = new ComposableLambdaImpl(25181172, new ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0(0), false);
    public static final ComposableLambdaImpl lambda$944899621 = new ComposableLambdaImpl(944899621, new NotificationModuleKt$$ExternalSyntheticLambda1(17), false);
    public static final ComposableLambdaImpl lambda$59416341 = new ComposableLambdaImpl(59416341, new NotificationModuleKt$$ExternalSyntheticLambda1(18), false);
    public static final ComposableLambdaImpl lambda$1908229429 = new ComposableLambdaImpl(1908229429, new NotificationModuleKt$$ExternalSyntheticLambda1(19), false);

    public static final void BannerGlobalNotificationHost(InAppNotificationHostStateHolder inAppNotificationHostStateHolder, Function1 function1, Modifier modifier, Composer composer, int i) {
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(418938805);
        int i2 = (gapComposer.changed(inAppNotificationHostStateHolder) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            BannerGlobalVisual bannerGlobalVisual = ((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) Updater.collectAsState(inAppNotificationHostStateHolder.currentInAppNotificationHostState, gapComposer).getValue()).bannerGlobalVisual;
            Modifier testTag = TestTagKt.testTag(modifier, "banner_global_notification_host");
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new KoinModuleKt$$ExternalSyntheticLambda0(25);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CrossfadeKt.AnimatedContent(bannerGlobalVisual, testTag, (Function1) rememberedValue, null, null, null, Expect_jvmKt.rememberComposableLambda(-1859477107, new CoilImageKt$$ExternalSyntheticLambda11(11, function1), gapComposer), gapComposer, 1573248, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(inAppNotificationHostStateHolder, function1, modifier, i, 28);
        }
    }

    public static final void BannerGlobalNotificationHostLayout(BannerGlobalVisual bannerGlobalVisual, Function1 function1, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1904346466);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(bannerGlobalVisual) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            NotificationAction notificationAction = bannerGlobalVisual.action;
            String str = bannerGlobalVisual.message;
            boolean changed = gapComposer.changed(notificationAction);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = Updater.movableContentOf(new ComposableLambdaImpl(251204450, new AboutFragmentKt$$ExternalSyntheticLambda7(19, bannerGlobalVisual, function1), true));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function2 function2 = (Function2) rememberedValue;
            int ordinal = bannerGlobalVisual.severity.ordinal();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (ordinal == 0 || ordinal == 1) {
                gapComposer.startReplaceGroup(-420865105);
                BannerGlobalNotificationCardKt.ErrorBannerGlobalNotificationCard(0, gapComposer, TestTagKt.testTag(companion, "error_banner_global_notification"), str, function2);
                gapComposer.end(false);
            } else {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        gapComposer.startReplaceGroup(-161667249);
                        BannerGlobalNotificationCardKt.WarningBannerGlobalNotificationCard(0, gapComposer, TestTagKt.testTag(companion, "warning_banner_global_notification"), str, function2);
                        gapComposer.end(false);
                    } else if (ordinal != 4) {
                        throw ViewSizeResolver.CC.m(gapComposer, -420867473, false);
                    }
                }
                gapComposer.startReplaceGroup(-161378763);
                BannerGlobalNotificationCardKt.InfoBannerGlobalNotificationCard(0, gapComposer, TestTagKt.testTag(companion, "info_banner_global_notification"), str, function2);
                gapComposer.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(bannerGlobalVisual, function1, modifier2, i, 8);
        }
    }

    public static final void BannerInlineItem(final int i, final BannerInlineVisual bannerInlineVisual, final Function1 function1, Function0 function0, Modifier modifier, Composer composer, int i2) {
        int i3;
        Function0 function02;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1953486359);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(bannerInlineVisual) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function02 = function0;
            i3 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        } else {
            function02 = function0;
        }
        int i4 = i3 | 24576;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            String str = bannerInlineVisual.title;
            String str2 = bannerInlineVisual.supportingText;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier animateContentSize$default = CrossfadeKt.animateContentSize$default(companion, null, 3);
            final Function0 function03 = function02;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1564796420, new Function3() { // from class: net.thunderbird.feature.notification.api.ui.BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    ((RowScope) obj).getClass();
                    int i5 = 0;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                        Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                        if (booleanValue) {
                            gapComposer2.startReplaceGroup(-724824654);
                            Data.Companion.NotificationActionButton(CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.banner_inline_notification_learn_more$delegate.getValue(), gapComposer2), Function0.this, TestTagKt.testTag(companion2, "learn_more_action"), gapComposer2, 384, 8);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-724474850);
                            gapComposer2.end(false);
                        }
                        for (Object obj4 : bannerInlineVisual.actions) {
                            int i6 = i5 + 1;
                            if (i5 < 0) {
                                IntOffsetKt.throwIndexOverflow();
                                throw null;
                            }
                            CharsKt__CharKt.ResolvedNotificationActionButton((NotificationAction) obj4, function1, TestTagKt.testTag(companion2, "banner_inline_notification_list_item_action_" + i + "_" + i5), gapComposer2, 8);
                            i5 = i6;
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 16);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            BannerInlineNotificationCardKt.ErrorBannerInlineNotificationCard(str, str2, rememberComposableLambda, animateContentSize$default, BannerInlineNotificationCardBehaviour.Clipped, (Function1) rememberedValue2, gapComposer, 221568, 0);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda0(i, bannerInlineVisual, function1, function0, modifier2, i2);
        }
    }

    public static final void BannerInlineNotificationListHost(InAppNotificationHostStateHolder inAppNotificationHostStateHolder, Function1 function1, Function0 function0, Modifier modifier, Composer composer, int i) {
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1778576407);
        int i2 = (gapComposer.changed(inAppNotificationHostStateHolder) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ImmutableSet immutableSet = ((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) Updater.collectAsState(inAppNotificationHostStateHolder.currentInAppNotificationHostState, gapComposer).getValue()).bannerInlineVisuals;
            Modifier testTag = TestTagKt.testTag(modifier, "banner_inline_notification_host");
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new KoinModuleKt$$ExternalSyntheticLambda0(26);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new KoinModuleKt$$ExternalSyntheticLambda0(27);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CrossfadeKt.AnimatedContent(immutableSet, testTag, function12, null, null, (Function1) rememberedValue2, Expect_jvmKt.rememberComposableLambda(1957992752, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(6, function1, function0), gapComposer), gapComposer, 1769856, 24);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(inAppNotificationHostStateHolder, function1, function0, modifier, i, 22);
        }
    }

    public static final void BannerInlineNotificationListHostLayout(int i, Composer composer, Modifier modifier, Function0 function0, Function1 function1, ImmutableSet immutableSet) {
        Function1 function12;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1617950593);
        int i2 = (i & 6) == 0 ? (gapComposer.changed(immutableSet) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            function12 = function1;
            i2 |= gapComposer.changedInstance(function12) ? 32 : 16;
        } else {
            function12 = function1;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            int i3 = i2 & 14;
            boolean z = i3 == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = immutableSet.size() > 2 ? CollectionsKt.take(immutableSet, 1) : immutableSet;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Collection collection = (Collection) rememberedValue;
            boolean z2 = i3 == 4;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Integer.valueOf(immutableSet.size() - 2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            int intValue = ((Number) rememberedValue2).intValue();
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier testTag = TestTagKt.testTag(OffsetKt.m219paddingVpY3zN4(modifier, 16.0f, 4.0f), "banner_inline_notification_list");
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
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
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer.startReplaceGroup(-138211968);
            int i5 = 0;
            for (Object obj : collection) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    IntOffsetKt.throwIndexOverflow();
                    throw null;
                }
                BannerInlineItem(i5, (BannerInlineVisual) obj, function12, function0, null, gapComposer, (i2 << 3) & 8064);
                function12 = function1;
                i5 = i6;
            }
            gapComposer.end(false);
            if (intValue > 0) {
                gapComposer.startReplaceGroup(10719589);
                BannerInlineNotificationCardKt.ErrorBannerInlineNotificationCard(CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.banner_inline_notification_check_error_notifications$delegate.getValue(), gapComposer), CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.banner_inline_notification_some_messages_need_attention$delegate.getValue(), gapComposer), Expect_jvmKt.rememberComposableLambda(1782200189, new TextFieldImplKt$$ExternalSyntheticLambda9(6, function0), gapComposer), CrossfadeKt.animateContentSize$default(TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "check_notifications_composable"), null, 3), null, null, gapComposer, 384, 48);
                gapComposer = gapComposer;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(11628695);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0((Object) immutableSet, function1, function0, (Object) modifier, i, 16);
        }
    }

    public static final void InAppNotificationHost(final Function1 function1, Modifier modifier, InAppNotificationHostStateHolder inAppNotificationHostStateHolder, PaddingValues paddingValues, Function2 function2, Function1 function12, Function3 function3, Composer composer, int i) {
        int i2;
        Object imageLoadKt$ImageLoad$2$1$1;
        NeverEqualPolicy neverEqualPolicy;
        Continuation continuation;
        final InAppNotificationHostStateHolder inAppNotificationHostStateHolder2 = inAppNotificationHostStateHolder;
        Function2 function22 = function2;
        function1.getClass();
        function3.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(572674514);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(inAppNotificationHostStateHolder2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(function22) : gapComposer.changedInstance(function22) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function12) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 1048576 : 524288;
        }
        int i3 = i2;
        final int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            MutableState collectAsState = Updater.collectAsState(inAppNotificationHostStateHolder2.currentInAppNotificationHostState, gapComposer);
            int i5 = i3 >> 3;
            InAppNotificationReceiverEffect(function12, inAppNotificationHostStateHolder2, gapComposer, ((i3 >> 15) & 14) | (i5 & 112));
            ((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) collectAsState.getValue()).getClass();
            boolean changed = gapComposer.changed(collectAsState) | ((((i3 & 57344) ^ 24576) > 16384 && gapComposer.changedInstance(function22)) || (i3 & 24576) == 16384) | ((((i3 & 896) ^ 384) > 256 && gapComposer.changed(inAppNotificationHostStateHolder2)) || (i3 & 384) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy2 = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy2) {
                neverEqualPolicy = neverEqualPolicy2;
                continuation = null;
                imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1(function2, inAppNotificationHostStateHolder2, collectAsState, continuation, 9);
                function22 = function2;
                inAppNotificationHostStateHolder2 = inAppNotificationHostStateHolder2;
                gapComposer.updateRememberedValue(imageLoadKt$ImageLoad$2$1$1);
            } else {
                imageLoadKt$ImageLoad$2$1$1 = rememberedValue;
                neverEqualPolicy = neverEqualPolicy2;
                continuation = null;
            }
            Updater.LaunchedEffect(continuation, function22, (Function2) imageLoadKt$ImageLoad$2$1$1, gapComposer);
            Object[] objArr = new Object[0];
            WeakCache weakCache = BannerInlineListScrollState.Saver;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ChangelogRoute$$ExternalSyntheticLambda0(2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            BannerInlineListScrollState bannerInlineListScrollState = (BannerInlineListScrollState) SaverKt.rememberSaveable(objArr, weakCache, (Function0) rememberedValue2, gapComposer, 384);
            DecayAnimationSpecImpl rememberSplineBasedDecay = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(gapComposer);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new BannerInlineListScrollBehaviour(bannerInlineListScrollState, rememberSplineBasedDecay);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            BannerInlineListScrollBehaviour bannerInlineListScrollBehaviour = (BannerInlineListScrollBehaviour) rememberedValue3;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-664944642, new Function2() { // from class: net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i6 = i4;
                    Unit unit = Unit.INSTANCE;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    switch (i6) {
                        case 0:
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                InAppNotificationHostKt.BannerGlobalNotificationHost(inAppNotificationHostStateHolder2, function1, SizeKt.FillWholeMaxWidth, gapComposer2, 384);
                                break;
                            }
                        default:
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Function1 function13 = function1;
                                boolean changed2 = gapComposer3.changed(function13);
                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                if (changed2 || rememberedValue4 == Composer.Companion.Empty) {
                                    rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(0, function13);
                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                }
                                InAppNotificationHostKt.BannerInlineNotificationListHost(inAppNotificationHostStateHolder2, function13, (Function0) rememberedValue4, SizeKt.FillWholeMaxWidth, gapComposer3, 3072);
                                break;
                            }
                    }
                    return unit;
                }
            }, gapComposer);
            final int i6 = 1;
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1231856675, new Function2() { // from class: net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i62 = i6;
                    Unit unit = Unit.INSTANCE;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    switch (i62) {
                        case 0:
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                InAppNotificationHostKt.BannerGlobalNotificationHost(inAppNotificationHostStateHolder2, function1, SizeKt.FillWholeMaxWidth, gapComposer2, 384);
                                break;
                            }
                        default:
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Function1 function13 = function1;
                                boolean changed2 = gapComposer3.changed(function13);
                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                if (changed2 || rememberedValue4 == Composer.Companion.Empty) {
                                    rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(0, function13);
                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                }
                                InAppNotificationHostKt.BannerInlineNotificationListHost(inAppNotificationHostStateHolder2, function13, (Function0) rememberedValue4, SizeKt.FillWholeMaxWidth, gapComposer3, 3072);
                                break;
                            }
                    }
                    return unit;
                }
            }, gapComposer);
            int i7 = BannerInlineListScrollBehaviour.$r8$clinit;
            AtomicFU.InAppNotificationHostLayout(bannerInlineListScrollBehaviour, paddingValues, rememberComposableLambda, rememberComposableLambda2, modifier, function3, gapComposer, ((i3 >> 6) & 112) | 3456 | ((i3 << 9) & 57344) | (i5 & 458752));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(function1, modifier, inAppNotificationHostStateHolder2, paddingValues, function22, function12, function3, i);
        }
    }

    public static final void InAppNotificationReceiverEffect(Function1 function1, InAppNotificationHostStateHolder inAppNotificationHostStateHolder, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-814874008);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 16;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(inAppNotificationHostStateHolder) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
            boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = ViewSizeResolver.CC.m(DefaultInAppNotificationStream.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
            }
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(((DefaultInAppNotificationStream) rememberedValue).notifications, gapComposer);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(EmptySet.INSTANCE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            Set set = (Set) collectAsStateWithLifecycle.getValue();
            boolean changed2 = ((i2 & 14) == 4) | gapComposer.changed(collectAsStateWithLifecycle) | ((i2 & 112) == 32);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1 anonymousClass1 = new CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1(function1, collectAsStateWithLifecycle, inAppNotificationHostStateHolder, mutableState, (Continuation) null);
                gapComposer.updateRememberedValue(anonymousClass1);
                rememberedValue3 = anonymousClass1;
            }
            Updater.LaunchedEffect(set, function1, (Function2) rememberedValue3, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, i3, function1, inAppNotificationHostStateHolder);
        }
    }

    public static final void InAppNotificationScaffold(Modifier modifier, ImmutableSet immutableSet, Function2 function2, Function2 function22, Material3BackedSnackbarHostState material3BackedSnackbarHostState, Function2 function23, ScaffoldFabPosition scaffoldFabPosition, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        ImmutableSet immutableSet2;
        Function2 function24;
        Function2 function25;
        Material3BackedSnackbarHostState material3BackedSnackbarHostState2;
        Function2 function26;
        ScaffoldFabPosition scaffoldFabPosition2;
        Function1 function13;
        ImmutableSet immutableSet3;
        Material3BackedSnackbarHostState material3BackedSnackbarHostState3;
        int i3;
        Function1 function14;
        Function2 function27;
        Function2 function28;
        ScaffoldFabPosition scaffoldFabPosition3;
        Function2 function29;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1512269391);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= 16;
        }
        int i4 = i2 | 3456;
        if ((i & 24576) == 0) {
            i4 = i2 | 11648;
        }
        int i5 = 14352384 | i4;
        if ((100663296 & i) == 0) {
            i5 |= gapComposer2.changedInstance(function12) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i5 |= gapComposer2.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer2.shouldExecute(i5 & 1, (306783379 & i5) != 306783378)) {
            gapComposer2.startDefaults();
            int i6 = i & 1;
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (i6 == 0 || gapComposer2.getDefaultsInvalid()) {
                DisplayInAppNotificationFlag.Companion.getClass();
                immutableSet3 = DisplayInAppNotificationFlag.AllNotifications;
                Object rememberedValue = gapComposer2.rememberedValue();
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new Material3BackedSnackbarHostState(new PreviewView.AnonymousClass1(16));
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                material3BackedSnackbarHostState3 = (Material3BackedSnackbarHostState) rememberedValue;
                i3 = i5 & (-57457);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new KoinModuleKt$$ExternalSyntheticLambda0(28);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                function14 = (Function1) rememberedValue2;
                ComposableLambdaImpl composableLambdaImpl2 = lambda$944899621;
                function27 = lambda$59416341;
                function28 = lambda$1908229429;
                scaffoldFabPosition3 = ScaffoldFabPosition.End;
                function29 = composableLambdaImpl2;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i5 & (-57457);
                immutableSet3 = immutableSet;
                function29 = function2;
                function27 = function22;
                material3BackedSnackbarHostState3 = material3BackedSnackbarHostState;
                function28 = function23;
                scaffoldFabPosition3 = scaffoldFabPosition;
                function14 = function1;
            }
            gapComposer2.endDefaults();
            int i7 = i3 >> 3;
            InAppNotificationHostStateHolder rememberInAppNotificationHostStateHolder = Jsoup.rememberInAppNotificationHostStateHolder(immutableSet3, gapComposer2);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            gapComposer = gapComposer2;
            ScaffoldKt.Scaffold(TestTagKt.testTag(modifier, "ins_inner_scaffold"), function29, function27, Expect_jvmKt.rememberComposableLambda(1276434219, new StringsKt__StringsKt$$ExternalSyntheticLambda0(8, material3BackedSnackbarHostState3), gapComposer2), function28, scaffoldFabPosition3, Expect_jvmKt.rememberComposableLambda(-768529243, new ImageLoadKt$$ExternalSyntheticLambda0(function14, rememberInAppNotificationHostStateHolder, material3BackedSnackbarHostState3, function12, composableLambdaImpl, (MutableState) rememberedValue3), gapComposer2), gapComposer, (i7 & 112) | 1575936 | (i7 & 896) | (57344 & i7) | (i7 & 458752), 0);
            immutableSet2 = immutableSet3;
            function13 = function14;
            material3BackedSnackbarHostState2 = material3BackedSnackbarHostState3;
            function24 = function29;
            function25 = function27;
            function26 = function28;
            scaffoldFabPosition2 = scaffoldFabPosition3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            immutableSet2 = immutableSet;
            function24 = function2;
            function25 = function22;
            material3BackedSnackbarHostState2 = material3BackedSnackbarHostState;
            function26 = function23;
            scaffoldFabPosition2 = scaffoldFabPosition;
            function13 = function1;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda5(modifier, immutableSet2, function24, function25, material3BackedSnackbarHostState2, function26, scaffoldFabPosition2, function13, function12, composableLambdaImpl, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void InAppNotificationHost(kotlin.jvm.functions.Function1 r18, androidx.compose.ui.Modifier r19, kotlinx.collections.immutable.ImmutableSet r20, androidx.compose.foundation.layout.PaddingValues r21, kotlin.jvm.functions.Function2 r22, kotlin.jvm.functions.Function1 r23, kotlin.jvm.functions.Function3 r24, androidx.compose.runtime.Composer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt.InAppNotificationHost(kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, kotlinx.collections.immutable.ImmutableSet, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }
}
