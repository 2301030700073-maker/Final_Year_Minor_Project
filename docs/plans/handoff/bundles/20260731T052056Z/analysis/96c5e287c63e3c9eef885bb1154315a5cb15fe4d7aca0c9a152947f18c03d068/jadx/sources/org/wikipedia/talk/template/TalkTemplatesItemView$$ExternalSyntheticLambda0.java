package org.wikipedia.talk.template;

import android.content.ComponentCallbacks;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.Fragment;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.SortReadingListsDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.talk.template.TalkTemplatesItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTemplatesItemView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ TalkTemplatesItemView$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        ComponentCallbacks componentCallbacks = null;
        int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                TalkTemplatesItemView.Callback callback = ((TalkTemplatesItemView) obj).callback;
                if (callback != null) {
                    TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = (TalkTemplatesFragment.RecyclerAdapter) callback;
                    ArrayList arrayList = recyclerAdapter.templatesList;
                    TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
                    ActivityLoginBinding activityLoginBinding = talkTemplatesFragment._binding;
                    activityLoginBinding.getClass();
                    boolean z = ((TabLayout) activityLoginBinding.loginCreateAccountButton).getSelectedTabPosition() == 1;
                    if (i2 == 0 && z) {
                        return;
                    }
                    if (talkTemplatesFragment.actionMode != null) {
                        talkTemplatesFragment.toggleSelectedItem((TalkTemplate) arrayList.get(i2));
                        TalkTemplatesFragment.RecyclerAdapter recyclerAdapter2 = talkTemplatesFragment.adapter;
                        if (recyclerAdapter2 != null) {
                            recyclerAdapter2.notifyItemChanged(i2);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            throw null;
                        }
                    }
                    String str = z ? "example_message_select_click" : "saved_message_select_click";
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent(str, "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    Fragment.AnonymousClass10 anonymousClass10 = talkTemplatesFragment.requestEditTemplate;
                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                    anonymousClass10.launch(UserTalkPopupHelper.newIntent$default(talkTemplatesFragment.requireContext(), talkTemplatesFragment.getViewModel().pageTitle, null, null, Constants.InvokeSource.DIFF_ACTIVITY, null, null, (TalkTemplate) arrayList.get(i2), talkTemplatesFragment.getViewModel().toRevisionId, talkTemplatesFragment.getViewModel().fromRevisionId, talkTemplatesFragment.getViewModel().templateManagementMode, z, 96), null);
                    return;
                }
                return;
            case 1:
                SortReadingListsDialog sortReadingListsDialog = (SortReadingListsDialog) obj;
                if (ReadingListsFragment.class.isInstance(sortReadingListsDialog.getTargetFragment(true))) {
                    componentCallbacks = sortReadingListsDialog.getTargetFragment(true);
                } else {
                    Fragment fragment = sortReadingListsDialog.mParentFragment;
                    if (fragment != null) {
                        if (ReadingListsFragment.class.isInstance(fragment)) {
                            componentCallbacks = sortReadingListsDialog.mParentFragment;
                        } else if (ReadingListsFragment.class.isInstance(sortReadingListsDialog.requireParentFragment().mParentFragment)) {
                            componentCallbacks = sortReadingListsDialog.requireParentFragment().mParentFragment;
                        }
                    }
                    if (ReadingListsFragment.class.isInstance(sortReadingListsDialog.getActivity())) {
                        componentCallbacks = sortReadingListsDialog.getActivity();
                    }
                }
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) componentCallbacks;
                if (readingListsFragment != null) {
                    if (i2 == 0) {
                        Prefs prefs2 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_list_sort_mode, 0);
                    } else if (i2 == 1) {
                        Prefs prefs3 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_list_sort_mode, 1);
                    } else if (i2 == 2) {
                        Prefs prefs4 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_list_sort_mode, 2);
                    } else if (i2 != 3) {
                        Prefs prefs5 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_list_sort_mode, 0);
                    } else {
                        Prefs prefs6 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_list_sort_mode, 3);
                    }
                    readingListsFragment.updateLists();
                }
                sortReadingListsDialog.dismiss();
                return;
            default:
                WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                if (wikipediaLanguagesFragment.actionMode != null) {
                    wikipediaLanguagesFragment.toggleSelectedLanguage((String) wikipediaLanguagesFragment.wikipediaLanguages.get(i2 - 1));
                    WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = wikipediaLanguagesFragment.adapter;
                    if (wikipediaLanguageItemAdapter != null) {
                        wikipediaLanguageItemAdapter.notifyDataSetChanged();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                }
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) wikipediaLanguagesFragment.requireActivity().getIntent().getSerializableExtra("invokeSource");
                if (invokeSource != null) {
                    if (invokeSource == Constants.InvokeSource.SEARCH || invokeSource == Constants.InvokeSource.TALK_TOPICS_ACTIVITY || invokeSource == Constants.InvokeSource.USER_CONTRIB_ACTIVITY) {
                        Intent intent = new Intent();
                        intent.putExtra("activity_result_lang_position_data", i2 - 1);
                        wikipediaLanguagesFragment.requireActivity().setResult(-1, intent);
                        wikipediaLanguagesFragment.requireActivity().finish();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
