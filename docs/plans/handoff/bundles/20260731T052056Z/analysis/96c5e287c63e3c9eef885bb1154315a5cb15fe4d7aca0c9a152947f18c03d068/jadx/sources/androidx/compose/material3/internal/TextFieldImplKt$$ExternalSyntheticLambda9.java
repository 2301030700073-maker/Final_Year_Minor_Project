package androidx.compose.material3.internal;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$$ExternalSyntheticLambda9 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda9(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Function0 function0 = this.f$0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                float f = ((Dp) function0.invoke()).value;
                Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(constraints.value, 0, 0, ConstraintsKt.m688constrainHeightK40F9xA(constraints.value, Dp.m693equalsimpl0(f, Float.NaN) ? 0 : measureScope.mo81roundToPx0680j_4(f)), 0, 11));
                break;
            case 1:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.SearchBarCard(null, UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_search_hint, gapComposer), function0, gapComposer, 0);
                    break;
                }
            case 2:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.SearchBarCard(null, UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_search_hint, gapComposer2), function0, gapComposer2, 0);
                    break;
                }
            case 3:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer3.changed(function0);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new Handshake$$ExternalSyntheticLambda0(26, function0);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    RecommendedReadingListSourceScreenKt.InterestsView(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m51clickableoSLSa3U$default(15, Modifier.Companion.$$INSTANCE, null, (Function0) rememberedValue, false), RecyclerView.DECELERATION_RATE, 8.0f, 1), gapComposer3, 0);
                    break;
                }
                break;
            default:
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.SettingsRow(UtilsKt.stringResource(R.string.home_feed_settings_modules_title, gapComposer4), null, UtilsKt.stringResource(R.string.home_feed_settings_community_subtitle, gapComposer4), this.f$0, null, null, gapComposer4, 0, 50);
                    break;
                }
        }
        return unit;
    }
}
