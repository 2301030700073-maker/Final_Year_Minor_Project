package defpackage;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class ZJ {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ZJ f4799do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f4801do;

    /* renamed from: do, reason: not valid java name */
    public static final long f4798do = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Pattern f4800do = Pattern.compile("\\AA[\\w-]{38}\\z");

    public ZJ(QJ qj) {
        this.f4801do = qj;
    }

    /* renamed from: do, reason: not valid java name */
    public static ZJ m2986do() {
        if (QJ.f2903if == null) {
            QJ.f2903if = new QJ(16);
        }
        QJ qj = QJ.f2903if;
        if (f4799do == null) {
            f4799do = new ZJ(qj);
        }
        return f4799do;
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2987if(C3250l4 c3250l4) {
        if (TextUtils.isEmpty(c3250l4.f14083if)) {
            return true;
        }
        long j = c3250l4.f14078do + c3250l4.f14082if;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f4801do.getClass();
        return j < timeUnit.toSeconds(System.currentTimeMillis()) + f4798do;
    }
}
