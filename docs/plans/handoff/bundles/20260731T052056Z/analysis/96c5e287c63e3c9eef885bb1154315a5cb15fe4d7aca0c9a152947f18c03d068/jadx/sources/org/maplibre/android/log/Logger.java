package org.maplibre.android.log;

import android.util.Log;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Logger {
    public static final int DEBUG = 3;
    private static final LoggerDefinition DEFAULT;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = 99;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int logLevel;
    private static volatile LoggerDefinition logger;

    static {
        LoginClient loginClient = new LoginClient(13);
        DEFAULT = loginClient;
        logger = loginClient;
    }

    public static void d(String str, String str2) {
        if (logLevel <= 3) {
            ((LoginClient) logger).getClass();
            Log.d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (logLevel <= 6) {
            ((LoginClient) logger).getClass();
            Log.e(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (logLevel <= 4) {
            ((LoginClient) logger).getClass();
            Log.i(str, str2);
        }
    }

    public static void log(int i, String str, String str2) {
        if (i == 2) {
            v(str, str2);
            return;
        }
        if (i == 3) {
            d(str, str2);
            return;
        }
        if (i == 4) {
            i(str, str2);
        } else if (i == 5) {
            w(str, str2);
        } else {
            if (i != 6) {
                throw new UnsupportedOperationException();
            }
            e(str, str2);
        }
    }

    public static void setLoggerDefinition(LoggerDefinition loggerDefinition) {
        logger = loggerDefinition;
    }

    public static void setVerbosity(int i) {
        logLevel = i;
    }

    public static void v(String str, String str2) {
        if (logLevel <= 2) {
            ((LoginClient) logger).getClass();
            Log.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (logLevel <= 5) {
            ((LoginClient) logger).getClass();
            Log.w(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (logLevel <= 3) {
            ((LoginClient) logger).getClass();
            Log.d(str, str2, th);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (logLevel <= 6) {
            ((LoginClient) logger).getClass();
            Log.e(str, str2, th);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (logLevel <= 4) {
            ((LoginClient) logger).getClass();
            Log.i(str, str2, th);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (logLevel <= 2) {
            ((LoginClient) logger).getClass();
            Log.v(str, str2, th);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (logLevel <= 5) {
            ((LoginClient) logger).getClass();
            Log.w(str, str2, th);
        }
    }
}
