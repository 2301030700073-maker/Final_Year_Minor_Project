package org.wikipedia.suggestededits;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.room.Room;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArrayDeque;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.databinding.ItemSuggestedEditsRecentEditsBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsItemView;
import org.wikipedia.suggestededits.provider.EditingSuggestionsProvider;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsItemView extends FrameLayout {
    public final ItemSuggestedEditsRecentEditsBinding binding;
    public Callback callback;
    public MwQueryResult.RecentChange item;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public SuggestedEditsRecentEditsItemView(Context context) {
        super(context, null);
        final int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.item_suggested_edits_recent_edits, (ViewGroup) this, false);
        addView(inflate);
        WikiCardView wikiCardView = (WikiCardView) inflate;
        int i2 = R.id.diffText;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.diffText);
        if (materialButton != null) {
            i2 = R.id.summaryText;
            GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.summaryText);
            if (goneIfEmptyTextView != null) {
                i2 = R.id.tagsText;
                GoneIfEmptyTextView goneIfEmptyTextView2 = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.tagsText);
                if (goneIfEmptyTextView2 != null) {
                    i2 = R.id.timeText;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.timeText);
                    if (textView != null) {
                        i2 = R.id.titleText;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.titleText);
                        if (textView2 != null) {
                            i2 = R.id.userNameText;
                            MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.userNameText);
                            if (materialButton2 != null) {
                                this.binding = new ItemSuggestedEditsRecentEditsBinding(wikiCardView, materialButton, goneIfEmptyTextView, goneIfEmptyTextView2, textView, textView2, materialButton2);
                                View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0
                                    public final /* synthetic */ SuggestedEditsRecentEditsItemView f$0;

                                    {
                                        this.f$0 = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        SuggestedEditsRecentEditsItemView.Callback callback;
                                        SuggestedEditsRecentEditsItemView.Callback callback2;
                                        int i3 = i;
                                        SuggestedEditsRecentEditsItemView suggestedEditsRecentEditsItemView = this.f$0;
                                        switch (i3) {
                                            case 0:
                                                MwQueryResult.RecentChange recentChange = suggestedEditsRecentEditsItemView.item;
                                                if (recentChange != null && (callback = suggestedEditsRecentEditsItemView.callback) != null) {
                                                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = ((SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) callback).this$0;
                                                    Cookie.Companion.submitPatrollerActivityEvent("edit_item_click", "pt_recent_changes", "");
                                                    SuggestedEditsRecentEditsViewModel viewModel = suggestedEditsRecentEditsFragment.getViewModel();
                                                    ArrayList arrayList = viewModel.cachedRecentEdits;
                                                    if (!arrayList.isEmpty()) {
                                                        int max = Math.max(arrayList.indexOf(recentChange), 0);
                                                        EditingSuggestionsProvider editingSuggestionsProvider = EditingSuggestionsProvider.INSTANCE;
                                                        String str = viewModel.langCode;
                                                        List<MwQueryResult.RecentChange> subList = arrayList.subList(0, max + 1);
                                                        str.getClass();
                                                        subList.getClass();
                                                        EditingSuggestionsProvider.revertCandidateLang = str;
                                                        ArrayDeque arrayDeque = EditingSuggestionsProvider.revertCandidateCache;
                                                        arrayDeque.clear();
                                                        EditingSuggestionsProvider.revertCandidateLastRevId = 0L;
                                                        for (MwQueryResult.RecentChange recentChange2 : subList) {
                                                            arrayDeque.addFirst(recentChange2);
                                                            long j = recentChange2.curRev;
                                                            if (j > EditingSuggestionsProvider.revertCandidateLastRevId) {
                                                                EditingSuggestionsProvider.revertCandidateLastRevId = j;
                                                                EditingSuggestionsProvider.revertCandidateLastTimeStamp = recentChange2.getParsedInstant();
                                                            }
                                                        }
                                                    }
                                                    int i4 = SuggestionsActivity.$r8$clinit;
                                                    suggestedEditsRecentEditsFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsRecentEditsFragment.requireActivity(), DescriptionEditActivity.Action.VANDALISM_PATROL), null);
                                                    break;
                                                }
                                                break;
                                            default:
                                                MwQueryResult.RecentChange recentChange3 = suggestedEditsRecentEditsItemView.item;
                                                if (recentChange3 != null && (callback2 = suggestedEditsRecentEditsItemView.callback) != null) {
                                                    view.getClass();
                                                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment2 = ((SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) callback2).this$0;
                                                    Cookie.Companion.submitPatrollerActivityEvent("editor_menu_click", "pt_recent_changes", "");
                                                    UserTalkPopupHelper userTalkPopupHelper = UserTalkPopupHelper.INSTANCE;
                                                    AppCompatActivity requireActivity = suggestedEditsRecentEditsFragment2.requireActivity();
                                                    SuggestedEditsRecentEditsViewModel viewModel2 = suggestedEditsRecentEditsFragment2.getViewModel();
                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                    String str2 = viewModel2.langCode;
                                                    companion.getClass();
                                                    String valueFor = UserAliasData.valueFor(WikiSite.Companion.forLanguageCode(str2).languageCode);
                                                    String str3 = recentChange3.user;
                                                    String str4 = suggestedEditsRecentEditsFragment2.getViewModel().langCode;
                                                    companion.getClass();
                                                    userTalkPopupHelper.show(requireActivity, new PageTitle(valueFor, str3, WikiSite.Companion.forLanguageCode(str4)), recentChange3.anon, view, Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS, 41, Long.valueOf(recentChange3.curRev), Integer.valueOf(recentChange3.pageid), true);
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
                                materialButton2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0
                                    public final /* synthetic */ SuggestedEditsRecentEditsItemView f$0;

                                    {
                                        this.f$0 = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        SuggestedEditsRecentEditsItemView.Callback callback;
                                        SuggestedEditsRecentEditsItemView.Callback callback2;
                                        int i32 = i3;
                                        SuggestedEditsRecentEditsItemView suggestedEditsRecentEditsItemView = this.f$0;
                                        switch (i32) {
                                            case 0:
                                                MwQueryResult.RecentChange recentChange = suggestedEditsRecentEditsItemView.item;
                                                if (recentChange != null && (callback = suggestedEditsRecentEditsItemView.callback) != null) {
                                                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = ((SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) callback).this$0;
                                                    Cookie.Companion.submitPatrollerActivityEvent("edit_item_click", "pt_recent_changes", "");
                                                    SuggestedEditsRecentEditsViewModel viewModel = suggestedEditsRecentEditsFragment.getViewModel();
                                                    ArrayList arrayList = viewModel.cachedRecentEdits;
                                                    if (!arrayList.isEmpty()) {
                                                        int max = Math.max(arrayList.indexOf(recentChange), 0);
                                                        EditingSuggestionsProvider editingSuggestionsProvider = EditingSuggestionsProvider.INSTANCE;
                                                        String str = viewModel.langCode;
                                                        List<MwQueryResult.RecentChange> subList = arrayList.subList(0, max + 1);
                                                        str.getClass();
                                                        subList.getClass();
                                                        EditingSuggestionsProvider.revertCandidateLang = str;
                                                        ArrayDeque arrayDeque = EditingSuggestionsProvider.revertCandidateCache;
                                                        arrayDeque.clear();
                                                        EditingSuggestionsProvider.revertCandidateLastRevId = 0L;
                                                        for (MwQueryResult.RecentChange recentChange2 : subList) {
                                                            arrayDeque.addFirst(recentChange2);
                                                            long j = recentChange2.curRev;
                                                            if (j > EditingSuggestionsProvider.revertCandidateLastRevId) {
                                                                EditingSuggestionsProvider.revertCandidateLastRevId = j;
                                                                EditingSuggestionsProvider.revertCandidateLastTimeStamp = recentChange2.getParsedInstant();
                                                            }
                                                        }
                                                    }
                                                    int i4 = SuggestionsActivity.$r8$clinit;
                                                    suggestedEditsRecentEditsFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsRecentEditsFragment.requireActivity(), DescriptionEditActivity.Action.VANDALISM_PATROL), null);
                                                    break;
                                                }
                                                break;
                                            default:
                                                MwQueryResult.RecentChange recentChange3 = suggestedEditsRecentEditsItemView.item;
                                                if (recentChange3 != null && (callback2 = suggestedEditsRecentEditsItemView.callback) != null) {
                                                    view.getClass();
                                                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment2 = ((SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) callback2).this$0;
                                                    Cookie.Companion.submitPatrollerActivityEvent("editor_menu_click", "pt_recent_changes", "");
                                                    UserTalkPopupHelper userTalkPopupHelper = UserTalkPopupHelper.INSTANCE;
                                                    AppCompatActivity requireActivity = suggestedEditsRecentEditsFragment2.requireActivity();
                                                    SuggestedEditsRecentEditsViewModel viewModel2 = suggestedEditsRecentEditsFragment2.getViewModel();
                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                    String str2 = viewModel2.langCode;
                                                    companion.getClass();
                                                    String valueFor = UserAliasData.valueFor(WikiSite.Companion.forLanguageCode(str2).languageCode);
                                                    String str3 = recentChange3.user;
                                                    String str4 = suggestedEditsRecentEditsFragment2.getViewModel().langCode;
                                                    companion.getClass();
                                                    userTalkPopupHelper.show(requireActivity, new PageTitle(valueFor, str3, WikiSite.Companion.forLanguageCode(str4)), recentChange3.anon, view, Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS, 41, Long.valueOf(recentChange3.curRev), Integer.valueOf(recentChange3.pageid), true);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public final ItemSuggestedEditsRecentEditsBinding getBinding() {
        return this.binding;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}
