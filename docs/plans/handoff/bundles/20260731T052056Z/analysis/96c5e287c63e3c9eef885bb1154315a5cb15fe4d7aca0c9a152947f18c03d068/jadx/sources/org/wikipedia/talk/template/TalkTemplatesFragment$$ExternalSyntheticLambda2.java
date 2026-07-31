package org.wikipedia.talk.template;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;
import org.wikipedia.talk.UserTalkPopupHelper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTemplatesFragment$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTemplatesFragment f$0;

    public /* synthetic */ TalkTemplatesFragment$$ExternalSyntheticLambda2(TalkTemplatesFragment talkTemplatesFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTemplatesFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        TalkTemplatesFragment talkTemplatesFragment = this.f$0;
        switch (i) {
            case 0:
                talkTemplatesFragment.getViewModel().loadTalkTemplates();
                break;
            case 1:
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("new_message_init", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                Fragment.AnonymousClass10 anonymousClass10 = talkTemplatesFragment.requestNewTemplate;
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                Context requireContext = talkTemplatesFragment.requireContext();
                PageTitle pageTitle = talkTemplatesFragment.getViewModel().pageTitle;
                Constants.InvokeSource invokeSource = Constants.InvokeSource.DIFF_ACTIVITY;
                boolean z = talkTemplatesFragment.getViewModel().templateManagementMode;
                anonymousClass10.launch(UserTalkPopupHelper.newIntent$default(requireContext, pageTitle, null, null, invokeSource, null, null, null, talkTemplatesFragment.getViewModel().toRevisionId, talkTemplatesFragment.getViewModel().fromRevisionId, z, false, 4448), null);
                break;
            case 2:
                if (talkTemplatesFragment.actionMode == null) {
                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    String m2 = ViewSizeResolver$CC.m();
                    Prefs prefs2 = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("edit_message_click", "pt_templates", "", m2, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    talkTemplatesFragment.requireActivity().startSupportActionMode(talkTemplatesFragment.multiSelectCallback);
                    talkTemplatesFragment.setMultiSelectEnabled$1(true);
                    talkTemplatesFragment.updateAndNotifyAdapter();
                    break;
                }
                break;
            default:
                TalkTemplatesViewModel viewModel = talkTemplatesFragment.getViewModel();
                ArrayList arrayList = talkTemplatesFragment.deletedItems;
                arrayList.getClass();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.actionExceptionHandler, null, new GlanceAppWidgetReceiver$onReceive$1$1(arrayList, viewModel, null), 2);
                break;
        }
    }
}
