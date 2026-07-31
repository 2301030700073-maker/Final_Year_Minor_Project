package androidx.core.app;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationCompat$InboxStyle extends NotificationCompat$Style {
    public final /* synthetic */ int $r8$classId;
    public Object mTexts;

    public /* synthetic */ NotificationCompat$InboxStyle(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(NotificationCompatBuilder notificationCompatBuilder) {
        switch (this.$r8$classId) {
            case 0:
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle((Notification.Builder) notificationCompatBuilder.mBuilder).setBigContentTitle((CharSequence) this.mBigContentTitle);
                Iterator it = ((ArrayList) this.mTexts).iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine((CharSequence) it.next());
                }
                break;
            default:
                new Notification.BigTextStyle((Notification.Builder) notificationCompatBuilder.mBuilder).setBigContentTitle((CharSequence) this.mBigContentTitle).bigText((CharSequence) this.mTexts);
                break;
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        switch (this.$r8$classId) {
            case 0:
                return "androidx.core.app.NotificationCompat$InboxStyle";
            default:
                return "androidx.core.app.NotificationCompat$BigTextStyle";
        }
    }
}
