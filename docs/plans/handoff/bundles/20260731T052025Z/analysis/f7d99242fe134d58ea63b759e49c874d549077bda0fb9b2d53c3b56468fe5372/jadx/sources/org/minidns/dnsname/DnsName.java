package org.minidns.dnsname;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.Serializable;
import java.net.IDN;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnslabel.DnsLabel;
import org.minidns.util.SafeCharSequence;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DnsName extends SafeCharSequence implements Serializable, Comparable {
    public static final DnsName ROOT = new DnsName(".", true);
    public static final boolean VALIDATE;
    public final String ace;
    public transient byte[] bytes;
    public transient int hashCode;
    public transient String hostpart;
    public transient DnsLabel[] labels;
    public final String rawAce;
    public transient DnsLabel[] rawLabels;
    public transient String safeToStringRepresentation;
    public int size = -1;

    static {
        new DnsName("in-addr.arpa", true);
        new DnsName("ip6.arpa", true);
        VALIDATE = true;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], java.io.Serializable] */
    public DnsName(String str, boolean z) {
        boolean isEmpty = str.isEmpty();
        DnsName dnsName = ROOT;
        if (isEmpty) {
            this.rawAce = dnsName.rawAce;
        } else {
            int length = str.length();
            int i = length - 1;
            if (length >= 2 && str.charAt(i) == '.') {
                str = str.subSequence(0, i).toString();
            }
            if (z) {
                this.rawAce = str;
            } else {
                this.rawAce = dnsName.ace.equals(str) ? dnsName.ace : IDN.toASCII(str);
            }
        }
        String lowerCase = this.rawAce.toLowerCase(Locale.US);
        this.ace = lowerCase;
        if (VALIDATE) {
            setBytesIfRequired$1();
            ?? r4 = this.bytes;
            if (r4.length > 255) {
                throw new InvalidDnsNameException$LabelTooLongException(1, r4, lowerCase);
            }
        }
    }

    public static DnsName from(DnsName dnsName, DnsName dnsName2) {
        dnsName.setLabelsIfRequired();
        dnsName2.setLabelsIfRequired();
        int length = dnsName.rawLabels.length;
        DnsLabel[] dnsLabelArr = dnsName2.rawLabels;
        DnsLabel[] dnsLabelArr2 = new DnsLabel[length + dnsLabelArr.length];
        System.arraycopy(dnsLabelArr, 0, dnsLabelArr2, 0, dnsLabelArr.length);
        DnsLabel[] dnsLabelArr3 = dnsName.rawLabels;
        System.arraycopy(dnsLabelArr3, 0, dnsLabelArr2, dnsName2.rawLabels.length, dnsLabelArr3.length);
        return new DnsName(dnsLabelArr2, true);
    }

    public static DnsLabel[] getLabels(String str) {
        String[] split = str.split("[.。．｡]", 128);
        for (int i = 0; i < split.length / 2; i++) {
            String str2 = split[i];
            int length = (split.length - i) - 1;
            split[i] = split[length];
            split[length] = str2;
        }
        try {
            DnsLabel dnsLabel = DnsLabel.WILDCARD_LABEL;
            DnsLabel[] dnsLabelArr = new DnsLabel[split.length];
            for (int i2 = 0; i2 < split.length; i2++) {
                dnsLabelArr[i2] = DnsLabel.from(split[i2]);
            }
            return dnsLabelArr;
        } catch (DnsLabel.LabelToLongException e) {
            throw new InvalidDnsNameException$LabelTooLongException(0, e.label, str);
        }
    }

    public static String labelsToString(DnsLabel[] dnsLabelArr, int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int length = dnsLabelArr.length - 1; length >= 0; length--) {
            sb.append((CharSequence) dnsLabelArr[length]);
            sb.append('.');
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    public static DnsName parse(byte[] bArr, int i, HashSet hashSet) {
        int i2 = bArr[i];
        int i3 = i2 & 255;
        if ((i2 & 192) != 192) {
            if (i3 == 0) {
                return ROOT;
            }
            int i4 = i + 1;
            return from(new DnsName(new String(bArr, i4, i3, StandardCharsets.US_ASCII), true), parse(bArr, i4 + i3, hashSet));
        }
        int i5 = ((i2 & 63) << 8) + (bArr[i + 1] & 255);
        if (hashSet.contains(Integer.valueOf(i5))) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cyclic offsets detected.");
            return null;
        }
        hashSet.add(Integer.valueOf(i5));
        return parse(bArr, i5, hashSet);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.ace.compareTo(((DnsName) obj).ace);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof DnsName)) {
            return false;
        }
        DnsName dnsName = (DnsName) obj;
        setBytesIfRequired$1();
        dnsName.setBytesIfRequired$1();
        return Arrays.equals(this.bytes, dnsName.bytes);
    }

    public final int getLabelCount() {
        setLabelsIfRequired();
        return this.labels.length;
    }

    public final int hashCode() {
        if (this.hashCode == 0 && !isRootLabel()) {
            setBytesIfRequired$1();
            this.hashCode = Arrays.hashCode(this.bytes);
        }
        return this.hashCode;
    }

    public final boolean isChildOf(DnsName dnsName) {
        setLabelsIfRequired();
        dnsName.setLabelsIfRequired();
        if (this.labels.length < dnsName.labels.length) {
            return false;
        }
        int i = 0;
        while (true) {
            DnsLabel[] dnsLabelArr = dnsName.labels;
            if (i >= dnsLabelArr.length) {
                return true;
            }
            if (!this.labels[i].equals(dnsLabelArr[i])) {
                return false;
            }
            i++;
        }
    }

    public final boolean isRootLabel() {
        String str = this.ace;
        return str.isEmpty() || str.equals(".");
    }

    public final void setBytesIfRequired$1() {
        if (this.bytes != null) {
            return;
        }
        setLabelsIfRequired();
        DnsLabel[] dnsLabelArr = this.labels;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        int length = dnsLabelArr.length;
        while (true) {
            length--;
            if (length < 0) {
                byteArrayOutputStream.write(0);
                this.bytes = byteArrayOutputStream.toByteArray();
                return;
            }
            DnsLabel dnsLabel = dnsLabelArr[length];
            if (dnsLabel.byteCache == null) {
                dnsLabel.byteCache = dnsLabel.label.getBytes(StandardCharsets.US_ASCII);
            }
            byteArrayOutputStream.write(dnsLabel.byteCache.length);
            byte[] bArr = dnsLabel.byteCache;
            byteArrayOutputStream.write(bArr, 0, bArr.length);
        }
    }

    public final void setLabelsIfRequired() {
        if (this.labels == null || this.rawLabels == null) {
            if (!isRootLabel()) {
                this.labels = getLabels(this.ace);
                this.rawLabels = getLabels(this.rawAce);
            } else {
                DnsLabel[] dnsLabelArr = new DnsLabel[0];
                this.labels = dnsLabelArr;
                this.rawLabels = dnsLabelArr;
            }
        }
    }

    public final int size() {
        if (this.size < 0) {
            if (isRootLabel()) {
                this.size = 1;
            } else {
                this.size = this.ace.length() + 2;
            }
        }
        return this.size;
    }

    public final DnsName stripToLabels(int i) {
        setLabelsIfRequired();
        DnsLabel[] dnsLabelArr = this.labels;
        if (i <= dnsLabelArr.length) {
            return i == dnsLabelArr.length ? this : i == 0 ? ROOT : new DnsName((DnsLabel[]) Arrays.copyOfRange(this.rawLabels, 0, i), false);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
        return null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        if (this.safeToStringRepresentation == null) {
            setLabelsIfRequired();
            if (this.labels.length == 0) {
                return ".";
            }
            StringBuilder sb = new StringBuilder();
            for (int length = this.labels.length - 1; length >= 0; length--) {
                sb.append(this.labels[length].toString());
                if (length != 0) {
                    sb.append('.');
                }
            }
            this.safeToStringRepresentation = sb.toString();
        }
        return this.safeToStringRepresentation;
    }

    public final void writeToStream(DataOutputStream dataOutputStream) {
        setBytesIfRequired$1();
        dataOutputStream.write(this.bytes);
    }

    public static DnsName from(String str) {
        return new DnsName(str, false);
    }

    public static DnsName parse(DataInputStream dataInputStream, byte[] bArr) {
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if ((readUnsignedByte & 192) == 192) {
            int readUnsignedByte2 = dataInputStream.readUnsignedByte() + ((readUnsignedByte & 63) << 8);
            HashSet hashSet = new HashSet();
            hashSet.add(Integer.valueOf(readUnsignedByte2));
            return parse(bArr, readUnsignedByte2, hashSet);
        }
        if (readUnsignedByte == 0) {
            return ROOT;
        }
        byte[] bArr2 = new byte[readUnsignedByte];
        dataInputStream.readFully(bArr2);
        return from(new DnsName(new String(bArr2, StandardCharsets.US_ASCII), true), parse(dataInputStream, bArr));
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], java.io.Serializable] */
    public DnsName(DnsLabel[] dnsLabelArr, boolean z) {
        this.rawLabels = dnsLabelArr;
        this.labels = new DnsLabel[dnsLabelArr.length];
        int i = 0;
        for (int i2 = 0; i2 < dnsLabelArr.length; i2++) {
            i += dnsLabelArr[i2].length() + 1;
            this.labels[i2] = dnsLabelArr[i2].asLowercaseVariant();
        }
        this.rawAce = labelsToString(dnsLabelArr, i);
        String labelsToString = labelsToString(this.labels, i);
        this.ace = labelsToString;
        if (z && VALIDATE) {
            setBytesIfRequired$1();
            ?? r4 = this.bytes;
            if (r4.length > 255) {
                throw new InvalidDnsNameException$LabelTooLongException(1, r4, labelsToString);
            }
        }
    }
}
