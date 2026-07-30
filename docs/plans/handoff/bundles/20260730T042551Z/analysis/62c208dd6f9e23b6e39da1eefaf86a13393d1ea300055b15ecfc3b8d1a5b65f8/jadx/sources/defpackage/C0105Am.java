package defpackage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* renamed from: Am, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0105Am {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f139do = new Cdo();

    /* renamed from: Am$do, reason: invalid class name */
    public class Cdo extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public final DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(SJ.f3492do);
            return simpleDateFormat;
        }
    }
}
