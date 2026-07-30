package defpackage;

import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.NativeProtocol;

/* loaded from: classes.dex */
public final class JD extends AbstractC3134j6 {
    /* renamed from: throw, reason: not valid java name */
    public final void m1032throw(AppCall appCall, C3344mh c3344mh) {
        O4.m1596abstract("error", c3344mh.getMessage());
    }

    /* renamed from: while, reason: not valid java name */
    public final void m1033while(AppCall appCall, Bundle bundle) {
        if (bundle != null) {
            String string = bundle.containsKey(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) ? bundle.getString(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) : bundle.getString(NativeProtocol.EXTRA_DIALOG_COMPLETION_GESTURE_KEY);
            if (string != null && !BF.e("post", string)) {
                if (BF.e("cancel", string)) {
                    O4.m1596abstract(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
                    return;
                } else {
                    O4.m1596abstract("error", new C3344mh(NativeProtocol.ERROR_UNKNOWN_ERROR).getMessage());
                    return;
                }
            }
            if (bundle.containsKey("postId")) {
                bundle.getString("postId");
            } else if (bundle.containsKey("com.facebook.platform.extra.POST_ID")) {
                bundle.getString("com.facebook.platform.extra.POST_ID");
            } else {
                bundle.getString("post_id");
            }
            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(C3756th.m8299do());
            Bundle bundle2 = new Bundle();
            bundle2.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED);
            internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_RESULT, bundle2);
        }
    }
}
