package org.schabi.newpipe.fragments.list.search;

import android.view.View;
import android.widget.LinearLayout;
import androidx.sqlite.SQLite;
import net.newpipe.app.AppKt;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda7 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchFragment f$0;

    public /* synthetic */ SearchFragment$$ExternalSyntheticLambda7(SearchFragment searchFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = searchFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        SearchFragment searchFragment = this.f$0;
        switch (i) {
            case 0:
                int i2 = SearchFragment.$r8$clinit;
                if (!Utils.isBlank(searchFragment.getSearchEditString())) {
                    ((NewPipeTextView) searchFragment.searchBinding.drawerHeaderNewpipeTitle).setVisibility(8);
                    searchFragment.searchEditText.setText("");
                    searchFragment.suggestionListAdapter.submitList(null);
                    Jsoup.showKeyboard(searchFragment.activity, searchFragment.searchEditText);
                    break;
                } else {
                    SQLite.gotoMainFragment(searchFragment.getFM());
                    break;
                }
            case 1:
                ((NewPipeTextView) searchFragment.searchBinding.drawerHeaderNewpipeTitle).setVisibility(8);
                searchFragment.search(searchFragment.searchSuggestion);
                searchFragment.searchEditText.setText(searchFragment.searchSuggestion);
                break;
            default:
                if ((searchFragment.showLocalSuggestions || searchFragment.showRemoteSuggestions) && searchFragment.errorPanelHelper.errorPanelRoot.getVisibility() != 0) {
                    searchFragment.suggestionsPanelVisible = true;
                    AppKt.animate$default((LinearLayout) searchFragment.searchBinding.drawerHeaderActionButton, true, 200L, AnimationType.LIGHT_SLIDE_AND_ALPHA, 0L, null, 24);
                }
                if (DeviceUtils.isTv(searchFragment.getContext())) {
                    Jsoup.showKeyboard(searchFragment.activity, searchFragment.searchEditText);
                    break;
                }
                break;
        }
    }
}
