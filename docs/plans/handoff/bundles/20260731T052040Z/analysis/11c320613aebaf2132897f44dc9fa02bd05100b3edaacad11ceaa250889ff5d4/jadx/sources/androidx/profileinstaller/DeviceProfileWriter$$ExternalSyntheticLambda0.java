package androidx.profileinstaller;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.appcompat.widget.PopupMenu$1;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.util.ListenerSet;
import java.io.Serializable;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DeviceProfileWriter$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ DeviceProfileWriter$$ExternalSyntheticLambda0(DrmSessionEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener drmSessionEventListener, int i) {
        this.$r8$classId = 3;
        this.f$0 = eventDispatcher;
        this.f$2 = drmSessionEventListener;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        int i2 = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((DeviceProfileWriter) obj2).mDiagnostics.onResultReceived(i2, obj);
                break;
            case 1:
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = (ComponentActivity$activityResultRegistry$1) obj2;
                Serializable serializable = (Serializable) ((PopupMenu$1) obj).this$0;
                String str = (String) componentActivity$activityResultRegistry$1.rcToKey.get(Integer.valueOf(i2));
                if (str != null) {
                    ActivityResultRegistry.CallbackAndContract callbackAndContract = (ActivityResultRegistry.CallbackAndContract) componentActivity$activityResultRegistry$1.keyToCallback.get(str);
                    if ((callbackAndContract != null ? callbackAndContract.callback : null) != null) {
                        ActivityResultCallback activityResultCallback = callbackAndContract.callback;
                        activityResultCallback.getClass();
                        if (componentActivity$activityResultRegistry$1.launchedKeys.remove(str)) {
                            activityResultCallback.onActivityResult(serializable);
                            break;
                        }
                    } else {
                        componentActivity$activityResultRegistry$1.pendingResults.remove(str);
                        componentActivity$activityResultRegistry$1.parsedPendingResults.put(str, serializable);
                        break;
                    }
                }
                break;
            case 2:
                ((ComponentActivity$activityResultRegistry$1) obj2).dispatchResult(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                break;
            case 3:
                ((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmSessionAcquired$0((DrmSessionEventListener) obj, i2);
                break;
            default:
                ListenerSet.lambda$queueEvent$0((CopyOnWriteArraySet) obj2, i2, (ListenerSet.Event) obj);
                break;
        }
    }

    public /* synthetic */ DeviceProfileWriter$$ExternalSyntheticLambda0(int i, Object obj, Object obj2, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
    }
}
