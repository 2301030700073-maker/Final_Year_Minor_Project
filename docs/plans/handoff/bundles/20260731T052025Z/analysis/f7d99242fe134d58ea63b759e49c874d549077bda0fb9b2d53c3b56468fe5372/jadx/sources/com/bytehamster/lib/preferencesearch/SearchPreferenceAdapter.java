package com.bytehamster.lib.preferencesearch;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity;
import java.util.ArrayList;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchPreferenceAdapter extends RecyclerView.Adapter {
    public ArrayList dataset;
    public SearchPreferenceFragment onItemClickListener;
    public SearchConfiguration searchConfiguration;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class HistoryViewHolder extends ViewHolder {
        public TextView term;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PreferenceViewHolder extends ViewHolder {
        public TextView breadcrumbs;
        public TextView summary;
        public TextView title;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class ViewHolder extends RecyclerView.ViewHolder {
        public final View root;

        public ViewHolder(View view) {
            super(view);
            this.root = view;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.dataset.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return ((ListItem) this.dataset.get(i)).getType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        final ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        final ListItem listItem = (ListItem) this.dataset.get(i);
        if (getItemViewType(i) == 1) {
            ((HistoryViewHolder) viewHolder2).term.setText(((HistoryItem) listItem).term);
        } else if (getItemViewType(i) == 2) {
            PreferenceViewHolder preferenceViewHolder = (PreferenceViewHolder) viewHolder2;
            PreferenceItem preferenceItem = (PreferenceItem) listItem;
            TextView textView = preferenceViewHolder.title;
            TextView textView2 = preferenceViewHolder.breadcrumbs;
            TextView textView3 = preferenceViewHolder.summary;
            textView.setText(preferenceItem.title);
            if (TextUtils.isEmpty(preferenceItem.summary)) {
                textView3.setVisibility(8);
            } else {
                textView3.setVisibility(0);
                textView3.setText(preferenceItem.summary);
            }
            if (this.searchConfiguration.breadcrumbsEnabled) {
                textView2.setText(preferenceItem.breadcrumbs);
                textView2.setAlpha(0.6f);
                textView3.setAlpha(1.0f);
            } else {
                textView2.setVisibility(8);
                textView3.setAlpha(0.6f);
            }
        }
        viewHolder2.root.setOnClickListener(new View.OnClickListener() { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str;
                SearchPreferenceFragment searchPreferenceFragment = SearchPreferenceAdapter.this.onItemClickListener;
                if (searchPreferenceFragment != null) {
                    int bindingAdapterPosition = viewHolder2.getBindingAdapterPosition();
                    ListItem listItem2 = listItem;
                    int i2 = 1;
                    if (listItem2.getType() == 1) {
                        String str2 = ((HistoryItem) listItem2).term;
                        ((EditText) searchPreferenceFragment.viewHolder.authority).setText(str2);
                        ((EditText) searchPreferenceFragment.viewHolder.authority).setSelection(str2.length());
                        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = searchPreferenceFragment.historyClickListener;
                        if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null) {
                            String str3 = str2.toString();
                            SearchPreferenceActionView searchPreferenceActionView = (SearchPreferenceActionView) onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.f$0;
                            int i3 = SearchPreferenceActionView.$r8$clinit;
                            searchPreferenceActionView.setQuery$1(str3);
                            return;
                        }
                        return;
                    }
                    searchPreferenceFragment.hideKeyboard$2();
                    try {
                        GeneralSettingsActivity generalSettingsActivity = (GeneralSettingsActivity) searchPreferenceFragment.getActivity();
                        PreferenceItem preferenceItem2 = (PreferenceItem) searchPreferenceFragment.results.get(bindingAdapterPosition);
                        String str4 = preferenceItem2.title;
                        if (str4 != null) {
                            searchPreferenceFragment.addHistoryEntry(str4);
                        }
                        if (preferenceItem2.keyBreadcrumbs.isEmpty()) {
                            str = null;
                        } else {
                            ArrayList arrayList = preferenceItem2.keyBreadcrumbs;
                            str = (String) arrayList.get(arrayList.size() - 1);
                        }
                        generalSettingsActivity.onSearchResultClicked(new ParseError(i2, preferenceItem2.key, str));
                    } catch (ClassCastException unused) {
                        throw new ClassCastException(searchPreferenceFragment.getActivity().toString() + " must implement SearchPreferenceResultListener");
                    }
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != 2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.searchpreference_list_item_history, viewGroup, false);
            HistoryViewHolder historyViewHolder = new HistoryViewHolder(inflate);
            historyViewHolder.term = (TextView) inflate.findViewById(R.id.term);
            return historyViewHolder;
        }
        View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.searchpreference_list_item_result, viewGroup, false);
        PreferenceViewHolder preferenceViewHolder = new PreferenceViewHolder(inflate2);
        preferenceViewHolder.title = (TextView) inflate2.findViewById(R.id.title);
        preferenceViewHolder.summary = (TextView) inflate2.findViewById(R.id.summary);
        preferenceViewHolder.breadcrumbs = (TextView) inflate2.findViewById(R.id.breadcrumbs);
        return preferenceViewHolder;
    }
}
