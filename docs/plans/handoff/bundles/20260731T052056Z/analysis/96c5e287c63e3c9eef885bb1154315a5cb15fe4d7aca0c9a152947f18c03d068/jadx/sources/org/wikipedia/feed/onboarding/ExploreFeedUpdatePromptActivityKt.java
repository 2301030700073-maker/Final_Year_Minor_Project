package org.wikipedia.feed.onboarding;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import java.util.List;
import kotlin.jvm.functions.Function0;
import org.wikipedia.R;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda10;
import org.wikipedia.search.HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ExploreFeedUpdatePromptActivityKt {
    public static final List onboardingItems = Room.listOf((Object[]) new OnboardingItem[]{new OnboardingItem(R.drawable.ic_home_24dp, R.string.explore_feed_new_update_prompt_new_name_title, R.string.explore_feed_new_update_prompt_new_name_description, 8, null), new OnboardingItem(R.drawable.ic_split_scene_24dp, R.string.explore_feed_new_update_prompt_two_ways_title, R.string.explore_feed_new_update_prompt_two_ways_description, 8, null), new OnboardingItem(R.drawable.ic_baseline_tune_24, R.string.explore_feed_new_update_prompt_control_title, R.string.explore_feed_new_update_prompt_control_description, 8, null), new OnboardingItem(R.drawable.ic_public_24dp, R.string.explore_feed_new_update_prompt_language_title, R.string.explore_feed_new_update_prompt_language_description, 8, null)});

    public static final void ExploreFeedUpdatePromptScreen(Modifier modifier, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        gapComposer.startRestartGroup(274188152);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 256 : 128;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            modifier2 = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(modifier2), null, Expect_jvmKt.rememberComposableLambda(1161554621, new HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(function02, function0, 2, b), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, ExploreFeedBuildingActivityKt.f41lambda$2113332089, gapComposer, 805306752, 442);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new InitialOnboardingScreenKt$$ExternalSyntheticLambda10(modifier2, function0, function02, i, 1);
        }
    }
}
