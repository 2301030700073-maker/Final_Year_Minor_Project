package org.wikipedia.readinglist;

import android.content.Intent;
import android.view.View;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListFragment$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListFragment f$0;

    public /* synthetic */ ReadingListFragment$$ExternalSyntheticLambda1(ReadingListFragment readingListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        ReadingListFragment readingListFragment = this.f$0;
        switch (i) {
            case 0:
                readingListFragment.previewSaveDialog();
                break;
            case 1:
                WikiGamesEvent.submit$default("customize_click", "rrl_discover", null, null, null, null, null, null, 508);
                int i2 = RecommendedReadingListSettingsActivity.$r8$clinit;
                readingListFragment.startActivity(new Intent(readingListFragment.requireContext(), (Class<?>) RecommendedReadingListSettingsActivity.class), null);
                break;
            case 2:
                readingListFragment.requireActivity().getOnBackPressedDispatcher().onBackPressed();
                break;
            default:
                readingListFragment.requireActivity().getOnBackPressedDispatcher().onBackPressed();
                break;
        }
    }
}
