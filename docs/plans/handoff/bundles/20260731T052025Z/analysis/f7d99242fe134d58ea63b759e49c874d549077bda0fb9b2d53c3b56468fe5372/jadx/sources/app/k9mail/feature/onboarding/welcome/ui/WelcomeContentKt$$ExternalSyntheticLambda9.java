package app.k9mail.feature.onboarding.welcome.ui;

import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.ClearAndSetSemanticsElement;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Failure$SaveServerSettingsFailed;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.oauth.ui.view.SignInViewKt;
import app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$State;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.skydoves.landscapist.coil3.ComposableSingletons$CoilImageKt;
import com.skydoves.landscapist.components.ImagePluginComponent;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WelcomeContentKt$$ExternalSyntheticLambda9 implements Function3 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ WelcomeContentKt$$ExternalSyntheticLambda9(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Unit lambda_1026879375$lambda$0;
        Unit lambda_988760923$lambda$0;
        int i = this.$r8$classId;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Modifier modifier = (Modifier) obj;
                ((Integer) obj3).getClass();
                modifier.getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-856669743);
                Modifier then = modifier.then(SizeKt.FillWholeMaxWidth);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(then, 8.0f);
                gapComposer.end(false);
                break;
            case 1:
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(contextMenuColors) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    BoxKt.Box(ImageKt.m132backgroundbw27NRU(SizeKt.m226height3ABfNKs(OffsetKt.m220paddingVpY3zN4$default(companion, 0.0f, ContextMenuSpec.DividerVerticalPadding, 1).then(SizeKt.FillWholeMaxWidth), ContextMenuSpec.DividerHeight), contextMenuColors.iconColor, rectangleShapeKt$RectangleShape$1), gapComposer2, 0);
                    break;
                }
            case 2:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
                break;
            case 3:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (!gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
                break;
            case 4:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((SaveServerSettingsContract$Failure$SaveServerSettingsFailed) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    ActionBar.ErrorView(Operation$State.stringResource(gapComposer5, R.string.account_edit_save_server_settings_error_message), null, null, null, null, gapComposer5, 0, 30);
                    break;
                }
            case 5:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((SaveServerSettingsContract$State) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (!gapComposer6.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    SchemaInfoUtilKt.LoadingView(null, Operation$State.stringResource(gapComposer6, R.string.account_edit_save_server_settings_success_message), null, gapComposer6, 0, 5);
                    break;
                }
            case 6:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (!gapComposer7.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(CrossfadeKt.animateContentSize$default(companion, ArcSplineKt.tween$default(300, 0, EasingKt.LinearOutSlowInEasing, 2), 2), 0.0f, 0.0f, 8.0f, 0.0f, 11);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer7, 48);
                    long j = gapComposer7.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer7, m222paddingqDBjuR0$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m380setimpl(gapComposer7, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer7, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer7, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer7, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    SurfaceKt.m357SurfaceT9BRK9s(null, null, Color.White, 0L, 0.0f, 0.0f, null, SignInViewKt.lambda$1800067409, gapComposer7, 12583296, 123);
                    OffsetKt.Spacer(gapComposer7, SizeKt.m233requiredWidth3ABfNKs());
                    TextKt.m362TextNvy7gAk(Operation$State.stringResource(gapComposer7, R.string.account_oauth_sign_in_with_google_button), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, new TextStyle(0L, SQLite.getSp(14), FontWeight.Medium, SQLite.getSp(1.25d), 0, 0L, 16777081), gapComposer7, 0, 0, 131070);
                    gapComposer7.end(true);
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (!gapComposer8.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer8.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer8, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer9 = (GapComposer) composer8;
                if (!gapComposer9.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer9.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer9, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case 9:
                Composer composer9 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer10 = (GapComposer) composer9;
                if (!gapComposer10.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer10.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer10, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case 10:
                Composer composer10 = (Composer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer11 = (GapComposer) composer10;
                if (!gapComposer11.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer11.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer11, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case 11:
                Composer composer11 = (Composer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                ((AccountSetupExternalContract$AccountCreator$AccountCreatorResult.Error) obj).getClass();
                GapComposer gapComposer12 = (GapComposer) composer11;
                if (!gapComposer12.shouldExecute(intValue11 & 1, (intValue11 & 17) != 16)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    ActionBar.ErrorView(Operation$State.stringResource(gapComposer12, R.string.account_setup_create_account_error), null, null, null, null, gapComposer12, 0, 30);
                    break;
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                Composer composer12 = (Composer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((CreateAccountContract$State) obj).getClass();
                GapComposer gapComposer13 = (GapComposer) composer12;
                if (!gapComposer13.shouldExecute(intValue12 & 1, (intValue12 & 17) != 16)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    SchemaInfoUtilKt.LoadingView(null, Operation$State.stringResource(gapComposer13, R.string.account_setup_create_account_created), null, gapComposer13, 0, 5);
                    break;
                }
            case 13:
                Composer composer13 = (Composer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer14 = (GapComposer) composer13;
                if (!gapComposer14.shouldExecute(intValue13 & 1, (intValue13 & 17) != 16)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    Util.m1093TextLabelSmallXl4FiYE(Operation$State.stringResource(gapComposer14, R.string.account_setup_options_section_display_options), OffsetKt.padding(SizeKt.FillWholeMaxWidth, OAuthBearer.defaultHeadlineItemPadding(gapComposer14)), 0L, 0, 0, gapComposer14, 0, 60);
                    break;
                }
            case 14:
                Composer composer14 = (Composer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer15 = (GapComposer) composer14;
                if (!gapComposer15.shouldExecute(intValue14 & 1, (intValue14 & 17) != 16)) {
                    gapComposer15.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer15.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer15, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case OffsetKt.Horizontal /* 15 */:
                Composer composer15 = (Composer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer16 = (GapComposer) composer15;
                if (!gapComposer16.shouldExecute(intValue15 & 1, (intValue15 & 17) != 16)) {
                    gapComposer16.skipToGroupEnd();
                    break;
                } else {
                    Util.m1093TextLabelSmallXl4FiYE(Operation$State.stringResource(gapComposer16, R.string.account_setup_options_section_sync_options), OffsetKt.padding(SizeKt.FillWholeMaxWidth, OAuthBearer.defaultHeadlineItemPadding(gapComposer16)), 0L, 0, 0, gapComposer16, 0, 60);
                    break;
                }
            case 16:
                Composer composer16 = (Composer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer17 = (GapComposer) composer16;
                if (!gapComposer17.shouldExecute(intValue16 & 1, (intValue16 & 17) != 16)) {
                    gapComposer17.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer17.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer17, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case 17:
                Composer composer17 = (Composer) obj2;
                int intValue17 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer18 = (GapComposer) composer17;
                if (!gapComposer18.shouldExecute(intValue17 & 1, (intValue17 & 17) != 16)) {
                    gapComposer18.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer18.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    OffsetKt.Spacer(gapComposer18, SizeKt.m229requiredHeight3ABfNKs(8.0f));
                    break;
                }
            case 18:
                Composer composer18 = (Composer) obj2;
                int intValue18 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer19 = (GapComposer) composer18;
                if (!gapComposer19.shouldExecute(intValue18 & 1, (intValue18 & 17) != 16)) {
                    gapComposer19.skipToGroupEnd();
                    break;
                } else {
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(Operation$State.stringResource(gapComposer19, R.string.account_setup_special_folders_form_description), OffsetKt.padding(companion, OAuthBearer.defaultItemPadding(gapComposer19)), 0L, null, 0, 0, gapComposer19, 0, 60);
                    break;
                }
            case 19:
                Composer composer19 = (Composer) obj2;
                int intValue19 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer20 = (GapComposer) composer19;
                if (!gapComposer20.shouldExecute(intValue19 & 1, (intValue19 & 17) != 16)) {
                    gapComposer20.skipToGroupEnd();
                    break;
                } else {
                    MathKt.m984TextBodySmallXl4FiYE(Operation$State.stringResource(gapComposer20, R.string.account_setup_special_folders_form_description_automatic), OffsetKt.padding(companion, OAuthBearer.defaultItemPadding(gapComposer20)), 0L, null, 0, 0, gapComposer20, 0, 60);
                    break;
                }
            case 20:
                Composer composer20 = (Composer) obj2;
                int intValue20 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer21 = (GapComposer) composer20;
                if (!gapComposer21.shouldExecute(intValue20 & 1, (intValue20 & 17) != 16)) {
                    gapComposer21.skipToGroupEnd();
                    break;
                } else {
                    WelcomeScreenKt.WelcomeMessageItem(null, gapComposer21, 0);
                    break;
                }
            case 21:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                Composer composer21 = (Composer) obj2;
                int intValue21 = ((Integer) obj3).intValue();
                if ((intValue21 & 6) == 0) {
                    intValue21 |= ((GapComposer) composer21).changed(booleanValue) ? 4 : 2;
                }
                GapComposer gapComposer22 = (GapComposer) composer21;
                if (!gapComposer22.shouldExecute(intValue21 & 1, (intValue21 & 19) != 18)) {
                    gapComposer22.skipToGroupEnd();
                    break;
                } else if (!booleanValue) {
                    gapComposer22.startReplaceGroup(256058434);
                    gapComposer22.end(false);
                    break;
                } else {
                    gapComposer22.startReplaceGroup(255975788);
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.CheckCircle, null, null, gapComposer22, 0, 14);
                    gapComposer22.end(false);
                    break;
                }
            case 22:
                RowScope rowScope = (RowScope) obj;
                Composer composer22 = (Composer) obj2;
                int intValue22 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue22 & 6) == 0) {
                    intValue22 |= ((GapComposer) composer22).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer23 = (GapComposer) composer22;
                if (!gapComposer23.shouldExecute(intValue22 & 1, (intValue22 & 19) != 18)) {
                    gapComposer23.skipToGroupEnd();
                    break;
                } else {
                    Modifier weight = rowScope.weight(companion, 1.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer23.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m222paddingqDBjuR0$default2 = OffsetKt.m222paddingqDBjuR0$default(weight, 0.0f, 0.0f, 8.0f, 0.0f, 11);
                    Object rememberedValue = gapComposer23.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new InstantKt$$ExternalSyntheticLambda0(11);
                        gapComposer23.updateRememberedValue(rememberedValue);
                    }
                    AtomicInteger atomicInteger = SemanticsModifierKt.lastIdentifier;
                    Modifier then2 = m222paddingqDBjuR0$default2.then(new ClearAndSetSemanticsElement((Function1) rememberedValue));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer23.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer23.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer23, then2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer23.startReusableNode();
                    if (gapComposer23.inserting) {
                        gapComposer23.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer23.useNode();
                    }
                    Updater.m380setimpl(gapComposer23, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer23, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer23, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer23, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer23, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    ((ThemeSpacings) gapComposer23.consume(staticProvidableCompositionLocal)).getClass();
                    BoxKt.Box(ImageKt.m132backgroundbw27NRU(ClipKt.alpha(BoxScopeInstance.INSTANCE.align(SizeKt.m226height3ABfNKs(fillElement, 2.0f), Alignment.Companion.Center), 0.6f), ((ThemeColorScheme) gapComposer23.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).primary, rectangleShapeKt$RectangleShape$1), gapComposer23, 0);
                    gapComposer23.end(true);
                    break;
                }
            case 23:
                lambda_1026879375$lambda$0 = ComposableSingletons$CoilImageKt.lambda_1026879375$lambda$0((ImagePluginComponent) obj, (Composer) obj2, ((Integer) obj3).intValue());
                break;
            case 24:
                lambda_988760923$lambda$0 = ComposableSingletons$CoilImageKt.lambda_988760923$lambda$0((ImagePluginComponent) obj, (Composer) obj2, ((Integer) obj3).intValue());
                break;
            case 25:
                Composer composer23 = (Composer) obj2;
                int intValue23 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer24 = (GapComposer) composer23;
                if (!gapComposer24.shouldExecute(intValue23 & 1, (intValue23 & 17) != 16)) {
                    gapComposer24.skipToGroupEnd();
                    break;
                }
                break;
            case 26:
                Composer composer24 = (Composer) obj2;
                int intValue24 = ((Integer) obj3).intValue();
                ((String) obj).getClass();
                GapComposer gapComposer25 = (GapComposer) composer24;
                if (!gapComposer25.shouldExecute(intValue24 & 1, (intValue24 & 17) != 16)) {
                    gapComposer25.skipToGroupEnd();
                    break;
                } else {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Attachment, null, null, gapComposer25, 384, 10);
                    break;
                }
            case 27:
                Composer composer25 = (Composer) obj2;
                int intValue25 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                GapComposer gapComposer26 = (GapComposer) composer25;
                if (!gapComposer26.shouldExecute(intValue25 & 1, (intValue25 & 17) != 16)) {
                    gapComposer26.skipToGroupEnd();
                    break;
                } else {
                    OAuthBearer.m939CircularProgressIndicatoriJQMabo(null, 0L, gapComposer26, 0, 3);
                    break;
                }
            case 28:
                BoxScope boxScope = (BoxScope) obj;
                Composer composer26 = (Composer) obj2;
                int intValue26 = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((intValue26 & 6) == 0) {
                    intValue26 |= ((GapComposer) composer26).changed(boxScope) ? 4 : 2;
                }
                GapComposer gapComposer27 = (GapComposer) composer26;
                if (!gapComposer27.shouldExecute(intValue26 & 1, (intValue26 & 19) != 18)) {
                    gapComposer27.skipToGroupEnd();
                    break;
                } else {
                    AttachmentCardKt.AttachmentThumbnailPlaceholder(boxScope, gapComposer27, intValue26 & 14);
                    break;
                }
            default:
                BoxScope boxScope2 = (BoxScope) obj;
                Composer composer27 = (Composer) obj2;
                int intValue27 = ((Integer) obj3).intValue();
                boxScope2.getClass();
                if ((intValue27 & 6) == 0) {
                    intValue27 |= ((GapComposer) composer27).changed(boxScope2) ? 4 : 2;
                }
                GapComposer gapComposer28 = (GapComposer) composer27;
                if (!gapComposer28.shouldExecute(intValue27 & 1, (intValue27 & 19) != 18)) {
                    gapComposer28.skipToGroupEnd();
                    break;
                } else {
                    AttachmentCardKt.AttachmentThumbnailPlaceholder(boxScope2, gapComposer28, intValue27 & 14);
                    break;
                }
        }
        return unit;
    }
}
