package org.jsoup.internal;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda3 implements BinaryOperator {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
        StringUtil.StringJoiner stringJoiner2 = (StringUtil.StringJoiner) obj2;
        String releaseBuilder = StringUtil.releaseBuilder(stringJoiner2.sb);
        stringJoiner2.sb = null;
        Validate.notNull(stringJoiner.sb);
        stringJoiner.sb.append((Object) releaseBuilder);
        return stringJoiner;
    }
}
