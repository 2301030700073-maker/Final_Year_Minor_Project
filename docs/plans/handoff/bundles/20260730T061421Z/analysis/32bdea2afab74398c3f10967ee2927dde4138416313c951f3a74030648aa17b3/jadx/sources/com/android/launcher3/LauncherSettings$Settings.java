package com.android.launcher3;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class LauncherSettings$Settings {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.apps.nexuslauncher.settings/settings");

    public static Bundle call(ContentResolver contentResolver, String str) {
        return contentResolver.call(CONTENT_URI, str, (String) null, (Bundle) null);
    }
}
