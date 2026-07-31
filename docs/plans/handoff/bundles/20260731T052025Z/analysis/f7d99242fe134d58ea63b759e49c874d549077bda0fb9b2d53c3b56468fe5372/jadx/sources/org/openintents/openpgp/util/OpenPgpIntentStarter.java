package org.openintents.openpgp.util;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity$HostCallbacks;
import androidx.fragment.app.FragmentManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpenPgpIntentStarter {
    public static Bundle buildOptionsBundle() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            makeBasic.setPendingIntentBackgroundActivityStartMode(3);
            makeBasic.setShareIdentityEnabled(true);
            return makeBasic.toBundle();
        }
        if (i < 34) {
            return null;
        }
        ActivityOptions makeBasic2 = ActivityOptions.makeBasic();
        makeBasic2.setPendingIntentBackgroundActivityStartMode(1);
        makeBasic2.setShareIdentityEnabled(true);
        return makeBasic2.toBundle();
    }

    public static final void startIntentSenderForResult(Fragment fragment, IntentSender intentSender, int i) {
        fragment.getClass();
        intentSender.getClass();
        Bundle buildOptionsBundle = buildOptionsBundle();
        if (fragment.mHost == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", fragment, " not attached to Activity"));
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + " received the following in startIntentSenderForResult() requestCode: " + i + " IntentSender: " + intentSender + " fillInIntent: null options: " + buildOptionsBundle);
        }
        FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
        Intent intent = null;
        if (parentFragmentManager.mStartIntentSenderForResult == null) {
            FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = parentFragmentManager.mHost;
            fragmentActivity$HostCallbacks.getClass();
            if (i != -1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Starting intent sender with a requestCode requires a FragmentActivity host");
                return;
            }
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks.activity;
            if (appCompatActivity != null) {
                appCompatActivity.startIntentSenderForResult(intentSender, i, null, 0, 0, 0, buildOptionsBundle);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Starting intent sender with a requestCode requires a FragmentActivity host");
                return;
            }
        }
        if (buildOptionsBundle != null) {
            intent = new Intent();
            intent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "ActivityOptions " + buildOptionsBundle + " were added to fillInIntent " + intent + " for fragment " + fragment);
            }
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", buildOptionsBundle);
        }
        IntentSenderRequest intentSenderRequest = new IntentSenderRequest(intentSender, intent, 0, 0);
        parentFragmentManager.mLaunchedFragments.addLast(new FragmentManager.LaunchedFragmentInfo(fragment.mWho, i));
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        parentFragmentManager.mStartIntentSenderForResult.launch(intentSenderRequest);
    }

    public static final void startIntentSenderForResult(Activity activity, IntentSender intentSender, int i) {
        activity.getClass();
        intentSender.getClass();
        activity.startIntentSenderForResult(intentSender, i, null, 0, 0, 0, buildOptionsBundle());
    }
}
