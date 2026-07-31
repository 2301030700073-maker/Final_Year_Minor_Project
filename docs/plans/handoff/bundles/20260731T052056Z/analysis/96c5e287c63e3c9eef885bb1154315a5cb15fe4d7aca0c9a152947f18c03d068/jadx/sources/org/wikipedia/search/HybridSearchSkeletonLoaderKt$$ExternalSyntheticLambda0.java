package org.wikipedia.search;

import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import org.jsoup.Jsoup;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$2;
    public final /* synthetic */ InfiniteTransition f$3;

    public /* synthetic */ HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0(List list, InfiniteTransition infiniteTransition, int i) {
        this.$r8$classId = i;
        this.f$2 = list;
        this.f$3 = infiniteTransition;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        InfiniteTransition infiniteTransition = this.f$3;
        List list = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 129) != 128)) {
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.m146sizeVpY3zN4(companion, 292.0f, 500.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, ColorKt.RectangleShape), 16.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    gapComposer.startReplaceGroup(1452469958);
                    for (int i3 = 0; i3 < 31; i3++) {
                        BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), list, infiniteTransition, 6), gapComposer, 0);
                    }
                    gapComposer.end(false);
                    gapComposer.end(true);
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 129) != 128)) {
                    TabsBoxKt.ListItemSkeletonLoader(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 24.0f, 1), list, infiniteTransition, gapComposer2, 518);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 2:
                ((Integer) obj2).getClass();
                GapComposer gapComposer3 = (GapComposer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 129) != 128)) {
                    TabsBoxKt.ListItemSkeletonLoader(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 24.0f, 1), list, infiniteTransition, gapComposer3, 518);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                GapComposer gapComposer4 = (GapComposer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 129) != 128)) {
                    TabsBoxKt.ListItemSkeletonLoader(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 24.0f, 1), list, infiniteTransition, gapComposer4, 518);
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }
}
