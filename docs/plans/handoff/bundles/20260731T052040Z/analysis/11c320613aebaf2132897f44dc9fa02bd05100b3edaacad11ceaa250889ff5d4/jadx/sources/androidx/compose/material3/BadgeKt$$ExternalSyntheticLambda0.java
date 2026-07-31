package androidx.compose.material3;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Constraints;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import net.newpipe.app.screen.about.AboutPageKt;
import net.newpipe.app.screen.about.navigation.Page;
import net.newpipe.app.theme.ColorKt;
import newpipe.shared.generated.resources.Drawable0_commonMainKt;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BadgeKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Placeable mo292measureBRTryo0 = ((Measurable) obj2).mo292measureBRTryo0(((Constraints) obj3).value);
                break;
            case 1:
                Function2 function2 = (Function2) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changedInstance(function2) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    function2.invoke(gapComposer, Integer.valueOf(intValue & 14));
                    break;
                }
            case 2:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
                break;
            case 3:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier m98padding3ABfNKs = SpacerKt.m98padding3ABfNKs(companion, 16.0f);
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    Modifier then = m98padding3ABfNKs.then(fillElement);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Top, Alignment.Companion.CenterHorizontally, gapComposer3, 48);
                    long j = gapComposer3.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m170setimpl(gapComposer3, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m170setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m170setimpl(gapComposer3, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    ImageKt.Image(ImageResourcesKt.painterResource((DrawableResource) Drawable0_commonMainKt.ic_foreground$delegate.getValue(), gapComposer3), ImageKt.m27backgroundbw27NRU(ClipKt.clip(SizeKt.m89requiredSize3ABfNKs(), RoundedCornerShapeKt.CircleShape), ColorKt.logoBackground, Brush.RectangleShape), null, null, 0.0f, gapComposer3, 56);
                    SpacerKt.Spacer(gapComposer3, SizeKt.m88height3ABfNKs(companion, 4.0f));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = MaterialThemeKt._localMaterialTheme;
                    TextKt.m164TextNvy7gAk("NewPipe", null, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer3.consume(staticProvidableCompositionLocal)).typography.titleLarge, gapComposer3, 6, 130046);
                    TextKt.m164TextNvy7gAk("0.29.0", null, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer3.consume(staticProvidableCompositionLocal)).typography.titleMedium, gapComposer3, 6, 130046);
                    TextKt.m164TextNvy7gAk(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.app_description$delegate.getValue(), gapComposer3), fillElement, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, gapComposer3, 48, 261116);
                    gapComposer3.end(true);
                    break;
                }
            case 4:
                Page page = (Page) obj;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                page.getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= ((GapComposer) composer4).changed(page.ordinal()) ? 4 : 2;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    int ordinal = page.ordinal();
                    if (ordinal == 0) {
                        gapComposer4.startReplaceGroup(-1843082873);
                        AboutPageKt.AboutPage(null, gapComposer4, 0);
                        gapComposer4.end(false);
                        break;
                    } else if (ordinal != 1) {
                        gapComposer4.startReplaceGroup(-1843084061);
                        gapComposer4.end(false);
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        break;
                    } else {
                        gapComposer4.startReplaceGroup(-1843081591);
                        AboutPageKt.LicensePage(null, null, gapComposer4, 0);
                        gapComposer4.end(false);
                        break;
                    }
                }
            case 5:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m164TextNvy7gAk(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.done$delegate.getValue(), gapComposer5), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer5, 0, 262142);
                    break;
                }
            case 6:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m164TextNvy7gAk(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.website_title$delegate.getValue(), gapComposer6), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer6, 0, 262142);
                    break;
                }
            default:
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m164TextNvy7gAk(StringResourcesKt.stringResource((StringResource) String0_commonMainKt.read_full_license$delegate.getValue(), gapComposer7), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer7, 0, 262142);
                    break;
                }
        }
        return unit;
    }
}
