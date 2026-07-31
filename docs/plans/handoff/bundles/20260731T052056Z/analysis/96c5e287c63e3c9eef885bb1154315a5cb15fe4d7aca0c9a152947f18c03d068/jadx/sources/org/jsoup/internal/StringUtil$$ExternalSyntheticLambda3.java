package org.jsoup.internal;

import androidx.room.Room;
import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        Room.notNull(stringJoiner.sb);
        stringJoiner.sb.append((Object) releaseBuilder);
        return stringJoiner;
    }
}
