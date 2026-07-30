package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
final class z extends y {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 8386373296231747096L;
    private final String a;
    private final transient j$.time.zone.f b;

    z(String str, j$.time.zone.f fVar) {
        this.a = str;
        this.b = fVar;
    }

    static z I(String str) {
        j$.time.zone.f fVar;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length < 2) {
            throw new d("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                throw new d("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            }
        }
        try {
            fVar = j$.time.zone.j.a(str, true);
        } catch (j$.time.zone.g unused) {
            fVar = null;
        }
        return new z(str, fVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 7, this);
    }

    @Override // j$.time.y
    public final j$.time.zone.f D() {
        j$.time.zone.f fVar = this.b;
        return fVar != null ? fVar : j$.time.zone.j.a(this.a, false);
    }

    @Override // j$.time.y
    final void H(DataOutput dataOutput) {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.a);
    }

    final void J(DataOutput dataOutput) {
        dataOutput.writeUTF(this.a);
    }

    @Override // j$.time.y
    public final String h() {
        return this.a;
    }
}
