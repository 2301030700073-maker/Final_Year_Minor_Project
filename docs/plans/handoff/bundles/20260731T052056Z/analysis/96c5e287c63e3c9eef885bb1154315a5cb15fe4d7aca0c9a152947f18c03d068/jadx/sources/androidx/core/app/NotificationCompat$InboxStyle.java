package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$InboxStyle extends NotificationCompat$Style {
    public final /* synthetic */ int $r8$classId;
    public Object mTexts;

    public NotificationCompat$InboxStyle(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                break;
            default:
                this.mTexts = new ArrayList();
                break;
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(Dispatcher dispatcher) {
        switch (this.$r8$classId) {
            case 0:
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle((Notification.Builder) dispatcher.readyAsyncCalls).setBigContentTitle(this.mBigContentTitle);
                if (this.mSummaryTextSet) {
                    bigContentTitle.setSummaryText(this.mSummaryText);
                }
                Iterator it = ((ArrayList) this.mTexts).iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine((CharSequence) it.next());
                }
                break;
            default:
                Notification.BigTextStyle bigText = new Notification.BigTextStyle((Notification.Builder) dispatcher.readyAsyncCalls).setBigContentTitle(this.mBigContentTitle).bigText((CharSequence) this.mTexts);
                if (this.mSummaryTextSet) {
                    bigText.setSummaryText(this.mSummaryText);
                    break;
                }
                break;
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void clearCompatExtraKeys(Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                super.clearCompatExtraKeys(bundle);
                bundle.remove("android.textLines");
                break;
            default:
                super.clearCompatExtraKeys(bundle);
                bundle.remove("android.bigText");
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

    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                super.restoreFromCompatExtras(bundle);
                ArrayList arrayList = (ArrayList) this.mTexts;
                arrayList.clear();
                if (bundle.containsKey("android.textLines")) {
                    Collections.addAll(arrayList, bundle.getCharSequenceArray("android.textLines"));
                    break;
                }
                break;
            default:
                super.restoreFromCompatExtras(bundle);
                this.mTexts = bundle.getCharSequence("android.bigText");
                break;
        }
    }
}
