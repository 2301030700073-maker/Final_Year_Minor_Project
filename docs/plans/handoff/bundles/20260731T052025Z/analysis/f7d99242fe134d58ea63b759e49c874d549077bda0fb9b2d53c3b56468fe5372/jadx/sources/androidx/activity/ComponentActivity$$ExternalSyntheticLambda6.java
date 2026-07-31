package androidx.activity;

import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity$HostCallbacks;
import com.beetstra.jutf7.Base64Util;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda6 implements OnContextAvailableListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda6(AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public final void onContextAvailable(ComponentActivity componentActivity) {
        int i = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.f$0;
        switch (i) {
            case 0:
                componentActivity.getClass();
                Bundle consumeRestoredStateForKey = ((Base64Util) appCompatActivity.savedStateRegistryController.inverseAlphabet).consumeRestoredStateForKey("android:support:activity-result");
                if (consumeRestoredStateForKey != null) {
                    ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = appCompatActivity.activityResultRegistry;
                    LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.keyToRc;
                    LinkedHashMap linkedHashMap2 = componentActivity$activityResultRegistry$1.rcToKey;
                    Bundle bundle = componentActivity$activityResultRegistry$1.pendingResults;
                    ArrayList<Integer> integerArrayList = consumeRestoredStateForKey.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList != null && integerArrayList != null) {
                        ArrayList<String> stringArrayList2 = consumeRestoredStateForKey.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                        if (stringArrayList2 != null) {
                            componentActivity$activityResultRegistry$1.launchedKeys.addAll(stringArrayList2);
                        }
                        Bundle bundle2 = consumeRestoredStateForKey.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                        if (bundle2 != null) {
                            bundle.putAll(bundle2);
                        }
                        int size = stringArrayList.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            String str = stringArrayList.get(i2);
                            if (linkedHashMap.containsKey(str)) {
                                Integer num = (Integer) linkedHashMap.remove(str);
                                if (!bundle.containsKey(str)) {
                                    TypeIntrinsics.asMutableMap(linkedHashMap2).remove(num);
                                }
                            }
                            Integer num2 = integerArrayList.get(i2);
                            num2.getClass();
                            int intValue = num2.intValue();
                            String str2 = stringArrayList.get(i2);
                            str2.getClass();
                            String str3 = str2;
                            linkedHashMap2.put(Integer.valueOf(intValue), str3);
                            componentActivity$activityResultRegistry$1.keyToRc.put(str3, Integer.valueOf(intValue));
                        }
                        break;
                    }
                }
                break;
            default:
                FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = (FragmentActivity$HostCallbacks) appCompatActivity.mFragments.this$0;
                fragmentActivity$HostCallbacks.fragmentManager.attachController(fragmentActivity$HostCallbacks, fragmentActivity$HostCallbacks, null);
                break;
        }
    }
}
