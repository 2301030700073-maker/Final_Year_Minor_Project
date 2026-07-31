package j$.time;

import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class r implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    public byte a;
    public Object b;

    public r(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    public static Object a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                Duration duration = Duration.c;
                long readLong = objectInput.readLong();
                long readInt = objectInput.readInt();
                return Duration.g(a.P(readLong, a.T(readInt, 1000000000L)), (int) a.S(readInt, 1000000000L));
            case 2:
                Instant instant = Instant.c;
                return Instant.w(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return LocalTime.F(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                LocalDate localDate2 = LocalDate.d;
                return LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.F(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.c;
                LocalDate localDate3 = LocalDate.d;
                LocalDateTime of = LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.F(objectInput));
                ZoneOffset F = ZoneOffset.F(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(of, "localDateTime");
                Objects.requireNonNull(F, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || F.equals(zoneId)) {
                    return new ZonedDateTime(of, zoneId, F);
                }
                h.c("ZoneId must match ZoneOffset");
                return null;
            case 7:
                int i = v.d;
                return ZoneId.w(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.F(objectInput);
            case 9:
                int i2 = p.c;
                return new p(LocalTime.F(objectInput), ZoneOffset.F(objectInput));
            case 10:
                int i3 = n.c;
                LocalDate localDate4 = LocalDate.d;
                return new n(LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.F(objectInput)), ZoneOffset.F(objectInput));
            case 11:
                int i4 = Year.b;
                return Year.u(objectInput.readInt());
            case 12:
                int i5 = u.c;
                int readInt2 = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.o(readInt2);
                j$.time.temporal.a.MONTH_OF_YEAR.o(readByte);
                return new u(readInt2, readByte);
            case IMAGE_VALUE:
                int i6 = MonthDay.c;
                return MonthDay.of(objectInput.readByte(), objectInput.readByte());
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                q qVar = q.d;
                return q.a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
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
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.a);
                objectOutput.writeInt(duration.b);
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
                ((LocalTime) obj).J(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.a;
                objectOutput.writeInt(localDate2.a);
                objectOutput.writeByte(localDate2.b);
                objectOutput.writeByte(localDate2.c);
                localDateTime.b.J(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.a;
                LocalDate localDate3 = localDateTime2.a;
                objectOutput.writeInt(localDate3.a);
                objectOutput.writeByte(localDate3.b);
                objectOutput.writeByte(localDate3.c);
                localDateTime2.b.J(objectOutput);
                zonedDateTime.b.G(objectOutput);
                zonedDateTime.c.z(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((v) obj).b);
                return;
            case 8:
                ((ZoneOffset) obj).G(objectOutput);
                return;
            case 9:
                p pVar = (p) obj;
                pVar.a.J(objectOutput);
                pVar.b.G(objectOutput);
                return;
            case 10:
                n nVar = (n) obj;
                LocalDateTime localDateTime3 = nVar.a;
                LocalDate localDate4 = localDateTime3.a;
                objectOutput.writeInt(localDate4.a);
                objectOutput.writeByte(localDate4.b);
                objectOutput.writeByte(localDate4.c);
                localDateTime3.b.J(objectOutput);
                nVar.b.G(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((Year) obj).a);
                return;
            case 12:
                u uVar = (u) obj;
                objectOutput.writeInt(uVar.a);
                objectOutput.writeByte(uVar.b);
                return;
            case IMAGE_VALUE:
                MonthDay monthDay = (MonthDay) obj;
                objectOutput.writeByte(monthDay.a);
                objectOutput.writeByte(monthDay.b);
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                q qVar = (q) obj;
                objectOutput.writeInt(qVar.a);
                objectOutput.writeInt(qVar.b);
                objectOutput.writeInt(qVar.c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public r() {
    }
}
