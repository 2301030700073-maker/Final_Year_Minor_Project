package org.wikipedia.feed;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CommunityContentTabKt$$ExternalSyntheticLambda44 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ WikiSite f$1;
    public final /* synthetic */ CommunityContentState f$2;
    public final /* synthetic */ Function1 f$3;
    public final /* synthetic */ PageOverflowMenuViewModel.PageOverflowMenuState f$4;

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda44(Modifier modifier, WikiSite wikiSite, CommunityContentState communityContentState, Function1 function1, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState) {
        this.f$0 = modifier;
        this.f$1 = wikiSite;
        this.f$2 = communityContentState;
        this.f$3 = function1;
        this.f$4 = pageOverflowMenuState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier then = this.f$0.then(SizeKt.FillWholeMaxSize);
                    PaddingValuesImpl m126PaddingValuesa9UjIt4$default = OffsetKt.m126PaddingValuesa9UjIt4$default(RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 5);
                    WikiSite wikiSite = this.f$1;
                    boolean changedInstance = gapComposer.changedInstance(wikiSite);
                    CommunityContentState communityContentState = this.f$2;
                    boolean changedInstance2 = changedInstance | gapComposer.changedInstance(communityContentState);
                    Function1 function1 = this.f$3;
                    boolean changed = changedInstance2 | gapComposer.changed(function1);
                    PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = this.f$4;
                    boolean changedInstance3 = gapComposer.changedInstance(pageOverflowMenuState) | changed;
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance3 || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda7(communityContentState, wikiSite, function1, pageOverflowMenuState, 8);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    ExceptionsKt.LazyColumn(then, null, m126PaddingValuesa9UjIt4$default, null, null, null, false, null, (Function1) rememberedValue, gapComposer, 384, 506);
                    break;
                }
                break;
            default:
                ((Integer) obj2).getClass();
                ForYouCardKt.CommunityContentTab(this.f$0, this.f$1, this.f$2, this.f$4, this.f$3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda44(Modifier modifier, WikiSite wikiSite, CommunityContentState communityContentState, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function1 function1, int i) {
        this.f$0 = modifier;
        this.f$1 = wikiSite;
        this.f$2 = communityContentState;
        this.f$4 = pageOverflowMenuState;
        this.f$3 = function1;
    }
}
