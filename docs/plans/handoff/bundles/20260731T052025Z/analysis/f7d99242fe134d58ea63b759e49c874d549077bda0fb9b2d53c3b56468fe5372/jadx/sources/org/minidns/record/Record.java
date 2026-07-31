package org.minidns.record;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.ui.Modifier;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsmessage.Question;
import org.minidns.dnsname.DnsName;
import org.minidns.edns.Edns;
import org.minidns.edns.Nsid;
import org.minidns.edns.UnknownEdnsOption;
import org.minidns.record.DelegatingDnssecRR;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Record {
    public transient byte[] bytes;
    public final CLASS clazz;
    public final int clazzValue;
    public transient Integer hashCodeCache;
    public final DnsName name;
    public final Data payloadData;
    public final long ttl;
    public final TYPE type;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum CLASS {
        IN(1),
        /* JADX INFO: Fake field, exist only in values array */
        CH(3),
        /* JADX INFO: Fake field, exist only in values array */
        HS(4),
        NONE(254),
        ANY(255);

        public static final HashMap INVERSE_LUT = new HashMap();
        public final int value;

        static {
            for (CLASS r3 : values()) {
                INVERSE_LUT.put(Integer.valueOf(r3.value), r3);
            }
        }

        CLASS(int i) {
            this.value = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum TYPE {
        UNKNOWN(-1, null),
        A(1, A.class),
        NS(2, NS.class),
        /* JADX INFO: Fake field, exist only in values array */
        MD(3, null),
        /* JADX INFO: Fake field, exist only in values array */
        MF(4, null),
        CNAME(5, CNAME.class),
        SOA(6, SOA.class),
        /* JADX INFO: Fake field, exist only in values array */
        MB(7, null),
        /* JADX INFO: Fake field, exist only in values array */
        MG(8, null),
        /* JADX INFO: Fake field, exist only in values array */
        MR(9, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(10, null),
        /* JADX INFO: Fake field, exist only in values array */
        WKS(11, null),
        /* JADX INFO: Fake field, exist only in values array */
        PTR(12, PTR.class),
        /* JADX INFO: Fake field, exist only in values array */
        HINFO(13, null),
        /* JADX INFO: Fake field, exist only in values array */
        MINFO(14, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(15, MX.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(16, TXT.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(17, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(18, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(19, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(20, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(21, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(22, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(23, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(24, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(25, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(26, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(27, null),
        AAAA(28, AAAA.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(29, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(30, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(31, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(32, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(33, SRV.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(34, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(35, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(36, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(37, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(38, null),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(39, DNAME.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(40, null),
        OPT(41, OPT.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(42, null),
        DS(43, DS.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(44, null),
        /* JADX INFO: Fake field, exist only in values array */
        IPSECKEY(45, null),
        RRSIG(46, RRSIG.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(47, NSEC.class),
        DNSKEY(48, DNSKEY.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(49, null),
        NSEC3(50, NSEC3.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(51, NSEC3PARAM.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(52, TLSA.class),
        /* JADX INFO: Fake field, exist only in values array */
        HIP(55, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(56, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(57, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(58, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(59, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(60, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(61, OPENPGPKEY.class),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(62, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(99, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(100, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(101, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(102, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(103, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(104, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(105, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(106, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(107, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(108, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(109, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(249, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(250, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(251, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(252, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILB(253, null),
        /* JADX INFO: Fake field, exist only in values array */
        MAILA(254, null),
        ANY(255, null),
        /* JADX INFO: Fake field, exist only in values array */
        URI(256, null),
        /* JADX INFO: Fake field, exist only in values array */
        CAA(257, null),
        /* JADX INFO: Fake field, exist only in values array */
        TA(32768, null),
        /* JADX INFO: Fake field, exist only in values array */
        DLV(32769, DLV.class);

        public final Class dataClass;
        public final int value;
        public static final HashMap INVERSE_LUT = new HashMap();
        public static final HashMap DATA_LUT = new HashMap();

        static {
            for (TYPE type : values()) {
                INVERSE_LUT.put(Integer.valueOf(type.value), type);
                Class cls = type.dataClass;
                if (cls != null) {
                    DATA_LUT.put(cls, type);
                }
            }
        }

        TYPE(int i, Class cls) {
            this.value = i;
            this.dataClass = cls;
        }

        public static TYPE getType(int i) {
            TYPE type = (TYPE) INVERSE_LUT.get(Integer.valueOf(i));
            return type == null ? UNKNOWN : type;
        }
    }

    public Record(DnsName dnsName, TYPE type, CLASS r3, int i, long j, Data data) {
        this.name = dnsName;
        this.type = type;
        this.clazz = r3;
        this.clazzValue = i;
        this.ttl = j;
        this.payloadData = data;
    }

    public static void filter(AbstractCollection abstractCollection, Class cls, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Record ifPossibleAs = ((Record) it.next()).ifPossibleAs(cls);
            if (ifPossibleAs != null) {
                abstractCollection.add(ifPossibleAs);
            }
        }
    }

    public static Record parse(DataInputStream dataInputStream, byte[] bArr) {
        Data a;
        Data data;
        Data soa;
        List list;
        DnsName parse = DnsName.parse(dataInputStream, bArr);
        TYPE type = TYPE.getType(dataInputStream.readUnsignedShort());
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        CLASS r3 = (CLASS) CLASS.INVERSE_LUT.get(Integer.valueOf(readUnsignedShort & 32767));
        long readUnsignedShort2 = (dataInputStream.readUnsignedShort() << 16) + dataInputStream.readUnsignedShort();
        int readUnsignedShort3 = dataInputStream.readUnsignedShort();
        int ordinal = type.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                data = new NS(DnsName.parse(dataInputStream, bArr));
            } else if (ordinal != 5) {
                if (ordinal == 6) {
                    soa = new SOA(DnsName.parse(dataInputStream, bArr), DnsName.parse(dataInputStream, bArr), dataInputStream.readInt() & 4294967295L, dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt() & 4294967295L);
                } else if (ordinal == 12) {
                    data = new PTR(DnsName.parse(dataInputStream, bArr));
                } else if (ordinal == 28) {
                    byte[] bArr2 = new byte[16];
                    dataInputStream.readFully(bArr2);
                    a = new AAAA(bArr2);
                } else if (ordinal == 33) {
                    data = new SRV(dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), DnsName.parse(dataInputStream, bArr));
                } else if (ordinal == 39) {
                    data = new DNAME(DnsName.parse(dataInputStream, bArr));
                } else if (ordinal == 41) {
                    if (readUnsignedShort3 == 0) {
                        list = Collections.EMPTY_LIST;
                    } else {
                        ArrayList arrayList = new ArrayList(4);
                        while (readUnsignedShort3 > 0) {
                            int readUnsignedShort4 = dataInputStream.readUnsignedShort();
                            int readUnsignedShort5 = dataInputStream.readUnsignedShort();
                            byte[] bArr3 = new byte[readUnsignedShort5];
                            dataInputStream.read(bArr3);
                            Edns.OptionCode optionCode = (Edns.OptionCode) Edns.OptionCode.INVERSE_LUT.get(Integer.valueOf(readUnsignedShort4));
                            if (optionCode == null) {
                                optionCode = Edns.OptionCode.UNKNOWN;
                            }
                            arrayList.add(optionCode.ordinal() != 1 ? new UnknownEdnsOption(readUnsignedShort4, bArr3) : new Nsid(bArr3));
                            readUnsignedShort3 -= readUnsignedShort5 + 4;
                        }
                        list = arrayList;
                    }
                    data = new OPT(list);
                } else if (ordinal == 43) {
                    DelegatingDnssecRR.SharedData parseSharedData = DelegatingDnssecRR.parseSharedData(dataInputStream, readUnsignedShort3);
                    data = new DS(parseSharedData.algorithm, parseSharedData.digestType, parseSharedData.keyTag, parseSharedData.digest);
                } else if (ordinal == 59) {
                    byte[] bArr4 = new byte[readUnsignedShort3];
                    dataInputStream.readFully(bArr4);
                    a = new OPENPGPKEY(bArr4);
                } else if (ordinal == 82) {
                    DelegatingDnssecRR.SharedData parseSharedData2 = DelegatingDnssecRR.parseSharedData(dataInputStream, readUnsignedShort3);
                    data = new DLV(parseSharedData2.algorithm, parseSharedData2.digestType, parseSharedData2.keyTag, parseSharedData2.digest);
                } else if (ordinal == 15) {
                    soa = new MX(dataInputStream.readUnsignedShort(), DnsName.parse(dataInputStream, bArr));
                } else if (ordinal != 16) {
                    switch (ordinal) {
                        case 46:
                            TYPE type2 = TYPE.getType(dataInputStream.readUnsignedShort());
                            byte readByte = dataInputStream.readByte();
                            byte readByte2 = dataInputStream.readByte();
                            long readInt = dataInputStream.readInt() & 4294967295L;
                            Date date = new Date((dataInputStream.readInt() & 4294967295L) * 1000);
                            Date date2 = new Date((dataInputStream.readInt() & 4294967295L) * 1000);
                            int readUnsignedShort6 = dataInputStream.readUnsignedShort();
                            DnsName parse2 = DnsName.parse(dataInputStream, bArr);
                            int size = (readUnsignedShort3 - parse2.size()) - 18;
                            byte[] bArr5 = new byte[size];
                            if (dataInputStream.read(bArr5) != size) {
                                throw new IOException();
                            }
                            data = new RRSIG(type2, readByte, readByte2, readInt, date, date2, readUnsignedShort6, parse2, bArr5);
                            break;
                        case 47:
                            Logger logger = NSEC.LOGGER;
                            DnsName parse3 = DnsName.parse(dataInputStream, bArr);
                            int size2 = readUnsignedShort3 - parse3.size();
                            byte[] bArr6 = new byte[size2];
                            if (dataInputStream.read(bArr6) != size2) {
                                throw new IOException();
                            }
                            soa = new NSEC(parse3, NSEC.readTypeBitMap(bArr6));
                            break;
                        case 48:
                            short readShort = dataInputStream.readShort();
                            byte readByte3 = dataInputStream.readByte();
                            byte readByte4 = dataInputStream.readByte();
                            byte[] bArr7 = new byte[readUnsignedShort3 - 4];
                            dataInputStream.readFully(bArr7);
                            a = new DNSKEY(readShort, readByte3, readByte4, bArr7);
                            break;
                        default:
                            switch (ordinal) {
                                case 50:
                                    HashMap hashMap = NSEC3.HASH_ALGORITHM_LUT;
                                    byte readByte5 = dataInputStream.readByte();
                                    byte readByte6 = dataInputStream.readByte();
                                    int readUnsignedShort7 = dataInputStream.readUnsignedShort();
                                    int readUnsignedByte = dataInputStream.readUnsignedByte();
                                    byte[] bArr8 = new byte[readUnsignedByte];
                                    if (dataInputStream.read(bArr8) != readUnsignedByte) {
                                        throw new IOException();
                                    }
                                    int readUnsignedByte2 = dataInputStream.readUnsignedByte();
                                    byte[] bArr9 = new byte[readUnsignedByte2];
                                    if (dataInputStream.read(bArr9) != readUnsignedByte2) {
                                        throw new IOException();
                                    }
                                    int i = readUnsignedShort3 - ((readUnsignedByte + 6) + readUnsignedByte2);
                                    byte[] bArr10 = new byte[i];
                                    if (dataInputStream.read(bArr10) != i) {
                                        throw new IOException();
                                    }
                                    data = new NSEC3(readByte5, readByte6, readUnsignedShort7, bArr8, bArr9, NSEC.readTypeBitMap(bArr10));
                                    break;
                                case 51:
                                    byte readByte7 = dataInputStream.readByte();
                                    byte readByte8 = dataInputStream.readByte();
                                    int readUnsignedShort8 = dataInputStream.readUnsignedShort();
                                    int readUnsignedByte3 = dataInputStream.readUnsignedByte();
                                    byte[] bArr11 = new byte[readUnsignedByte3];
                                    if (dataInputStream.read(bArr11) != readUnsignedByte3 && readUnsignedByte3 != 0) {
                                        throw new IOException();
                                    }
                                    a = new NSEC3PARAM(readByte7, readByte8, readUnsignedShort8, bArr11);
                                    break;
                                case 52:
                                    HashMap hashMap2 = TLSA.CERT_USAGE_LUT;
                                    byte readByte9 = dataInputStream.readByte();
                                    byte readByte10 = dataInputStream.readByte();
                                    byte readByte11 = dataInputStream.readByte();
                                    int i2 = readUnsignedShort3 - 3;
                                    byte[] bArr12 = new byte[i2];
                                    if (dataInputStream.read(bArr12) != i2) {
                                        throw new IOException();
                                    }
                                    a = new TLSA(readByte9, readByte10, readByte11, bArr12);
                                    break;
                                default:
                                    data = new UNKNOWN(dataInputStream, readUnsignedShort3);
                                    break;
                            }
                    }
                } else {
                    byte[] bArr13 = new byte[readUnsignedShort3];
                    dataInputStream.readFully(bArr13);
                    a = new TXT(bArr13);
                }
                data = soa;
            } else {
                data = new CNAME(DnsName.parse(dataInputStream, bArr));
            }
            return new Record(parse, type, r3, readUnsignedShort, readUnsignedShort2, data);
        }
        byte[] bArr14 = new byte[4];
        dataInputStream.readFully(bArr14);
        a = new A(bArr14);
        data = a;
        return new Record(parse, type, r3, readUnsignedShort, readUnsignedShort2, data);
    }

    public final Record as(Class cls) {
        Record ifPossibleAs = ifPossibleAs(cls);
        if (ifPossibleAs != null) {
            return ifPossibleAs;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(ImageAnalysis$$ExternalSyntheticLambda3.m("The instance ", String.valueOf(this), " can not be cast to a Record with", String.valueOf(cls)));
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Record)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        Record record = (Record) obj;
        return this.name.equals(record.name) && this.type == record.type && this.clazz == record.clazz && this.payloadData.equals(record.payloadData);
    }

    public final int hashCode() {
        if (this.hashCodeCache == null) {
            this.hashCodeCache = Integer.valueOf(this.payloadData.hashCode() + ((this.clazz.hashCode() + ((this.type.hashCode() + ((this.name.hashCode() + 37) * 37)) * 37)) * 37));
        }
        return this.hashCodeCache.intValue();
    }

    public final Record ifPossibleAs(Class cls) {
        if (this.type.dataClass == cls) {
            return this;
        }
        return null;
    }

    public final boolean isAnswer(Question question) {
        TYPE type = question.type;
        if (type != this.type && type != TYPE.ANY) {
            return false;
        }
        CLASS r0 = question.clazz;
        return (r0 == this.clazz || r0 == CLASS.ANY) && question.name.equals(this.name);
    }

    public final byte[] toByteArray() {
        if (this.bytes == null) {
            int size = this.name.size() + 10;
            Data data = this.payloadData;
            data.setBytes();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(data.bytes.length + size);
            try {
                toOutputStream(new DataOutputStream(byteArrayOutputStream));
                this.bytes = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
                return null;
            }
        }
        return (byte[]) this.bytes.clone();
    }

    public final void toOutputStream(DataOutputStream dataOutputStream) {
        Data data = this.payloadData;
        if (data == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Empty Record has no byte representation");
            return;
        }
        DataOutputStream dataOutputStream2 = new DataOutputStream(dataOutputStream);
        this.name.writeToStream(dataOutputStream2);
        dataOutputStream2.writeShort(this.type.value);
        dataOutputStream2.writeShort(this.clazzValue);
        dataOutputStream2.writeInt((int) this.ttl);
        data.setBytes();
        dataOutputStream2.writeShort(data.bytes.length);
        data.setBytes();
        dataOutputStream2.write(data.bytes);
    }

    public final String toString() {
        String str = this.name.rawAce;
        String valueOf = String.valueOf(this.clazz);
        String valueOf2 = String.valueOf(this.type);
        String valueOf3 = String.valueOf(this.payloadData);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".\t");
        sb.append(this.ttl);
        sb.append("\t");
        Modifier.CC.m(sb, valueOf, "\t", valueOf2, "\t");
        sb.append(valueOf3);
        return sb.toString();
    }

    public Record(DnsName dnsName, TYPE type, int i, long j, Data data) {
        this(dnsName, type, CLASS.NONE, i, j, data);
    }
}
