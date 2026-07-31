package androidx.datastore.preferences.protobuf;

import androidx.compose.ui.text.input.GapBuffer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnknownFieldSetLiteSchema {
    public static boolean mergeOneFieldFrom(Object obj, GapBuffer gapBuffer) {
        int tag = gapBuffer.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            ((UnknownFieldSetLite) obj).storeField(i << 3, Long.valueOf(gapBuffer.readInt64()));
            return true;
        }
        if (i2 == 1) {
            ((UnknownFieldSetLite) obj).storeField((i << 3) | 1, Long.valueOf(gapBuffer.readFixed64()));
            return true;
        }
        if (i2 == 2) {
            ((UnknownFieldSetLite) obj).storeField((i << 3) | 2, gapBuffer.readBytes());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            ((UnknownFieldSetLite) obj).storeField((i << 3) | 5, Integer.valueOf(gapBuffer.readFixed32()));
            return true;
        }
        UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
        int i3 = i << 3;
        int i4 = i3 | 4;
        while (gapBuffer.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(newInstance, gapBuffer)) {
        }
        if (i4 != gapBuffer.getTag()) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
        newInstance.isMutable = false;
        ((UnknownFieldSetLite) obj).storeField(i3 | 3, newInstance);
        return true;
    }
}
