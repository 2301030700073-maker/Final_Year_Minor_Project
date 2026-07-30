package com.google.android.gms.common.util;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import io.sentry.android.core.SentryLogcatAdapter;

/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes3.dex */
public final class CrashUtils {
    private static final String[] zza = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean addDynamiteErrorToDropBox(Context context, Throwable th) {
        try {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(th);
            return false;
        } catch (Exception e) {
            SentryLogcatAdapter.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
