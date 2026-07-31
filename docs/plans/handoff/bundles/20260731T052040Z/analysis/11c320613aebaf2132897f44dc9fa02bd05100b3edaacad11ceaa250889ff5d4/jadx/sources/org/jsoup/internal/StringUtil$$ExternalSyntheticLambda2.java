package org.jsoup.internal;

import androidx.sqlite.SQLite;
import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda2 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
        CharSequence charSequence = (CharSequence) obj2;
        SQLite.notNull(stringJoiner.sb);
        if (!stringJoiner.first) {
            stringJoiner.sb.append(stringJoiner.separator);
        }
        stringJoiner.sb.append((Object) charSequence);
        stringJoiner.first = false;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
