package androidx.compose.ui.text.intl;

import android.util.Log;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidLocaleDelegate.android.kt */
/* loaded from: classes.dex */
public final class AndroidLocaleDelegateAPI24 implements PlatformLocaleDelegate {
    private LocaleList lastLocaleList;
    private android.os.LocaleList lastPlatformLocaleList;
    private final SynchronizedObject lock = Synchronization_jvmKt.createSynchronizedObject();

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        android.os.LocaleList localeList;
        int size;
        java.util.Locale locale;
        localeList = android.os.LocaleList.getDefault();
        synchronized (this.lock) {
            LocaleList localeList2 = this.lastLocaleList;
            if (localeList2 != null && localeList == this.lastPlatformLocaleList) {
                return localeList2;
            }
            size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                locale = localeList.get(i);
                arrayList.add(new Locale(locale));
            }
            LocaleList localeList3 = new LocaleList(arrayList);
            this.lastPlatformLocaleList = localeList;
            this.lastLocaleList = localeList3;
            return localeList3;
        }
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public java.util.Locale parseLanguageTag(String str) {
        String str2;
        java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(str);
        if (Intrinsics.areEqual(forLanguageTag.toLanguageTag(), "und")) {
            str2 = AndroidLocaleDelegate_androidKt.TAG;
            Log.e(str2, "The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
        }
        return forLanguageTag;
    }
}
