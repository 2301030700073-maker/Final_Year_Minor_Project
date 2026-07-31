package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$CallbackAndContract;
import androidx.activity.result.ActivityResultRegistry$LifecycleContainer;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.app.ActivityCompat;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0;
import androidx.sqlite.SQLite;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.DistinctSequence;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComponentActivity$activityResultRegistry$1 {
    public final /* synthetic */ AppCompatActivity this$0;
    public final LinkedHashMap rcToKey = new LinkedHashMap();
    public final LinkedHashMap keyToRc = new LinkedHashMap();
    public final LinkedHashMap keyToLifecycleContainers = new LinkedHashMap();
    public final ArrayList launchedKeys = new ArrayList();
    public final transient LinkedHashMap keyToCallback = new LinkedHashMap();
    public final LinkedHashMap parsedPendingResults = new LinkedHashMap();
    public final Bundle pendingResults = new Bundle();

    public ComponentActivity$activityResultRegistry$1(AppCompatActivity appCompatActivity) {
        this.this$0 = appCompatActivity;
    }

    public final boolean dispatchResult(int i, int i2, Intent intent) {
        String str = (String) this.rcToKey.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        ActivityResultRegistry$CallbackAndContract activityResultRegistry$CallbackAndContract = (ActivityResultRegistry$CallbackAndContract) this.keyToCallback.get(str);
        if ((activityResultRegistry$CallbackAndContract != null ? activityResultRegistry$CallbackAndContract.callback : null) != null) {
            ArrayList arrayList = this.launchedKeys;
            if (arrayList.contains(str)) {
                activityResultRegistry$CallbackAndContract.callback.onActivityResult(activityResultRegistry$CallbackAndContract.contract.parseResult(intent, i2));
                arrayList.remove(str);
                return true;
            }
        }
        this.parsedPendingResults.remove(str);
        this.pendingResults.putParcelable(str, new ActivityResult(intent, i2));
        return true;
    }

    public final void onLaunch(int i, OAuthBearer oAuthBearer, Object obj) {
        Bundle bundle;
        int i2;
        AppCompatActivity appCompatActivity = this.this$0;
        BiometricPrompt synchronousResult = oAuthBearer.getSynchronousResult(appCompatActivity, obj);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new DeviceProfileWriter$$ExternalSyntheticLambda0(i, 1, this, synchronousResult));
            return;
        }
        Intent createIntent = oAuthBearer.createIntent(appCompatActivity, obj);
        if (createIntent.getExtras() != null) {
            Bundle extras = createIntent.getExtras();
            extras.getClass();
            if (extras.getClassLoader() == null) {
                createIntent.setExtrasClassLoader(appCompatActivity.getClassLoader());
            }
        }
        if (createIntent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = createIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            createIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(createIntent.getAction())) {
            String[] stringArrayExtra = createIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            ActivityCompat.requestPermissions(appCompatActivity, stringArrayExtra, i);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(createIntent.getAction())) {
            appCompatActivity.startActivityForResult(createIntent, i, bundle2);
            return;
        }
        IntentSenderRequest intentSenderRequest = (IntentSenderRequest) createIntent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            intentSenderRequest.getClass();
            i2 = i;
        } catch (IntentSender.SendIntentException e) {
            e = e;
            i2 = i;
        }
        try {
            appCompatActivity.startIntentSenderForResult(intentSenderRequest.intentSender, i2, intentSenderRequest.fillInIntent, intentSenderRequest.flagsMask, intentSenderRequest.flagsValues, 0, bundle2);
        } catch (IntentSender.SendIntentException e2) {
            e = e2;
            new Handler(Looper.getMainLooper()).post(new DeviceProfileWriter$$ExternalSyntheticLambda0(i2, 2, this, e));
        }
    }

    public final ActivityResultRegistry$register$2 register(String str, OAuthBearer oAuthBearer, ActivityResultCallback activityResultCallback) {
        str.getClass();
        registerKey(str);
        this.keyToCallback.put(str, new ActivityResultRegistry$CallbackAndContract(activityResultCallback, oAuthBearer));
        LinkedHashMap linkedHashMap = this.parsedPendingResults;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        Bundle bundle = this.pendingResults;
        ActivityResult activityResult = (ActivityResult) SQLite.getParcelable(bundle, str, ActivityResult.class);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.onActivityResult(oAuthBearer.parseResult(activityResult.data, activityResult.resultCode));
        }
        return new ActivityResultRegistry$register$2(this, str, oAuthBearer, 1);
    }

    public final void registerKey(String str) {
        LinkedHashMap linkedHashMap = this.keyToRc;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        ImmLeaksCleaner$$ExternalSyntheticLambda0 immLeaksCleaner$$ExternalSyntheticLambda0 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(5);
        Iterator it = new ConstrainedOnceSequence(new DistinctSequence(1, immLeaksCleaner$$ExternalSyntheticLambda0, new AbstractMap$$ExternalSyntheticLambda0(25, immLeaksCleaner$$ExternalSyntheticLambda0))).iterator();
        while (it.hasNext()) {
            Number number = (Number) it.next();
            Integer valueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.rcToKey;
            if (!linkedHashMap2.containsKey(valueOf)) {
                int intValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(intValue), str);
                linkedHashMap.put(str, Integer.valueOf(intValue));
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Sequence contains no element matching the predicate.");
    }

    public final void unregister$activity(String str) {
        Integer num;
        str.getClass();
        if (!this.launchedKeys.contains(str) && (num = (Integer) this.keyToRc.remove(str)) != null) {
            this.rcToKey.remove(num);
        }
        this.keyToCallback.remove(str);
        LinkedHashMap linkedHashMap = this.parsedPendingResults;
        if (linkedHashMap.containsKey(str)) {
            StringBuilder m31m = CameraDevices$CC.m31m("Dropping pending result for request ", str, ": ");
            m31m.append(linkedHashMap.get(str));
            Log.w("ActivityResultRegistry", m31m.toString());
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.pendingResults;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((ActivityResult) SQLite.getParcelable(bundle, str, ActivityResult.class)));
            bundle.remove(str);
        }
        LinkedHashMap linkedHashMap2 = this.keyToLifecycleContainers;
        ActivityResultRegistry$LifecycleContainer activityResultRegistry$LifecycleContainer = (ActivityResultRegistry$LifecycleContainer) linkedHashMap2.get(str);
        if (activityResultRegistry$LifecycleContainer != null) {
            ArrayList arrayList = activityResultRegistry$LifecycleContainer.observers;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                activityResultRegistry$LifecycleContainer.lifecycle.removeObserver((LifecycleEventObserver) it.next());
            }
            arrayList.clear();
            linkedHashMap2.remove(str);
        }
    }
}
