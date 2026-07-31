package okhttp3.logging;

import androidx.compose.animation.core.Animation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.Headers;
import okhttp3.Interceptor;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    public final HttpLoggingInterceptor$Logger$Companion$DefaultLogger logger = HttpLoggingInterceptor$Logger$Companion$DefaultLogger.DEFAULT;
    public volatile Level level = Level.NONE;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Level {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Level[] $VALUES;
        public static final Level BASIC;
        public static final Level BODY;
        public static final Level HEADERS;
        public static final Level NONE;

        static {
            Level level = new Level("NONE", 0);
            NONE = level;
            Level level2 = new Level("BASIC", 1);
            BASIC = level2;
            Level level3 = new Level("HEADERS", 2);
            HEADERS = level3;
            Level level4 = new Level("BODY", 3);
            BODY = level4;
            Level[] levelArr = {level, level2, level3, level4};
            $VALUES = levelArr;
            $ENTRIES = new EnumEntriesList(levelArr);
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x018d, code lost:
    
        if (r8 == null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x039b, code lost:
    
        if (r3 == null) goto L142;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fd A[LOOP:0: B:38:0x00fb->B:39:0x00fd, LOOP_END] */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.internal.http.RealInterceptorChain r26) {
        /*
            Method dump skipped, instructions count: 1150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.logging.HttpLoggingInterceptor.intercept(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }

    public final void logHeader(Headers headers, int i) {
        Jsoup.commonName(headers, i);
        this.logger.log(Animation.CC.m(new StringBuilder(Jsoup.commonName(headers, i)), ": ", Jsoup.commonValue(headers, i)));
    }
}
