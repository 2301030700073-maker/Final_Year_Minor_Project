package com.takisoft.preferencex;

import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.DialogPreference;
import androidx.preference.EditTextPreferenceDialogFragmentCompat;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceManagerFix;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.account.NotificationSoundPreference;
import java.lang.reflect.Field;
import java.util.HashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends androidx.preference.PreferenceFragmentCompat {
    public static final HashMap dialogPreferences;
    public static final Field preferenceManagerField;

    static {
        Field[] declaredFields = androidx.preference.PreferenceFragmentCompat.class.getDeclaredFields();
        int length = declaredFields.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Field field = declaredFields[i];
            if (field.getType() == PreferenceManager.class) {
                preferenceManagerField = field;
                field.setAccessible(true);
                break;
            }
            i++;
        }
        dialogPreferences = new HashMap();
    }

    public static void onActivityResult(PreferenceGroup preferenceGroup, int i, int i2, Intent intent) {
        int size = preferenceGroup.mPreferences.size();
        for (int i3 = 0; i3 < size; i3++) {
            Preference preference = preferenceGroup.getPreference(i3);
            if (preference instanceof NotificationSoundPreference) {
                NotificationSoundPreference notificationSoundPreference = (NotificationSoundPreference) preference;
                if (i == 1 && i2 == -1) {
                    Uri uri = intent != null ? (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI") : null;
                    String uri2 = uri != null ? uri.toString() : null;
                    if (uri2 == null) {
                        uri2 = "";
                    }
                    notificationSoundPreference.callChangeListener(uri2);
                    notificationSoundPreference.receivedActivityResultJustNow = true;
                    String uri3 = uri != null ? uri.toString() : null;
                    notificationSoundPreference.persistString(uri3 != null ? uri3 : "");
                }
            }
            if (preference instanceof PreferenceGroup) {
                onActivityResult((PreferenceGroup) preference, i, i2, intent);
            }
        }
    }

    public static void registerPreferenceFragment(Class cls, Class cls2) {
        dialogPreferences.put(cls, cls2);
    }

    public static void traverseAndRefreshPrefs(PreferenceGroup preferenceGroup) {
        int size = preferenceGroup.mPreferences.size();
        for (int i = 0; i < size; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            if (preference instanceof SwitchPreferenceCompat) {
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) preference;
                if (switchPreferenceCompat.withSeparator) {
                    boolean persistedBoolean = switchPreferenceCompat.getPersistedBoolean(false);
                    boolean z = switchPreferenceCompat.mPersistent;
                    switchPreferenceCompat.mPersistent = false;
                    switchPreferenceCompat.setChecked(persistedBoolean);
                    switchPreferenceCompat.mPersistent = z;
                }
            } else if (preference instanceof PreferenceGroup) {
                traverseAndRefreshPrefs((PreferenceGroup) preference);
            }
        }
    }

    public final void displayPreferenceDialog(Fragment fragment, String str) {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return;
        }
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        fragment.setArguments(bundle);
        fragment.setTargetFragment(0, this);
        if (fragment instanceof DialogFragment) {
            ((DialogFragment) fragment).show(fragmentManager, "androidx.preference.PreferenceFragment.DIALOG");
            return;
        }
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        backStackRecord.doAddOp(0, fragment, "androidx.preference.PreferenceFragment.DIALOG", 1);
        backStackRecord.commit();
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        PreferenceManagerFix preferenceManagerFix = new PreferenceManagerFix(new ContextThemeWrapper(getActivity(), i));
        preferenceManagerFix.mOnNavigateToScreenListener = this;
        try {
            preferenceManagerField.set(this, preferenceManagerFix);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        Bundle bundle2 = this.mArguments;
        onCreatePreferencesFix(bundle2 != null ? bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null, bundle);
    }

    public abstract void onCreatePreferencesFix(String str, Bundle bundle);

    @Override // androidx.preference.PreferenceFragmentCompat
    public final void onDisplayPreferenceDialog(DialogPreference dialogPreference) {
        if (getParentFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (dialogPreference instanceof EditTextPreference) {
                displayPreferenceDialog(new EditTextPreferenceDialogFragmentCompat(), dialogPreference.mKey);
                return;
            }
            Class<?> cls = dialogPreference.getClass();
            HashMap hashMap = dialogPreferences;
            if (!hashMap.containsKey(cls)) {
                super.onDisplayPreferenceDialog(dialogPreference);
                return;
            }
            try {
                displayPreferenceDialog((Fragment) ((Class) hashMap.get(dialogPreference.getClass())).newInstance(), dialogPreference.mKey);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final boolean onPreferenceTreeClick(Preference preference) {
        String str = preference.mFragment;
        boolean z = false;
        if (str != null) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            if (preference.mExtras == null) {
                preference.mExtras = new Bundle();
            }
            Bundle bundle = preference.mExtras;
            FragmentManager.AnonymousClass3 fragmentFactory = parentFragmentManager.getFragmentFactory();
            requireActivity().getClassLoader();
            Fragment instantiate = fragmentFactory.instantiate(str);
            instantiate.setArguments(bundle);
            instantiate.setTargetFragment(0, this);
            BackStackRecord backStackRecord = new BackStackRecord(parentFragmentManager);
            backStackRecord.mTransition = 4097;
            backStackRecord.replace(((View) this.mView.getParent()).getId(), instantiate, null);
            backStackRecord.addToBackStack(preference.mKey);
            backStackRecord.commit();
            z = true;
        }
        if (!z) {
            z = super.onPreferenceTreeClick(preference);
        }
        if (!z && (preference instanceof NotificationSoundPreference)) {
            NotificationSoundPreference notificationSoundPreference = (NotificationSoundPreference) preference;
            String persistedString = notificationSoundPreference.getPersistedString(null);
            if (persistedString == null || persistedString.length() <= 0) {
                persistedString = null;
            }
            Intent putExtra = new Intent("android.intent.action.RINGTONE_PICKER").putExtra("android.intent.extra.ringtone.TYPE", 2).putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(2)).putExtra("android.intent.extra.ringtone.TITLE", notificationSoundPreference.mTitle).putExtra("android.intent.extra.ringtone.SHOW_SILENT", true).putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true).putExtra("android.intent.extra.ringtone.EXISTING_URI", persistedString != null ? Uri.parse(persistedString) : null);
            putExtra.getClass();
            startActivityForResult(putExtra, 1);
        }
        return z;
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        traverseAndRefreshPrefs(this.mPreferenceManager.mPreferenceScreen);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        onActivityResult(this.mPreferenceManager.mPreferenceScreen, i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }
}
