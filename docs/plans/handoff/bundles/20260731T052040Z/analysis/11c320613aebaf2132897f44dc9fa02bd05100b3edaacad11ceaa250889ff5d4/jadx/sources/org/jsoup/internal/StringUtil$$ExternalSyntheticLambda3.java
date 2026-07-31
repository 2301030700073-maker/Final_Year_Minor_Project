package org.jsoup.internal;

import androidx.sqlite.SQLite;
import j$.util.Optional;
import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda38;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda3 implements BinaryOperator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ StringUtil$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        int i = this.$r8$classId;
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
                StringUtil.StringJoiner stringJoiner2 = (StringUtil.StringJoiner) obj2;
                String releaseBuilder = StringUtil.releaseBuilder(stringJoiner2.sb);
                stringJoiner2.sb = null;
                SQLite.notNull(stringJoiner.sb);
                stringJoiner.sb.append((Object) releaseBuilder);
                return stringJoiner;
            case 1:
                return (String) obj2;
            default:
                return ((Optional) obj).or(new Player$$ExternalSyntheticLambda38((Optional) obj2, 2));
        }
    }
}
