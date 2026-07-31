package org.wikipedia.random;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$CallbackAndContract;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.room.Room;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Ref$LongRef;
import org.wikipedia.random.RandomScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda17 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda17(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        int i = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                Ref$LongRef ref$LongRef = (Ref$LongRef) obj4;
                SensorManager sensorManager = (SensorManager) obj3;
                RandomScreenKt$ShakeToAdvance$1$1$listener$1 randomScreenKt$ShakeToAdvance$1$1$listener$1 = (RandomScreenKt$ShakeToAdvance$1$1$listener$1) obj2;
                Sensor sensor = (Sensor) obj;
                int i2 = RandomScreenKt.WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()];
                if (i2 == 1) {
                    ref$LongRef.element = 0L;
                    if (sensorManager != null) {
                        sensorManager.registerListener(randomScreenKt$ShakeToAdvance$1$1$listener$1, sensor, 2);
                        break;
                    }
                } else if (i2 == 2 && sensorManager != null) {
                    sensorManager.unregisterListener(randomScreenKt$ShakeToAdvance$1$1$listener$1);
                    break;
                }
                break;
            default:
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = (ComponentActivity$activityResultRegistry$1) obj4;
                LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.keyToCallback;
                String str = (String) obj3;
                ActivityResultCallback activityResultCallback = (ActivityResultCallback) obj2;
                ExceptionsKt exceptionsKt = (ExceptionsKt) obj;
                if (Lifecycle$Event.ON_START != lifecycle$Event) {
                    if (Lifecycle$Event.ON_STOP != lifecycle$Event) {
                        if (Lifecycle$Event.ON_DESTROY == lifecycle$Event) {
                            componentActivity$activityResultRegistry$1.unregister$activity(str);
                            break;
                        }
                    } else {
                        linkedHashMap.remove(str);
                        break;
                    }
                } else {
                    Bundle bundle = componentActivity$activityResultRegistry$1.pendingResults;
                    LinkedHashMap linkedHashMap2 = componentActivity$activityResultRegistry$1.parsedPendingResults;
                    linkedHashMap.put(str, new ActivityResultRegistry$CallbackAndContract(activityResultCallback, exceptionsKt));
                    if (linkedHashMap2.containsKey(str)) {
                        Object obj5 = linkedHashMap2.get(str);
                        linkedHashMap2.remove(str);
                        activityResultCallback.onActivityResult(obj5);
                    }
                    ActivityResult activityResult = (ActivityResult) Room.getParcelable(bundle, str, ActivityResult.class);
                    if (activityResult != null) {
                        bundle.remove(str);
                        activityResultCallback.onActivityResult(exceptionsKt.parseResult(activityResult.data, activityResult.resultCode));
                        break;
                    }
                }
                break;
        }
    }
}
