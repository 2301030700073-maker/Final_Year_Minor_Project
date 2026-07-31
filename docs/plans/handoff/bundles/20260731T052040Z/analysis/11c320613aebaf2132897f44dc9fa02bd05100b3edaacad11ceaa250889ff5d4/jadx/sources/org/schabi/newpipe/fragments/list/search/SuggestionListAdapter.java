package org.schabi.newpipe.fragments.list.search;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.Owner;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import okhttp3.Dispatcher;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchAdapter$PreferenceViewHolder;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuggestionListAdapter extends ListAdapter {
    public final /* synthetic */ int $r8$classId;
    public Object listener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SuggestionItemHolder extends RecyclerView.ViewHolder {
        public final ComponentRegistry.Builder binding;

        public SuggestionItemHolder(ComponentRegistry.Builder builder) {
            super((RelativeLayout) builder.interceptors);
            this.binding = builder;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SuggestionListAdapter(DiffUtil diffUtil, int i) {
        super(diffUtil);
        this.$r8$classId = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        final int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                SuggestionItemHolder suggestionItemHolder = (SuggestionItemHolder) viewHolder;
                suggestionItemHolder.getClass();
                final SuggestionItem suggestionItem = (SuggestionItem) getItem(i);
                suggestionItem.getClass();
                ComponentRegistry.Builder builder = suggestionItemHolder.binding;
                ImageView imageView = (ImageView) builder.mappers;
                LinearLayout linearLayout = (LinearLayout) builder.lazyDecoderFactories;
                imageView.setImageResource(suggestionItem.fromHistory ? R.drawable.ic_history : R.drawable.ic_search);
                ((TextView) builder.keyers).setText(suggestionItem.query);
                linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.list.search.SuggestionListAdapter$$ExternalSyntheticLambda0
                    public final /* synthetic */ SuggestionListAdapter f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i3 = i2;
                        SuggestionItem suggestionItem2 = suggestionItem;
                        SuggestionListAdapter suggestionListAdapter = this.f$0;
                        switch (i3) {
                            case 0:
                                VideoPlayerUi.AnonymousClass1 anonymousClass1 = (VideoPlayerUi.AnonymousClass1) suggestionListAdapter.listener;
                                if (anonymousClass1 != null) {
                                    String str = suggestionItem2.query;
                                    SearchFragment searchFragment = (SearchFragment) anonymousClass1.this$0;
                                    int i4 = SearchFragment.$r8$clinit;
                                    searchFragment.search(str);
                                    searchFragment.searchEditText.setText(str);
                                    break;
                                }
                                break;
                            default:
                                VideoPlayerUi.AnonymousClass1 anonymousClass12 = (VideoPlayerUi.AnonymousClass1) suggestionListAdapter.listener;
                                if (anonymousClass12 != null) {
                                    SearchFragment searchFragment2 = (SearchFragment) anonymousClass12.this$0;
                                    searchFragment2.searchEditText.setText(suggestionItem2.query);
                                    EditText editText = searchFragment2.searchEditText;
                                    editText.setSelection(editText.getText().length());
                                    break;
                                }
                                break;
                        }
                    }
                });
                linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.fragments.list.search.SuggestionListAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        VideoPlayerUi.AnonymousClass1 anonymousClass1 = (VideoPlayerUi.AnonymousClass1) SuggestionListAdapter.this.listener;
                        if (anonymousClass1 != null) {
                            SuggestionItem suggestionItem2 = suggestionItem;
                            if (suggestionItem2.fromHistory) {
                                final SearchFragment searchFragment = (SearchFragment) anonymousClass1.this$0;
                                int i3 = SearchFragment.$r8$clinit;
                                AppCompatActivity appCompatActivity = searchFragment.activity;
                                if (appCompatActivity != null && searchFragment.historyRecordManager != null && searchFragment.searchEditText != null) {
                                    final String str = suggestionItem2.query;
                                    AlertDialog.Builder title = new AlertDialog.Builder(appCompatActivity).setTitle(str);
                                    title.setMessage(R.string.delete_item_search_history);
                                    title.P.mCancelable = true;
                                    title.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.delete, new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda27
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i4) {
                                            SearchFragment searchFragment2 = SearchFragment.this;
                                            PlaylistHeaderBinding playlistHeaderBinding = searchFragment2.historyRecordManager;
                                            playlistHeaderBinding.getClass();
                                            SingleObserveOn subscribeOn = new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(playlistHeaderBinding, str, 7), 3).subscribeOn(Schedulers.IO);
                                            Scheduler mainThread = AndroidSchedulers.mainThread();
                                            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new SearchFragment$$ExternalSyntheticLambda1(searchFragment2, 8), new SearchFragment$$ExternalSyntheticLambda1(searchFragment2, 9));
                                            try {
                                                subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                                                searchFragment2.disposables.add(consumerSingleObserver);
                                            } catch (NullPointerException e) {
                                                throw e;
                                            } catch (Throwable th) {
                                                throw Owner.CC.m(th, "subscribeActual failed", th);
                                            }
                                        }
                                    }).show();
                                }
                            }
                        }
                        return true;
                    }
                });
                final int i3 = 1;
                ((LinearLayout) builder.lazyFetcherFactories).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.list.search.SuggestionListAdapter$$ExternalSyntheticLambda0
                    public final /* synthetic */ SuggestionListAdapter f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i32 = i3;
                        SuggestionItem suggestionItem2 = suggestionItem;
                        SuggestionListAdapter suggestionListAdapter = this.f$0;
                        switch (i32) {
                            case 0:
                                VideoPlayerUi.AnonymousClass1 anonymousClass1 = (VideoPlayerUi.AnonymousClass1) suggestionListAdapter.listener;
                                if (anonymousClass1 != null) {
                                    String str = suggestionItem2.query;
                                    SearchFragment searchFragment = (SearchFragment) anonymousClass1.this$0;
                                    int i4 = SearchFragment.$r8$clinit;
                                    searchFragment.search(str);
                                    searchFragment.searchEditText.setText(str);
                                    break;
                                }
                                break;
                            default:
                                VideoPlayerUi.AnonymousClass1 anonymousClass12 = (VideoPlayerUi.AnonymousClass1) suggestionListAdapter.listener;
                                if (anonymousClass12 != null) {
                                    SearchFragment searchFragment2 = (SearchFragment) anonymousClass12.this$0;
                                    searchFragment2.searchEditText.setText(suggestionItem2.query);
                                    EditText editText = searchFragment2.searchEditText;
                                    editText.setSelection(editText.getText().length());
                                    break;
                                }
                                break;
                        }
                    }
                });
                break;
            default:
                PreferenceSearchAdapter$PreferenceViewHolder preferenceSearchAdapter$PreferenceViewHolder = (PreferenceSearchAdapter$PreferenceViewHolder) viewHolder;
                PreferenceSearchItem preferenceSearchItem = (PreferenceSearchItem) getItem(i);
                TextView textView = (TextView) preferenceSearchAdapter$PreferenceViewHolder.binding.runningSyncCalls;
                String str = preferenceSearchItem.title;
                String str2 = preferenceSearchItem.breadcrumbs;
                textView.setText(str);
                String str3 = preferenceSearchItem.summary;
                boolean isEmpty = str3.isEmpty();
                Dispatcher dispatcher = preferenceSearchAdapter$PreferenceViewHolder.binding;
                if (isEmpty) {
                    ((TextView) dispatcher.runningAsyncCalls).setVisibility(8);
                } else {
                    ((TextView) dispatcher.runningAsyncCalls).setVisibility(0);
                    ((TextView) dispatcher.runningAsyncCalls).setText(str3);
                }
                if (str2.isEmpty()) {
                    ((TextView) dispatcher.readyAsyncCalls).setVisibility(8);
                } else {
                    ((TextView) dispatcher.readyAsyncCalls).setVisibility(0);
                    ((TextView) dispatcher.readyAsyncCalls).setText(str2);
                }
                preferenceSearchAdapter$PreferenceViewHolder.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, preferenceSearchItem, 18));
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (this.$r8$classId) {
            case 0:
                viewGroup.getClass();
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_suggestion, viewGroup, false);
                int i2 = R.id.item_suggestion_icon;
                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.item_suggestion_icon, inflate);
                if (imageView != null) {
                    i2 = R.id.item_suggestion_query;
                    TextView textView = (TextView) Options.Companion.findChildViewById(R.id.item_suggestion_query, inflate);
                    if (textView != null) {
                        i2 = R.id.suggestion_insert;
                        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.suggestion_insert, inflate);
                        if (linearLayout != null) {
                            i2 = R.id.suggestion_search;
                            LinearLayout linearLayout2 = (LinearLayout) Options.Companion.findChildViewById(R.id.suggestion_search, inflate);
                            if (linearLayout2 != null) {
                                break;
                            }
                        }
                    }
                }
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
                break;
            default:
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.settings_preferencesearch_list_item_result, viewGroup, false);
                int i3 = R.id.breadcrumbs;
                TextView textView2 = (TextView) Options.Companion.findChildViewById(R.id.breadcrumbs, inflate2);
                if (textView2 != null) {
                    i3 = R.id.summary;
                    TextView textView3 = (TextView) Options.Companion.findChildViewById(R.id.summary, inflate2);
                    if (textView3 != null) {
                        i3 = R.id.title;
                        TextView textView4 = (TextView) Options.Companion.findChildViewById(R.id.title, inflate2);
                        if (textView4 != null) {
                            break;
                        }
                    }
                }
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i3)));
                break;
        }
        return null;
    }
}
