package org.wikipedia.watchlist;

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
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ItemWatchlistFilterBinding;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;
import org.wikipedia.watchlist.WatchlistFilterActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistFilterItemView extends LinearLayout {
    public final ItemWatchlistFilterBinding binding;
    public Callback callback;
    public WatchlistFilterActivity.Filter filter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onCheckedChanged(WatchlistFilterActivity.Filter filter);
    }

    public WatchlistFilterItemView(WatchlistFilterActivity watchlistFilterActivity) {
        super(watchlistFilterActivity, null);
        LayoutInflater.from(watchlistFilterActivity).inflate(R.layout.item_watchlist_filter, this);
        int i = R.id.watchlist_filter_check;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.watchlist_filter_check);
        if (imageView != null) {
            i = R.id.watchlist_filter_language_code;
            LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(this, R.id.watchlist_filter_language_code);
            if (langCodeView != null) {
                i = R.id.watchlist_filter_title;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.watchlist_filter_title);
                if (textView != null) {
                    i = R.id.watchlist_filter_wiki_logo;
                    ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.watchlist_filter_wiki_logo);
                    if (imageView2 != null) {
                        this.binding = new ItemWatchlistFilterBinding(this, imageView, langCodeView, textView, imageView2);
                        setLayoutParams(new ViewGroup.LayoutParams(-1, Okio__OkioKt.roundedDpToPx(48.0f)));
                        setBackgroundColor(Cache.Companion.getThemedColor(watchlistFilterActivity, R.attr.paper_color));
                        setForeground(TuplesKt.getDrawable(watchlistFilterActivity, Cache.Companion.getThemedAttributeId(watchlistFilterActivity, R.attr.selectableItemBackground)));
                        setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(8, this));
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x008f, code lost:
    
        if (r11 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0092, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009a, code lost:
    
        if (r1.contains(r5) == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setContents(org.wikipedia.watchlist.WatchlistFilterActivity.Filter r14) {
        /*
            r13 = this;
            r14.getClass()
            r13.filter = r14
            org.wikipedia.databinding.ItemWatchlistFilterBinding r0 = r13.binding
            android.widget.TextView r1 = r0.watchlistFilterTitle
            org.wikipedia.views.LangCodeView r2 = r0.watchlistFilterLanguageCode
            android.widget.ImageView r3 = r0.watchlistFilterCheck
            int r4 = r14.type
            java.lang.String r5 = r14.filterCode
            r6 = 1
            if (r4 != r6) goto L2d
            android.content.Context r7 = r13.getContext()
            org.wikipedia.watchlist.WatchlistFilterTypes$Companion r8 = org.wikipedia.watchlist.WatchlistFilterTypes.Companion
            r8.getClass()
            org.wikipedia.watchlist.WatchlistFilterTypes r8 = org.wikipedia.watchlist.WatchlistFilterTypes.Companion.find(r5)
            int r8 = r8.getTitle()
            java.lang.String r7 = r7.getString(r8)
            r7.getClass()
            goto L52
        L2d:
            android.content.Context r7 = r13.getContext()
            r8 = 2131887234(0x7f120482, float:1.940907E38)
            java.lang.String r7 = r7.getString(r8)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r7)
            if (r7 == 0) goto L40
            r7 = r5
            goto L52
        L40:
            org.wikipedia.WikipediaApp r7 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r7 = org.jsoup.Jsoup.getInstance()
            org.wikipedia.language.AppLanguageState r7 = r7.getLanguageState()
            java.lang.String r7 = r7.getAppLanguageLocalizedName(r5)
            if (r7 != 0) goto L52
            java.lang.String r7 = ""
        L52:
            r1.setText(r7)
            org.wikipedia.settings.Prefs r1 = org.wikipedia.settings.Prefs.INSTANCE
            java.util.Set r1 = org.wikipedia.settings.Prefs.getWatchlistExcludedWikiCodes()
            org.wikipedia.watchlist.WatchlistFilterActivity r7 = r14.this$0
            r8 = 2131888649(0x7f120a09, float:1.941194E38)
            java.lang.String r7 = r7.getString(r8)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r7)
            r9 = 0
            r10 = 0
            if (r7 == 0) goto L94
            if (r4 != 0) goto L94
            org.wikipedia.WikipediaApp r7 = org.wikipedia.WikipediaApp.instance
            java.util.List r7 = coil3.size.ViewSizeResolver$CC.m785m()
            java.util.ArrayList r7 = (java.util.ArrayList) r7
            java.util.Iterator r7 = r7.iterator()
        L7a:
            boolean r11 = r7.hasNext()
            if (r11 == 0) goto L8e
            java.lang.Object r11 = r7.next()
            r12 = r11
            java.lang.String r12 = (java.lang.String) r12
            boolean r12 = r1.contains(r12)
            if (r12 == 0) goto L7a
            goto L8f
        L8e:
            r11 = r9
        L8f:
            if (r11 != 0) goto L92
            goto La5
        L92:
            r6 = r10
            goto La5
        L94:
            if (r4 != 0) goto L9d
            boolean r1 = r1.contains(r5)
            if (r1 != 0) goto L92
            goto La5
        L9d:
            java.util.Collection r1 = org.wikipedia.settings.Prefs.getWatchlistIncludedTypeCodes()
            boolean r6 = r1.contains(r5)
        La5:
            r1 = 8
            if (r6 == 0) goto Lab
            r6 = r10
            goto Lac
        Lab:
            r6 = r1
        Lac:
            r3.setVisibility(r6)
            boolean r14 = r14.isCheckBox
            if (r14 == 0) goto Lb7
            r14 = 2131231034(0x7f08013a, float:1.8078138E38)
            goto Lba
        Lb7:
            r14 = 2131231013(0x7f080125, float:1.8078095E38)
        Lba:
            r3.setImageResource(r14)
            android.content.Context r13 = r13.getContext()
            java.lang.String r13 = r13.getString(r8)
            boolean r13 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r13)
            if (r13 != 0) goto Lce
            if (r4 != 0) goto Lce
            goto Lcf
        Lce:
            r5 = r9
        Lcf:
            if (r5 == 0) goto Ld8
            r2.setLangCode(r5)
            r2.setVisibility(r10)
            goto Ldb
        Ld8:
            r2.setVisibility(r1)
        Ldb:
            android.widget.ImageView r13 = r0.watchlistFilterWikiLogo
            r13.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.watchlist.WatchlistFilterItemView.setContents(org.wikipedia.watchlist.WatchlistFilterActivity$Filter):void");
    }

    public final void setSingleLabel(String str) {
        str.getClass();
        Context context = getContext();
        context.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.progressive_color);
        ItemWatchlistFilterBinding itemWatchlistFilterBinding = this.binding;
        itemWatchlistFilterBinding.watchlistFilterLanguageCode.setVisibility(8);
        ImageView imageView = itemWatchlistFilterBinding.watchlistFilterWikiLogo;
        imageView.setVisibility(0);
        imageView.setImageTintList(themedColorStateList);
        imageView.setImageResource(R.drawable.ic_mode_edit_white_24dp);
        itemWatchlistFilterBinding.watchlistFilterCheck.setVisibility(8);
        TextView textView = itemWatchlistFilterBinding.watchlistFilterTitle;
        textView.setTextColor(themedColorStateList);
        textView.setText(str);
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        textView.setTextSize(2, 16.0f);
    }
}
