package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: hz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2900hz implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public final Pattern f13415do;

    /* renamed from: hz$do, reason: invalid class name */
    public static final class Cdo implements Serializable {

        /* renamed from: break, reason: not valid java name */
        public final String f13416break;

        /* renamed from: for, reason: not valid java name */
        public final int f13417for;

        public Cdo(String str, int i) {
            this.f13416break = str;
            this.f13417for = i;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.f13416break, this.f13417for);
            C0173Do.m399new(compile, "compile(pattern, flags)");
            return new C2900hz(compile);
        }
    }

    public C2900hz(Pattern pattern) {
        this.f13415do = pattern;
    }

    private final Object writeReplace() {
        Pattern pattern = this.f13415do;
        String pattern2 = pattern.pattern();
        C0173Do.m399new(pattern2, "nativePattern.pattern()");
        return new Cdo(pattern2, pattern.flags());
    }

    /* renamed from: do, reason: not valid java name */
    public final List m6853do(CharSequence charSequence) {
        C0173Do.m401try(charSequence, "input");
        int i = 0;
        EF.s(0);
        Matcher matcher = this.f13415do.matcher(charSequence);
        if (!matcher.find()) {
            return O4.m1617package(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        do {
            arrayList.add(charSequence.subSequence(i, matcher.start()).toString());
            i = matcher.end();
        } while (matcher.find());
        arrayList.add(charSequence.subSequence(i, charSequence.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String pattern = this.f13415do.toString();
        C0173Do.m399new(pattern, "nativePattern.toString()");
        return pattern;
    }

    public C2900hz(String str) {
        Pattern compile = Pattern.compile(str);
        C0173Do.m399new(compile, "compile(pattern)");
        this.f13415do = compile;
    }
}
