package org.wikipedia.feed.random;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomModuleKt$$ExternalSyntheticLambda7 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ WikiSite f$1;

    public /* synthetic */ RandomModuleKt$$ExternalSyntheticLambda7(Context context, WikiSite wikiSite, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = wikiSite;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        WikiSite wikiSite = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer, 48);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_dice_24, 0, gapComposer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource, null, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 56, 4);
                    OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 4.0f));
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_random_shuffle_button, new Object[0]), null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).titleMedium, gapComposer, 1572864, 0, 131002);
                    gapComposer.end(true);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String string = ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_did_you_know_more_label, new Object[0]);
                    TextStyle textStyle = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(string, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).progressiveColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 1572864, 0, 131002);
                    OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 8.0f));
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer2), ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_did_you_know_more_label, new Object[0]), null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).progressiveColor, gapComposer2, 8, 4);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Painter painterResource2 = UnsignedKt.painterResource(R.drawable.ic_lightbulb_24dp, 0, gapComposer3);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource2, null, null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).primaryColor, gapComposer3, 56, 4);
                    OffsetKt.Spacer(gapComposer3, SizeKt.m145size3ABfNKs(companion, 8.0f));
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_see_all_button, new Object[0]), null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer3, 0, 0, 131066);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    String string2 = ContextKt.getString(context, wikiSite.languageCode, R.string.more_events_text, new Object[0]);
                    TextStyle textStyle2 = ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(string2, null, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal4)).progressiveColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer4, 1572864, 0, 131002);
                    OffsetKt.Spacer(gapComposer4, SizeKt.m149width3ABfNKs(companion, 8.0f));
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer4), ContextKt.getString(context, wikiSite.languageCode, R.string.more_events_text, new Object[0]), null, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal4)).progressiveColor, gapComposer4, 8, 4);
                    break;
                }
            default:
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    String string3 = ContextKt.getString(context, wikiSite.languageCode, R.string.view_top_read_card_action, new Object[0]);
                    TextStyle textStyle3 = ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).labelLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(string3, null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal5)).progressiveColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposer5, 1572864, 0, 131002);
                    OffsetKt.Spacer(gapComposer5, SizeKt.m149width3ABfNKs(companion, 8.0f));
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer5), ContextKt.getString(context, wikiSite.languageCode, R.string.view_top_read_card_action, new Object[0]), null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal5)).progressiveColor, gapComposer5, 8, 4);
                    break;
                }
        }
        return unit;
    }
}
