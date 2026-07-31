package org.wikipedia.edit;

import android.content.DialogInterface;
import android.widget.CheckBox;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import org.wikipedia.R;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.events.ReadingListsEnableSyncStatusEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditSectionActivity$$ExternalSyntheticLambda15 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MultipartBody.Builder f$0;

    public /* synthetic */ EditSectionActivity$$ExternalSyntheticLambda15(MultipartBody.Builder builder, int i) {
        this.$r8$classId = i;
        this.f$0 = builder;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i = this.$r8$classId;
        MultipartBody.Builder builder = this.f$0;
        switch (i) {
            case 0:
                int i2 = EditSectionActivity.$r8$clinit;
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_show_edit_talk_page_source_prompt, !((CheckBox) builder.type).isChecked());
                break;
            case 1:
                Cache.Companion.PROMPT_LOGIN_TO_SYNC_DIALOG_SHOWING = false;
                Prefs prefs2 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_show_reading_lists_sync_prompt, !((CheckBox) builder.type).isChecked());
                break;
            default:
                Prefs prefs3 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_show_reading_lists_sync_prompt, !((CheckBox) builder.type).isChecked());
                FlowEventBus.post(new ReadingListsEnableSyncStatusEvent());
                break;
        }
    }
}
