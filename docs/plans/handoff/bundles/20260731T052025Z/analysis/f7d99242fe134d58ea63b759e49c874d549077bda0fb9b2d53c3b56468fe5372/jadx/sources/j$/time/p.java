package j$.time;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoField;
import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class p implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    public byte a;
    public Object b;

    public p(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    public static Object a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                c cVar = c.c;
                long readLong = objectInput.readLong();
                long readInt = objectInput.readInt();
                return c.m(j$.com.android.tools.r8.a.Q(readLong, j$.com.android.tools.r8.a.C(readInt, 1000000000L)), (int) j$.com.android.tools.r8.a.P(readInt, 1000000000L));
            case 2:
                Instant instant = Instant.c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.MIN;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return LocalTime.d0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.MIN;
                LocalDate localDate2 = LocalDate.MIN;
                return LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.d0(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.MIN;
                LocalDate localDate3 = LocalDate.MIN;
                LocalDateTime of = LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.d0(objectInput));
                ZoneOffset b0 = ZoneOffset.b0(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(of, "localDateTime");
                Objects.requireNonNull(b0, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || b0.equals(zoneId)) {
                    return new ZonedDateTime(of, zoneId, b0);
                }
                j$.nio.file.j.c("ZoneId must match ZoneOffset");
                return null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = t.d;
                return ZoneId.V(objectInput.readUTF(), false);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ZoneOffset.b0(objectInput);
            case 9:
                int i2 = n.c;
                return new n(LocalTime.d0(objectInput), ZoneOffset.b0(objectInput));
            case 10:
                int i3 = l.c;
                LocalDate localDate4 = LocalDate.MIN;
                return new l(LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.d0(objectInput)), ZoneOffset.b0(objectInput));
            case 11:
                int i4 = r.b;
                return r.U(objectInput.readInt());
            case BasicTextKt.ShiftMeta /* 12 */:
                DateTimeFormatter dateTimeFormatter = YearMonth.c;
                return YearMonth.of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i5 = j.c;
                byte readByte = objectInput.readByte();
                byte readByte2 = objectInput.readByte();
                Month X = Month.X(readByte);
                Objects.requireNonNull(X, "month");
                ChronoField.DAY_OF_MONTH.L(readByte2);
                if (readByte2 <= X.W()) {
                    return new j(X.getValue(), readByte2);
                }
                throw new DateTimeException("Illegal value for DayOfMonth field, value " + ((int) readByte2) + " is not valid for month " + X.name());
            case 14:
                o oVar = o.d;
                return o.a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
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
                c cVar = (c) obj;
                objectOutput.writeLong(cVar.a);
                objectOutput.writeInt(cVar.b);
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
                ((LocalTime) obj).i0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.a;
                objectOutput.writeInt(localDate2.a);
                objectOutput.writeByte(localDate2.b);
                objectOutput.writeByte(localDate2.c);
                localDateTime.b.i0(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.a;
                LocalDate localDate3 = localDateTime2.a;
                objectOutput.writeInt(localDate3.a);
                objectOutput.writeByte(localDate3.b);
                objectOutput.writeByte(localDate3.c);
                localDateTime2.b.i0(objectOutput);
                zonedDateTime.b.c0(objectOutput);
                zonedDateTime.c.Y(objectOutput);
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                objectOutput.writeUTF(((t) obj).b);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((ZoneOffset) obj).c0(objectOutput);
                return;
            case 9:
                n nVar = (n) obj;
                nVar.a.i0(objectOutput);
                nVar.b.c0(objectOutput);
                return;
            case 10:
                l lVar = (l) obj;
                LocalDateTime localDateTime3 = lVar.a;
                LocalDate localDate4 = localDateTime3.a;
                objectOutput.writeInt(localDate4.a);
                objectOutput.writeByte(localDate4.b);
                objectOutput.writeByte(localDate4.c);
                localDateTime3.b.i0(objectOutput);
                lVar.b.c0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((r) obj).a);
                return;
            case BasicTextKt.ShiftMeta /* 12 */:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.a);
                objectOutput.writeByte(yearMonth.b);
                return;
            case 13:
                j jVar = (j) obj;
                objectOutput.writeByte(jVar.a);
                objectOutput.writeByte(jVar.b);
                return;
            case 14:
                o oVar = (o) obj;
                objectOutput.writeInt(oVar.a);
                objectOutput.writeInt(oVar.b);
                objectOutput.writeInt(oVar.c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public p() {
    }
}
