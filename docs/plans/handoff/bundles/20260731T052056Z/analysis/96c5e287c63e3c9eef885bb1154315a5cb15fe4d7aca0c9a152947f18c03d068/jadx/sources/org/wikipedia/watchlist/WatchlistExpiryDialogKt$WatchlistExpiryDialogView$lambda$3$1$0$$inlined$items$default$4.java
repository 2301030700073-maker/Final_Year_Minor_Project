package org.wikipedia.watchlist;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import com.skydoves.balloon.Balloon$relayShowAlignBottom$$inlined$relay$1;
import com.skydoves.balloon.Balloon$relayShowAlignTop$$inlined$relay$1;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import org.wikipedia.R;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.language.addlanguages.LanguageListItem;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4 implements Function4 {
    public final /* synthetic */ List $items;
    public final /* synthetic */ Function1 $onExpiryItemSelected$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $selectedWatchListTime$delegate$inlined;

    public WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(List list, Function1 function1, MutableState mutableState) {
        this.$r8$classId = 0;
        this.$items = list;
        this.$onExpiryItemSelected$inlined = function1;
        this.$selectedWatchListTime$delegate$inlined = mutableState;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        GapComposer gapComposer;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5 = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Object obj5 = Composer$Companion.Empty;
        Function1 function1 = this.$onExpiryItemSelected$inlined;
        Unit unit = Unit.INSTANCE;
        Object obj6 = this.$selectedWatchListTime$delegate$inlined;
        List list = this.$items;
        switch (i5) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Number) obj4).intValue();
                MutableState mutableState = (MutableState) obj6;
                if ((intValue2 & 6) == 0) {
                    i = intValue2 | (gapComposer2.changed(lazyItemScopeImpl) ? 4 : 2);
                } else {
                    i = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i |= gapComposer2.changed(intValue) ? 32 : 16;
                }
                if (!gapComposer2.shouldExecute(i & 1, (i & 147) != 146)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    WatchlistExpiry watchlistExpiry = (WatchlistExpiry) list.get(intValue);
                    gapComposer2.startReplaceGroup(135337209);
                    String stringResource = UtilsKt.stringResource(watchlistExpiry == WatchlistExpiry.NEVER ? R.string.watchlist_expiry_dialog_permanent : watchlistExpiry.getStringId(), gapComposer2);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    boolean changed = gapComposer2.changed(watchlistExpiry.ordinal()) | gapComposer2.changed(function1);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == obj5) {
                        rememberedValue = new Balloon$relayShowAlignBottom$$inlined$relay$1(watchlistExpiry, function1, mutableState, 1);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue, false), 48.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i6 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    if (watchlistExpiry.getIcon() != null) {
                        gapComposer2.startReplaceGroup(632355301);
                        IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(watchlistExpiry.getIcon().intValue(), 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ComposeColors.Yellow500, gapComposer2, 3512, 0);
                        gapComposer = gapComposer2;
                        gapComposer.end(false);
                    } else {
                        gapComposer = gapComposer2;
                        gapComposer.startReplaceGroup(632687249);
                        BoxKt.Box(SizeKt.m145size3ABfNKs(companion, 24.0f), gapComposer, 6);
                        gapComposer.end(false);
                    }
                    Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(new LayoutWeightElement(1.0f, true), 24.0f, RecyclerView.DECELERATION_RATE, 2);
                    TextStyle textStyle = ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(stringResource, m134paddingVpY3zN4$default2, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, Intrinsics.areEqual(watchlistExpiry.getExpiry(), ((WatchlistExpiry) mutableState.getValue()).getExpiry()) ? FontWeight.Bold : null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 131000);
                    if (Intrinsics.areEqual(watchlistExpiry.getExpiry(), ((WatchlistExpiry) mutableState.getValue()).getExpiry())) {
                        gapComposer.startReplaceGroup(633449291);
                        z = false;
                        IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_check_black_24dp, 0, gapComposer), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer, 440, 0);
                        gapComposer.end(false);
                    } else {
                        z = false;
                        gapComposer.startReplaceGroup(633794972);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    gapComposer.end(z);
                    break;
                }
            case 1:
                LazyStaggeredGridItemScopeImpl lazyStaggeredGridItemScopeImpl = (LazyStaggeredGridItemScopeImpl) obj;
                int intValue3 = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) obj3;
                int intValue4 = ((Number) obj4).intValue();
                if ((intValue4 & 6) == 0) {
                    i2 = (gapComposer3.changed(lazyStaggeredGridItemScopeImpl) ? 4 : 2) | intValue4;
                } else {
                    i2 = intValue4;
                }
                if ((intValue4 & 48) == 0) {
                    i2 |= gapComposer3.changed(intValue3) ? 32 : 16;
                }
                if (!gapComposer3.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    PageTitle pageTitle = (PageTitle) list.get(intValue3);
                    gapComposer3.startReplaceGroup(-1171954858);
                    Modifier animateItem$default = Animation.CC.animateItem$default(lazyStaggeredGridItemScopeImpl);
                    boolean contains = ((ArticlesState.Success) ((ArticlesState) obj6)).selectedArticles.contains(pageTitle);
                    boolean changed2 = gapComposer3.changed(function1) | gapComposer3.changedInstance(pageTitle);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue2 == obj5) {
                        rememberedValue2 = new Latch$await$2$2(8, function1, pageTitle);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    TabsBoxKt.ArticleCard(animateItem$default, pageTitle, contains, (Function1) rememberedValue2, gapComposer3, 0);
                    gapComposer3.end(false);
                    break;
                }
            case 2:
                LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj;
                int intValue5 = ((Number) obj2).intValue();
                boolean z3 = true;
                GapComposer gapComposer4 = (GapComposer) obj3;
                int intValue6 = ((Number) obj4).intValue();
                Context context = (Context) obj6;
                if ((intValue6 & 6) == 0) {
                    i3 = intValue6 | (gapComposer4.changed(lazyItemScopeImpl2) ? 4 : 2);
                } else {
                    i3 = intValue6;
                }
                if ((intValue6 & 48) == 0) {
                    i3 |= gapComposer4.changed(intValue5) ? 32 : 16;
                }
                if (!gapComposer4.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    LanguageListItem languageListItem = (LanguageListItem) list.get(intValue5);
                    gapComposer4.startReplaceGroup(-684494301);
                    String str = languageListItem.headerText;
                    String str2 = languageListItem.canonicalName;
                    if (str.length() > 0) {
                        gapComposer4.startReplaceGroup(-684453103);
                        Cookie.Companion.ListHeader(languageListItem.headerText, OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 56.0f), 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 4.0f, 7), null, gapComposer4, 48);
                        gapComposer4.end(false);
                        z2 = false;
                    } else {
                        gapComposer4.startReplaceGroup(-684023412);
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        String capitalize = StringUtil.capitalize(languageListItem.localizedName);
                        if (capitalize == null) {
                            capitalize = "";
                        }
                        boolean changedInstance = gapComposer4.changedInstance(context);
                        if ((((i3 & 112) ^ 48) <= 32 || !gapComposer4.changed(intValue5)) && (i3 & 48) != 32) {
                            z3 = false;
                        }
                        boolean changed3 = changedInstance | z3 | gapComposer4.changed(function1) | gapComposer4.changed(languageListItem);
                        Object rememberedValue3 = gapComposer4.rememberedValue();
                        if (changed3 || rememberedValue3 == obj5) {
                            rememberedValue3 = new Balloon$relayShowAlignTop$$inlined$relay$1(context, intValue5, function1, languageListItem);
                            gapComposer4.updateRememberedValue(rememberedValue3);
                        }
                        z2 = false;
                        Cookie.Companion.LanguageListItemView(TestTagKt.testTag(OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue3, false), 1.0f), 16.0f), str2), capitalize, str2, gapComposer4, 0);
                        gapComposer4.end(false);
                    }
                    gapComposer4.end(z2);
                    break;
                }
                break;
            default:
                LazyStaggeredGridItemScopeImpl lazyStaggeredGridItemScopeImpl2 = (LazyStaggeredGridItemScopeImpl) obj;
                int intValue7 = ((Number) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) obj3;
                int intValue8 = ((Number) obj4).intValue();
                if ((intValue8 & 6) == 0) {
                    i4 = (gapComposer5.changed(lazyStaggeredGridItemScopeImpl2) ? 4 : 2) | intValue8;
                } else {
                    i4 = intValue8;
                }
                if ((intValue8 & 48) == 0) {
                    i4 |= gapComposer5.changed(intValue7) ? 32 : 16;
                }
                if (!gapComposer5.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    PageTitle pageTitle2 = (PageTitle) list.get(intValue7);
                    gapComposer5.startReplaceGroup(-785987698);
                    TabsBoxKt.ArticleCard(Animation.CC.animateItem$default(lazyStaggeredGridItemScopeImpl2), pageTitle2, ((Set) obj6).contains(pageTitle2), this.$onExpiryItemSelected$inlined, gapComposer5, 0);
                    gapComposer5.end(false);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(List list, Object obj, Function1 function1, int i) {
        this.$r8$classId = i;
        this.$items = list;
        this.$selectedWatchListTime$delegate$inlined = obj;
        this.$onExpiryItemSelected$inlined = function1;
    }
}
