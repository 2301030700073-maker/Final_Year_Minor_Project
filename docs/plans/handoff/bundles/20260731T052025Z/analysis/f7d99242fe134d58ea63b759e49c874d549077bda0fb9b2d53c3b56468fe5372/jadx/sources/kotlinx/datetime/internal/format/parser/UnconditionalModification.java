package kotlinx.datetime.internal.format.parser;

import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnconditionalModification implements ParserOperation {
    public final AbstractMap$$ExternalSyntheticLambda0 operation;

    public UnconditionalModification(AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0) {
        this.operation = abstractMap$$ExternalSyntheticLambda0;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    /* renamed from: consume-FANa98k */
    public final Object mo1023consumeFANa98k(Copyable copyable, String str, int i) {
        this.operation.invoke(copyable);
        return Integer.valueOf(i);
    }
}
