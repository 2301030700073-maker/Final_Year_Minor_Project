package okhttp3.internal;

import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import okio.Okio__OkioKt;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkedTags extends Okio__OkioKt {
    public final KClass key;
    public final Okio__OkioKt next;
    public final Object value;

    public LinkedTags(KClass kClass, Object obj, Okio__OkioKt okio__OkioKt) {
        kClass.getClass();
        obj.getClass();
        okio__OkioKt.getClass();
        this.key = kClass;
        this.value = obj;
        this.next = okio__OkioKt;
    }

    @Override // okio.Okio__OkioKt
    public final Object get(KClass kClass) {
        return kClass.equals(this.key) ? UnsignedKt.getJavaClass(kClass).cast(this.value) : this.next.get(kClass);
    }

    @Override // okio.Okio__OkioKt
    public final Okio__OkioKt plus(KClass kClass, Object obj) {
        kClass.getClass();
        KClass kClass2 = this.key;
        boolean equals = kClass.equals(kClass2);
        Okio__OkioKt okio__OkioKt = this.next;
        if (!equals) {
            Okio__OkioKt plus = okio__OkioKt.plus(kClass, null);
            if (plus != okio__OkioKt) {
                this = new LinkedTags(kClass2, this.value, plus);
            }
            okio__OkioKt = this;
        }
        return obj != null ? new LinkedTags(kClass, obj, okio__OkioKt) : okio__OkioKt;
    }

    public final String toString() {
        return CollectionsKt.joinToString$default(CollectionsKt.reversed(SequencesKt.toList(SequencesKt.generateSequence(this, new ZipFilesKt$$ExternalSyntheticLambda3(5)))), null, "{", "}", new ZipFilesKt$$ExternalSyntheticLambda3(6), 25);
    }
}
