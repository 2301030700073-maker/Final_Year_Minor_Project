package com.android.launcher3.config;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceFragmentCompat;
import b.i.b.ActivityC0124t;
import b.l.AbstractC0157s;
import com.android.launcher3.config.FeatureFlags;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class FlagTogglerPrefUi {
    public final Context mContext;
    public final AbstractC0157s mDataStore = new AbstractC0157s() { // from class: com.android.launcher3.config.FlagTogglerPrefUi.1
        @Override // b.l.AbstractC0157s
        public boolean getBoolean(String str, boolean z) {
            Iterator it = ((ArrayList) FeatureFlags.getDebugFlags()).iterator();
            while (it.hasNext()) {
                FeatureFlags.DebugFlag debugFlag = (FeatureFlags.DebugFlag) it.next();
                if (debugFlag.key.equals(str)) {
                    return FlagTogglerPrefUi.this.mContext.getSharedPreferences("featureFlags", 0).getBoolean(str, debugFlag.defaultValue);
                }
            }
            return z;
        }

        @Override // b.l.AbstractC0157s
        public void putBoolean(String str, boolean z) {
            Iterator it = ((ArrayList) FeatureFlags.getDebugFlags()).iterator();
            while (it.hasNext()) {
                FeatureFlags.DebugFlag debugFlag = (FeatureFlags.DebugFlag) it.next();
                if (debugFlag.key.equals(str)) {
                    SharedPreferences.Editor edit = FlagTogglerPrefUi.this.mContext.getSharedPreferences("featureFlags", 0).edit();
                    if (z == debugFlag.defaultValue) {
                        edit.remove(str).apply();
                    } else {
                        edit.putBoolean(str, z).apply();
                    }
                    FlagTogglerPrefUi flagTogglerPrefUi = FlagTogglerPrefUi.this;
                    flagTogglerPrefUi.mFragment.setHasOptionsMenu(flagTogglerPrefUi.anyChanged());
                    flagTogglerPrefUi.mFragment.getActivity().invalidateOptionsMenu();
                }
            }
        }
    };
    public final PreferenceFragmentCompat mFragment;
    public final SharedPreferences mSharedPreferences;

    public FlagTogglerPrefUi(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.mFragment = preferenceFragmentCompat;
        ActivityC0124t activity = preferenceFragmentCompat.getActivity();
        this.mContext = activity;
        this.mSharedPreferences = activity.getSharedPreferences("featureFlags", 0);
    }

    public final boolean anyChanged() {
        Iterator it = ((ArrayList) FeatureFlags.getDebugFlags()).iterator();
        while (it.hasNext()) {
            FeatureFlags.DebugFlag debugFlag = (FeatureFlags.DebugFlag) it.next();
            if (this.mDataStore.getBoolean(debugFlag.key, debugFlag.defaultValue) != debugFlag.mCurrentValue) {
                return true;
            }
        }
        return false;
    }
}
