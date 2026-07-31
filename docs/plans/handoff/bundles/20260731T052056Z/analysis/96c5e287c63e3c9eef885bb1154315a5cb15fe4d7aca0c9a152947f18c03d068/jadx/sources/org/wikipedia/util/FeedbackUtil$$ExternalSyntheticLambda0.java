package org.wikipedia.util;

import android.view.View;
import okio.Path;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.search.SearchFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedbackUtil$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FeedbackUtil$$ExternalSyntheticLambda0(SearchFragment searchFragment) {
        this.$r8$classId = 4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                view.getClass();
                ShareUtil.showToastOverView(view, view.getContentDescription(), 3000);
                break;
            case 1:
                WikiGamesEvent.submit$default("noshow_click", "sync_enable_prompt", null, null, null, null, null, null, 508);
                break;
            case 2:
                WikiGamesEvent.submit$default("noshow_click", "sync_prompt", null, null, null, null, null, null, 508);
                break;
            case 3:
                Path.Companion.setSyncEnabledWithSetup();
                break;
        }
    }

    public /* synthetic */ FeedbackUtil$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    private final void onClick$org$wikipedia$search$SearchFragment$$ExternalSyntheticLambda4(View view) {
    }
}
