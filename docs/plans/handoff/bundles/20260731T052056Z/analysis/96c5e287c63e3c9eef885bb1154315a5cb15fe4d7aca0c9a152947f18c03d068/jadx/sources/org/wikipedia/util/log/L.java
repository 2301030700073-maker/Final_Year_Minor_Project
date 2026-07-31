package org.wikipedia.util.log;

import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.ClientErrorEvent$ClientErrorEventImpl;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class L {
    public static final L$LEVEL_D$1 LEVEL_V = new L$LEVEL_D$1(3);
    public static final L$LEVEL_D$1 LEVEL_D = new L$LEVEL_D$1(0);
    public static final L$LEVEL_D$1 LEVEL_I = new L$LEVEL_D$1(2);
    public static final L$LEVEL_D$1 LEVEL_W = new L$LEVEL_D$1(4);
    public static final L$LEVEL_D$1 LEVEL_E = new L$LEVEL_D$1(1);

    public static void d(String str) {
        str.getClass();
        LEVEL_D.log(str, null);
    }

    public static void e(String str) {
        str.getClass();
        LEVEL_E.log(str, null);
    }

    public static void logRemoteError(Throwable th) {
        List asList;
        LEVEL_E.log("", th);
        char c = StringsKt.contains("org.wikipedia", "beta", false) ? (char) 1 : StringsKt.contains("org.wikipedia", "alpha", false) ? (char) 2 : StringsKt.contains("org.wikipedia", "dev", false) ? (char) 3 : (char) 0;
        if (c == 0 || c == 1) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Jsoup.getInstance();
            e(th);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            String message = th.getMessage();
            String simpleName = Reflection.factory.getOrCreateKotlinClass(th.getClass()).getSimpleName();
            StackTraceElement[] stackTrace = th.getStackTrace();
            stackTrace.getClass();
            if (2 >= stackTrace.length) {
                asList = ArraysKt___ArraysKt.toList(stackTrace);
            } else {
                asList = Arrays.asList(ArraysKt___ArraysKt.copyOfRange(stackTrace, 0, 2));
                asList.getClass();
            }
            EventPlatformClient.submit(new ClientErrorEvent$ClientErrorEventImpl(message, simpleName, CollectionsKt.joinToString$default(asList, ",", null, null, null, 62), null, null, 52));
        }
    }

    public static void logRemoteErrorIfProd(Throwable th) {
        if (StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || StringsKt.contains("org.wikipedia", "dev", false)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(th);
        } else {
            logRemoteError(th);
        }
    }

    public static void w(Throwable th) {
        LEVEL_W.log("", th);
    }

    public static void w(String str) {
        LEVEL_W.log(str, null);
    }

    public static void e(Throwable th) {
        LEVEL_E.log("", th);
    }
}
