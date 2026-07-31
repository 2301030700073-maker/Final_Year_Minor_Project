package kotlinx.datetime.internal.format.parser;

import com.fsck.k9.mailstore.LocalStore;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstantNumberConsumer extends NumberConsumer {
    public final String expected;

    public ConstantNumberConsumer(String str) {
        super(Integer.valueOf(str.length()), "the predefined string ".concat(str));
        this.expected = str;
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError consume(int i, int i2, Object obj, String str) {
        String obj2 = str.subSequence(i, i2).toString();
        String str2 = this.expected;
        if (Intrinsics.areEqual(obj2, str2)) {
            return null;
        }
        return new LocalStore.AnonymousClass8(str2, 5);
    }
}
