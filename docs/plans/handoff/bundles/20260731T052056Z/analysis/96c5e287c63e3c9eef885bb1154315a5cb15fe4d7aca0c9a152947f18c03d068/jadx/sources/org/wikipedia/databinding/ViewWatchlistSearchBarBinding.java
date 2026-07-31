package org.wikipedia.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.room.Room;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewWatchlistSearchBarBinding {
    public final ImageView filterButton;
    public final TextView filterCount;
    public final WikiCardView rootView;

    public /* synthetic */ ViewWatchlistSearchBarBinding(WikiCardView wikiCardView, ImageView imageView, TextView textView) {
        this.rootView = wikiCardView;
        this.filterButton = imageView;
        this.filterCount = textView;
    }

    public static ViewWatchlistSearchBarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.view_edit_history_search_bar, viewGroup, false);
        int i = R.id.filter_by_button;
        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.filter_by_button);
        if (imageView != null) {
            i = R.id.filter_count;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.filter_count);
            if (textView != null) {
                return new ViewWatchlistSearchBarBinding((WikiCardView) inflate, imageView, textView);
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }
}
