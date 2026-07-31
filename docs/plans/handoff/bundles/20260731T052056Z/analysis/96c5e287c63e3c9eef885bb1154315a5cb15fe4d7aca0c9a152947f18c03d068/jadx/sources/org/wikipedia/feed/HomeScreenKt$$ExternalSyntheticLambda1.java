package org.wikipedia.feed;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshDefaults;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda1(Function1 function1, boolean z) {
        this.$r8$classId = 2;
        this.f$1 = z;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final boolean z = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                PullToRefreshStateImpl pullToRefreshStateImpl = (PullToRefreshStateImpl) obj4;
                BoxScope boxScope = (BoxScope) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(boxScope) ? 4 : 2;
                }
                if (gapComposer.shouldExecute(1 & intValue, (intValue & 19) != 18)) {
                    PullToRefreshDefaults pullToRefreshDefaults = PullToRefreshDefaults.INSTANCE;
                    Modifier align = boxScope.align(Modifier.Companion.$$INSTANCE, Alignment.Companion.TopCenter);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    pullToRefreshDefaults.m319Indicator2poqoh4(pullToRefreshStateImpl, this.f$1, align, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, RecyclerView.DECELERATION_RATE, gapComposer, 0, 32);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                final Function0 function0 = (Function0) obj4;
                Modifier modifier = (Modifier) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                gapComposer2.startReplaceGroup(-196777734);
                final long j = ((TextSelectionColors) gapComposer2.consume(TextSelectionColorsKt.LocalTextSelectionColors)).handleColor;
                boolean changed = gapComposer2.changed(j) | gapComposer2.changed(function0) | gapComposer2.changed(z);
                Object rememberedValue = gapComposer2.rememberedValue();
                if (changed || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new Function1() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj5) {
                            CacheDrawScope cacheDrawScope = (CacheDrawScope) obj5;
                            return cacheDrawScope.onDrawWithContent(new WorkerWrapper$$ExternalSyntheticLambda1(function0, z, SimpleLayoutKt.createHandleImage(cacheDrawScope, Float.intBitsToFloat((int) (cacheDrawScope.cacheParams.mo353getSizeNHjbRc() >> 32)) / 2.0f), new BlendModeColorFilter(j, 5), 1));
                        }
                    };
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                Modifier drawWithCache = ClipKt.drawWithCache(modifier, (Function1) rememberedValue);
                gapComposer2.end(false);
                return drawWithCache;
            default:
                Function1 function1 = (Function1) obj4;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    RecommendedReadingListSourceScreenKt.NotificationView(6, gapComposer3, OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), function1, z);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda1(Object obj, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }
}
