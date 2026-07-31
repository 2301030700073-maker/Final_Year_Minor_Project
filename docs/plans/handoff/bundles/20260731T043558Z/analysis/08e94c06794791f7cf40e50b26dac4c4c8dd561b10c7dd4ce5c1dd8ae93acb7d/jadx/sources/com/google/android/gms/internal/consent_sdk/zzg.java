package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.FormError;
import io.sentry.android.core.SentryLogcatAdapter;

/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes3.dex */
public final class zzg extends Exception {
    private final int zza;

    public zzg(int i, String str) {
        super(str);
        this.zza = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }

    public final FormError zza() {
        if (getCause() == null) {
            SentryLogcatAdapter.w("UserMessagingPlatform", super.getMessage());
        } else {
            SentryLogcatAdapter.w("UserMessagingPlatform", super.getMessage(), getCause());
        }
        return new FormError(this.zza, super.getMessage());
    }

    public zzg(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }
}
