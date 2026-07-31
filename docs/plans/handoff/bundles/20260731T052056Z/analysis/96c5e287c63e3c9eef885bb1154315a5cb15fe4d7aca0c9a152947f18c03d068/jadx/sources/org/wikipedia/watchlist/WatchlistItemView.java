package org.wikipedia.watchlist;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ItemWatchlistBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.watchlist.WatchlistItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistItemView extends FrameLayout {
    public final ItemWatchlistBinding binding;
    public Callback callback;
    public MwQueryResult.WatchlistItem item;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public WatchlistItemView(Context context) {
        super(context, null);
        final int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.item_watchlist, (ViewGroup) this, false);
        addView(inflate);
        WikiCardView wikiCardView = (WikiCardView) inflate;
        int i2 = R.id.diffText;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.diffText);
        if (materialButton != null) {
            i2 = R.id.langCodeText;
            LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(inflate, R.id.langCodeText);
            if (langCodeView != null) {
                i2 = R.id.summaryText;
                GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.summaryText);
                if (goneIfEmptyTextView != null) {
                    i2 = R.id.timeText;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.timeText);
                    if (textView != null) {
                        i2 = R.id.titleText;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.titleText);
                        if (textView2 != null) {
                            i2 = R.id.userNameText;
                            MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.userNameText);
                            if (materialButton2 != null) {
                                this.binding = new ItemWatchlistBinding(wikiCardView, materialButton, langCodeView, goneIfEmptyTextView, textView, textView2, materialButton2);
                                View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: org.wikipedia.watchlist.WatchlistItemView$$ExternalSyntheticLambda0
                                    public final /* synthetic */ WatchlistItemView f$0;

                                    {
                                        this.f$0 = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        WatchlistItemView.Callback callback;
                                        WatchlistItemView.Callback callback2;
                                        int i3 = i;
                                        WatchlistItemView watchlistItemView = this.f$0;
                                        switch (i3) {
                                            case 0:
                                                MwQueryResult.WatchlistItem watchlistItem = watchlistItemView.item;
                                                if (watchlistItem != null && (callback = watchlistItemView.callback) != null) {
                                                    WatchlistFragment watchlistFragment = (WatchlistFragment) callback;
                                                    if (watchlistItem.logtype.length() <= 0) {
                                                        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                                                        Context requireContext = watchlistFragment.requireContext();
                                                        String str = watchlistItem.title;
                                                        WikiSite wikiSite = watchlistItem.wiki;
                                                        wikiSite.getClass();
                                                        watchlistFragment.startActivity(ByteString.Companion.newIntent$default(companion, requireContext, new PageTitle(str, wikiSite, (String) null), watchlistItem.pageId, 0L, watchlistItem.revid, Constants.InvokeSource.WATCHLIST_ACTIVITY, 8), null);
                                                        break;
                                                    }
                                                }
                                                break;
                                            default:
                                                MwQueryResult.WatchlistItem watchlistItem2 = watchlistItemView.item;
                                                if (watchlistItem2 != null && (callback2 = watchlistItemView.callback) != null) {
                                                    view.getClass();
                                                    AppCompatActivity requireActivity = ((WatchlistFragment) callback2).requireActivity();
                                                    WikiSite wikiSite2 = watchlistItem2.wiki;
                                                    wikiSite2.getClass();
                                                    String valueFor = UserAliasData.valueFor(wikiSite2.languageCode);
                                                    String str2 = watchlistItem2.user;
                                                    WikiSite wikiSite3 = watchlistItem2.wiki;
                                                    wikiSite3.getClass();
                                                    UserTalkPopupHelper.INSTANCE.show(requireActivity, new PageTitle(valueFor, str2, wikiSite3), watchlistItem2.isAnon, view, Constants.InvokeSource.WATCHLIST_ACTIVITY, 32, (r21 & 64) != 0 ? null : Long.valueOf(watchlistItem2.revid), (r21 & 128) != 0 ? null : Integer.valueOf(watchlistItem2.pageId), false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                };
                                setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                wikiCardView.setOnClickListener(onClickListener);
                                materialButton.setOnClickListener(onClickListener);
                                final int i3 = 1;
                                materialButton2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.watchlist.WatchlistItemView$$ExternalSyntheticLambda0
                                    public final /* synthetic */ WatchlistItemView f$0;

                                    {
                                        this.f$0 = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        WatchlistItemView.Callback callback;
                                        WatchlistItemView.Callback callback2;
                                        int i32 = i3;
                                        WatchlistItemView watchlistItemView = this.f$0;
                                        switch (i32) {
                                            case 0:
                                                MwQueryResult.WatchlistItem watchlistItem = watchlistItemView.item;
                                                if (watchlistItem != null && (callback = watchlistItemView.callback) != null) {
                                                    WatchlistFragment watchlistFragment = (WatchlistFragment) callback;
                                                    if (watchlistItem.logtype.length() <= 0) {
                                                        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                                                        Context requireContext = watchlistFragment.requireContext();
                                                        String str = watchlistItem.title;
                                                        WikiSite wikiSite = watchlistItem.wiki;
                                                        wikiSite.getClass();
                                                        watchlistFragment.startActivity(ByteString.Companion.newIntent$default(companion, requireContext, new PageTitle(str, wikiSite, (String) null), watchlistItem.pageId, 0L, watchlistItem.revid, Constants.InvokeSource.WATCHLIST_ACTIVITY, 8), null);
                                                        break;
                                                    }
                                                }
                                                break;
                                            default:
                                                MwQueryResult.WatchlistItem watchlistItem2 = watchlistItemView.item;
                                                if (watchlistItem2 != null && (callback2 = watchlistItemView.callback) != null) {
                                                    view.getClass();
                                                    AppCompatActivity requireActivity = ((WatchlistFragment) callback2).requireActivity();
                                                    WikiSite wikiSite2 = watchlistItem2.wiki;
                                                    wikiSite2.getClass();
                                                    String valueFor = UserAliasData.valueFor(wikiSite2.languageCode);
                                                    String str2 = watchlistItem2.user;
                                                    WikiSite wikiSite3 = watchlistItem2.wiki;
                                                    wikiSite3.getClass();
                                                    UserTalkPopupHelper.INSTANCE.show(requireActivity, new PageTitle(valueFor, str2, wikiSite3), watchlistItem2.isAnon, view, Constants.InvokeSource.WATCHLIST_ACTIVITY, 32, (r21 & 64) != 0 ? null : Long.valueOf(watchlistItem2.revid), (r21 & 128) != 0 ? null : Integer.valueOf(watchlistItem2.pageId), false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                if (((ArrayList) ViewSizeResolver$CC.m785m()).size() == 1) {
                                    langCodeView.setVisibility(8);
                                    return;
                                } else {
                                    langCodeView.setVisibility(0);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public final ItemWatchlistBinding getBinding() {
        return this.binding;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setButtonTextAndIconColor(int i, String str) {
        Context context = getContext();
        context.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.border_color);
        ItemWatchlistBinding itemWatchlistBinding = this.binding;
        itemWatchlistBinding.diffText.setText(str);
        MaterialButton materialButton = itemWatchlistBinding.diffText;
        materialButton.setTextColor(themedColorStateList);
        materialButton.setIconResource(i);
        materialButton.setIconTint(themedColorStateList);
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}
