package org.wikipedia.views;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import coil3.size.ViewSizeResolver$CC;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda7 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyEvent.Callback f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda7(KeyEvent.Callback callback, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = callback;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        KeyEvent.Callback callback = this.f$0;
        switch (i) {
            case 0:
                AppCompatActivity appCompatActivity = (AppCompatActivity) callback;
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) obj;
                View findViewById = appCompatActivity.findViewById(R.id.more_options);
                if (!appCompatActivity.isDestroyed() && findViewById != null) {
                    Prefs prefs = Prefs.INSTANCE;
                    if (Prefs.getShowOneTimeRecentEditsFeedbackForm()) {
                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        EventPlatformClient.submit(new AppInteractionEvent("tooltip_impression", "feedback_form", "", ViewSizeResolver$CC.m(), Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                        String string = appCompatActivity.getString(R.string.patroller_diff_feedback_tooltip);
                        string.getClass();
                        ShareUtil.getTooltip$default(appCompatActivity, string, false, -Okio__OkioKt.roundedDpToPx(7.0f), false, true, 0, 0, 896).showAlignBottom(findViewById, 0);
                        if (SurveyDialog$WhenMappings.$EnumSwitchMapping$0[invokeSource.ordinal()] == 1) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_show_recent_edits_feedback_form, false);
                            break;
                        }
                    }
                }
                break;
            default:
                int i2 = FrameLayoutNavMenuTriggerer.SWIPE_SLOP_Y;
                ((FrameLayoutNavMenuTriggerer) callback).dispatchTouchEvent((MotionEvent) obj);
                break;
        }
    }
}
