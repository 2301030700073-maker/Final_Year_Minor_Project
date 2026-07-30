package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ComponentActivity.kt */
/* loaded from: classes.dex */
public final class ComponentActivity$activityResultRegistry$1 extends ActivityResultRegistry {
    final /* synthetic */ ComponentActivity this$0;

    ComponentActivity$activityResultRegistry$1(ComponentActivity componentActivity) {
        this.this$0 = componentActivity;
    }

    @Override // androidx.activity.result.ActivityResultRegistry
    public void onLaunch(final int i, ActivityResultContract contract, Object obj, ActivityOptionsCompat activityOptionsCompat) {
        Bundle bundle;
        Intrinsics.checkNotNullParameter(contract, "contract");
        ComponentActivity componentActivity = this.this$0;
        final ActivityResultContract.SynchronousResult synchronousResult = contract.getSynchronousResult(componentActivity, obj);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity$activityResultRegistry$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ComponentActivity$activityResultRegistry$1.onLaunch$lambda$0(ComponentActivity$activityResultRegistry$1.this, i, synchronousResult);
                }
            });
            return;
        }
        Intent createIntent = contract.createIntent(componentActivity, obj);
        if (createIntent.getExtras() != null) {
            Bundle extras = createIntent.getExtras();
            Intrinsics.checkNotNull(extras);
            if (extras.getClassLoader() == null) {
                createIntent.setExtrasClassLoader(componentActivity.getClassLoader());
            }
        }
        if (createIntent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            Bundle bundleExtra = createIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            createIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            bundle = bundleExtra;
        } else {
            bundle = activityOptionsCompat != null ? activityOptionsCompat.toBundle() : null;
        }
        if (Intrinsics.areEqual("androidx.activity.result.contract.action.REQUEST_PERMISSIONS", createIntent.getAction())) {
            String[] stringArrayExtra = createIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            ActivityCompat.requestPermissions(componentActivity, stringArrayExtra, i);
            return;
        }
        if (Intrinsics.areEqual("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST", createIntent.getAction())) {
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) createIntent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                Intrinsics.checkNotNull(intentSenderRequest);
                ActivityCompat.startIntentSenderForResult(componentActivity, intentSenderRequest.getIntentSender(), i, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundle);
                return;
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity$activityResultRegistry$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ComponentActivity$activityResultRegistry$1.onLaunch$lambda$1(ComponentActivity$activityResultRegistry$1.this, i, e);
                    }
                });
                return;
            }
        }
        ActivityCompat.startActivityForResult(componentActivity, createIntent, i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLaunch$lambda$0(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, int i, ActivityResultContract.SynchronousResult synchronousResult) {
        componentActivity$activityResultRegistry$1.dispatchResult(i, synchronousResult.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLaunch$lambda$1(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, int i, IntentSender.SendIntentException sendIntentException) {
        componentActivity$activityResultRegistry$1.dispatchResult(i, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", sendIntentException));
    }
}
