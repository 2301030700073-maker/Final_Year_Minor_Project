package com.fsck.k9.ui.helper;

import android.content.res.Resources;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeFormatter {
    public final Resources resources;

    public SizeFormatter(Resources resources) {
        resources.getClass();
        this.resources = resources;
    }

    public final String formatSize(long j) {
        Resources resources = this.resources;
        if (j >= 999950000) {
            String string = resources.getString(R.string.size_format_gigabytes, Float.valueOf((j / 1000000) / 1000.0f));
            string.getClass();
            return string;
        }
        if (j >= 999950) {
            String string2 = resources.getString(R.string.size_format_megabytes, Float.valueOf((j / 1000) / 1000.0f));
            string2.getClass();
            return string2;
        }
        if (j >= 1000) {
            String string3 = resources.getString(R.string.size_format_kilobytes, Float.valueOf(j / 1000.0f));
            string3.getClass();
            return string3;
        }
        String string4 = resources.getString(R.string.size_format_bytes, Long.valueOf(j));
        string4.getClass();
        return string4;
    }
}
