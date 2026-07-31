package kotlin.properties;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ObservableProperty {
    public final /* synthetic */ int $r8$classId;
    public Object value;

    public ObservableProperty() {
        this.$r8$classId = 1;
        this.value = new Object();
    }

    public abstract void clearWatchSet$runtime(SendChannel sendChannel);

    public abstract void commitSubscriptionChanges$runtime();

    public abstract void dispose$runtime();

    public abstract Function1 readObserverFor$runtime(SendChannel sendChannel);

    public abstract void reportSnapshotFlowCancellation$runtime(Channel channel);

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "ObservableProperty(value=" + this.value + ')';
            default:
                return super.toString();
        }
    }

    public ObservableProperty(Object obj) {
        this.$r8$classId = 0;
        this.value = obj;
    }
}
