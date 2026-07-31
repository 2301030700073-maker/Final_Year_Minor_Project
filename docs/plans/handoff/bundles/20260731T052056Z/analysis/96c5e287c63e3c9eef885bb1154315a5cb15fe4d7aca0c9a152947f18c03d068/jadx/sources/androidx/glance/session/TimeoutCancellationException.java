package androidx.glance.session;

import androidx.compose.animation.core.Animation;
import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final int block;
    public final String message;

    public TimeoutCancellationException(int i, String str) {
        super(str);
        this.message = str;
        this.block = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("TimeoutCancellationException(");
        sb.append(this.message);
        sb.append(", ");
        return Animation.CC.m(sb, this.block, ')');
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
