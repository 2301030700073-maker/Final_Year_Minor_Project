package kotlin.text;

import com.fsck.k9.message.html.UriMatcher;
import com.fsck.k9.message.html.UriParser;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringsKt__StringsKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CharSequence f$0;

    public /* synthetic */ StringsKt__StringsKt$$ExternalSyntheticLambda2(int i, CharSequence charSequence) {
        this.$r8$classId = i;
        this.f$0 = charSequence;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                IntRange intRange = (IntRange) obj;
                intRange.getClass();
                return StringsKt.substring(charSequence, intRange);
            default:
                MatcherMatchResult matcherMatchResult = (MatcherMatchResult) obj;
                matcherMatchResult.getClass();
                MatchGroup matchGroup = matcherMatchResult.groups.get(1);
                matchGroup.getClass();
                int i2 = matchGroup.range.first;
                String lowerCase = matchGroup.value.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                UriParser uriParser = (UriParser) UriMatcher.SUPPORTED_URIS.get(lowerCase);
                if (uriParser != null) {
                    return uriParser.parseUri(i2, charSequence);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Scheme not found: ".concat(lowerCase));
                return null;
        }
    }
}
