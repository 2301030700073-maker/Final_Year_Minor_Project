package defpackage;

import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class SP extends AbstractC3570qT {

    /* renamed from: do, reason: not valid java name */
    public long f3507do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f3508do;

    public SP(TS ts) {
        super(ts);
    }

    @Override // defpackage.AbstractC3570qT
    /* renamed from: final */
    public final boolean mo1961final() {
        Calendar calendar = Calendar.getInstance();
        this.f3507do = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.f3508do = Creturn.m7982new(language.toLowerCase(locale2), "-", locale.getCountry().toLowerCase(locale2));
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public final long m2156super() {
        m7886class();
        return this.f3507do;
    }

    /* renamed from: throw, reason: not valid java name */
    public final String m2157throw() {
        m7886class();
        return this.f3508do;
    }
}
