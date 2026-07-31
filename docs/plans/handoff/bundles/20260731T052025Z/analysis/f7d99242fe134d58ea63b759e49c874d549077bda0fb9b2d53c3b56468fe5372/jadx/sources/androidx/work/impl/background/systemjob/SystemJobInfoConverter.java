package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemJobInfoConverter {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobInfoConverter");
    public final SystemClock mClock;
    public final boolean mMarkImportantWhileForeground;
    public final ComponentName mWorkServiceComponent;

    public SystemJobInfoConverter(Context context, SystemClock systemClock, boolean z) {
        this.mClock = systemClock;
        this.mWorkServiceComponent = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.mMarkImportantWhileForeground = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x007d, code lost:
    
        if (r3 < 26) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0080, code lost:
    
        if (r3 >= 24) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.job.JobInfo convert(androidx.work.impl.model.WorkSpec r13, int r14) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobInfoConverter.convert(androidx.work.impl.model.WorkSpec, int):android.app.job.JobInfo");
    }
}
