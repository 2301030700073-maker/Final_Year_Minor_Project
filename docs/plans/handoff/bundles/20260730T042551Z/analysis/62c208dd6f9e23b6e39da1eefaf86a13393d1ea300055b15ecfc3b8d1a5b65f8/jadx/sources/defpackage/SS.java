package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* loaded from: classes3.dex */
public final class SS implements Thread.UncaughtExceptionHandler {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ QS f3515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3516do;

    public SS(QS qs, String str) {
        this.f3515do = qs;
        Preconditions.checkNotNull(str);
        this.f3516do = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f3515do.mo2249case().f13717do.m7368for(this.f3516do, th);
    }
}
