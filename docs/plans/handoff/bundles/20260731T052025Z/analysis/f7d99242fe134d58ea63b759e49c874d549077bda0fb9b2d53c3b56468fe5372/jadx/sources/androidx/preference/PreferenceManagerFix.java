package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import androidx.collection.ArraySet;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceManagerFix extends PreferenceManager {
    public static final Field editorField;
    public static final ArraySet packages = new ArraySet(0);
    public boolean inflateInProgress;
    public boolean noCommit;

    static {
        int i = 0;
        Field[] declaredFields = PreferenceManager.class.getDeclaredFields();
        int length = declaredFields.length;
        while (true) {
            if (i >= length) {
                break;
            }
            Field field = declaredFields[i];
            if (field.getType() == SharedPreferences.Editor.class) {
                editorField = field;
                field.setAccessible(true);
                break;
            }
            i++;
        }
        packages.add("com.takisoft.preferencex".concat("."));
    }

    @Override // androidx.preference.PreferenceManager
    public final SharedPreferences.Editor getEditor() {
        Field field;
        if (!this.inflateInProgress || (field = editorField) == null) {
            return super.getEditor();
        }
        if (!this.noCommit) {
            return getSharedPreferences().edit();
        }
        SharedPreferences.Editor editor = null;
        try {
            SharedPreferences.Editor editor2 = (SharedPreferences.Editor) field.get(this);
            if (editor2 != null) {
                return editor2;
            }
            try {
                editor = getSharedPreferences().edit();
                field.set(this, editor);
                return editor;
            } catch (IllegalAccessException unused) {
                return editor2;
            }
        } catch (IllegalAccessException unused2) {
            return editor;
        }
    }

    @Override // androidx.preference.PreferenceManager
    public final PreferenceScreen inflateFromResource(Context context, int i, PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2;
        Throwable th;
        try {
            this.inflateInProgress = true;
            Field field = editorField;
            this.noCommit = true;
            PreferenceInflater preferenceInflater = new PreferenceInflater(context, this);
            String[] strArr = preferenceInflater.mDefaultPackages;
            int length = strArr.length;
            ArraySet arraySet = packages;
            String[] strArr2 = new String[length + arraySet._size];
            arraySet.toArray(strArr2);
            System.arraycopy(strArr, 0, strArr2, arraySet._size, strArr.length);
            preferenceInflater.mDefaultPackages = strArr2;
            XmlResourceParser xml = context.getResources().getXml(i);
            try {
                PreferenceGroup inflate = preferenceInflater.inflate(xml, null);
                xml.close();
                preferenceScreen2 = (PreferenceScreen) inflate;
                try {
                    preferenceScreen2.onAttachedToHierarchy(this);
                    SharedPreferences.Editor editor = (SharedPreferences.Editor) field.get(this);
                    if (editor != null) {
                        editor.apply();
                    }
                    this.noCommit = false;
                    return preferenceScreen2;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        this.inflateInProgress = false;
                        return super.inflateFromResource(context, i, preferenceScreen2);
                    } finally {
                        this.inflateInProgress = false;
                    }
                }
            } catch (Throwable th3) {
                xml.close();
                throw th3;
            }
        } catch (Throwable th4) {
            preferenceScreen2 = null;
            th = th4;
        }
    }

    @Override // androidx.preference.PreferenceManager
    public final boolean shouldCommit() {
        return !this.inflateInProgress ? !this.mNoCommit : this.noCommit;
    }
}
