package org.wikipedia.views;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ActionProvider;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import kotlin.text.RegexKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.watchlist.WatchlistFragment;
import org.wikipedia.watchlist.WatchlistViewModel;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchAndFilterActionProvider extends ActionProvider {
    public final DefaultSocket binding;
    public final OkHttpCall.AnonymousClass1 callback;
    public final ImageView filterIcon;
    public final String searchHintString;

    public SearchAndFilterActionProvider(Context context, String str, OkHttpCall.AnonymousClass1 anonymousClass1) {
        super(context);
        this.searchHintString = str;
        this.callback = anonymousClass1;
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_search_and_filter, (ViewGroup) null, false);
        int i = R.id.filter_count;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.filter_count);
        if (textView != null) {
            i = R.id.filter_icon;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.filter_icon);
            if (imageView != null) {
                i = R.id.search_input;
                CabSearchView cabSearchView = (CabSearchView) Room.findChildViewById(inflate, R.id.search_input);
                if (cabSearchView != null) {
                    this.binding = new DefaultSocket((LinearLayout) inflate, textView, imageView, cabSearchView, 25);
                    this.filterIcon = imageView;
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // androidx.core.view.ActionProvider
    public final View onCreateActionView() {
        DefaultSocket defaultSocket = this.binding;
        ImageView imageView = (ImageView) defaultSocket.source;
        CabSearchView cabSearchView = (CabSearchView) defaultSocket.sink;
        cabSearchView.setFocusable(true);
        cabSearchView.setIconified(false);
        cabSearchView.setMaxWidth(Integer.MAX_VALUE);
        cabSearchView.setInputType(1);
        cabSearchView.setSubmitButtonEnabled(false);
        cabSearchView.setQueryHint(this.searchHintString);
        Context context = this.mContext;
        TypedValue m = ViewSizeResolver$CC.m(context);
        if (!context.getTheme().resolveAttribute(R.attr.secondary_color, m, true)) {
            m = null;
        }
        if (m == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
            return null;
        }
        cabSearchView.setSearchHintTextColor(m.data);
        updateFilterIconAndText();
        cabSearchView.setOnQueryTextListener(new AvPlayer(28, this));
        cabSearchView.setOnQueryTextFocusChangeListener(new SearchActionProvider$$ExternalSyntheticLambda0(this, 1));
        imageView.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(4, this));
        int i = this.callback.$r8$classId;
        int i2 = R.string.page_edit_history_filter_by;
        switch (i) {
            case VERTICAL_GRID_ITEM_VALUE:
                i2 = R.string.notifications_search_bar_filter_hint;
                break;
            case RADIO_GROUP_VALUE:
            case SIZE_BOX_VALUE:
            case 24:
                break;
            default:
                i2 = R.string.watchlist_search_bar_filter_hint;
                break;
        }
        imageView.setContentDescription(context.getString(i2));
        View view = new View[]{imageView}[0];
        RegexKt.setTooltipText(view, view.getContentDescription());
        View findViewById = cabSearchView.findViewById(R.id.search_plate);
        if (findViewById != null) {
            findViewById.setBackgroundColor(0);
        }
        Object systemService = cabSearchView.getContext().getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).showSoftInput(cabSearchView, 1);
        LinearLayout linearLayout = (LinearLayout) defaultSocket.socket;
        linearLayout.getClass();
        return linearLayout;
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean overridesItemVisibility() {
        return true;
    }

    public final void updateFilterIconAndText() {
        int excludedFiltersCount;
        OkHttpCall.AnonymousClass1 anonymousClass1 = this.callback;
        switch (anonymousClass1.$r8$classId) {
            case VERTICAL_GRID_ITEM_VALUE:
                NotificationActivity notificationActivity = (NotificationActivity) anonymousClass1.this$0;
                int i = NotificationActivity.$r8$clinit;
                excludedFiltersCount = notificationActivity.getViewModel().excludedFiltersCount();
                break;
            case RADIO_GROUP_VALUE:
                Prefs prefs = Prefs.INSTANCE;
                if (Prefs.getEditHistoryFilterType().length() <= 0) {
                    excludedFiltersCount = 0;
                    break;
                } else {
                    excludedFiltersCount = 1;
                    break;
                }
            case SIZE_BOX_VALUE:
                excludedFiltersCount = SuggestedEditsRecentEditsViewModel.Companion.filtersCount();
                break;
            case 24:
                Prefs prefs2 = Prefs.INSTANCE;
                excludedFiltersCount = Prefs.getUserContribFilterExcludedNs().size();
                break;
            default:
                ((WatchlistFragment) anonymousClass1.this$0).getViewModel();
                excludedFiltersCount = WatchlistViewModel.filtersCount();
                break;
        }
        DefaultSocket defaultSocket = this.binding;
        ImageView imageView = (ImageView) defaultSocket.source;
        TextView textView = (TextView) defaultSocket.closeBits;
        Context context = this.mContext;
        if (excludedFiltersCount == 0) {
            textView.setVisibility(8);
            context.getClass();
            imageView.setImageTintList(Cache.Companion.getThemedColorStateList(context, R.attr.primary_color));
        } else {
            textView.setVisibility(0);
            textView.setText(String.valueOf(excludedFiltersCount));
            context.getClass();
            imageView.setImageTintList(Cache.Companion.getThemedColorStateList(context, R.attr.progressive_color));
        }
    }
}
