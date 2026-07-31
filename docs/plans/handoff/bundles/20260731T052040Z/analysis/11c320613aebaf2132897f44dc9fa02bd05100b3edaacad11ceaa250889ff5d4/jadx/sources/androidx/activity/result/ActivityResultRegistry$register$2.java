package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ActivityResultRegistry$register$2 extends ActivityResultLauncher {
    public final /* synthetic */ ActivityResultContract $contract;
    public final /* synthetic */ String $key;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityResultRegistry this$0;

    public /* synthetic */ ActivityResultRegistry$register$2(ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract, int i) {
        this.$r8$classId = i;
        this.this$0 = activityResultRegistry;
        this.$key = str;
        this.$contract = activityResultContract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void launch(Object obj) {
        int i = this.$r8$classId;
        ActivityResultContract activityResultContract = this.$contract;
        String str = this.$key;
        ActivityResultRegistry activityResultRegistry = this.this$0;
        switch (i) {
            case 0:
                ArrayList arrayList = activityResultRegistry.launchedKeys;
                Object obj2 = activityResultRegistry.keyToRc.get(str);
                if (obj2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m("Attempting to launch an unregistered ActivityResultLauncher with contract ", activityResultContract, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int intValue = ((Number) obj2).intValue();
                arrayList.add(str);
                try {
                    activityResultRegistry.onLaunch(intValue, activityResultContract, obj);
                    return;
                } catch (Exception e) {
                    arrayList.remove(str);
                    throw e;
                }
            default:
                ArrayList arrayList2 = activityResultRegistry.launchedKeys;
                Object obj3 = activityResultRegistry.keyToRc.get(str);
                if (obj3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m("Attempting to launch an unregistered ActivityResultLauncher with contract ", activityResultContract, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int intValue2 = ((Number) obj3).intValue();
                arrayList2.add(str);
                try {
                    activityResultRegistry.onLaunch(intValue2, activityResultContract, obj);
                    return;
                } catch (Exception e2) {
                    arrayList2.remove(str);
                    throw e2;
                }
        }
    }

    public void unregister() {
        this.this$0.unregister$activity(this.$key);
    }
}
