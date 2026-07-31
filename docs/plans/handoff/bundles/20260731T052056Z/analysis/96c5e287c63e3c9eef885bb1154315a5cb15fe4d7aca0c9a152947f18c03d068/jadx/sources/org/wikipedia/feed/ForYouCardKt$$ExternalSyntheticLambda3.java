package org.wikipedia.feed;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ WikiSite f$1;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda3(Context context, WikiSite wikiSite, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = wikiSite;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        WikiSite wikiSite = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), TuplesKt.colorResource(R.color.gray700, gapComposer), gapComposer, 392, 0);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer2), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer2, 392, 0);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer3), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), Color.White, gapComposer3, 3464, 0);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.menu_page_article_share, new Object[0]), null, ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer4, 0, 0, 131066);
                    break;
                }
            case 4:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.menu_page_add_to_default_list, new Object[0]), null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer5, 0, 0, 131066);
                    break;
                }
            case 5:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_card_dismiss, new Object[0]), null, ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer6, 0, 0, 131066);
                    break;
                }
            case 6:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.explore_feed_header_overflow_hide_module_label, new Object[0]), null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer7, 0, 0, 131066);
                    break;
                }
            case 7:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer8.consume(staticProvidableCompositionLocal)).backgroundColor, RoundedCornerShapeKt.CircleShape), 40.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j = gapComposer8.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer8.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer8, m145size3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer8.startReusableNode();
                    if (gapComposer8.inserting) {
                        gapComposer8.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer8.useNode();
                    }
                    Updater.m327setimpl(gapComposer8, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer8, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer8, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer8, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer8, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_bookmark_border_white_24dp, 0, gapComposer8), ContextKt.getString(context, wikiSite.languageCode, R.string.feed_card_add_to_default_list, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer8.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer8, 392, 0);
                    gapComposer8.end(true);
                    break;
                }
            case 8:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m145size3ABfNKs2 = SizeKt.m145size3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer9.consume(staticProvidableCompositionLocal2)).backgroundColor, RoundedCornerShapeKt.CircleShape), 40.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j2 = gapComposer9.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer9.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer9, m145size3ABfNKs2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer9.startReusableNode();
                    if (gapComposer9.inserting) {
                        gapComposer9.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer9.useNode();
                    }
                    Updater.m327setimpl(gapComposer9, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer9, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer9, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer9, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer9, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_share, 0, gapComposer9), ContextKt.getString(context, wikiSite.languageCode, R.string.view_featured_image_card_share, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer9.consume(staticProvidableCompositionLocal2)).primaryColor, gapComposer9, 392, 0);
                    gapComposer9.end(true);
                    break;
                }
            case 9:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    Modifier m145size3ABfNKs3 = SizeKt.m145size3ABfNKs(companion, 40.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(m145size3ABfNKs3, ((WikipediaColor) gapComposer10.consume(staticProvidableCompositionLocal3)).backgroundColor, RoundedCornerShapeKt.CircleShape);
                    MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j3 = gapComposer10.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer10.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer10, m46backgroundbw27NRU);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer10.startReusableNode();
                    if (gapComposer10.inserting) {
                        gapComposer10.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer10.useNode();
                    }
                    Updater.m327setimpl(gapComposer10, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer10, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer10, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer10, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer10, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_download_24px, 0, gapComposer10), ContextKt.getString(context, wikiSite.languageCode, R.string.view_featured_image_card_download, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer10.consume(staticProvidableCompositionLocal3)).primaryColor, gapComposer10, 392, 0);
                    gapComposer10.end(true);
                    break;
                }
            case 10:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (!gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    Modifier m145size3ABfNKs4 = SizeKt.m145size3ABfNKs(companion, 40.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m46backgroundbw27NRU2 = ImageKt.m46backgroundbw27NRU(m145size3ABfNKs4, ((WikipediaColor) gapComposer11.consume(staticProvidableCompositionLocal4)).backgroundColor, RoundedCornerShapeKt.CircleShape);
                    MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j4 = gapComposer11.compositeKeyHashCode;
                    int i5 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer11.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer11, m46backgroundbw27NRU2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                    gapComposer11.startReusableNode();
                    if (gapComposer11.inserting) {
                        gapComposer11.createNode(layoutNode$Companion$Constructor$14);
                    } else {
                        gapComposer11.useNode();
                    }
                    Updater.m327setimpl(gapComposer11, maybeCachedBoxMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer11, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer11, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer11, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer11, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_share, 0, gapComposer11), ContextKt.getString(context, wikiSite.languageCode, R.string.view_featured_image_card_share, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer11.consume(staticProvidableCompositionLocal4)).primaryColor, gapComposer11, 392, 0);
                    gapComposer11.end(true);
                    break;
                }
            case 11:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (!gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer12), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), null, ((WikipediaColor) gapComposer12.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer12, 8, 4);
                    break;
                }
            case 12:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer13), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), null, ((WikipediaColor) gapComposer13.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, gapComposer13, 8, 4);
                    break;
                }
            default:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (!gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer14), ContextKt.getString(context, wikiSite.languageCode, R.string.menu_feed_overflow_label, new Object[0]), SizeKt.m145size3ABfNKs(companion, 24.0f), Color.White, gapComposer14, 3464, 0);
                    break;
                }
        }
        return unit;
    }
}
