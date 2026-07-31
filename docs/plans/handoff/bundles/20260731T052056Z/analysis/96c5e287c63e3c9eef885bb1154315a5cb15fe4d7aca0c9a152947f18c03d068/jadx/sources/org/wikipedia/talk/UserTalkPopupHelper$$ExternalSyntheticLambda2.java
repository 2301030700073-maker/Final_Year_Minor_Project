package org.wikipedia.talk;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import okhttp3.Cookie;
import okio.Path;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserTalkPopupHelper$$ExternalSyntheticLambda2 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;

    public /* synthetic */ UserTalkPopupHelper$$ExternalSyntheticLambda2(AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.f$0;
        switch (i2) {
            case 0:
                if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                    Cookie.Companion.submitPatrollerActivityEvent("thank_cancel", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
                    break;
                }
                break;
            default:
                int i3 = LoginActivity.$r8$clinit;
                Intent newIntent = Path.Companion.newIntent((Context) appCompatActivity, "reading_lists_manual_sync", true);
                WikiGamesEvent.submit$default("sync_login_click", "sync_prompt", null, null, null, null, null, null, 508);
                appCompatActivity.startActivity(newIntent);
                break;
        }
    }
}
