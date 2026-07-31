package androidx.compose.foundation.text;

import android.content.res.Resources;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.DpCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.SegmentedButtonDefaults;
import androidx.compose.material3.ShapeDefaults;
import androidx.compose.material3.ShapesKt;
import androidx.compose.material3.SingleChoiceSegmentedButtonScopeWrapper;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.ListSaverKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda6;
import app.k9mail.core.ui.compose.designsystem.atom.RadioGroupKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.WizardNavigationBarKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$State;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import app.k9mail.provider.K9AppNameProvider;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import java.util.Collection;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldCursorKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ TextFieldCursorKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v8, types: [androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1] */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        RoundedCornerShape roundedCornerShape;
        int i = this.$r8$classId;
        Continuation continuation = null;
        Modifier modifier = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                SolidColor solidColor = (SolidColor) obj7;
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj6;
                TextFieldValue textFieldValue = (TextFieldValue) obj5;
                OffsetMapping offsetMapping = (OffsetMapping) obj4;
                Modifier modifier2 = (Modifier) obj;
                ((Integer) obj3).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-84507373);
                boolean booleanValue = ((Boolean) gapComposer.consume(CompositionLocalsKt.LocalCursorBlinkEnabled)).booleanValue();
                boolean changed = gapComposer.changed(booleanValue);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new CursorAnimationState(booleanValue);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                CursorAnimationState cursorAnimationState = (CursorAnimationState) rememberedValue;
                boolean z2 = solidColor.value != 16;
                if (((Boolean) ((LazyWindowInfo) ((WindowInfo) gapComposer.consume(CompositionLocalsKt.LocalWindowInfo))).isWindowFocused$delegate.getValue()).booleanValue() && legacyTextFieldState.getHasFocus() && TextRange.m699getCollapsedimpl(textFieldValue.selection) && z2) {
                    gapComposer.startReplaceGroup(-707487962);
                    AnnotatedString annotatedString = textFieldValue.annotatedString;
                    TextRange textRange = new TextRange(textFieldValue.selection);
                    boolean changedInstance = gapComposer.changedInstance(cursorAnimationState);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ThumbNode$onAttach$1(cursorAnimationState, continuation, 21);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Updater.LaunchedEffect(annotatedString, textRange, (Function2) rememberedValue2, gapComposer);
                    boolean changedInstance2 = gapComposer.changedInstance(cursorAnimationState) | gapComposer.changedInstance(offsetMapping) | gapComposer.changed(textFieldValue) | gapComposer.changedInstance(legacyTextFieldState) | gapComposer.changed(solidColor);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                        XmlSettingsParser$$ExternalSyntheticLambda7 xmlSettingsParser$$ExternalSyntheticLambda7 = new XmlSettingsParser$$ExternalSyntheticLambda7(cursorAnimationState, offsetMapping, textFieldValue, legacyTextFieldState, solidColor, 3);
                        gapComposer.updateRememberedValue(xmlSettingsParser$$ExternalSyntheticLambda7);
                        rememberedValue3 = xmlSettingsParser$$ExternalSyntheticLambda7;
                    }
                    modifier = ClipKt.drawWithContent(modifier2, (Function1) rememberedValue3);
                    z = false;
                    gapComposer.end(false);
                } else {
                    z = false;
                    gapComposer.startReplaceGroup(-705473241);
                    gapComposer.end(false);
                }
                gapComposer.end(z);
                return modifier;
            case 1:
                Function2 function2 = (Function2) obj7;
                ContextMenuScope contextMenuScope = (ContextMenuScope) obj6;
                Function3 function3 = (Function3) obj5;
                Function0 function0 = (Function0) obj4;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(contextMenuColors) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    String str = (String) function2.invoke(gapComposer2, 0);
                    if (StringsKt.isBlank(str)) {
                        InlineClassHelperKt.throwIllegalStateException("Label must not be blank");
                    }
                    contextMenuScope.getClass();
                    ContextMenuPopupPositionProviderKt.f3lambda$1571120048.invoke(str, Boolean.TRUE, contextMenuColors, function3, function0, gapComposer2, Integer.valueOf((intValue << 9) & 7168));
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                Collection collection = (ImmutableList) obj7;
                Function1 function1 = (Function1) obj5;
                Function1 function12 = (Function1) obj4;
                SingleChoiceSegmentedButtonScopeWrapper singleChoiceSegmentedButtonScopeWrapper = (SingleChoiceSegmentedButtonScopeWrapper) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                singleChoiceSegmentedButtonScopeWrapper.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(singleChoiceSegmentedButtonScopeWrapper) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    int i2 = 0;
                    for (Object obj8 : collection) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            IntOffsetKt.throwIndexOverflow();
                            throw null;
                        }
                        SegmentedButtonDefaults segmentedButtonDefaults = SegmentedButtonDefaults.INSTANCE;
                        int size = ((AbstractCollection) collection).getSize();
                        Shape value = ShapesKt.getValue(ListTokens.Shape, gapComposer3);
                        value.getClass();
                        RoundedCornerShape roundedCornerShape2 = (RoundedCornerShape) value;
                        if (size != 1) {
                            if (i2 == 0) {
                                DpCornerSize dpCornerSize = ShapeDefaults.CornerNone;
                                roundedCornerShape = RoundedCornerShape.copy$default(roundedCornerShape2, null, dpCornerSize, dpCornerSize, null, 9);
                            } else if (i2 == size - 1) {
                                DpCornerSize dpCornerSize2 = ShapeDefaults.CornerNone;
                                roundedCornerShape = RoundedCornerShape.copy$default(roundedCornerShape2, dpCornerSize2, null, null, dpCornerSize2, 6);
                            } else {
                                roundedCornerShape = ColorKt.RectangleShape;
                            }
                            roundedCornerShape2 = roundedCornerShape;
                        }
                        RoundedCornerShape roundedCornerShape3 = roundedCornerShape2;
                        boolean areEqual = Intrinsics.areEqual(obj8, obj6);
                        boolean changed2 = gapComposer3.changed(function1) | gapComposer3.changedInstance(obj8);
                        Object rememberedValue4 = gapComposer3.rememberedValue();
                        if (changed2 || rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new RadioGroupKt$$ExternalSyntheticLambda1(2, obj8, function1);
                            gapComposer3.updateRememberedValue(rememberedValue4);
                        }
                        CardKt.SegmentedButton(singleChoiceSegmentedButtonScopeWrapper, areEqual, (Function0) rememberedValue4, roundedCornerShape3, null, false, null, null, null, null, Expect_jvmKt.rememberComposableLambda(2083770054, new DropdownMenuBoxKt$$ExternalSyntheticLambda6(1, obj8, function12), gapComposer3), gapComposer3, intValue2 & 14);
                        i2 = i3;
                    }
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 3:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj7;
                CardColors cardColors = (CardColors) obj6;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj5;
                Function2 function22 = (Function2) obj4;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    ((ThemeSizes) gapComposer4.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    Modifier m228heightInVpY3zN4$default = SizeKt.m228heightInVpY3zN4$default(fillElement, 48.0f, 2);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(m228heightInVpY3zN4$default, 8.0f, 0.0f, 2);
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    ((ThemeSpacings) gapComposer4.consume(staticProvidableCompositionLocal)).getClass();
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical, gapComposer4, 48);
                    long j = gapComposer4.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer4, m220paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer4.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer4, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i4);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer4, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer4, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    composableLambdaImpl.invoke((Object) gapComposer4, (Object) 0);
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer4.compositeKeyHashCode;
                    int i5 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, layoutWeightElement);
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m380setimpl(gapComposer4, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i5, gapComposer4, composeUiNode$Companion$SetModifier$13, gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer4, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    composableLambdaImpl2.invoke((Object) gapComposer4, (Object) 0);
                    gapComposer4.end(true);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeColorSchemeKt.LocalThemeColorScheme;
                    Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(cardColors.contentColor)), Expect_jvmKt.rememberComposableLambda(116653022, new ListSaverKt$$ExternalSyntheticLambda0(1, function22), gapComposer4), gapComposer4, 56);
                    gapComposer4.end(true);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 4:
                long j3 = ((CardColors) obj7).contentColor;
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj6;
                ComposableLambdaImpl composableLambdaImpl4 = (ComposableLambdaImpl) obj5;
                ComposableLambdaImpl composableLambdaImpl5 = (ComposableLambdaImpl) obj4;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    return unit;
                }
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal3)).getClass();
                Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(modifier, 12.0f);
                ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal3)).getClass();
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer5, 0);
                long j4 = gapComposer5.compositeKeyHashCode;
                int i6 = (int) (j4 ^ (j4 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer5, m218padding3ABfNKs);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer5.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m380setimpl(gapComposer5, columnMeasurePolicy, composeUiNode$Companion$SetModifier$15);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m380setimpl(gapComposer5, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$16);
                Integer valueOf2 = Integer.valueOf(i6);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m380setimpl(gapComposer5, valueOf2, composeUiNode$Companion$SetModifier$17);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m379reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                Updater.m380setimpl(gapComposer5, materializeModifier3, composeUiNode$Companion$SetModifier$18);
                ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal3)).getClass();
                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Top, gapComposer5, 0);
                long j5 = gapComposer5.compositeKeyHashCode;
                int i7 = (int) (j5 ^ (j5 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, modifier);
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer5.useNode();
                }
                Updater.m380setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                Updater.m380setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$16);
                Config.CC.m(i7, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                Updater.m380setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$18);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ThemeColorSchemeKt.LocalThemeColorScheme;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.LocalContentColor;
                Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j3)), Expect_jvmKt.rememberComposableLambda(-1905837351, new GapComposer$$ExternalSyntheticLambda3(20, composableLambdaImpl3, composableLambdaImpl4), gapComposer5), gapComposer5, 56);
                gapComposer5.end(true);
                ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal3)).getClass();
                Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(9, Alignment.Companion.End));
                BiasAlignment.Vertical vertical2 = Alignment.Companion.CenterVertically;
                Modifier testTag = TestTagKt.testTag(SizeKt.FillWholeMaxWidth, "banner_inline_card_action_row");
                RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical2, gapComposer5, 48);
                long j6 = gapComposer5.compositeKeyHashCode;
                int i8 = (int) (j6 ^ (j6 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer5, testTag);
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer5.useNode();
                }
                Updater.m380setimpl(gapComposer5, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$15);
                Updater.m380setimpl(gapComposer5, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$16);
                Config.CC.m(i8, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                Updater.m380setimpl(gapComposer5, materializeModifier5, composeUiNode$Companion$SetModifier$18);
                Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j3)), Expect_jvmKt.rememberComposableLambda(-1425240318, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl5, 5), gapComposer5), gapComposer5, 56);
                gapComposer5.end(true);
                gapComposer5.end(true);
                return unit;
            case 5:
                String str2 = (String) obj7;
                DisplayOptionsContract$State displayOptionsContract$State = (DisplayOptionsContract$State) obj6;
                Resources resources = (Resources) obj5;
                Function1 function13 = (Function1) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= ((GapComposer) composer5).changed(paddingValues) ? 4 : 2;
                }
                int i9 = intValue5;
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.shouldExecute(i9 & 1, (i9 & 19) != 18)) {
                    FillElement fillElement2 = SizeKt.FillWholeMaxSize;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ((ThemeSpacings) gapComposer6.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned2 = new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    boolean changed3 = gapComposer6.changed(str2) | gapComposer6.changedInstance(displayOptionsContract$State) | gapComposer6.changedInstance(resources) | gapComposer6.changed(function13);
                    Object rememberedValue5 = gapComposer6.rememberedValue();
                    if (changed3 || rememberedValue5 == neverEqualPolicy) {
                        NavControllerImpl$$ExternalSyntheticLambda0 navControllerImpl$$ExternalSyntheticLambda0 = new NavControllerImpl$$ExternalSyntheticLambda0(str2, displayOptionsContract$State, resources, function13, 10);
                        gapComposer6.updateRememberedValue(navControllerImpl$$ExternalSyntheticLambda0);
                        rememberedValue5 = navControllerImpl$$ExternalSyntheticLambda0;
                    }
                    ActionBar.LazyColumn(((i9 << 6) & 896) | 196614, 458, null, null, arrangement$SpacedAligned2, paddingValues, null, gapComposer6, horizontal, fillElement2, (Function1) rememberedValue5, false);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 6:
                String str3 = (String) obj7;
                SyncOptionsContract$State syncOptionsContract$State = (SyncOptionsContract$State) obj6;
                Function1 function14 = (Function1) obj5;
                Resources resources2 = (Resources) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer6).changed(paddingValues2) ? 4 : 2;
                }
                int i10 = intValue6;
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.shouldExecute(i10 & 1, (i10 & 19) != 18)) {
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(SizeKt.FillWholeMaxSize, OffsetKt.imeLambda);
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.Start;
                    ((ThemeSpacings) gapComposer7.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned3 = new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    boolean changed4 = gapComposer7.changed(str3) | gapComposer7.changedInstance(syncOptionsContract$State) | gapComposer7.changed(function14) | gapComposer7.changedInstance(resources2);
                    Object rememberedValue6 = gapComposer7.rememberedValue();
                    if (changed4 || rememberedValue6 == neverEqualPolicy) {
                        NavControllerImpl$$ExternalSyntheticLambda0 navControllerImpl$$ExternalSyntheticLambda02 = new NavControllerImpl$$ExternalSyntheticLambda0(str3, syncOptionsContract$State, function14, resources2, 11);
                        gapComposer7.updateRememberedValue(navControllerImpl$$ExternalSyntheticLambda02);
                        rememberedValue6 = navControllerImpl$$ExternalSyntheticLambda02;
                    }
                    ActionBar.LazyColumn(((i10 << 6) & 896) | 196608, 458, null, null, arrangement$SpacedAligned3, paddingValues2, null, gapComposer7, horizontal2, windowInsetsPadding, (Function1) rememberedValue6, false);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Function0 function02 = (Function0) obj7;
                Function0 function03 = (Function0) obj6;
                AppNameProvider appNameProvider = (AppNameProvider) obj5;
                NoOpOnboardingMigrationManager noOpOnboardingMigrationManager = (NoOpOnboardingMigrationManager) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue7 & 6) == 0) {
                    intValue7 |= ((GapComposer) composer7).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (gapComposer8.shouldExecute(intValue7 & 1, (intValue7 & 19) != 18)) {
                    String appName = ((K9AppNameProvider) appNameProvider).getAppName();
                    noOpOnboardingMigrationManager.getClass();
                    WelcomeScreenKt.WelcomeContent(function02, function03, appName, OffsetKt.padding(modifier, paddingValues3), gapComposer8, 0);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ImmutableList immutableList = (ImmutableList) obj7;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj6;
                MutableState mutableState = (MutableState) obj5;
                Function1 function15 = (Function1) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((intValue8 & 6) == 0) {
                    intValue8 |= ((GapComposer) composer8).changed(paddingValues4) ? 4 : 2;
                }
                GapComposer gapComposer9 = (GapComposer) composer8;
                if (gapComposer9.shouldExecute(intValue8 & 1, (intValue8 & 19) != 18)) {
                    ScaffoldKt.ResponsiveWidthContainer(null, Expect_jvmKt.rememberComposableLambda(-22552861, new WizardNavigationBarKt$$ExternalSyntheticLambda0(immutableList, parcelableSnapshotMutableIntState, mutableState, function15, paddingValues4, 5), gapComposer9), gapComposer9, 48, 1);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            default:
                SettingValue.Text text = (SettingValue.Text) obj7;
                FocusRequester focusRequester = (FocusRequester) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                Composer composer9 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer10 = (GapComposer) composer9;
                if (gapComposer10.shouldExecute(1 & intValue9, (intValue9 & 17) != 16)) {
                    String str4 = (String) text.description.invoke();
                    if (str4 == null) {
                        gapComposer10.startReplaceGroup(-1424084395);
                        gapComposer10.end(false);
                    } else {
                        gapComposer10.startReplaceGroup(-1424084394);
                        Data.Companion.m825TextBodyMediumZHfKjFs(str4, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer10, 0, 126);
                        ((ThemeSpacings) gapComposer10.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        OffsetKt.Spacer(gapComposer10, SizeKt.m226height3ABfNKs(modifier, 8.0f));
                        gapComposer10.end(false);
                    }
                    TextFieldValue textFieldValue2 = (TextFieldValue) mutableState2.getValue();
                    String str5 = (String) mutableState3.getValue();
                    PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f);
                    Modifier focusRequester2 = FocusTraversalKt.focusRequester(modifier, focusRequester);
                    boolean changedInstance3 = gapComposer10.changedInstance(text) | gapComposer10.changed(mutableState2);
                    Object rememberedValue7 = gapComposer10.rememberedValue();
                    if (changedInstance3 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new MapEntrySerializer$$ExternalSyntheticLambda0(r11, text, mutableState2);
                        gapComposer10.updateRememberedValue(rememberedValue7);
                    }
                    TextInputKt.AdvancedTextInput((Function1) rememberedValue7, focusRequester2, textFieldValue2, str5, m213PaddingValuesYgX7TsA$default, false, false, null, gapComposer10, 1572864);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
        }
    }
}
