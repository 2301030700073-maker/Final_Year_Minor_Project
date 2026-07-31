package androidx.profileinstaller;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$CallbackAndContract;
import androidx.compose.foundation.text.TextDelegate;
import coil3.Extras;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DeviceProfileWriter$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ DeviceProfileWriter$$ExternalSyntheticLambda0(Object obj, int i, Object obj2, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        int i2 = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((ProfileInstaller$DiagnosticsCallback) ((TextDelegate) obj2).style).onResultReceived(i2, obj);
                break;
            case 1:
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = (ComponentActivity$activityResultRegistry$1) obj2;
                Object obj3 = ((Extras.Key) obj).f16default;
                String str = (String) componentActivity$activityResultRegistry$1.rcToKey.get(Integer.valueOf(i2));
                if (str != null) {
                    ActivityResultRegistry$CallbackAndContract activityResultRegistry$CallbackAndContract = (ActivityResultRegistry$CallbackAndContract) componentActivity$activityResultRegistry$1.keyToCallback.get(str);
                    if ((activityResultRegistry$CallbackAndContract != null ? activityResultRegistry$CallbackAndContract.callback : null) != null) {
                        ActivityResultCallback activityResultCallback = activityResultRegistry$CallbackAndContract.callback;
                        if (componentActivity$activityResultRegistry$1.launchedKeys.remove(str)) {
                            activityResultCallback.onActivityResult(obj3);
                            break;
                        }
                    } else {
                        componentActivity$activityResultRegistry$1.pendingResults.remove(str);
                        componentActivity$activityResultRegistry$1.parsedPendingResults.put(str, obj3);
                        break;
                    }
                }
                break;
            default:
                ((ComponentActivity$activityResultRegistry$1) obj2).dispatchResult(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                break;
        }
    }
}
