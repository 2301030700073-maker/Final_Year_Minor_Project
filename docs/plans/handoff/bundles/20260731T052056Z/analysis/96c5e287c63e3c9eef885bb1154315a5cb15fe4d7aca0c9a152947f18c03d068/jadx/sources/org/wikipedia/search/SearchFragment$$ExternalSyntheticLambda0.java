package org.wikipedia.search;

import android.view.View;
import com.caverock.androidsvg.SVGAndroidRenderer;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchFragment f$0;

    public /* synthetic */ SearchFragment$$ExternalSyntheticLambda0(SearchFragment searchFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = searchFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        SearchFragment searchFragment = this.f$0;
        switch (i) {
            case 0:
                SVGAndroidRenderer instrument = ContextKt.getInstrument(searchFragment.requireActivity());
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "search_close", null, null, 246);
                }
                searchFragment.closeSearch$1();
                searchFragment.switchToSearch("");
                break;
            case 1:
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchFragment.requireActivity());
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "search_back", null, null, 246);
                }
                searchFragment.requireActivity().finishAfterTransition();
                break;
            default:
                searchFragment.onLangButtonClick();
                break;
        }
    }
}
