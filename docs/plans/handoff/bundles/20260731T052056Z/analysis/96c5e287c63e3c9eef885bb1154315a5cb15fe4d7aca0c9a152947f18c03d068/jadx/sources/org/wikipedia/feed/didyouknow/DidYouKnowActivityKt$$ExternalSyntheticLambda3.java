package org.wikipedia.feed.didyouknow;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxMeasurePolicy;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.room.Room;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$IntRef;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DidYouKnowActivityKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ DidYouKnowActivityKt$$ExternalSyntheticLambda3(List list, WikiSite wikiSite, Function1 function1, Function3 function3, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function0) {
        this.f$0 = list;
        this.f$1 = wikiSite;
        this.f$2 = function1;
        this.f$3 = function3;
        this.f$4 = pageOverflowMenuState;
        this.f$5 = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 0;
        Object obj2 = this.f$5;
        Object obj3 = this.f$4;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        List list = this.f$0;
        Object obj6 = this.f$1;
        switch (i) {
            case 0:
                final WikiSite wikiSite = (WikiSite) obj6;
                final Function1 function1 = (Function1) obj5;
                final Function3 function3 = (Function3) obj4;
                final PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj3;
                final Function0 function0 = (Function0) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                final int i3 = 0;
                for (Object obj7 : list) {
                    int i4 = i3 + 1;
                    if (i3 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    final String str = (String) obj7;
                    LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivityKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj8, Object obj9, Object obj10) {
                            GapComposer gapComposer = (GapComposer) obj9;
                            int intValue = ((Integer) obj10).intValue();
                            ((LazyItemScopeImpl) obj8).getClass();
                            if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                int i5 = i3;
                                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-2017265131, new ForYouCardKt$$ExternalSyntheticLambda31(i5, pageOverflowMenuState, function0), gapComposer);
                                Function3 function32 = function3;
                                boolean changed = gapComposer.changed(function32) | gapComposer.changed(i5);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == Composer$Companion.Empty) {
                                    rememberedValue = new DidYouKnowActivityKt$$ExternalSyntheticLambda7(i5, 0, function32);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                TabUtil.DidYouKnowListItem(WikiSite.this, str, function1, rememberComposableLambda, (Function1) rememberedValue, gapComposer, 3072);
                            } else {
                                gapComposer.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, true, -292651575), 3);
                    i3 = i4;
                }
                return unit;
            default:
                Placeable[] placeableArr = (Placeable[]) obj6;
                MeasureScope measureScope = (MeasureScope) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                Ref$IntRef ref$IntRef2 = (Ref$IntRef) obj3;
                BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i5 = 0;
                while (i2 < length) {
                    Placeable placeable = placeableArr[i2];
                    placeable.getClass();
                    BoxKt.placeInBox(placementScope, placeable, (Measurable) list.get(i5), measureScope.getLayoutDirection(), ref$IntRef.element, ref$IntRef2.element, boxMeasurePolicy.alignment);
                    i2++;
                    i5++;
                }
                return unit;
        }
    }

    public /* synthetic */ DidYouKnowActivityKt$$ExternalSyntheticLambda3(Placeable[] placeableArr, List list, MeasureScope measureScope, Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, BoxMeasurePolicy boxMeasurePolicy) {
        this.f$1 = placeableArr;
        this.f$0 = list;
        this.f$2 = measureScope;
        this.f$3 = ref$IntRef;
        this.f$4 = ref$IntRef2;
        this.f$5 = boxMeasurePolicy;
    }
}
