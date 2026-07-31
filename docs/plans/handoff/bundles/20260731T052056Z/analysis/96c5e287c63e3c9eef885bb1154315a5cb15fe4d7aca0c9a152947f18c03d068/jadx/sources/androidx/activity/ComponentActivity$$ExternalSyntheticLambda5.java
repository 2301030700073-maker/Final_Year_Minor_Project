package androidx.activity;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda5 implements SavedStateRegistry$SavedStateProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda5(AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
    }

    @Override // androidx.savedstate.SavedStateRegistry$SavedStateProvider
    public final Bundle saveState() {
        int i = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.f$0;
        switch (i) {
            case 0:
                Bundle bundle = new Bundle();
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = appCompatActivity.activityResultRegistry;
                componentActivity$activityResultRegistry$1.getClass();
                LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.keyToRc;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(componentActivity$activityResultRegistry$1.launchedKeys));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(componentActivity$activityResultRegistry$1.pendingResults));
                return bundle;
            default:
                int i2 = AppCompatActivity.$r8$clinit;
                while (AppCompatActivity.markState(appCompatActivity.getSupportFragmentManager(), Lifecycle$State.CREATED)) {
                }
                appCompatActivity.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
                return new Bundle();
        }
    }
}
