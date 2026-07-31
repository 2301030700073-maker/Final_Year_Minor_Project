package org.wikipedia.feed;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.feed.discover.DiscoverModuleKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.search.NoSearchResultsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(Modifier modifier, String str, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier modifier = this.f$0;
        String str = this.f$1;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                ForYouCardKt.PlaceholderTile(Updater.updateChangedFlags(1), gapComposer, modifier, str);
                break;
            case 1:
                TabsBoxKt.SearchEmptyView(Updater.updateChangedFlags(7), gapComposer, modifier, str);
                break;
            case 2:
                TabsBoxKt.Snackbar(Updater.updateChangedFlags(1), gapComposer, modifier, str);
                break;
            case 3:
                DiscoverModuleKt.SkeletonArticlePreviewRow(Updater.updateChangedFlags(49), gapComposer, modifier, str);
                break;
            case 4:
                HomePreferenceScreenKt.ArticleCardTag(Updater.updateChangedFlags(1), gapComposer, modifier, str);
                break;
            default:
                NoSearchResultsKt.HybridSearchSkeletonLoader(Updater.updateChangedFlags(1), gapComposer, modifier, str);
                break;
        }
        return unit;
    }

    public /* synthetic */ FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(String str, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = str;
        this.f$0 = modifier;
    }
}
