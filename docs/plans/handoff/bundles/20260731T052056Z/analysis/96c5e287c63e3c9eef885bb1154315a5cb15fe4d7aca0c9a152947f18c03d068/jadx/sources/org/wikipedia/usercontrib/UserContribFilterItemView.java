package org.wikipedia.usercontrib;

import android.content.Context;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import java.util.Iterator;
import java.util.Set;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ItemWatchlistFilterBinding;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.settings.Prefs;
import org.wikipedia.usercontrib.UserContribFilterActivity;
import org.wikipedia.views.LangCodeView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribFilterItemView extends LinearLayout {
    public final ItemWatchlistFilterBinding binding;
    public Callback callback;
    public UserContribFilterActivity.Item item;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onSelected(UserContribFilterActivity.Item item);
    }

    public UserContribFilterItemView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.item_user_contrib_filter, this);
        int i = R.id.item_check;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.item_check);
        if (imageView != null) {
            i = R.id.item_logo;
            ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.item_logo);
            if (imageView2 != null) {
                i = R.id.item_title;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.item_title);
                if (textView != null) {
                    i = R.id.language_code;
                    LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(this, R.id.language_code);
                    if (langCodeView != null) {
                        this.binding = new ItemWatchlistFilterBinding(this, imageView, imageView2, textView, langCodeView);
                        setLayoutParams(new ViewGroup.LayoutParams(-1, Okio__OkioKt.roundedDpToPx(48.0f)));
                        TypedValue typedValue = new TypedValue();
                        typedValue = context.getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true) ? typedValue : null;
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969940");
                            throw null;
                        }
                        setBackgroundResource(typedValue.resourceId);
                        setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(27, this));
                        return;
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

    public final void setContents(UserContribFilterActivity.Item item) {
        String appLanguageLocalizedName;
        boolean z;
        Object obj;
        item.getClass();
        int i = item.type;
        this.item = item;
        ItemWatchlistFilterBinding itemWatchlistFilterBinding = this.binding;
        TextView textView = itemWatchlistFilterBinding.watchlistFilterTitle;
        ImageView imageView = itemWatchlistFilterBinding.watchlistFilterWikiLogo;
        LangCodeView langCodeView = itemWatchlistFilterBinding.watchlistFilterLanguageCode;
        ImageView imageView2 = itemWatchlistFilterBinding.watchlistFilterCheck;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
        String str = item.filterCode;
        languageState.getClass();
        str.getClass();
        if (str.equals("commons")) {
            Context context = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
            if (context == null) {
                context = Jsoup.getInstance();
            }
            appLanguageLocalizedName = context.getString(R.string.wikimedia_commons);
            appLanguageLocalizedName.getClass();
        } else if (str.equals("wikidata")) {
            Context context2 = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
            if (context2 == null) {
                context2 = Jsoup.getInstance();
            }
            appLanguageLocalizedName = context2.getString(R.string.wikidata);
            appLanguageLocalizedName.getClass();
        } else {
            appLanguageLocalizedName = languageState.getAppLanguageLocalizedName(str);
            if (appLanguageLocalizedName == null) {
                appLanguageLocalizedName = "";
            }
            if (appLanguageLocalizedName.length() == 0) {
                appLanguageLocalizedName = str;
            }
        }
        textView.setText(appLanguageLocalizedName);
        UserContribFilterActivity userContribFilterActivity = item.this$0;
        if (i == 0) {
            Prefs prefs = Prefs.INSTANCE;
            z = Prefs.getUserContribFilterLangCode().equals(str);
        } else {
            Prefs prefs2 = Prefs.INSTANCE;
            Set userContribFilterExcludedNs = Prefs.getUserContribFilterExcludedNs();
            if (str.equals(userContribFilterActivity.getString(R.string.user_contrib_filter_all))) {
                Iterator it = UserContribFilterActivity.NAMESPACE_LIST.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it.next();
                        if (userContribFilterExcludedNs.contains(Integer.valueOf(((Number) obj).intValue()))) {
                            break;
                        }
                    }
                }
                z = obj == null;
            } else {
                z = !userContribFilterExcludedNs.contains(Integer.valueOf(userContribFilterActivity.getNamespaceCode(str)));
            }
        }
        imageView2.setVisibility(z ? 0 : 8);
        if (i == 0) {
            if (str.equals("commons") || str.equals("wikidata")) {
                str = null;
            }
            if (str != null) {
                langCodeView.setLangCode(str);
            } else {
                langCodeView.setVisibility(8);
            }
            imageView2.setImageResource(R.drawable.ic_baseline_radio_button_checked_24);
        } else {
            langCodeView.setVisibility(8);
            imageView2.setImageResource(R.drawable.ic_check_borderless);
        }
        Integer num = item.imageRes;
        if (num == null) {
            imageView.setVisibility(langCodeView.getVisibility() != 0 ? 4 : 8);
        } else {
            imageView.setImageResource(num.intValue());
            imageView.setVisibility(0);
        }
    }

    public final void setSingleLabel(String str) {
        str.getClass();
        ItemWatchlistFilterBinding itemWatchlistFilterBinding = this.binding;
        itemWatchlistFilterBinding.watchlistFilterLanguageCode.setVisibility(8);
        ImageView imageView = itemWatchlistFilterBinding.watchlistFilterWikiLogo;
        imageView.setVisibility(0);
        imageView.setImageResource(R.drawable.ic_mode_edit_white_24dp);
        itemWatchlistFilterBinding.watchlistFilterCheck.setVisibility(8);
        TextView textView = itemWatchlistFilterBinding.watchlistFilterTitle;
        Context context = getContext();
        context.getClass();
        textView.setTextColor(Cache.Companion.getThemedColorStateList(context, R.attr.progressive_color));
        textView.setText(str);
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        Context context2 = getContext();
        context2.getClass();
        imageView.setImageTintList(Cache.Companion.getThemedColorStateList(context2, R.attr.progressive_color));
    }
}
