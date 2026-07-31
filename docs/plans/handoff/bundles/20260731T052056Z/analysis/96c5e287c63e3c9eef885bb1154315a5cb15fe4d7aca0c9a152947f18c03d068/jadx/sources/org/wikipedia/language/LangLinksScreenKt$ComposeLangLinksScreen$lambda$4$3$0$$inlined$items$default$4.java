package org.wikipedia.language;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import okhttp3.internal.http2.Http2Connection;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceContent;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4 implements Function4 {
    public final /* synthetic */ List $items;
    public final /* synthetic */ Object $onLanguageSelected$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4(int i, Object obj, List list) {
        this.$r8$classId = i;
        this.$items = list;
        this.$onLanguageSelected$inlined = obj;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        GapComposer gapComposer;
        int i2;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.$onLanguageSelected$inlined;
        List list = this.$items;
        switch (i3) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Number) obj4).intValue();
                Function1 function1 = (Function1) obj5;
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
                    LangLinksItem langLinksItem = (LangLinksItem) list.get(intValue);
                    gapComposer2.startReplaceGroup(-1068477060);
                    int length = langLinksItem.headerText.length();
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (length > 0) {
                        gapComposer2.startReplaceGroup(-1068441721);
                        TabUtil.ListHeader(langLinksItem.headerText, OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 56.0f), 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 4.0f, 7), null, gapComposer2, 48);
                        gapComposer2.end(false);
                        gapComposer = gapComposer2;
                    } else {
                        gapComposer2.startReplaceGroup(-1068020586);
                        boolean changed = gapComposer2.changed(function1) | gapComposer2.changedInstance(langLinksItem);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (changed || rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new Http2Connection.ReaderRunnable(function1, langLinksItem, 5);
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, false);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i4 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        TabUtil.LangLinksItemView(OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f), langLinksItem.localizedName, langLinksItem.canonicalName, langLinksItem.articleName, gapComposer2, 6);
                        gapComposer = gapComposer2;
                        gapComposer.end(true);
                        gapComposer.end(false);
                    }
                    gapComposer.end(false);
                    break;
                }
                break;
            default:
                LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj;
                int intValue3 = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) obj3;
                int intValue4 = ((Number) obj4).intValue();
                if ((intValue4 & 6) == 0) {
                    i2 = intValue4 | (gapComposer3.changed(lazyItemScopeImpl2) ? 4 : 2);
                } else {
                    i2 = intValue4;
                }
                if ((48 & intValue4) == 0) {
                    i2 |= gapComposer3.changed(intValue3) ? 32 : 16;
                }
                if (!gapComposer3.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    HomePreferenceContent homePreferenceContent = (HomePreferenceContent) list.get(intValue3);
                    gapComposer3.startReplaceGroup(-1260768570);
                    HomePreferenceScreenKt.HomePreferenceArticleCard(null, (HomePreferenceType) obj5, homePreferenceContent, gapComposer3, 0);
                    gapComposer3.end(false);
                    break;
                }
        }
        return unit;
    }
}
