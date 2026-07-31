package org.wikipedia.suggestededits;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import kotlin.TuplesKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterTypes;
import org.wikipedia.views.LangCodeView;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsFilterItemView extends LinearLayout {
    public final Retrofit binding;
    public Callback callback;
    public SuggestedEditsRecentEditsFilterActivity.Filter filter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onCheckedChanged(SuggestedEditsRecentEditsFilterActivity.Filter filter);
    }

    public SuggestedEditsRecentEditsFilterItemView(SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity) {
        super(suggestedEditsRecentEditsFilterActivity, null);
        LayoutInflater.from(suggestedEditsRecentEditsFilterActivity).inflate(R.layout.item_suggested_edits_recent_edits_filter, this);
        int i = R.id.recentEditsFilterCheck;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.recentEditsFilterCheck);
        if (imageView != null) {
            i = R.id.recentEditsFilterDesc;
            TextView textView = (TextView) Room.findChildViewById(this, R.id.recentEditsFilterDesc);
            if (textView != null) {
                i = R.id.recentEditsFilterLanguageCode;
                LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(this, R.id.recentEditsFilterLanguageCode);
                if (langCodeView != null) {
                    i = R.id.recentEditsFilterTitle;
                    TextView textView2 = (TextView) Room.findChildViewById(this, R.id.recentEditsFilterTitle);
                    if (textView2 != null) {
                        i = R.id.recentEditsFilterWikiLogo;
                        ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.recentEditsFilterWikiLogo);
                        if (imageView2 != null) {
                            this.binding = new Retrofit(this, imageView, textView, langCodeView, textView2, imageView2);
                            setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                            setBackgroundColor(Cache.Companion.getThemedColor(suggestedEditsRecentEditsFilterActivity, R.attr.paper_color));
                            setForeground(TuplesKt.getDrawable(suggestedEditsRecentEditsFilterActivity, Cache.Companion.getThemedAttributeId(suggestedEditsRecentEditsFilterActivity, R.attr.selectableItemBackground)));
                            setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(23, this));
                            return;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setContents(SuggestedEditsRecentEditsFilterActivity.Filter filter) {
        boolean z;
        filter.getClass();
        this.filter = filter;
        SuggestedEditsRecentEditsFilterTypes.Companion companion = SuggestedEditsRecentEditsFilterTypes.Companion;
        String str = filter.filterCode;
        companion.getClass();
        SuggestedEditsRecentEditsFilterTypes find = SuggestedEditsRecentEditsFilterTypes.Companion.find(str);
        String string = getContext().getString(find.getTitle());
        Integer description = find.getDescription();
        Retrofit retrofit = this.binding;
        if (description != null) {
            ((TextView) retrofit.callFactory).setText(getContext().getString(description.intValue()));
            z = true;
        } else {
            z = false;
        }
        TextView textView = (TextView) retrofit.converterFactories;
        ImageView imageView = (ImageView) retrofit.serviceMethodCache;
        textView.setText(string);
        Prefs prefs = Prefs.INSTANCE;
        imageView.setVisibility(Prefs.getRecentEditsIncludedTypeCodes().contains(str) ? 0 : 4);
        imageView.setImageResource(filter.isCheckBox ? R.drawable.ic_check_borderless : R.drawable.ic_baseline_radio_button_checked_24);
        ((TextView) retrofit.callFactory).setVisibility(z ? 0 : 8);
        str.equals(getContext().getString(R.string.patroller_tasks_filters_all_text));
        ((LangCodeView) retrofit.baseUrl).setVisibility(8);
        ((ImageView) retrofit.callAdapterFactories).setVisibility(8);
    }

    public final void setSingleLabel(String str) {
        str.getClass();
        Context context = getContext();
        context.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.progressive_color);
        Retrofit retrofit = this.binding;
        ((LangCodeView) retrofit.baseUrl).setVisibility(8);
        ImageView imageView = (ImageView) retrofit.callAdapterFactories;
        imageView.setVisibility(0);
        imageView.setImageTintList(themedColorStateList);
        imageView.setImageResource(R.drawable.ic_mode_edit_white_24dp);
        ((ImageView) retrofit.serviceMethodCache).setVisibility(8);
        TextView textView = (TextView) retrofit.converterFactories;
        textView.setTextColor(themedColorStateList);
        textView.setText(str);
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        textView.setTextSize(2, 16.0f);
    }
}
