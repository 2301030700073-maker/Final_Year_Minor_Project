package org.minidns.dnsmessage;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsname.DnsName;
import org.minidns.edns.Edns;
import org.minidns.record.OPT;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DnsMessage {
    public static final Logger LOGGER = Logger.getLogger(DnsMessage.class.getName());
    public final List additionalSection;
    public final List answerSection;
    public long answersMinTtlCache;
    public final boolean authenticData;
    public final boolean authoritativeAnswer;
    public final List authoritySection;
    public byte[] byteCache;
    public final boolean checkingDisabled;
    public Edns edns;
    public transient Integer hashCodeCache;
    public final int id;
    public DnsMessage normalizedVersionCache;
    public final OPCODE opcode;
    public final int optRrPosition;
    public final boolean qr;
    public final List questions;
    public final long receiveTimestamp;
    public final boolean recursionAvailable;
    public final boolean recursionDesired;
    public final RESPONSE_CODE responseCode;
    public String toStringCache;
    public final boolean truncated;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public ArrayList additionalSection;
        public ArrayList answerSection;
        public boolean authenticData;
        public boolean authoritativeAnswer;
        public ArrayList authoritySection;
        public boolean checkingDisabled;
        public Edns.Builder ednsBuilder;
        public int id;
        public OPCODE opcode;
        public boolean query;
        public ArrayList questions;
        public long receiveTimestamp;
        public boolean recursionAvailable;
        public boolean recursionDesired;
        public RESPONSE_CODE responseCode;
        public boolean truncated;

        public final String toString() {
            StringBuilder sb = new StringBuilder("Builder of DnsMessage");
            writeToStringBuilder(sb);
            return sb.toString();
        }

        public final void writeToStringBuilder(StringBuilder sb) {
            sb.append('(');
            sb.append(this.id);
            sb.append(' ');
            sb.append(this.opcode);
            sb.append(' ');
            sb.append(this.responseCode);
            sb.append(' ');
            if (this.query) {
                sb.append("resp[qr=1]");
            } else {
                sb.append("query[qr=0]");
            }
            if (this.authoritativeAnswer) {
                sb.append(" aa");
            }
            if (this.truncated) {
                sb.append(" tr");
            }
            if (this.recursionDesired) {
                sb.append(" rd");
            }
            if (this.recursionAvailable) {
                sb.append(" ra");
            }
            if (this.authenticData) {
                sb.append(" ad");
            }
            if (this.checkingDisabled) {
                sb.append(" cd");
            }
            sb.append(")\n");
            ArrayList arrayList = this.questions;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object obj = (Question) it.next();
                    sb.append("[Q: ");
                    sb.append(obj);
                    sb.append("]\n");
                }
            }
            ArrayList arrayList2 = this.answerSection;
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    Object obj2 = (Record) it2.next();
                    sb.append("[A: ");
                    sb.append(obj2);
                    sb.append("]\n");
                }
            }
            ArrayList arrayList3 = this.authoritySection;
            if (arrayList3 != null) {
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    Object obj3 = (Record) it3.next();
                    sb.append("[N: ");
                    sb.append(obj3);
                    sb.append("]\n");
                }
            }
            ArrayList arrayList4 = this.additionalSection;
            if (arrayList4 != null) {
                Iterator it4 = arrayList4.iterator();
                while (it4.hasNext()) {
                    Record record = (Record) it4.next();
                    sb.append("[X: ");
                    Edns edns = record.type != Record.TYPE.OPT ? null : new Edns(record);
                    if (edns != null) {
                        sb.append(edns.toString());
                    } else {
                        sb.append(record);
                    }
                    sb.append("]\n");
                }
            }
            if (sb.charAt(sb.length() - 1) == '\n') {
                sb.setLength(sb.length() - 1);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum OPCODE {
        QUERY,
        /* JADX INFO: Fake field, exist only in values array */
        INVERSE_QUERY,
        /* JADX INFO: Fake field, exist only in values array */
        STATUS,
        /* JADX INFO: Fake field, exist only in values array */
        UNASSIGNED3,
        /* JADX INFO: Fake field, exist only in values array */
        NOTIFY,
        /* JADX INFO: Fake field, exist only in values array */
        UPDATE;

        public static final OPCODE[] INVERSE_LUT = new OPCODE[values().length];
        public final byte value = (byte) ordinal();

        static {
            for (OPCODE opcode : values()) {
                OPCODE[] opcodeArr = INVERSE_LUT;
                byte b = opcode.value;
                if (opcodeArr[b] != null) {
                    throw new IllegalStateException();
                }
                opcodeArr[b] = opcode;
            }
        }

        OPCODE() {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum RESPONSE_CODE {
        NO_ERROR(0),
        /* JADX INFO: Fake field, exist only in values array */
        FORMAT_ERR(1),
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_FAIL(2),
        /* JADX INFO: Fake field, exist only in values array */
        NX_DOMAIN(3),
        /* JADX INFO: Fake field, exist only in values array */
        NO_IMP(4),
        /* JADX INFO: Fake field, exist only in values array */
        REFUSED(5),
        /* JADX INFO: Fake field, exist only in values array */
        YXDOMAIN(6),
        /* JADX INFO: Fake field, exist only in values array */
        YXRRSET(7),
        /* JADX INFO: Fake field, exist only in values array */
        NXRRSET(8),
        /* JADX INFO: Fake field, exist only in values array */
        NOT_AUTH(9),
        /* JADX INFO: Fake field, exist only in values array */
        NOT_ZONE(10),
        /* JADX INFO: Fake field, exist only in values array */
        BADVERS_BADSIG(16),
        /* JADX INFO: Fake field, exist only in values array */
        BADKEY(17),
        /* JADX INFO: Fake field, exist only in values array */
        BADTIME(18),
        /* JADX INFO: Fake field, exist only in values array */
        BADMODE(19),
        /* JADX INFO: Fake field, exist only in values array */
        BADNAME(20),
        /* JADX INFO: Fake field, exist only in values array */
        BADALG(21),
        /* JADX INFO: Fake field, exist only in values array */
        BADTRUNC(22),
        /* JADX INFO: Fake field, exist only in values array */
        BADCOOKIE(23);

        public static final HashMap INVERSE_LUT = new HashMap(values().length);
        public final byte value;

        static {
            for (RESPONSE_CODE response_code : values()) {
                INVERSE_LUT.put(Integer.valueOf(response_code.value), response_code);
            }
        }

        RESPONSE_CODE(int i) {
            this.value = (byte) i;
        }
    }

    public DnsMessage(Builder builder) {
        this.answersMinTtlCache = -1L;
        this.id = builder.id;
        this.opcode = builder.opcode;
        this.responseCode = builder.responseCode;
        this.receiveTimestamp = builder.receiveTimestamp;
        this.qr = builder.query;
        this.authoritativeAnswer = builder.authoritativeAnswer;
        this.truncated = builder.truncated;
        this.recursionDesired = builder.recursionDesired;
        this.recursionAvailable = builder.recursionAvailable;
        this.authenticData = builder.authenticData;
        this.checkingDisabled = builder.checkingDisabled;
        if (builder.questions == null) {
            this.questions = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = new ArrayList(builder.questions.size());
            arrayList.addAll(builder.questions);
            this.questions = DesugarCollections.unmodifiableList(arrayList);
        }
        if (builder.answerSection == null) {
            this.answerSection = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList2 = new ArrayList(builder.answerSection.size());
            arrayList2.addAll(builder.answerSection);
            this.answerSection = DesugarCollections.unmodifiableList(arrayList2);
        }
        if (builder.authoritySection == null) {
            this.authoritySection = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(builder.authoritySection.size());
            arrayList3.addAll(builder.authoritySection);
            this.authoritySection = DesugarCollections.unmodifiableList(arrayList3);
        }
        ArrayList arrayList4 = builder.additionalSection;
        int i = 0;
        if (arrayList4 == null && builder.ednsBuilder == null) {
            this.additionalSection = Collections.EMPTY_LIST;
        } else {
            int size = arrayList4 != null ? arrayList4.size() : 0;
            ArrayList arrayList5 = new ArrayList(builder.ednsBuilder != null ? size + 1 : size);
            ArrayList arrayList6 = builder.additionalSection;
            if (arrayList6 != null) {
                arrayList5.addAll(arrayList6);
            }
            Edns.Builder builder2 = builder.ednsBuilder;
            if (builder2 != null) {
                Edns edns = new Edns(builder2);
                this.edns = edns;
                if (((Record) edns.optRecord) == null) {
                    edns.optRecord = new Record(DnsName.ROOT, Record.TYPE.OPT, edns.udpPayloadSize, edns.flags, new OPT((List) edns.variablePart));
                }
                arrayList5.add((Record) edns.optRecord);
            }
            this.additionalSection = DesugarCollections.unmodifiableList(arrayList5);
        }
        List list = this.additionalSection;
        while (true) {
            if (i >= list.size()) {
                i = -1;
                break;
            } else if (((Record) list.get(i)).type == Record.TYPE.OPT) {
                break;
            } else {
                i++;
            }
        }
        this.optRrPosition = i;
        if (i != -1) {
            do {
                i++;
                if (i >= this.additionalSection.size()) {
                    return;
                }
            } while (((Record) this.additionalSection.get(i)).type != Record.TYPE.OPT);
            UriKt$$ExternalSyntheticBUOutline0.m("There must be only one OPT pseudo RR in the additional section");
            throw null;
        }
    }

    public final Builder asBuilder() {
        Builder builder = new Builder();
        builder.opcode = OPCODE.QUERY;
        RESPONSE_CODE response_code = RESPONSE_CODE.NO_ERROR;
        builder.id = this.id;
        builder.opcode = this.opcode;
        builder.responseCode = this.responseCode;
        builder.query = this.qr;
        builder.authoritativeAnswer = this.authoritativeAnswer;
        builder.truncated = this.truncated;
        builder.recursionDesired = this.recursionDesired;
        builder.recursionAvailable = this.recursionAvailable;
        builder.authenticData = this.authenticData;
        builder.checkingDisabled = this.checkingDisabled;
        builder.receiveTimestamp = this.receiveTimestamp;
        List list = this.questions;
        ArrayList arrayList = new ArrayList(list.size());
        builder.questions = arrayList;
        arrayList.addAll(list);
        List list2 = this.answerSection;
        ArrayList arrayList2 = new ArrayList(list2.size());
        builder.answerSection = arrayList2;
        arrayList2.addAll(list2);
        List list3 = this.authoritySection;
        ArrayList arrayList3 = new ArrayList(list3.size());
        builder.authoritySection = arrayList3;
        arrayList3.addAll(list3);
        List list4 = this.additionalSection;
        ArrayList arrayList4 = new ArrayList(list4.size());
        builder.additionalSection = arrayList4;
        arrayList4.addAll(list4);
        return builder;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DnsMessage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return Arrays.equals(serialize(), ((DnsMessage) obj).serialize());
    }

    public final ArrayList filterAnswerSectionBy(Class cls) {
        List list = this.answerSection;
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Record ifPossibleAs = ((Record) it.next()).ifPossibleAs(cls);
            if (ifPossibleAs != null) {
                arrayList.add(ifPossibleAs);
            }
        }
        return arrayList;
    }

    public final HashSet getAnswersFor(Question question) {
        if (this.responseCode != RESPONSE_CODE.NO_ERROR) {
            return null;
        }
        List<Record> list = this.answerSection;
        HashSet hashSet = new HashSet(list.size());
        for (Record record : list) {
            if (record.isAnswer(question) && !hashSet.add(record.payloadData)) {
                LOGGER.log(Level.WARNING, ImageAnalysis$$ExternalSyntheticLambda3.m("DnsMessage contains duplicate answers. Record: ", String.valueOf(record), "; DnsMessage: ", String.valueOf(this)));
            }
        }
        return hashSet;
    }

    public final Question getQuestion() {
        return (Question) this.questions.get(0);
    }

    public final int hashCode() {
        if (this.hashCodeCache == null) {
            this.hashCodeCache = Integer.valueOf(Arrays.hashCode(serialize()));
        }
        return this.hashCodeCache.intValue();
    }

    public final byte[] serialize() {
        byte[] bArr = this.byteCache;
        if (bArr != null) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        int i = this.qr ? 32768 : 0;
        OPCODE opcode = this.opcode;
        if (opcode != null) {
            i += opcode.value << 11;
        }
        if (this.authoritativeAnswer) {
            i += 1024;
        }
        if (this.truncated) {
            i += 512;
        }
        if (this.recursionDesired) {
            i += 256;
        }
        if (this.recursionAvailable) {
            i += 128;
        }
        if (this.authenticData) {
            i += 32;
        }
        if (this.checkingDisabled) {
            i += 16;
        }
        RESPONSE_CODE response_code = this.responseCode;
        if (response_code != null) {
            i += response_code.value;
        }
        try {
            dataOutputStream.writeShort((short) this.id);
            dataOutputStream.writeShort((short) i);
            List list = this.questions;
            if (list == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list.size());
            }
            List list2 = this.answerSection;
            if (list2 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list2.size());
            }
            List list3 = this.authoritySection;
            if (list3 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list3.size());
            }
            List list4 = this.additionalSection;
            if (list4 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list4.size());
            }
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    dataOutputStream.write(((Question) it.next()).toByteArray());
                }
            }
            if (list2 != null) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    dataOutputStream.write(((Record) it2.next()).toByteArray());
                }
            }
            if (list3 != null) {
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    dataOutputStream.write(((Record) it3.next()).toByteArray());
                }
            }
            if (list4 != null) {
                Iterator it4 = list4.iterator();
                while (it4.hasNext()) {
                    dataOutputStream.write(((Record) it4.next()).toByteArray());
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.byteCache = byteArray;
            return byteArray;
        } catch (IOException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
            return null;
        }
    }

    public final String toString() {
        String str = this.toStringCache;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder("DnsMessage");
        asBuilder().writeToStringBuilder(sb);
        String sb2 = sb.toString();
        this.toStringCache = sb2;
        return sb2;
    }

    public DnsMessage(byte[] bArr) {
        List list;
        this.answersMinTtlCache = -1L;
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.id = dataInputStream.readUnsignedShort();
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        int i = 0;
        this.qr = ((readUnsignedShort >> 15) & 1) == 1;
        int i2 = (readUnsignedShort >> 11) & 15;
        OPCODE opcode = OPCODE.QUERY;
        if (i2 >= 0 && i2 <= 15) {
            OPCODE[] opcodeArr = OPCODE.INVERSE_LUT;
            this.opcode = i2 >= opcodeArr.length ? null : opcodeArr[i2];
            this.authoritativeAnswer = ((readUnsignedShort >> 10) & 1) == 1;
            this.truncated = ((readUnsignedShort >> 9) & 1) == 1;
            this.recursionDesired = ((readUnsignedShort >> 8) & 1) == 1;
            this.recursionAvailable = ((readUnsignedShort >> 7) & 1) == 1;
            this.authenticData = ((readUnsignedShort >> 5) & 1) == 1;
            this.checkingDisabled = ((readUnsignedShort >> 4) & 1) == 1;
            int i3 = readUnsignedShort & 15;
            RESPONSE_CODE response_code = RESPONSE_CODE.NO_ERROR;
            if (i3 >= 0 && i3 <= 65535) {
                this.responseCode = (RESPONSE_CODE) RESPONSE_CODE.INVERSE_LUT.get(Integer.valueOf(i3));
                this.receiveTimestamp = System.currentTimeMillis();
                int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                int readUnsignedShort3 = dataInputStream.readUnsignedShort();
                int readUnsignedShort4 = dataInputStream.readUnsignedShort();
                int readUnsignedShort5 = dataInputStream.readUnsignedShort();
                this.questions = new ArrayList(readUnsignedShort2);
                for (int i4 = 0; i4 < readUnsignedShort2; i4++) {
                    this.questions.add(new Question(dataInputStream, bArr));
                }
                this.answerSection = new ArrayList(readUnsignedShort3);
                for (int i5 = 0; i5 < readUnsignedShort3; i5++) {
                    this.answerSection.add(Record.parse(dataInputStream, bArr));
                }
                this.authoritySection = new ArrayList(readUnsignedShort4);
                for (int i6 = 0; i6 < readUnsignedShort4; i6++) {
                    this.authoritySection.add(Record.parse(dataInputStream, bArr));
                }
                this.additionalSection = new ArrayList(readUnsignedShort5);
                int i7 = 0;
                while (true) {
                    list = this.additionalSection;
                    if (i7 >= readUnsignedShort5) {
                        break;
                    }
                    list.add(Record.parse(dataInputStream, bArr));
                    i7++;
                }
                while (true) {
                    if (i >= list.size()) {
                        i = -1;
                        break;
                    } else if (((Record) list.get(i)).type == Record.TYPE.OPT) {
                        break;
                    } else {
                        i++;
                    }
                }
                this.optRrPosition = i;
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            throw null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
        throw null;
    }

    public DnsMessage(DnsMessage dnsMessage) {
        this.answersMinTtlCache = -1L;
        this.id = 0;
        this.qr = dnsMessage.qr;
        this.opcode = dnsMessage.opcode;
        this.authoritativeAnswer = dnsMessage.authoritativeAnswer;
        this.truncated = dnsMessage.truncated;
        this.recursionDesired = dnsMessage.recursionDesired;
        this.recursionAvailable = dnsMessage.recursionAvailable;
        this.authenticData = dnsMessage.authenticData;
        this.checkingDisabled = dnsMessage.checkingDisabled;
        this.responseCode = dnsMessage.responseCode;
        this.receiveTimestamp = dnsMessage.receiveTimestamp;
        this.questions = dnsMessage.questions;
        this.answerSection = dnsMessage.answerSection;
        this.authoritySection = dnsMessage.authoritySection;
        this.additionalSection = dnsMessage.additionalSection;
        this.optRrPosition = dnsMessage.optRrPosition;
    }
}
