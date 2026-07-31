package j$.time;

import com.google.android.exoplayer2.C;
import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    public byte a;
    public Object b;

    public q(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    public static Object a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                d dVar = d.c;
                long readLong = objectInput.readLong();
                long readInt = objectInput.readInt();
                return d.n(j$.com.android.tools.r8.a.S(readLong, j$.com.android.tools.r8.a.E(readInt, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.R(readInt, C.NANOS_PER_SECOND));
            case 2:
                Instant instant = Instant.c;
                return Instant.b0(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return i.k0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                LocalDate localDate2 = LocalDate.d;
                return LocalDateTime.c0(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.k0(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.c;
                LocalDate localDate3 = LocalDate.d;
                LocalDateTime c0 = LocalDateTime.c0(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.k0(objectInput));
                ZoneOffset k0 = ZoneOffset.k0(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(c0, "localDateTime");
                Objects.requireNonNull(k0, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || k0.equals(zoneId)) {
                    return new ZonedDateTime(c0, zoneId, k0);
                }
                j$.nio.file.m.c("ZoneId must match ZoneOffset");
                return null;
            case 7:
                int i = v.d;
                return ZoneId.b0(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.k0(objectInput);
            case 9:
                int i2 = o.c;
                return new o(i.k0(objectInput), ZoneOffset.k0(objectInput));
            case 10:
                int i3 = OffsetDateTime.c;
                LocalDate localDate4 = LocalDate.d;
                return new OffsetDateTime(LocalDateTime.c0(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.k0(objectInput)), ZoneOffset.k0(objectInput));
            case 11:
                int i4 = s.b;
                return s.Z(objectInput.readInt());
            case 12:
                int i5 = u.c;
                int readInt2 = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.M(readInt2);
                j$.time.temporal.a.MONTH_OF_YEAR.M(readByte);
                return new u(readInt2, readByte);
            case 13:
                int i6 = m.c;
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                k c02 = k.c0(readByte2);
                Objects.requireNonNull(c02, "month");
                j$.time.temporal.a.DAY_OF_MONTH.M(readByte3);
                if (readByte3 <= c02.b0()) {
                    return new m(c02.getValue(), readByte3);
                }
                throw new DateTimeException("Illegal value for DayOfMonth field, value " + ((int) readByte3) + " is not valid for month " + c02.name());
            case 14:
                p pVar = p.d;
                return p.a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.a = readByte;
        this.b = a(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                d dVar = (d) obj;
                objectOutput.writeLong(dVar.a);
                objectOutput.writeInt(dVar.b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.a);
                objectOutput.writeInt(instant.b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.a);
                objectOutput.writeByte(localDate.b);
                objectOutput.writeByte(localDate.c);
                return;
            case 4:
                ((i) obj).p0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.a;
                objectOutput.writeInt(localDate2.a);
                objectOutput.writeByte(localDate2.b);
                objectOutput.writeByte(localDate2.c);
                localDateTime.b.p0(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.a;
                LocalDate localDate3 = localDateTime2.a;
                objectOutput.writeInt(localDate3.a);
                objectOutput.writeByte(localDate3.b);
                objectOutput.writeByte(localDate3.c);
                localDateTime2.b.p0(objectOutput);
                zonedDateTime.b.l0(objectOutput);
                zonedDateTime.c.e0(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((v) obj).b);
                return;
            case 8:
                ((ZoneOffset) obj).l0(objectOutput);
                return;
            case 9:
                o oVar = (o) obj;
                oVar.a.p0(objectOutput);
                oVar.b.l0(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.a;
                LocalDate localDate4 = localDateTime3.a;
                objectOutput.writeInt(localDate4.a);
                objectOutput.writeByte(localDate4.b);
                objectOutput.writeByte(localDate4.c);
                localDateTime3.b.p0(objectOutput);
                offsetDateTime.b.l0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((s) obj).a);
                return;
            case 12:
                u uVar = (u) obj;
                objectOutput.writeInt(uVar.a);
                objectOutput.writeByte(uVar.b);
                return;
            case 13:
                m mVar = (m) obj;
                objectOutput.writeByte(mVar.a);
                objectOutput.writeByte(mVar.b);
                return;
            case 14:
                p pVar = (p) obj;
                objectOutput.writeInt(pVar.a);
                objectOutput.writeInt(pVar.b);
                objectOutput.writeInt(pVar.c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public q() {
    }
}
