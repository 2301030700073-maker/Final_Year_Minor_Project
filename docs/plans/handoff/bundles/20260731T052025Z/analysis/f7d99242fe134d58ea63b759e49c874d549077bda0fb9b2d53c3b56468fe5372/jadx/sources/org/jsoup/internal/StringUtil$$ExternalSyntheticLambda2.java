package org.jsoup.internal;

import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda2 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
        CharSequence charSequence = (CharSequence) obj2;
        Validate.notNull(stringJoiner.sb);
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
