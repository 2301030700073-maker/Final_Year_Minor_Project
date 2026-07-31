package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DurationSerializer implements KSerializer {
    public static final DurationSerializer INSTANCE = new DurationSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Duration.Companion companion = Duration.Companion;
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        try {
            long parseDuration$default = InstantKt.parseDuration$default(decodeString);
            if (Duration.m995equalsimpl0(parseDuration$default, Duration.INVALID)) {
                throw new IllegalStateException("invariant failed");
            }
            return new Duration(parseDuration$default);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(CameraDevices$CC.m("Invalid ISO duration string format: '", decodeString, "'."), e);
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        long j = ((Duration) obj).rawValue;
        Duration.Companion companion = Duration.Companion;
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append('-');
        }
        sb.append("PT");
        long m1003unaryMinusUwyO8pc = j < 0 ? Duration.m1003unaryMinusUwyO8pc(j) : j;
        long m1001toLongimpl = Duration.m1001toLongimpl(m1003unaryMinusUwyO8pc, DurationUnit.HOURS);
        boolean z = false;
        int m1001toLongimpl2 = Duration.m999isInfiniteimpl(m1003unaryMinusUwyO8pc) ? 0 : (int) (Duration.m1001toLongimpl(m1003unaryMinusUwyO8pc, DurationUnit.MINUTES) % 60);
        int m1001toLongimpl3 = Duration.m999isInfiniteimpl(m1003unaryMinusUwyO8pc) ? 0 : (int) (Duration.m1001toLongimpl(m1003unaryMinusUwyO8pc, DurationUnit.SECONDS) % 60);
        int m997getNanosecondsComponentimpl = Duration.m997getNanosecondsComponentimpl(m1003unaryMinusUwyO8pc);
        if (Duration.m999isInfiniteimpl(j)) {
            m1001toLongimpl = 9999999999999L;
        }
        boolean z2 = m1001toLongimpl != 0;
        boolean z3 = (m1001toLongimpl3 == 0 && m997getNanosecondsComponentimpl == 0) ? false : true;
        if (m1001toLongimpl2 != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(m1001toLongimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m1001toLongimpl2);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            Duration.m993appendFractionalimpl(sb, m1001toLongimpl3, m997getNanosecondsComponentimpl, 9, "S", true);
        }
        charsKt__CharKt.encodeString(sb.toString());
    }
}
