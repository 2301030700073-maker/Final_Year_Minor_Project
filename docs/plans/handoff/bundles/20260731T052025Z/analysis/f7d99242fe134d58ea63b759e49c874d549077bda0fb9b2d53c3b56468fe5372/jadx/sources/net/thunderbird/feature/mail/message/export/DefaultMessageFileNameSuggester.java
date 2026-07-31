package net.thunderbird.feature.mail.message.export;

import kotlin.text.Regex;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.io.Sink$CC;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageFileNameSuggester {
    public static final Regex consecutiveDashesRegex;
    public static final LocalDateTimeFormat fileNameDateFormat;
    public static final Regex nonAlphanumericRegex;

    static {
        LocalDateTime.Companion.getClass();
        LocalDateTimeFormat.Builder builder = new LocalDateTimeFormat.Builder(new Headers.Builder(11));
        builder.year();
        StringsKt__IndentKt.m991char(builder, '-');
        builder.monthNumber();
        StringsKt__IndentKt.m991char(builder, '-');
        builder.day();
        StringsKt__IndentKt.m991char(builder, '_');
        builder.hour();
        StringsKt__IndentKt.m991char(builder, '-');
        builder.minute();
        fileNameDateFormat = new LocalDateTimeFormat(Sink$CC.$default$build(builder));
        nonAlphanumericRegex = new Regex("[^a-z0-9-]+");
        consecutiveDashesRegex = new Regex("-+");
    }
}
