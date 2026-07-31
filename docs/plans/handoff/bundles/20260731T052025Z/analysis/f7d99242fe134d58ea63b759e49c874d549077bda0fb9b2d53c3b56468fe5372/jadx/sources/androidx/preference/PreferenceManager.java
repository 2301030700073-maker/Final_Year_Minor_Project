package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import androidx.compose.ui.unit.IntRectKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PreferenceManager {
    public final Context mContext;
    public SharedPreferences.Editor mEditor;
    public boolean mNoCommit;
    public PreferenceFragmentCompat mOnDisplayPreferenceDialogListener;
    public PreferenceFragmentCompat mOnNavigateToScreenListener;
    public PreferenceFragmentCompat mOnPreferenceTreeClickListener;
    public IntRectKt mPreferenceDataStore;
    public PreferenceScreen mPreferenceScreen;
    public final String mSharedPreferencesName;
    public long mNextId = 0;
    public SharedPreferences mSharedPreferences = null;

    public PreferenceManager(Context context) {
        this.mContext = context;
        this.mSharedPreferencesName = context.getPackageName() + "_preferences";
    }

    public SharedPreferences.Editor getEditor() {
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (!this.mNoCommit) {
            return getSharedPreferences().edit();
        }
        if (this.mEditor == null) {
            this.mEditor = getSharedPreferences().edit();
        }
        return this.mEditor;
    }

    public final long getNextId() {
        long j;
        synchronized (this) {
            j = this.mNextId;
            this.mNextId = 1 + j;
        }
        return j;
    }

    public final SharedPreferences getSharedPreferences() {
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = this.mContext.getSharedPreferences(this.mSharedPreferencesName, 0);
        }
        return this.mSharedPreferences;
    }

    public PreferenceScreen inflateFromResource(Context context, int i, PreferenceScreen preferenceScreen) {
        this.mNoCommit = true;
        PreferenceInflater preferenceInflater = new PreferenceInflater(context, this);
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            PreferenceGroup inflate = preferenceInflater.inflate(xml, preferenceScreen);
            xml.close();
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) inflate;
            preferenceScreen2.onAttachedToHierarchy(this);
            SharedPreferences.Editor editor = this.mEditor;
            if (editor != null) {
                editor.apply();
            }
            this.mNoCommit = false;
            return preferenceScreen2;
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public boolean shouldCommit() {
        return !this.mNoCommit;
    }
}
