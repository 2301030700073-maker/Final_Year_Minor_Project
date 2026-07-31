package androidx.activity.result;

import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import java.util.ArrayList;
import kotlin.ExceptionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityResultRegistry$register$2 extends ActivityResultLauncher {
    public final /* synthetic */ ExceptionsKt $contract;
    public final /* synthetic */ String $key;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentActivity$activityResultRegistry$1 this$0;

    public /* synthetic */ ActivityResultRegistry$register$2(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, String str, ExceptionsKt exceptionsKt, int i) {
        this.$r8$classId = i;
        this.this$0 = componentActivity$activityResultRegistry$1;
        this.$key = str;
        this.$contract = exceptionsKt;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void launch(Object obj, ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl) {
        int i = this.$r8$classId;
        ExceptionsKt exceptionsKt = this.$contract;
        String str = this.$key;
        ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = this.this$0;
        switch (i) {
            case 0:
                ArrayList arrayList = componentActivity$activityResultRegistry$1.launchedKeys;
                Object obj2 = componentActivity$activityResultRegistry$1.keyToRc.get(str);
                if (obj2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attempting to launch an unregistered ActivityResultLauncher with contract ", exceptionsKt, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int intValue = ((Number) obj2).intValue();
                arrayList.add(str);
                try {
                    componentActivity$activityResultRegistry$1.onLaunch(intValue, exceptionsKt, obj, activityOptionsCompat$ActivityOptionsCompatImpl);
                    return;
                } catch (Exception e) {
                    arrayList.remove(str);
                    throw e;
                }
            default:
                ArrayList arrayList2 = componentActivity$activityResultRegistry$1.launchedKeys;
                Object obj3 = componentActivity$activityResultRegistry$1.keyToRc.get(str);
                if (obj3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attempting to launch an unregistered ActivityResultLauncher with contract ", exceptionsKt, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int intValue2 = ((Number) obj3).intValue();
                arrayList2.add(str);
                try {
                    componentActivity$activityResultRegistry$1.onLaunch(intValue2, exceptionsKt, obj, activityOptionsCompat$ActivityOptionsCompatImpl);
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
