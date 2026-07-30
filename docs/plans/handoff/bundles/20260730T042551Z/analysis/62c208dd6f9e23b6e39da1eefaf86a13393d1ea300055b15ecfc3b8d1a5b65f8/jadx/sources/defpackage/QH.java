package defpackage;

import com.google.android.gms.common.internal.Objects;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class QH {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f2898do = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2899do;

    /* renamed from: for, reason: not valid java name */
    public final String f2900for;

    /* renamed from: if, reason: not valid java name */
    public final String f2901if;

    public QH(String str, String str2) {
        String str3;
        if (str2 == null || !str2.startsWith("/topics/")) {
            str3 = str2;
        } else {
            String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str);
            str3 = str2.substring(8);
        }
        if (str3 == null || !f2898do.matcher(str3).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str3, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        this.f2899do = str3;
        this.f2901if = str;
        this.f2900for = Creturn.m7982new(str, "!", str2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof QH)) {
            return false;
        }
        QH qh = (QH) obj;
        return this.f2899do.equals(qh.f2899do) && this.f2901if.equals(qh.f2901if);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f2901if, this.f2899do);
    }
}
