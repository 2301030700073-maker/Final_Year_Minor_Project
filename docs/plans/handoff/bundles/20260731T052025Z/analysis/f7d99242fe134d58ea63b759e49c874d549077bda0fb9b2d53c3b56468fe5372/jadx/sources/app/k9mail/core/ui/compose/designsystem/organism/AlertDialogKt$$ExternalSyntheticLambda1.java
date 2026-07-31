package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import coil3.size.ViewSizeResolver;
import kotlin.Function;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.list.ui.component.atom.FavouriteButtonIconKt;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemTrailingElement;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function0 f$3;
    public final /* synthetic */ Function f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Function f$8;
    public final /* synthetic */ boolean f$9;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda1(PaddingValuesImpl paddingValuesImpl, boolean z, MessageItemConfiguration messageItemConfiguration, Function0 function0, String str, ComposableLambdaImpl composableLambdaImpl, String str2, ComposableLambdaImpl composableLambdaImpl2, Function1 function1) {
        this.f$2 = paddingValuesImpl;
        this.f$9 = z;
        this.f$7 = messageItemConfiguration;
        this.f$3 = function0;
        this.f$0 = str;
        this.f$4 = composableLambdaImpl;
        this.f$1 = str2;
        this.f$8 = composableLambdaImpl2;
        this.f$5 = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15, types: [androidx.compose.ui.Modifier] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier.Companion companion;
        Function1 function1;
        boolean z;
        Modifier.Companion companion2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$5;
        Function function = this.f$8;
        Function function2 = this.f$4;
        Object obj4 = this.f$7;
        Object obj5 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TopAppBarKt.AlertDialog(this.f$0, this.f$1, (String) obj5, this.f$3, (Function0) function2, (Modifier) obj3, (String) obj4, (Function0) function, this.f$9, (Composer) obj, Updater.updateChangedFlags(100687873));
                return unit;
            default:
                PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj5;
                MessageItemConfiguration messageItemConfiguration = (MessageItemConfiguration) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function2;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) function;
                Function1 function12 = (Function1) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    return unit;
                }
                Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                Modifier height = OffsetKt.height(OffsetKt.padding(companion3, paddingValuesImpl));
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
                long j = gapComposer.compositeKeyHashCode;
                int i2 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, height);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i2);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                ByteStreamsKt.LeadingElements(this.f$9, messageItemConfiguration.leadingConfiguration, this.f$3, null, gapComposer, 0);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion3, 8.0f));
                LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                FillElement fillElement = SizeKt.FillWholeMaxHeight;
                Modifier then = layoutWeightElement.then(fillElement);
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                Function1 function13 = function12;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(4.0f, false, new StreamSharing$$ExternalSyntheticLambda0(6)), Alignment.Companion.Start, gapComposer, 0);
                long j2 = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, then);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Config.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                MessageBodyContentKt.AdaptiveMessageItemHeaderRow(0, gapComposer, composableLambdaImpl, null, this.f$0, messageItemConfiguration);
                MessageBodyContentKt.MessageBodyContent(0, gapComposer, composableLambdaImpl2, null, this.f$1, messageItemConfiguration);
                gapComposer.end(true);
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion3, 4.0f));
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                Modifier m240widthInVpY3zN4$default = SizeKt.m240widthInVpY3zN4$default(fillElement, 24.0f, 0.0f, 2);
                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.SpaceEvenly, Alignment.Companion.CenterHorizontally, gapComposer, 54);
                long j3 = gapComposer.compositeKeyHashCode;
                int i4 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m240widthInVpY3zN4$default);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m380setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                gapComposer.startReplaceGroup(-1607574197);
                for (MessageItemTrailingElement messageItemTrailingElement : messageItemConfiguration.trailingConfiguration.elements) {
                    if (messageItemTrailingElement instanceof MessageItemTrailingElement.EncryptedBadge) {
                        gapComposer.startReplaceGroup(1978495585);
                        ImageVector imageVector = Icons$Outlined.Encrypted;
                        if (((MessageItemTrailingElement.EncryptedBadge) messageItemTrailingElement).isFavouriteHidden) {
                            gapComposer.startReplaceGroup(1978727527);
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2)).getClass();
                            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2)).getClass();
                            Modifier.Companion companion4 = companion3;
                            ?? m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion4, 4.0f, 0.0f, 8.0f, 0.0f, 10);
                            companion = companion4;
                            z = false;
                            gapComposer.end(false);
                            companion2 = m222paddingqDBjuR0$default;
                        } else {
                            companion = companion3;
                            z = false;
                            gapComposer.startReplaceGroup(1978999273);
                            gapComposer.end(false);
                            companion2 = companion;
                        }
                        AtomicFU.m1009IconxqIIw2o(imageVector, companion2, null, gapComposer, 384, 8);
                        gapComposer.end(z);
                        function1 = function13;
                    } else {
                        companion = companion3;
                        if (!(messageItemTrailingElement instanceof MessageItemTrailingElement.FavouriteIconButton)) {
                            throw ViewSizeResolver.CC.m(gapComposer, -1183105867, false);
                        }
                        gapComposer.startReplaceGroup(1979222659);
                        MessageItemTrailingElement.FavouriteIconButton favouriteIconButton = (MessageItemTrailingElement.FavouriteIconButton) messageItemTrailingElement;
                        boolean z2 = favouriteIconButton.favourite;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ThemeSizesKt.LocalThemeSizes;
                        ((ThemeSizes) gapComposer.consume(staticProvidableCompositionLocal3)).getClass();
                        ((ThemeSizes) gapComposer.consume(staticProvidableCompositionLocal3)).getClass();
                        Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(companion, 24.0f);
                        function1 = function13;
                        boolean changed = gapComposer.changed(messageItemTrailingElement) | gapComposer.changed(function1);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == Composer.Companion.Empty) {
                            rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(10, function1, favouriteIconButton);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        FavouriteButtonIconKt.m1036FavouriteButtonIconjt2gSs(z2, (Function1) rememberedValue, m226height3ABfNKs, 48.0f, gapComposer, 0);
                        gapComposer.end(false);
                    }
                    companion3 = companion;
                    function13 = function1;
                }
                gapComposer.end(false);
                gapComposer.end(true);
                gapComposer.end(true);
                return unit;
        }
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda1(String str, String str2, String str3, Function0 function0, Function0 function02, Modifier modifier, String str4, Function0 function03, boolean z, int i) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = str3;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = modifier;
        this.f$7 = str4;
        this.f$8 = function03;
        this.f$9 = z;
    }
}
