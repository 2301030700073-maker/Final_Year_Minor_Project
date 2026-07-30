package com.android.contacts.compat;

/* loaded from: classes.dex */
public class ProviderStatusCompat {
    public static final int STATUS_BUSY;
    public static final int STATUS_EMPTY;
    public static final boolean USE_CURRENT_VERSION;

    static {
        boolean isMarshmallowCompatible = CompatUtils.isMarshmallowCompatible();
        USE_CURRENT_VERSION = isMarshmallowCompatible;
        STATUS_EMPTY = isMarshmallowCompatible ? 2 : 4;
        boolean z = USE_CURRENT_VERSION;
        STATUS_BUSY = 1;
    }
}
