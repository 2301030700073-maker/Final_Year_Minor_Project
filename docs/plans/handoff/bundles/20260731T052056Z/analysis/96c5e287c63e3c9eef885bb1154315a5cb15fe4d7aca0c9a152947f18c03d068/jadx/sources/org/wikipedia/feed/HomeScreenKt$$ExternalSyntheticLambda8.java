package org.wikipedia.feed;

import androidx.compose.foundation.GestureNode;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.node.TraversableNode;
import coil3.compose.AsyncImagePainter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.db.Category;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda8(Function1 function1, FeaturedImageCard featuredImageCard) {
        this.$r8$classId = 11;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                function1.invoke(new HomeAction.LanguageSelected(str));
                return Unit.INSTANCE;
            case 1:
                Long l = (Long) obj;
                l.getClass();
                return function1.invoke(l);
            case 2:
                TraversableNode traversableNode = (TraversableNode) obj;
                if (!(traversableNode instanceof GestureNode)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Node is not a GestureNode instance");
                    return null;
                }
                Boolean bool = (Boolean) function1.invoke(((GestureNode) traversableNode).gestureConnection);
                bool.getClass();
                return bool;
            case 3:
                Snapshot snapshot = (Snapshot) function1.invoke((SnapshotIdSet) obj);
                synchronized (SnapshotKt.lock) {
                    SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(snapshot.getSnapshotId());
                }
                return snapshot;
            case 4:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                function1.invoke(bool2);
                return Unit.INSTANCE;
            case 5:
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                function1.invoke(pageTitle);
                return Unit.INSTANCE;
            case 6:
                Category category = (Category) obj;
                category.getClass();
                function1.invoke(category);
                return Unit.INSTANCE;
            case 7:
                String str2 = (String) obj;
                str2.getClass();
                if (function1 != null) {
                    function1.invoke(str2);
                }
                return Unit.INSTANCE;
            case 8:
                String str3 = (String) obj;
                str3.getClass();
                function1.invoke(str3);
                return Unit.INSTANCE;
            case 9:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                function1.invoke(bool3);
                return Unit.INSTANCE;
            case 10:
                FeaturedImageCard featuredImageCard = (FeaturedImageCard) obj;
                featuredImageCard.getClass();
                function1.invoke(new HomeAction.ImageClick(featuredImageCard));
                return Unit.INSTANCE;
            case 11:
                ((FeaturedImage) obj).getClass();
                function1.invoke(new HomeAction.HideModule("FEATURED_IMAGE"));
                return Unit.INSTANCE;
            case 12:
                FeaturedImageCard featuredImageCard2 = (FeaturedImageCard) obj;
                featuredImageCard2.getClass();
                function1.invoke(new HomeAction.ImageDownloadClick(featuredImageCard2));
                return Unit.INSTANCE;
            case IMAGE_VALUE:
                FeaturedImageCard featuredImageCard3 = (FeaturedImageCard) obj;
                featuredImageCard3.getClass();
                function1.invoke(new HomeAction.ImageShareClick(featuredImageCard3));
                return Unit.INSTANCE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                Card card = (Card) obj;
                card.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card));
                return Unit.INSTANCE;
            case 15:
                Card card2 = (Card) obj;
                card2.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card2));
                return Unit.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                Card card3 = (Card) obj;
                card3.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card3));
                return Unit.INSTANCE;
            case VERTICAL_GRID_ITEM_VALUE:
                Card card4 = (Card) obj;
                card4.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card4));
                return Unit.INSTANCE;
            case RADIO_GROUP_VALUE:
                WikiGame$OnThisDayGame wikiGame$OnThisDayGame = (WikiGame$OnThisDayGame) obj;
                wikiGame$OnThisDayGame.getClass();
                function1.invoke(new HomeAction.GameActionClick(wikiGame$OnThisDayGame));
                return Unit.INSTANCE;
            case RADIO_BUTTON_VALUE:
                Card card5 = (Card) obj;
                card5.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card5));
                return Unit.INSTANCE;
            case RADIO_ROW_VALUE:
                Card card6 = (Card) obj;
                card6.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card6));
                return Unit.INSTANCE;
            case RADIO_COLUMN_VALUE:
                Card card7 = (Card) obj;
                card7.getClass();
                function1.invoke(new HomeAction.CustomizeClick(card7));
                return Unit.INSTANCE;
            case SIZE_BOX_VALUE:
                String str4 = (String) obj;
                str4.getClass();
                function1.invoke(new HomeAction.LanguageSelected(str4));
                return Unit.INSTANCE;
            case 23:
                String str5 = (String) obj;
                str5.getClass();
                function1.invoke(str5);
                return Unit.INSTANCE;
            case 24:
                OnboardingTopic onboardingTopic = (OnboardingTopic) obj;
                onboardingTopic.getClass();
                function1.invoke(onboardingTopic);
                return Unit.INSTANCE;
            case 25:
                Boolean bool4 = (Boolean) obj;
                bool4.booleanValue();
                function1.invoke(bool4);
                return Unit.INSTANCE;
            case 26:
                RecommendedReadingListSource recommendedReadingListSource = (RecommendedReadingListSource) obj;
                recommendedReadingListSource.getClass();
                function1.invoke(recommendedReadingListSource);
                return Unit.INSTANCE;
            case 27:
                String str6 = (String) obj;
                str6.getClass();
                function1.invoke(str6);
                return Unit.INSTANCE;
            case 28:
                String str7 = (String) obj;
                str7.getClass();
                function1.invoke(str7);
                return Unit.INSTANCE;
            default:
                ((AsyncImagePainter.State.Success) obj).getClass();
                if (function1 != null) {
                    function1.invoke(Boolean.TRUE);
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda8(Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }
}
