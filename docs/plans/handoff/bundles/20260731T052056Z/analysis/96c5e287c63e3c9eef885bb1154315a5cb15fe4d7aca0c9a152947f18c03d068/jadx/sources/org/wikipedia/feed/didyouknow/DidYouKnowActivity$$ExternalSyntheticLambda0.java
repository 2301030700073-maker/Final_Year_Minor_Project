package org.wikipedia.feed.didyouknow;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okhttp3.Cache;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DidYouKnowActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WikiSite f$0;
    public final /* synthetic */ ArrayList f$1;
    public final /* synthetic */ DidYouKnowActivity f$2;

    public /* synthetic */ DidYouKnowActivity$$ExternalSyntheticLambda0(WikiSite wikiSite, ArrayList arrayList, DidYouKnowActivity didYouKnowActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = wikiSite;
        this.f$1 = arrayList;
        this.f$2 = didYouKnowActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final DidYouKnowActivity didYouKnowActivity = this.f$2;
        boolean z = false;
        boolean z2 = false;
        final int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = DidYouKnowActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1775033262, new DidYouKnowActivity$$ExternalSyntheticLambda0(this.f$0, this.f$1, didYouKnowActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = DidYouKnowActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer2.changedInstance(didYouKnowActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    Object obj3 = rememberedValue;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final boolean z3 = z ? 1 : 0;
                        Function0 function0 = new Function0() { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = z3;
                                Unit unit2 = Unit.INSTANCE;
                                DidYouKnowActivity didYouKnowActivity2 = didYouKnowActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = DidYouKnowActivity.$r8$clinit;
                                        didYouKnowActivity2.finish();
                                        break;
                                    default:
                                        int i7 = DidYouKnowActivity.$r8$clinit;
                                        ((PageOverflowMenuViewModel) didYouKnowActivity2.pageOverflowMenuViewModel$delegate.getValue()).pageOverflowMenuState$delegate.setValue(null);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(function0);
                        obj3 = function0;
                    }
                    Function0 function02 = (Function0) obj3;
                    boolean changedInstance2 = gapComposer2.changedInstance(didYouKnowActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    Object obj4 = rememberedValue2;
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        DidYouKnowActivity$$ExternalSyntheticLambda3 didYouKnowActivity$$ExternalSyntheticLambda3 = new DidYouKnowActivity$$ExternalSyntheticLambda3(didYouKnowActivity, z2 ? 1 : 0);
                        gapComposer2.updateRememberedValue(didYouKnowActivity$$ExternalSyntheticLambda3);
                        obj4 = didYouKnowActivity$$ExternalSyntheticLambda3;
                    }
                    Function1 function1 = (Function1) obj4;
                    PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) ((PageOverflowMenuViewModel) didYouKnowActivity.pageOverflowMenuViewModel$delegate.getValue()).pageOverflowMenuState$delegate.getValue();
                    boolean changedInstance3 = gapComposer2.changedInstance(didYouKnowActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    Object obj5 = rememberedValue3;
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        Function0 function03 = new Function0() { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                DidYouKnowActivity didYouKnowActivity2 = didYouKnowActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = DidYouKnowActivity.$r8$clinit;
                                        didYouKnowActivity2.finish();
                                        break;
                                    default:
                                        int i7 = DidYouKnowActivity.$r8$clinit;
                                        ((PageOverflowMenuViewModel) didYouKnowActivity2.pageOverflowMenuViewModel$delegate.getValue()).pageOverflowMenuState$delegate.setValue(null);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(function03);
                        obj5 = function03;
                    }
                    Function0 function04 = (Function0) obj5;
                    boolean changedInstance4 = gapComposer2.changedInstance(didYouKnowActivity);
                    WikiSite wikiSite = this.f$0;
                    boolean changedInstance5 = changedInstance4 | gapComposer2.changedInstance(wikiSite);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    Object obj6 = rememberedValue4;
                    if (changedInstance5 || rememberedValue4 == neverEqualPolicy) {
                        SubcomposeAsyncImageKt$$ExternalSyntheticLambda2 subcomposeAsyncImageKt$$ExternalSyntheticLambda2 = new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(13, didYouKnowActivity, wikiSite);
                        gapComposer2.updateRememberedValue(subcomposeAsyncImageKt$$ExternalSyntheticLambda2);
                        obj6 = subcomposeAsyncImageKt$$ExternalSyntheticLambda2;
                    }
                    Cache.Companion.DidYouKnowScreen(wikiSite, this.f$1, function02, function1, pageOverflowMenuState, function04, (Function3) obj6, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
