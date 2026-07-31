package kotlinx.datetime.internal.format.parser;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlinx.collections.immutable.implementations.immutableList.ObjectRef;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.PropertyAccessor;
import net.openid.appauth.internal.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FractionPartConsumer extends NumberConsumer {
    public final int maxLength;
    public final int minLength;
    public final PropertyAccessor setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FractionPartConsumer(int i, int i2, PropertyAccessor propertyAccessor, String str) {
        super(i == i2 ? Integer.valueOf(i) : null, str);
        propertyAccessor.getClass();
        str.getClass();
        this.minLength = i;
        this.maxLength = i2;
        this.setter = propertyAccessor;
        if (1 > i || i >= 10) {
            throw new IllegalArgumentException(("Invalid minimum length " + i + " for field " + str + ": expected 1..9").toString());
        }
        if (i > i2 || i2 >= 10) {
            StringBuilder sb = new StringBuilder("Invalid maximum length ");
            sb.append(i2);
            sb.append(" for field ");
            sb.append(str);
            sb.append(": expected ");
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(sb, i, "..9"));
            throw null;
        }
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError consume(int i, int i2, Object obj, String str) {
        int i3 = i2 - i;
        int i4 = this.minLength;
        if (i3 < i4) {
            return new Logger(i4, 5);
        }
        int i5 = this.maxLength;
        if (i3 > i5) {
            return new Logger(i5, 6);
        }
        int i6 = 0;
        while (i < i2) {
            i6 = (i6 * 10) + (str.charAt(i) - '0');
            i++;
        }
        Object trySetWithoutReassigning = this.setter.trySetWithoutReassigning(obj, new DecimalFraction(i6, i3));
        if (trySetWithoutReassigning == null) {
            return null;
        }
        return new ObjectRef(trySetWithoutReassigning);
    }
}
