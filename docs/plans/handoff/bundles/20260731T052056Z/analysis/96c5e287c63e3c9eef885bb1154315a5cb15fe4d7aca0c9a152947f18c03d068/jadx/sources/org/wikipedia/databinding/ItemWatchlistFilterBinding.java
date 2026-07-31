package org.wikipedia.databinding;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.wikipedia.usercontrib.UserContribFilterItemView;
import org.wikipedia.views.LangCodeView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ItemWatchlistFilterBinding {
    public final ImageView watchlistFilterCheck;
    public final LangCodeView watchlistFilterLanguageCode;
    public final TextView watchlistFilterTitle;
    public final ImageView watchlistFilterWikiLogo;

    public /* synthetic */ ItemWatchlistFilterBinding(LinearLayout linearLayout, ImageView imageView, LangCodeView langCodeView, TextView textView, ImageView imageView2) {
        this.watchlistFilterCheck = imageView;
        this.watchlistFilterLanguageCode = langCodeView;
        this.watchlistFilterTitle = textView;
        this.watchlistFilterWikiLogo = imageView2;
    }

    public ItemWatchlistFilterBinding(UserContribFilterItemView userContribFilterItemView, ImageView imageView, ImageView imageView2, TextView textView, LangCodeView langCodeView) {
        this.watchlistFilterCheck = imageView;
        this.watchlistFilterWikiLogo = imageView2;
        this.watchlistFilterTitle = textView;
        this.watchlistFilterLanguageCode = langCodeView;
    }
}
