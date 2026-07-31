package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.IntRectKt;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicDialogKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ BasicDialogKt$$ExternalSyntheticLambda0(String str, ButtonColors buttonColors) {
        this.$r8$classId = 1;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        String str = this.f$0;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.m765TextHeadlineSmallXl4FiYE(this.f$0, null, 0L, null, 0, 0, gapComposer, 0, 62);
                    break;
                }
            case 1:
                RowScope rowScope = (RowScope) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    gapComposer2.startReplaceGroup(-495333820);
                    gapComposer2.end(false);
                    TextKt.m362TextNvy7gAk(this.f$0, null, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 261118);
                    break;
                }
            case 2:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Data.Companion.m825TextBodyMediumZHfKjFs(this.f$0, (Modifier) null, ((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant, 0, 0, (Function1) null, gapComposer3, 0, 122);
                    break;
                }
            case 3:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    DBUtil.AppTitleTopHeader(str, null, gapComposer4, 0, 2);
                    break;
                }
            case 4:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    DBUtil.AppTitleTopHeader(str, null, gapComposer5, 0, 2);
                    break;
                }
            case 5:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer6.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer6.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m219paddingVpY3zN4 = OffsetKt.m219paddingVpY3zN4(fillElement, 12.0f, 24.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer6, 0);
                    long j = gapComposer6.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer6, m219paddingVpY3zN4);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m380setimpl(gapComposer6, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer6, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer6, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer6, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer6.consume(staticProvidableCompositionLocal), companion, 24.0f, gapComposer6);
                    IntRectKt.m765TextHeadlineSmallXl4FiYE(this.f$0, fillElement, ((ThemeColorScheme) gapComposer6.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).primary, new TextAlign(3), 2, 1, gapComposer6, 221232, 0);
                    gapComposer6.startReplaceGroup(1477699886);
                    gapComposer6.end(false);
                    gapComposer6.end(true);
                    break;
                }
            default:
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    String str2 = this.f$0;
                    if (str2 != null) {
                        gapComposer7.startReplaceGroup(1901886731);
                        ViewSizeResolver.CC.m((ThemeSpacings) gapComposer7.consume(ThemeSpacingsKt.LocalThemeSpacings), companion, 12.0f, gapComposer7);
                        MathKt.m984TextBodySmallXl4FiYE(str2, null, ((ThemeColorScheme) gapComposer7.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant, null, 0, 0, gapComposer7, 0, 58);
                        gapComposer7.end(false);
                        break;
                    } else {
                        gapComposer7.startReplaceGroup(1901886730);
                        gapComposer7.end(false);
                        break;
                    }
                }
        }
        return unit;
    }

    public /* synthetic */ BasicDialogKt$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }
}
