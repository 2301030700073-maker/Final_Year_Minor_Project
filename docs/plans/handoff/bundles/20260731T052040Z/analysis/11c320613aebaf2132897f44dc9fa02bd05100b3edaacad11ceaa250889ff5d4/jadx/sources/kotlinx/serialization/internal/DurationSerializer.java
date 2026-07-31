package kotlinx.serialization.internal;

import androidx.compose.ui.Modifier;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DurationSerializer implements KSerializer {
    public static final DurationSerializer INSTANCE = new DurationSerializer();
    public static final PrimitiveSerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        ByteString.Companion companion = Duration.Companion;
        String decodeString = decoder.decodeString();
        decodeString.getClass();
        try {
            long parseDuration$default = InstantKt.parseDuration$default(decodeString);
            if (parseDuration$default == Duration.INVALID) {
                throw new IllegalStateException("invariant failed");
            }
            return new Duration(parseDuration$default);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(Modifier.CC.m("Invalid ISO duration string format: '", decodeString, "'."), e);
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        long j = ((Duration) obj).rawValue;
        ByteString.Companion companion = Duration.Companion;
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append('-');
        }
        sb.append("PT");
        long m684unaryMinusUwyO8pc = j < 0 ? Duration.m684unaryMinusUwyO8pc(j) : j;
        long m683toLongimpl = Duration.m683toLongimpl(m684unaryMinusUwyO8pc, DurationUnit.HOURS);
        boolean z = false;
        int m683toLongimpl2 = Duration.m681isInfiniteimpl(m684unaryMinusUwyO8pc) ? 0 : (int) (Duration.m683toLongimpl(m684unaryMinusUwyO8pc, DurationUnit.MINUTES) % 60);
        int m683toLongimpl3 = Duration.m681isInfiniteimpl(m684unaryMinusUwyO8pc) ? 0 : (int) (Duration.m683toLongimpl(m684unaryMinusUwyO8pc, DurationUnit.SECONDS) % 60);
        int m680getNanosecondsComponentimpl = Duration.m680getNanosecondsComponentimpl(m684unaryMinusUwyO8pc);
        if (Duration.m681isInfiniteimpl(j)) {
            m683toLongimpl = 9999999999999L;
        }
        boolean z2 = m683toLongimpl != 0;
        boolean z3 = (m683toLongimpl3 == 0 && m680getNanosecondsComponentimpl == 0) ? false : true;
        if (m683toLongimpl2 != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(m683toLongimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m683toLongimpl2);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            Duration.m679appendFractionalimpl(sb, m683toLongimpl3, m680getNanosecondsComponentimpl, 9, "S", true);
        }
        encoder.encodeString(sb.toString());
    }
}
