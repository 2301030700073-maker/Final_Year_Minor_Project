package org.wikipedia.views;

import android.content.DialogInterface;
import coil3.size.ViewSizeResolver$CC;
import okio.Path;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextInputDialog$$ExternalSyntheticLambda2 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TextInputDialog$$ExternalSyntheticLambda2(TextInputDialog textInputDialog) {
        this.$r8$classId = 0;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.$r8$classId) {
            case 0:
                dialogInterface.getClass();
                break;
            case 1:
                int i2 = EditSectionActivity.$r8$clinit;
                dialogInterface.dismiss();
                break;
            case 2:
                int i3 = EditSectionActivity.$r8$clinit;
                dialogInterface.dismiss();
                break;
            case 3:
                int i4 = EditSectionActivity.$r8$clinit;
                dialogInterface.dismiss();
                break;
            case 4:
                WikiGamesEvent.submit$default("nothanks_click", "sync_prompt", null, null, null, null, null, null, 508);
                break;
            case 5:
                WikiGamesEvent.submit$default("sync_enable_click", "sync_enable_prompt", null, null, null, null, null, null, 508);
                Path.Companion.setSyncEnabledWithSetup();
                break;
            case 6:
                WikiGamesEvent.submit$default("nothanks_click", "sync_enable_prompt", null, null, null, null, null, null, 508);
                break;
            case 7:
                WikiGamesEvent.submit$default("ok_click", "sync_off_prompt", null, null, null, null, null, null, 508);
                break;
            case 8:
                UriUtil.submit$default(238, null, "yir_off_cancel_click", null, "setting", null);
                break;
            case 9:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                dialogInterface.dismiss();
                break;
            case 10:
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("message_delete_cancel", "pt_templates", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                break;
            default:
                dialogInterface.getClass();
                dialogInterface.dismiss();
                break;
        }
    }

    public /* synthetic */ TextInputDialog$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }
}
