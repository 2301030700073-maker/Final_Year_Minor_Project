package org.wikipedia.widgets.readingchallenge;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Collections;
import java.util.Map;
import kotlin.Metadata;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengeRewardDialog extends ExtendedBottomSheetDialogFragment {
    public final SVGAndroidRenderer instrument;

    public ReadingChallengeRewardDialog() {
        super(true);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-widgetchallenge", testKitchenClient);
        sVGAndroidRenderer.startFunnel("widget_challenge");
        this.instrument = sVGAndroidRenderer;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Prefs prefs = Prefs.INSTANCE;
        Map singletonMap = Collections.singletonMap("streak_count", Integer.valueOf(Prefs.getReadingChallengeStreak()));
        singletonMap.getClass();
        SVGAndroidRenderer.submitInteraction$default(this.instrument, "impression", "challenge_complete", null, "collect_prize", null, singletonMap, 116);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new ReadingChallengeRewardDialog$$ExternalSyntheticLambda0(this, 0), true, 541191903));
        return composeView;
    }
}
