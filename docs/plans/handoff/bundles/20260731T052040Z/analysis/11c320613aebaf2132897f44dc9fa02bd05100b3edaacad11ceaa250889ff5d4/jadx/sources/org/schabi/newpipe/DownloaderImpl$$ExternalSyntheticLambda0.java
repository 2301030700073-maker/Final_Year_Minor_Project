package org.schabi.newpipe;

import android.widget.CheckBox;
import android.widget.Toast;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import j$.util.function.BiConsumer$CC;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import okhttp3.Request;
import org.schabi.newpipe.settings.custom.NotificationActionsPreference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloaderImpl$$ExternalSyntheticLambda0 implements BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DownloaderImpl$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                DownloaderImpl.$r8$lambda$2a0p9oMkkgzxSmpcGeYXtuomImY((Request.Builder) obj3, (String) obj, (List) obj2);
                break;
            case 1:
                ((MediaSessionConnector) obj3).setCustomErrorMessage((CharSequence) obj, ((Integer) obj2).intValue());
                break;
            default:
                NotificationActionsPreference notificationActionsPreference = (NotificationActionsPreference) obj3;
                Integer num = (Integer) obj;
                num.getClass();
                CheckBox checkBox = (CheckBox) obj2;
                boolean isChecked = checkBox.isChecked();
                ArrayList arrayList = notificationActionsPreference.compactSlots;
                if (!isChecked) {
                    if (arrayList.size() >= 3) {
                        Toast.makeText(notificationActionsPreference.mContext, R.string.notification_actions_at_most_three, 0).show();
                        break;
                    } else {
                        notificationActionsPreference.compactSlots.add(num);
                    }
                } else {
                    arrayList.remove(num);
                }
                checkBox.toggle();
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.$r8$classId;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
