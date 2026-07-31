package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$CallbackAndContract;
import androidx.activity.result.ActivityResultRegistry$LifecycleContainer;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0;
import androidx.room.Room;
import coil3.Extras;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.SequencesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public final void onLaunch(int i, ExceptionsKt exceptionsKt, Object obj, ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl) {
        Bundle bundle;
        int i2;
        AppCompatActivity appCompatActivity = this.this$0;
        Extras.Key synchronousResult = exceptionsKt.getSynchronousResult(appCompatActivity, obj);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new DeviceProfileWriter$$ExternalSyntheticLambda0(this, i, synchronousResult, 1));
            return;
        }
        Intent createIntent = exceptionsKt.createIntent(appCompatActivity, obj);
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
            bundle = activityOptionsCompat$ActivityOptionsCompatImpl != null ? activityOptionsCompat$ActivityOptionsCompatImpl.mActivityOptions.toBundle() : null;
        }
        Bundle bundle2 = bundle;
        if (!"androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(createIntent.getAction())) {
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
                return;
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
                new Handler(Looper.getMainLooper()).post(new DeviceProfileWriter$$ExternalSyntheticLambda0(this, i2, e, 2));
                return;
            }
        }
        String[] stringArrayExtra = createIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < stringArrayExtra.length; i3++) {
            if (TextUtils.isEmpty(stringArrayExtra[i3])) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(new StringBuilder("Permission request for permissions "), Arrays.toString(stringArrayExtra), " must not contain null or empty values"));
                return;
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(stringArrayExtra[i3], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i3));
            }
        }
        int size = hashSet.size();
        String[] strArr = size > 0 ? new String[stringArrayExtra.length - size] : stringArrayExtra;
        if (size > 0) {
            if (size == stringArrayExtra.length) {
                return;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < stringArrayExtra.length; i5++) {
                if (!hashSet.contains(Integer.valueOf(i5))) {
                    strArr[i4] = stringArrayExtra[i5];
                    i4++;
                }
            }
        }
        appCompatActivity.requestPermissions(stringArrayExtra, i);
    }

    public final ActivityResultRegistry$register$2 register(String str, LifecycleOwner lifecycleOwner, ExceptionsKt exceptionsKt, ActivityResultCallback activityResultCallback) {
        LifecycleRegistry lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.state.isAtLeast(Lifecycle$State.STARTED)) {
            StringBuilder sb = new StringBuilder("LifecycleOwner ");
            sb.append(lifecycleOwner);
            Lifecycle$State lifecycle$State = lifecycle.state;
            sb.append(" is attempting to register while current state is ");
            sb.append(lifecycle$State);
            sb.append(". LifecycleOwners must call register before they are STARTED.");
            throw new IllegalStateException(sb.toString().toString());
        }
        registerKey(str);
        LinkedHashMap linkedHashMap = this.keyToLifecycleContainers;
        ActivityResultRegistry$LifecycleContainer activityResultRegistry$LifecycleContainer = (ActivityResultRegistry$LifecycleContainer) linkedHashMap.get(str);
        if (activityResultRegistry$LifecycleContainer == null) {
            activityResultRegistry$LifecycleContainer = new ActivityResultRegistry$LifecycleContainer(lifecycle);
        }
        RandomScreenKt$$ExternalSyntheticLambda17 randomScreenKt$$ExternalSyntheticLambda17 = new RandomScreenKt$$ExternalSyntheticLambda17(this, str, activityResultCallback, exceptionsKt, 1);
        activityResultRegistry$LifecycleContainer.lifecycle.addObserver(randomScreenKt$$ExternalSyntheticLambda17);
        activityResultRegistry$LifecycleContainer.observers.add(randomScreenKt$$ExternalSyntheticLambda17);
        linkedHashMap.put(str, activityResultRegistry$LifecycleContainer);
        return new ActivityResultRegistry$register$2(this, str, exceptionsKt, 0);
    }

    public final void registerKey(String str) {
        LinkedHashMap linkedHashMap = this.keyToRc;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        Iterator it = ((ConstrainedOnceSequence) SequencesKt.generateSequence(new ImmLeaksCleaner$$ExternalSyntheticLambda0(5))).iterator();
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
        Gson$$ExternalSyntheticBUOutline0.m$3("Sequence contains no element matching the predicate.");
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
            StringBuilder m21m = Animation.CC.m21m("Dropping pending result for request ", str, ": ");
            m21m.append(linkedHashMap.get(str));
            Log.w("ActivityResultRegistry", m21m.toString());
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.pendingResults;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((ActivityResult) Room.getParcelable(bundle, str, ActivityResult.class)));
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

    public final ActivityResultRegistry$register$2 register(String str, ExceptionsKt exceptionsKt, ActivityResultCallback activityResultCallback) {
        str.getClass();
        registerKey(str);
        this.keyToCallback.put(str, new ActivityResultRegistry$CallbackAndContract(activityResultCallback, exceptionsKt));
        LinkedHashMap linkedHashMap = this.parsedPendingResults;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        Bundle bundle = this.pendingResults;
        ActivityResult activityResult = (ActivityResult) Room.getParcelable(bundle, str, ActivityResult.class);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.onActivityResult(exceptionsKt.parseResult(activityResult.data, activityResult.resultCode));
        }
        return new ActivityResultRegistry$register$2(this, str, exceptionsKt, 1);
    }
}
