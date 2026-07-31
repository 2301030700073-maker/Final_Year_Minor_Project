package org.schabi.newpipe.settings.preferencesearch;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.fragments.list.search.SuggestionListAdapter;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class PreferenceSearchFragment extends Fragment {
    public SuggestionListAdapter adapter;
    public Printer binding;
    public TimeAgoParser searcher;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.settings_preferencesearch_fragment, viewGroup, false);
        int i = R.id.empty_state_view;
        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.empty_state_view, inflate);
        if (linearLayout != null) {
            i = R.id.searchResults;
            RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.searchResults, inflate);
            if (recyclerView != null) {
                this.binding = new Printer(9, (LinearLayout) inflate, linearLayout, recyclerView);
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
                SuggestionListAdapter suggestionListAdapter = new SuggestionListAdapter(new PeertubeInstanceListFragment.PeertubeInstanceCallback(2), 1);
                this.adapter = suggestionListAdapter;
                suggestionListAdapter.listener = new Player$$ExternalSyntheticLambda1(this, 20);
                ((RecyclerView) this.binding.settings).setAdapter(suggestionListAdapter);
                return (LinearLayout) this.binding.root;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }
}
