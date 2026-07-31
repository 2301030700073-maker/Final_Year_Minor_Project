package org.wikipedia.activitytab;

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
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.search.HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ActivityTabOnboardingActivityKt {
    public static final List onboardingItems = Room.listOf((Object[]) new OnboardingItem[]{new OnboardingItem(R.drawable.ic_newsstand_24, R.string.activity_tab_onboarding_reading_patterns_title, R.string.activity_tab_onboarding_reading_patterns_message, 8, null), new OnboardingItem(R.drawable.ic_mode_edit_white_24dp, R.string.activity_tab_onboarding_impact_title, R.string.activity_tab_onboarding_impact_message, 8, null), new OnboardingItem(R.drawable.ic_outline_stadia_controller_24, R.string.activity_tab_onboarding_engage_title, R.string.activity_tab_onboarding_engage_message, 8, null), new OnboardingItem(R.drawable.ic_outline_lock_24, R.string.activity_tab_onboarding_stay_in_control_title, R.string.activity_tab_onboarding_stay_in_control_message, 8, null)});

    public static final void OnboardingScreen(Modifier modifier, List list, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        Modifier modifier2;
        list.getClass();
        function0.getClass();
        function02.getClass();
        gapComposer.startRestartGroup(-757151117);
        int i2 = i | 6 | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function02) ? 2048 : 1024);
        byte b = 0;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            modifier2 = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(modifier2), null, Expect_jvmKt.rememberComposableLambda(2081806968, new HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(function02, function0, i3, b), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-1172728382, new ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1(list, 0), gapComposer), gapComposer, 805306752, 442);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(modifier2, list, function0, function02, i, 2);
        }
    }
}
