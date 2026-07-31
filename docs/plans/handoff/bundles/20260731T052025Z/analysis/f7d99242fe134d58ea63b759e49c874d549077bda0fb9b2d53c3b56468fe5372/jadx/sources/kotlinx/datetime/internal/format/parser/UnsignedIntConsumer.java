package kotlinx.datetime.internal.format.parser;

import kotlinx.collections.immutable.implementations.immutableList.ObjectRef;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.parser.NumberConsumptionError;
import net.openid.appauth.internal.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnsignedIntConsumer extends NumberConsumer {
    public final Integer maxLength;
    public final Integer minLength;
    public final boolean multiplyByMinus1;
    public final PropertyAccessor setter;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UnsignedIntConsumer(java.lang.Integer r3, java.lang.Integer r4, kotlinx.datetime.internal.format.PropertyAccessor r5, java.lang.String r6, boolean r7) {
        /*
            r2 = this;
            boolean r0 = r3.equals(r4)
            r1 = 0
            if (r0 == 0) goto L9
            r0 = r3
            goto La
        L9:
            r0 = r1
        La:
            r2.<init>(r0, r6)
            r2.minLength = r3
            r2.maxLength = r4
            r2.setter = r5
            r2.multiplyByMinus1 = r7
            if (r0 == 0) goto L32
            kotlin.ranges.IntRange r2 = new kotlin.ranges.IntRange
            r3 = 9
            r4 = 1
            r2.<init>(r4, r3, r4)
            int r3 = r0.intValue()
            if (r4 > r3) goto L2a
            int r2 = r2.last
            if (r3 > r2) goto L2a
            goto L32
        L2a:
            java.lang.String r2 = "Invalid length for field "
            java.lang.String r3 = ": "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2, r6, r3, r0)
            throw r1
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.datetime.internal.format.parser.UnsignedIntConsumer.<init>(java.lang.Integer, java.lang.Integer, kotlinx.datetime.internal.format.PropertyAccessor, java.lang.String, boolean):void");
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError consume(int i, int i2, Object obj, String str) {
        Integer valueOf;
        Integer num = this.maxLength;
        if (num != null && i2 - i > num.intValue()) {
            return new Logger(num.intValue(), 6);
        }
        Integer num2 = this.minLength;
        if (num2 != null && i2 - i < num2.intValue()) {
            return new Logger(num2.intValue(), 5);
        }
        int i3 = 0;
        while (true) {
            if (i >= i2) {
                valueOf = Integer.valueOf(i3);
                break;
            }
            i3 = (i3 * 10) + (str.charAt(i) - '0');
            if (i3 < 0) {
                valueOf = null;
                break;
            }
            i++;
        }
        if (valueOf == null) {
            return NumberConsumptionError.ExpectedInt.INSTANCE;
        }
        boolean z = this.multiplyByMinus1;
        int intValue = valueOf.intValue();
        if (z) {
            intValue = -intValue;
        }
        Object trySetWithoutReassigning = this.setter.trySetWithoutReassigning(obj, Integer.valueOf(intValue));
        if (trySetWithoutReassigning == null) {
            return null;
        }
        return new ObjectRef(trySetWithoutReassigning);
    }
}
