package org.wikipedia.notifications;

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
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.notifications.NotificationFilterActivity;
import org.wikipedia.views.LangCodeView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationFilterItemView extends LinearLayout {
    public final ItemWatchlistFilterBinding binding;
    public Callback callback;
    public NotificationFilterActivity.Filter filter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onCheckedChanged(NotificationFilterActivity.Filter filter);
    }

    public NotificationFilterItemView(NotificationFilterActivity notificationFilterActivity) {
        super(notificationFilterActivity, null);
        LayoutInflater.from(notificationFilterActivity).inflate(R.layout.item_notification_filter, this);
        int i = R.id.notification_filter_check;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.notification_filter_check);
        if (imageView != null) {
            i = R.id.notification_filter_language_code;
            LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(this, R.id.notification_filter_language_code);
            if (langCodeView != null) {
                i = R.id.notification_filter_title;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.notification_filter_title);
                if (textView != null) {
                    i = R.id.notification_filter_wiki_logo;
                    ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.notification_filter_wiki_logo);
                    if (imageView2 != null) {
                        this.binding = new ItemWatchlistFilterBinding(this, imageView, langCodeView, textView, imageView2);
                        setLayoutParams(new ViewGroup.LayoutParams(-1, Okio__OkioKt.roundedDpToPx(48.0f)));
                        setBackgroundColor(Cache.Companion.getThemedColor(notificationFilterActivity, R.attr.paper_color));
                        setForeground(TuplesKt.getDrawable(notificationFilterActivity, Cache.Companion.getThemedAttributeId(notificationFilterActivity, R.attr.selectableItemBackground)));
                        setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(15, this));
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

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00d5, code lost:
    
        if (r12 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0110, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0101, code lost:
    
        if (r12 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010e, code lost:
    
        if (r7.contains(r6) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setContents(org.wikipedia.notifications.NotificationFilterActivity.Filter r17) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationFilterItemView.setContents(org.wikipedia.notifications.NotificationFilterActivity$Filter):void");
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
    }
}
