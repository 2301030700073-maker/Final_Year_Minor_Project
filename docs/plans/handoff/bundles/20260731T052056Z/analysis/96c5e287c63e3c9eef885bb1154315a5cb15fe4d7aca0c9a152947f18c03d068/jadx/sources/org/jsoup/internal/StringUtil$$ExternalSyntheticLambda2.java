package org.jsoup.internal;

import androidx.room.Room;
import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda2 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
        CharSequence charSequence = (CharSequence) obj2;
        Room.notNull(stringJoiner.sb);
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
