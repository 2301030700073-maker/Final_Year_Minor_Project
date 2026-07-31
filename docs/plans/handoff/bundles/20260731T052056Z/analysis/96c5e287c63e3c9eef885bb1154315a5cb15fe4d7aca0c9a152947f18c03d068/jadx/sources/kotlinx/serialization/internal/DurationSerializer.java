package kotlinx.serialization.internal;

import androidx.compose.animation.core.Animation;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DurationSerializer implements KSerializer {
    public static final DurationSerializer INSTANCE = new DurationSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Path.Companion companion = Duration.Companion;
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        try {
            long parseDuration$default = InstantKt.parseDuration$default(decodeString);
            if (parseDuration$default == Duration.INVALID) {
                throw new IllegalStateException("invariant failed");
            }
            return new Duration(parseDuration$default);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(Animation.CC.m("Invalid ISO duration string format: '", decodeString, "'."), e);
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        long j = ((Duration) obj).rawValue;
        Path.Companion companion = Duration.Companion;
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append('-');
        }
        sb.append("PT");
        long m856unaryMinusUwyO8pc = j < 0 ? Duration.m856unaryMinusUwyO8pc(j) : j;
        long m854toLongimpl = Duration.m854toLongimpl(m856unaryMinusUwyO8pc, DurationUnit.HOURS);
        boolean z = false;
        int m854toLongimpl2 = Duration.m852isInfiniteimpl(m856unaryMinusUwyO8pc) ? 0 : (int) (Duration.m854toLongimpl(m856unaryMinusUwyO8pc, DurationUnit.MINUTES) % 60);
        int m854toLongimpl3 = Duration.m852isInfiniteimpl(m856unaryMinusUwyO8pc) ? 0 : (int) (Duration.m854toLongimpl(m856unaryMinusUwyO8pc, DurationUnit.SECONDS) % 60);
        int m851getNanosecondsComponentimpl = Duration.m851getNanosecondsComponentimpl(m856unaryMinusUwyO8pc);
        if (Duration.m852isInfiniteimpl(j)) {
            m854toLongimpl = 9999999999999L;
        }
        boolean z2 = m854toLongimpl != 0;
        boolean z3 = (m854toLongimpl3 == 0 && m851getNanosecondsComponentimpl == 0) ? false : true;
        if (m854toLongimpl2 != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(m854toLongimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m854toLongimpl2);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            Duration.m848appendFractionalimpl(sb, m854toLongimpl3, m851getNanosecondsComponentimpl, 9, "S", true);
        }
        uuidKt.encodeString(sb.toString());
    }
}
