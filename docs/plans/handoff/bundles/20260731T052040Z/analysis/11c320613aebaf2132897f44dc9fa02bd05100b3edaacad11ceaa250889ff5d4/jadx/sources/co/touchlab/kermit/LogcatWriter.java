package co.touchlab.kermit;

import android.util.Log;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LogcatWriter extends LogWriter {
    public final CommonWriter testWriter = new CommonWriter();

    public LogcatWriter(DefaultFormatter defaultFormatter) {
    }

    @Override // co.touchlab.kermit.LogWriter
    public final void log(Severity severity, String str, Throwable th) {
        try {
            if (th == null) {
                int ordinal = severity.ordinal();
                if (ordinal == 0) {
                    Log.v("", str);
                    return;
                }
                if (ordinal == 1) {
                    Log.d("", str);
                    return;
                }
                if (ordinal == 2) {
                    Log.i("", str);
                    return;
                }
                if (ordinal == 3) {
                    Log.w("", str);
                    return;
                } else if (ordinal == 4) {
                    Log.e("", str);
                    return;
                } else {
                    if (ordinal != 5) {
                        throw new SerializationException();
                    }
                    Log.println(7, "", str);
                    return;
                }
            }
            int ordinal2 = severity.ordinal();
            if (ordinal2 == 0) {
                Log.v("", str, th);
                return;
            }
            if (ordinal2 == 1) {
                Log.d("", str, th);
                return;
            }
            if (ordinal2 == 2) {
                Log.i("", str, th);
                return;
            }
            if (ordinal2 == 3) {
                Log.w("", str, th);
                return;
            }
            if (ordinal2 == 4) {
                Log.e("", str, th);
                return;
            }
            if (ordinal2 != 5) {
                throw new SerializationException();
            }
            Log.println(7, "", str + '\n' + Log.getStackTraceString(th));
        } catch (Exception unused) {
            this.testWriter.log(severity, str, th);
        }
    }
}
