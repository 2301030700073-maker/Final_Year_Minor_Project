package org.schabi.newpipe.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.ComponentRegistry;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonStringWriter;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import okio.Options;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.fragments.list.search.SuggestionItem;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda18;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PeertubeInstanceListFragment extends Fragment {
    public ComponentRegistry.Builder binding;
    public CompositeDisposable disposables = new CompositeDisposable();
    public InstanceListAdapter instanceListAdapter;
    public String savedInstanceListKey;
    public PeertubeInstance selectedInstance;
    public SharedPreferences sharedPreferences;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class InstanceListAdapter extends ListAdapter {
        public final LayoutInflater inflater;
        public final ItemTouchHelper itemTouchHelper;
        public RadioButton lastChecked;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class TabViewHolder extends RecyclerView.ViewHolder {
            public final DrawerHeaderBinding itemBinding;

            public TabViewHolder(DrawerHeaderBinding drawerHeaderBinding) {
                super((CardView) drawerHeaderBinding.rootView);
                this.itemBinding = drawerHeaderBinding;
            }
        }

        public InstanceListAdapter(Context context, ItemTouchHelper itemTouchHelper) {
            super(new PeertubeInstanceCallback(0));
            this.itemTouchHelper = itemTouchHelper;
            this.inflater = LayoutInflater.from(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final TabViewHolder tabViewHolder = (TabViewHolder) viewHolder;
            DrawerHeaderBinding drawerHeaderBinding = tabViewHolder.itemBinding;
            ((AppCompatImageView) drawerHeaderBinding.drawerArrow).setOnTouchListener(new View.OnTouchListener() { // from class: org.schabi.newpipe.settings.PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    PeertubeInstanceListFragment.InstanceListAdapter.TabViewHolder tabViewHolder2 = PeertubeInstanceListFragment.InstanceListAdapter.TabViewHolder.this;
                    PeertubeInstanceListFragment.InstanceListAdapter instanceListAdapter = PeertubeInstanceListFragment.InstanceListAdapter.this;
                    ItemTouchHelper itemTouchHelper = instanceListAdapter.itemTouchHelper;
                    if (motionEvent.getActionMasked() != 0 || itemTouchHelper == null || instanceListAdapter.getItemCount() <= 1) {
                        return false;
                    }
                    itemTouchHelper.startDrag(tabViewHolder2);
                    return true;
                }
            });
            InstanceListAdapter instanceListAdapter = InstanceListAdapter.this;
            PeertubeInstance peertubeInstance = (PeertubeInstance) instanceListAdapter.getItem(i);
            ((TextView) drawerHeaderBinding.drawerHeaderActionButton).setText(peertubeInstance.name);
            TextView textView = (TextView) drawerHeaderBinding.drawerHeaderNewpipeTitle;
            String str = peertubeInstance.url;
            textView.setText(str);
            RadioButton radioButton = (RadioButton) drawerHeaderBinding.drawerHeaderServiceView;
            radioButton.setOnCheckedChangeListener(null);
            int i2 = 1;
            if (PeertubeInstanceListFragment.this.selectedInstance.url.equals(str)) {
                RadioButton radioButton2 = instanceListAdapter.lastChecked;
                if (radioButton2 != null && radioButton2 != radioButton) {
                    radioButton2.setChecked(false);
                }
                radioButton.setChecked(true);
                instanceListAdapter.lastChecked = radioButton;
            }
            radioButton.setOnCheckedChangeListener(new PlaybackParameterDialog$$ExternalSyntheticLambda18(tabViewHolder, peertubeInstance, i2));
            ((AppCompatImageView) drawerHeaderBinding.drawerHeaderServiceIcon).setImageResource(R.drawable.ic_placeholder_peertube);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View inflate = this.inflater.inflate(R.layout.item_instance, viewGroup, false);
            int i2 = R.id.handle;
            AppCompatImageView appCompatImageView = (AppCompatImageView) Options.Companion.findChildViewById(R.id.handle, inflate);
            if (appCompatImageView != null) {
                i2 = R.id.instanceIcon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) Options.Companion.findChildViewById(R.id.instanceIcon, inflate);
                if (appCompatImageView2 != null) {
                    i2 = R.id.instanceName;
                    TextView textView = (TextView) Options.Companion.findChildViewById(R.id.instanceName, inflate);
                    if (textView != null) {
                        i2 = R.id.instanceUrl;
                        TextView textView2 = (TextView) Options.Companion.findChildViewById(R.id.instanceUrl, inflate);
                        if (textView2 != null) {
                            i2 = R.id.selectInstanceRB;
                            RadioButton radioButton = (RadioButton) Options.Companion.findChildViewById(R.id.selectInstanceRB, inflate);
                            if (radioButton != null) {
                                return new TabViewHolder(new DrawerHeaderBinding((CardView) inflate, appCompatImageView, appCompatImageView2, textView, textView2, radioButton));
                            }
                        }
                    }
                }
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PeertubeInstanceCallback extends DiffUtil {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ PeertubeInstanceCallback(int i) {
            this.$r8$classId = i;
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areContentsTheSame(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    PeertubeInstance peertubeInstance = (PeertubeInstance) obj;
                    PeertubeInstance peertubeInstance2 = (PeertubeInstance) obj2;
                    return peertubeInstance.name.equals(peertubeInstance2.name) && peertubeInstance.url.equals(peertubeInstance2.url);
                case 1:
                    return true;
                default:
                    PreferenceSearchItem preferenceSearchItem = (PreferenceSearchItem) obj;
                    PreferenceSearchItem preferenceSearchItem2 = (PreferenceSearchItem) obj2;
                    return Jsoup.listOf((Object[]) new String[]{preferenceSearchItem.title, preferenceSearchItem.summary, preferenceSearchItem.entries, preferenceSearchItem.breadcrumbs}).equals(Jsoup.listOf((Object[]) new String[]{preferenceSearchItem2.title, preferenceSearchItem2.summary, preferenceSearchItem2.entries, preferenceSearchItem2.breadcrumbs}));
            }
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areItemsTheSame(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    return ((PeertubeInstance) obj).url.equals(((PeertubeInstance) obj2).url);
                case 1:
                    SuggestionItem suggestionItem = (SuggestionItem) obj;
                    SuggestionItem suggestionItem2 = (SuggestionItem) obj2;
                    return suggestionItem.fromHistory == suggestionItem2.fromHistory && Intrinsics.areEqual(suggestionItem.query, suggestionItem2.query);
                default:
                    return ((PreferenceSearchItem) obj).key.equals(((PreferenceSearchItem) obj2).key);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.sharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext());
        this.savedInstanceListKey = getString(R.string.peertube_instance_list_key);
        PeertubeInstance peertubeInstance = ServiceList.PeerTube.instance;
        peertubeInstance.getClass();
        this.selectedInstance = peertubeInstance;
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_chooser_fragment, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_instance_list, viewGroup, false);
        int i = R.id.addInstanceButton;
        FloatingActionButton floatingActionButton = (FloatingActionButton) Options.Companion.findChildViewById(R.id.addInstanceButton, inflate);
        if (floatingActionButton != null) {
            i = R.id.instanceHelpTV;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.instanceHelpTV, inflate);
            if (newPipeTextView != null) {
                i = R.id.instances;
                RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.instances, inflate);
                if (recyclerView != null) {
                    i = R.id.loading_progress_bar;
                    ProgressBar progressBar = (ProgressBar) Options.Companion.findChildViewById(R.id.loading_progress_bar, inflate);
                    if (progressBar != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) inflate;
                        this.binding = new ComponentRegistry.Builder(relativeLayout, floatingActionButton, newPipeTextView, recyclerView, progressBar, 14);
                        return relativeLayout;
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        this.disposables = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.menu_item_restore_default) {
            return false;
        }
        Context requireContext = requireContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext);
        builder.setTitle(R.string.restore_defaults);
        builder.setMessage(R.string.restore_defaults_confirmation);
        builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new FeedFragment$$ExternalSyntheticLambda9(this, requireContext, 9)).show();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.object();
        jsonStringWriter.array("instances");
        Iterator<Object> it = this.instanceListAdapter.getCurrentList().iterator();
        while (it.hasNext()) {
            PeertubeInstance peertubeInstance = (PeertubeInstance) it.next();
            jsonStringWriter.object();
            jsonStringWriter.value("name", peertubeInstance.name);
            jsonStringWriter.value("url", peertubeInstance.url);
            jsonStringWriter.end();
        }
        jsonStringWriter.end();
        jsonStringWriter.end();
        this.sharedPreferences.edit().putString(this.savedInstanceListKey, jsonStringWriter.done()).apply();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        Options.Companion.setTitleToAppCompatActivity(getActivity(), getString(R.string.peertube_instance_url_title));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        ((NewPipeTextView) this.binding.keyers).setText(getString(R.string.peertube_instance_url_help, getString(R.string.peertube_instance_list_url)));
        ((FloatingActionButton) this.binding.mappers).setOnClickListener(new SettingsActivity$$ExternalSyntheticLambda1(this, 1));
        ((RecyclerView) this.binding.lazyFetcherFactories).setLayoutManager(new LinearLayoutManager(requireContext()));
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ChooseTabsFragment.AnonymousClass2(this, 3));
        itemTouchHelper.attachToRecyclerView((RecyclerView) this.binding.lazyFetcherFactories);
        InstanceListAdapter instanceListAdapter = new InstanceListAdapter(requireContext(), itemTouchHelper);
        this.instanceListAdapter = instanceListAdapter;
        ((RecyclerView) this.binding.lazyFetcherFactories).setAdapter(instanceListAdapter);
        this.instanceListAdapter.submitList(Room.getInstanceList(requireContext()));
    }
}
