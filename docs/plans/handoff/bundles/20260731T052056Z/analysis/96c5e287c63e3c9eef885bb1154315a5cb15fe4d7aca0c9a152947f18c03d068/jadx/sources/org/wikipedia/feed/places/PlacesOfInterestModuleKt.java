package org.wikipedia.feed.places;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PlacesOfInterestModuleKt {
    public static final List placesPromptImageUrls = Room.listOf((Object[]) new String[]{"https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Pyramids_of_Giza%2C_Giza%2C_GG%2C_EGY_%2846986591195%29.jpg/500px-Pyramids_of_Giza%2C_Giza%2C_GG%2C_EGY_%2846986591195%29.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Pavillon_Sully_du_Louvre_002.jpg/500px-Pavillon_Sully_du_Louvre_002.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Rio_de_Janeiro%2C_Brazil_003_version_2.jpg/500px-Rio_de_Janeiro%2C_Brazil_003_version_2.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Snowy_Mountains_In_Sky_%28Unsplash%29.jpg/500px-Snowy_Mountains_In_Sky_%28Unsplash%29.jpg"});

    public static final void PlacesOfInterestArticlesModule(Modifier modifier, WikiSite wikiSite, ForYouModule.PlacesOfInterest placesOfInterest, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        placesOfInterest.getClass();
        gapComposer.startRestartGroup(83526451);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(placesOfInterest) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changedInstance(function23) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function12) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            ForYouCardKt.ForYouModulePager(modifier, placesOfInterest, function1, Expect_jvmKt.rememberComposableLambda(110740831, new PlacesOfInterestModuleKt$$ExternalSyntheticLambda0(placesOfInterest, wikiSite, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), function2, function23, function22, function24, function0, function12), gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 18) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(modifier, wikiSite, placesOfInterest, function2, function22, function23, function24, function0, function1, function12, i, 5);
        }
    }

    public static final void PlacesOfInterestLocationPromptModule(Modifier modifier, WikiSite wikiSite, Function0 function0, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        gapComposer.startRestartGroup(-382383276);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            int i3 = i2 << 15;
            ForYouCardKt.m907FeedFeatureTeaserModule0vH8DBg(ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_places_of_interest_cta_title, new Object[0]), ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_places_of_interest_cta_description, new Object[0]), ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_places_of_interest_cta_button, new Object[0]), UnsignedKt.painterResource(R.drawable.ic_location_on_filled_24dp, 0, gapComposer), placesPromptImageUrls, modifier, RecyclerView.DECELERATION_RATE, function0, gapComposer, (458752 & i3) | 4096 | (i3 & 29360128), 64);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DiscoverModuleKt$$ExternalSyntheticLambda2(i, 1, modifier, function0, wikiSite);
        }
    }
}
