package kotlin.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.DistinctSequence;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Regex implements Serializable {
    public final Pattern nativePattern;

    public Regex(String str, int i) {
        str.getClass();
        Pattern compile = Pattern.compile(str, 66);
        compile.getClass();
        this.nativePattern = compile;
    }

    public static DistinctSequence findAll$default(Regex regex, CharSequence charSequence) {
        regex.getClass();
        charSequence.getClass();
        int i = 0;
        if (charSequence.length() >= 0) {
            return new DistinctSequence(1, new Regex$$ExternalSyntheticLambda1(i, regex, charSequence), Regex$findAll$2.INSTANCE);
        }
        Regex$$ExternalSyntheticBUOutline0.m(charSequence.length(), CameraDevices$CC.m30m(0, "Start index out of bounds: ", ", input length: "));
        return null;
    }

    public final boolean containsMatchIn(CharSequence charSequence) {
        charSequence.getClass();
        return this.nativePattern.matcher(charSequence).find();
    }

    public final MatcherMatchResult find(int i, CharSequence charSequence) {
        charSequence.getClass();
        Matcher matcher = this.nativePattern.matcher(charSequence);
        matcher.getClass();
        if (matcher.find(i)) {
            return new MatcherMatchResult(matcher, charSequence);
        }
        return null;
    }

    public final MatcherMatchResult matchAt(int i, CharSequence charSequence) {
        charSequence.getClass();
        Matcher region = this.nativePattern.matcher(charSequence).useAnchoringBounds(false).useTransparentBounds(true).region(i, charSequence.length());
        if (region.lookingAt()) {
            return new MatcherMatchResult(region, charSequence);
        }
        return null;
    }

    public final MatcherMatchResult matchEntire(String str) {
        str.getClass();
        Matcher matcher = this.nativePattern.matcher(str);
        matcher.getClass();
        if (matcher.matches()) {
            return new MatcherMatchResult(matcher, str);
        }
        return null;
    }

    public final boolean matches(CharSequence charSequence) {
        charSequence.getClass();
        return this.nativePattern.matcher(charSequence).matches();
    }

    public final String replace(String str, Function1 function1) {
        str.getClass();
        int i = 0;
        MatcherMatchResult find = find(0, str);
        if (find == null) {
            return str.toString();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append((CharSequence) str, i, find.getRange().first);
            sb.append((CharSequence) function1.invoke(find));
            i = find.getRange().last + 1;
            find = find.next();
            if (i >= length) {
                break;
            }
        } while (find != null);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public final String toString() {
        String pattern = this.nativePattern.toString();
        pattern.getClass();
        return pattern;
    }

    public Regex(String str) {
        str.getClass();
        Pattern compile = Pattern.compile(str);
        compile.getClass();
        this.nativePattern = compile;
    }

    public final String replace(CharSequence charSequence, String str) {
        charSequence.getClass();
        String replaceAll = this.nativePattern.matcher(charSequence).replaceAll(str);
        replaceAll.getClass();
        return replaceAll;
    }
}
