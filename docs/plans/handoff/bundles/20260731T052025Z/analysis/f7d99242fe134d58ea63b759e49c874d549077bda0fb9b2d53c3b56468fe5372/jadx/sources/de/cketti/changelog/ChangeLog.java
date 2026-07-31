package de.cketti.changelog;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.zxing.BinaryBitmap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeLog {
    public final BinaryBitmap changeLogProvider;
    public int currentVersionCode;
    public int firstVersionCode;
    public int lastVersionCode;
    public final SharedPreferences preferences;

    public ChangeLog(Context context, SharedPreferences sharedPreferences, BinaryBitmap binaryBitmap) {
        this.preferences = sharedPreferences;
        this.changeLogProvider = binaryBitmap;
    }
}
