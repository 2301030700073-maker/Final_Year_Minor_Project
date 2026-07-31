package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.Build;
import androidx.core.app.Person;
import androidx.core.app.RemoteInput;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationChannelGroupCompat {
    public final List mChannels;
    public final String mId;

    public NotificationChannelGroupCompat(NotificationChannelGroup notificationChannelGroup, List list) {
        String id = RemoteInput.Api26Impl.getId(notificationChannelGroup);
        this.mChannels = Collections.EMPTY_LIST;
        id.getClass();
        this.mId = id;
        RemoteInput.Api26Impl.getName(notificationChannelGroup);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            Person.Api28Impl.getDescription(notificationChannelGroup);
        }
        if (i < 28) {
            this.mChannels = getChannelsCompat(list);
        } else {
            Person.Api28Impl.isBlocked(notificationChannelGroup);
            this.mChannels = getChannelsCompat(RemoteInput.Api26Impl.getChannels(notificationChannelGroup));
        }
    }

    public final ArrayList getChannelsCompat(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NotificationChannel notificationChannel = (NotificationChannel) it.next();
            if (this.mId.equals(notificationChannel.getGroup())) {
                arrayList.add(new NotificationChannelCompat(notificationChannel));
            }
        }
        return arrayList;
    }
}
