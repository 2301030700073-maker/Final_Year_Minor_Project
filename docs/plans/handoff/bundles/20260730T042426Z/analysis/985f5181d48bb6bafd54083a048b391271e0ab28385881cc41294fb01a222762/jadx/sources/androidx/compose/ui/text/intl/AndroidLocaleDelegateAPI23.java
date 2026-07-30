package androidx.compose.ui.text.intl;

import android.util.Log;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidLocaleDelegate.android.kt */
/* loaded from: classes.dex */
public final class AndroidLocaleDelegateAPI23 implements PlatformLocaleDelegate {
    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        return new LocaleList(CollectionsKt.listOf(new Locale(java.util.Locale.getDefault())));
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public java.util.Locale parseLanguageTag(String str) {
        String str2;
        java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(str);
        if (Intrinsics.areEqual(forLanguageTag.toLanguageTag(), "und")) {
            str2 = AndroidLocaleDelegate_androidKt.TAG;
            Log.e(str2, "The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtags delimiter and must be replaced with '-'.");
        }
        return forLanguageTag;
    }
}
