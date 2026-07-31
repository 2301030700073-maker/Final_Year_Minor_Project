package androidx.core.app;

import android.app.Notification;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationCompat$InboxStyle extends WorkRequest.Builder {
    public final /* synthetic */ int $r8$classId;
    public Object mTexts;

    public NotificationCompat$InboxStyle(int i) {
        this.$r8$classId = i;
        this.backoffCriteriaSet = false;
    }

    @Override // androidx.work.WorkRequest.Builder
    public final void apply(SharingConfig sharingConfig) {
        switch (this.$r8$classId) {
            case 0:
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle((Notification.Builder) sharingConfig.upstream).setBigContentTitle((CharSequence) this.workSpec);
                if (this.backoffCriteriaSet) {
                    bigContentTitle.setSummaryText((CharSequence) this.tags);
                }
                Iterator it = ((ArrayList) this.mTexts).iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine((CharSequence) it.next());
                }
                break;
            default:
                Notification.BigTextStyle bigText = new Notification.BigTextStyle((Notification.Builder) sharingConfig.upstream).setBigContentTitle((CharSequence) this.workSpec).bigText((CharSequence) this.mTexts);
                if (this.backoffCriteriaSet) {
                    bigText.setSummaryText((CharSequence) this.tags);
                    break;
                }
                break;
        }
    }

    @Override // androidx.work.WorkRequest.Builder
    public final String getClassName() {
        switch (this.$r8$classId) {
            case 0:
                return "androidx.core.app.NotificationCompat$InboxStyle";
            default:
                return "androidx.core.app.NotificationCompat$BigTextStyle";
        }
    }
}
