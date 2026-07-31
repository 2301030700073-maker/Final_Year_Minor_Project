package org.wikipedia.talk.template;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.tabs.TabLayout;
import okhttp3.Headers;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTemplatesFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTemplatesFragment f$0;

    public /* synthetic */ TalkTemplatesFragment$$ExternalSyntheticLambda0(TalkTemplatesFragment talkTemplatesFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTemplatesFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        TalkTemplatesFragment talkTemplatesFragment = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 0:
                activityResult.getClass();
                int i2 = activityResult.resultCode;
                if (i2 != -1 && i2 != 2) {
                    if (i2 == 1 || i2 == 3) {
                        talkTemplatesFragment.requireActivity().setResult(i2, new Intent().putExtra("title", talkTemplatesFragment.getViewModel().pageTitle));
                        talkTemplatesFragment.requireActivity().finish();
                        break;
                    }
                } else {
                    talkTemplatesFragment.getViewModel().loadTalkTemplates();
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("save_message_toast", "pt_templates", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    if (i2 != 2) {
                        ActivityLoginBinding activityLoginBinding = talkTemplatesFragment._binding;
                        activityLoginBinding.getClass();
                        TabLayout.Tab tabAt = ((TabLayout) activityLoginBinding.loginCreateAccountButton).getTabAt(0);
                        if (tabAt != null) {
                            tabAt.select();
                        }
                        ShareUtil.showMessage(R.string.talk_templates_new_message_saved, talkTemplatesFragment);
                        break;
                    }
                }
                break;
            default:
                activityResult.getClass();
                int i3 = activityResult.resultCode;
                if (i3 != -1 && i3 != 2) {
                    if (i3 == 1 || i3 == 3) {
                        talkTemplatesFragment.requireActivity().setResult(i3, new Intent().putExtra("title", talkTemplatesFragment.getViewModel().pageTitle));
                        talkTemplatesFragment.requireActivity().finish();
                        break;
                    }
                } else {
                    talkTemplatesFragment.getViewModel().loadTalkTemplates();
                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    String m2 = ViewSizeResolver$CC.m();
                    Prefs prefs2 = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("update_message_toast", "pt_templates", "", m2, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    if (i3 != 2) {
                        ActivityLoginBinding activityLoginBinding2 = talkTemplatesFragment._binding;
                        activityLoginBinding2.getClass();
                        TabLayout.Tab tabAt2 = ((TabLayout) activityLoginBinding2.loginCreateAccountButton).getTabAt(0);
                        if (tabAt2 != null) {
                            tabAt2.select();
                        }
                        ShareUtil.showMessage(R.string.talk_templates_edit_message_updated, talkTemplatesFragment);
                        break;
                    }
                }
                break;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = this.$r8$classId;
        TalkTemplatesFragment talkTemplatesFragment = this.f$0;
        switch (i) {
            case 2:
                ActivityLoginBinding activityLoginBinding = talkTemplatesFragment._binding;
                activityLoginBinding.getClass();
                TabLayout.Tab tabAt = ((TabLayout) activityLoginBinding.loginCreateAccountButton).getTabAt(1);
                if (tabAt != null) {
                    tabAt.select();
                }
                talkTemplatesFragment.updateAndNotifyAdapter();
                break;
            default:
                int i2 = TalkTopicsActivity.$r8$clinit;
                HistoryEntry historyEntry = new HistoryEntry(31, Headers.Companion.getNonTalkPageTitle(talkTemplatesFragment.getViewModel().pageTitle));
                int i3 = PageActivity.$r8$clinit;
                talkTemplatesFragment.startActivity(LoginClient.newIntentForNewTab(talkTemplatesFragment.requireActivity(), historyEntry, historyEntry.getTitle()), null);
                break;
        }
    }
}
