package org.wikipedia.games;

import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda5(int i, boolean z) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long Color;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else if (!z) {
                    gapComposer.startReplaceGroup(-336038684);
                    gapComposer.end(false);
                    break;
                } else {
                    gapComposer.startReplaceGroup(-336255343);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_check_black_24dp, 0, gapComposer), null, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 56, 4);
                    gapComposer.end(false);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_replay_black_24dp, 0, gapComposer2);
                    Color = ColorKt.Color(Color.m433getRedimpl(r3), Color.m432getGreenimpl(r3), Color.m430getBlueimpl(r3), z ? 1.0f : 0.5f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor));
                    IconKt.m286Iconww6aTOc(painterResource, null, null, Color, gapComposer2, 56, 4);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(1 & intValue3, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else if (!z) {
                    gapComposer3.startReplaceGroup(1182596607);
                    gapComposer3.end(false);
                    break;
                } else {
                    gapComposer3.startReplaceGroup(1182121873);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_base_title, gapComposer3), null, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).headlineSmall, 0L, 0L, FontWeight.Bold, null, 0L, ContextsKt.getSp(24), null, 16646139), gapComposer3, 0, 0, 131066);
                    gapComposer3.end(false);
                    break;
                }
            default:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(z ? R.string.search_widget_install_prompt_add : R.string.search_widget_install_prompt_got_it, gapComposer4), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer4, 0, 0, 262142);
                    break;
                }
        }
        return unit;
    }
}
