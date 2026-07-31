package org.mozilla.classfile;

import j$.util.Map;
import java.util.HashMap;
import org.mozilla.classfile.ClassFileWriter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConstantPool {
    public final ClassFileWriter cfw;
    public final HashMap itsStringConstHash = new HashMap();
    public final HashMap itsUtf8Hash = new HashMap();
    public final HashMap itsFieldRefHash = new HashMap();
    public final HashMap itsMethodRefHash = new HashMap();
    public final HashMap itsClassHash = new HashMap();
    public final HashMap itsConstantHash = new HashMap();
    public final HashMap itsConstantData = new HashMap();
    public final HashMap itsPoolTypes = new HashMap();
    public int itsTopIndex = 1;
    public byte[] itsPool = new byte[256];
    public int itsTop = 0;

    public ConstantPool(ClassFileWriter classFileWriter) {
        this.cfw = classFileWriter;
    }

    public static int getUtfEncodingLimit(int i, int i2, String str) {
        int i3 = 65535;
        if ((i2 - i) * 3 > 65535) {
            while (i != i2) {
                char charAt = str.charAt(i);
                i3 = (charAt == 0 || charAt > 127) ? charAt < 2047 ? i3 - 2 : i3 - 3 : i3 - 1;
                if (i3 < 0) {
                    return i;
                }
                i++;
            }
        }
        return i2;
    }

    public final short addClass(String str) {
        String str2;
        HashMap hashMap = this.itsClassHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, str, -1)).intValue();
        if (intValue == -1) {
            if (str.indexOf(46) > 0) {
                int i = ClassFileWriter.MajorVersion;
                String replace = str.replace('.', '/');
                Integer num = (Integer) Map.EL.getOrDefault(hashMap, replace, -1);
                int intValue2 = num.intValue();
                if (intValue2 != -1) {
                    hashMap.put(str, num);
                }
                str2 = replace;
                intValue = intValue2;
            } else {
                str2 = str;
            }
            if (intValue == -1) {
                short addUtf8 = addUtf8(str2);
                ensure(3);
                byte[] bArr = this.itsPool;
                int i2 = this.itsTop;
                int i3 = i2 + 1;
                this.itsTop = i3;
                bArr[i2] = 7;
                this.itsTop = ClassFileWriter.putInt16(bArr, addUtf8, i3);
                intValue = this.itsTopIndex;
                this.itsTopIndex = intValue + 1;
                hashMap.put(str2, Integer.valueOf(intValue));
                if (!str.equals(str2)) {
                    hashMap.put(str, Integer.valueOf(intValue));
                }
            }
        }
        setConstantData(intValue, str);
        this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 7);
        return (short) intValue;
    }

    public final int addConstant(String str) {
        int addUtf8 = addUtf8(str) & 65535;
        Integer valueOf = Integer.valueOf(addUtf8);
        HashMap hashMap = this.itsStringConstHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, valueOf, -1)).intValue();
        if (intValue == -1) {
            intValue = this.itsTopIndex;
            this.itsTopIndex = intValue + 1;
            ensure(3);
            byte[] bArr = this.itsPool;
            int i = this.itsTop;
            int i2 = i + 1;
            this.itsTop = i2;
            bArr[i] = 8;
            this.itsTop = ClassFileWriter.putInt16(bArr, addUtf8, i2);
            hashMap.put(Integer.valueOf(addUtf8), Integer.valueOf(intValue));
        }
        this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 8);
        return intValue;
    }

    public final short addFieldRef(String str, String str2, String str3) {
        FieldOrMethodRef fieldOrMethodRef = new FieldOrMethodRef(str, str2, str3);
        HashMap hashMap = this.itsFieldRefHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, fieldOrMethodRef, -1)).intValue();
        if (intValue == -1) {
            short addNameAndType = addNameAndType(str2, str3);
            short addClass = addClass(str);
            ensure(5);
            byte[] bArr = this.itsPool;
            int i = this.itsTop;
            int i2 = i + 1;
            this.itsTop = i2;
            bArr[i] = 9;
            int putInt16 = ClassFileWriter.putInt16(bArr, addClass, i2);
            this.itsTop = putInt16;
            this.itsTop = ClassFileWriter.putInt16(this.itsPool, addNameAndType, putInt16);
            intValue = this.itsTopIndex;
            this.itsTopIndex = intValue + 1;
            hashMap.put(fieldOrMethodRef, Integer.valueOf(intValue));
        }
        setConstantData(intValue, fieldOrMethodRef);
        this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 9);
        return (short) intValue;
    }

    public final short addInvokeDynamic(String str, int i, String str2) {
        ConstantEntry constantEntry = new ConstantEntry();
        constantEntry.intval = i;
        constantEntry.str1 = str;
        constantEntry.str2 = str2;
        constantEntry.hashcode = ((str2.hashCode() * str.hashCode()) + i) ^ 18;
        HashMap hashMap = this.itsConstantHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, constantEntry, -1)).intValue();
        if (intValue == -1) {
            short addNameAndType = addNameAndType(str, str2);
            ensure(5);
            byte[] bArr = this.itsPool;
            int i2 = this.itsTop;
            int i3 = i2 + 1;
            this.itsTop = i3;
            bArr[i2] = 18;
            int putInt16 = ClassFileWriter.putInt16(bArr, i, i3);
            this.itsTop = putInt16;
            this.itsTop = ClassFileWriter.putInt16(this.itsPool, addNameAndType, putInt16);
            intValue = this.itsTopIndex;
            this.itsTopIndex = intValue + 1;
            hashMap.put(constantEntry, Integer.valueOf(intValue));
            setConstantData(intValue, str2);
            this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 18);
        }
        return (short) intValue;
    }

    public final short addMethodHandle(ClassFileWriter.MHandle mHandle) {
        HashMap hashMap = this.itsConstantHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, mHandle, -1)).intValue();
        if (intValue == -1) {
            mHandle.getClass();
            short addMethodRef = addMethodRef("org.mozilla.javascript.optimizer.Bootstrapper", "bootstrap", "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;");
            ensure(4);
            byte[] bArr = this.itsPool;
            int i = this.itsTop;
            int i2 = i + 1;
            this.itsTop = i2;
            bArr[i] = 15;
            int i3 = i + 2;
            this.itsTop = i3;
            bArr[i2] = 6;
            this.itsTop = ClassFileWriter.putInt16(bArr, addMethodRef, i3);
            intValue = this.itsTopIndex;
            this.itsTopIndex = intValue + 1;
            hashMap.put(mHandle, Integer.valueOf(intValue));
            this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 15);
        }
        return (short) intValue;
    }

    public final short addMethodRef(String str, String str2, String str3) {
        FieldOrMethodRef fieldOrMethodRef = new FieldOrMethodRef(str, str2, str3);
        HashMap hashMap = this.itsMethodRefHash;
        int intValue = ((Integer) Map.EL.getOrDefault(hashMap, fieldOrMethodRef, -1)).intValue();
        if (intValue == -1) {
            short addNameAndType = addNameAndType(str2, str3);
            short addClass = addClass(str);
            ensure(5);
            byte[] bArr = this.itsPool;
            int i = this.itsTop;
            int i2 = i + 1;
            this.itsTop = i2;
            bArr[i] = 10;
            int putInt16 = ClassFileWriter.putInt16(bArr, addClass, i2);
            this.itsTop = putInt16;
            this.itsTop = ClassFileWriter.putInt16(this.itsPool, addNameAndType, putInt16);
            intValue = this.itsTopIndex;
            this.itsTopIndex = intValue + 1;
            hashMap.put(fieldOrMethodRef, Integer.valueOf(intValue));
        }
        setConstantData(intValue, fieldOrMethodRef);
        this.itsPoolTypes.put(Integer.valueOf(intValue), (byte) 10);
        return (short) intValue;
    }

    public final short addNameAndType(String str, String str2) {
        short addUtf8 = addUtf8(str);
        short addUtf82 = addUtf8(str2);
        ensure(5);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        int i2 = i + 1;
        this.itsTop = i2;
        bArr[i] = 12;
        int putInt16 = ClassFileWriter.putInt16(bArr, addUtf8, i2);
        this.itsTop = putInt16;
        this.itsTop = ClassFileWriter.putInt16(this.itsPool, addUtf82, putInt16);
        this.itsPoolTypes.put(Integer.valueOf(this.itsTopIndex), (byte) 12);
        int i3 = this.itsTopIndex;
        this.itsTopIndex = i3 + 1;
        return (short) i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short addUtf8(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ConstantPool.addUtf8(java.lang.String):short");
    }

    public final void ensure(int i) {
        int i2 = this.itsTop;
        int i3 = i2 + i;
        byte[] bArr = this.itsPool;
        if (i3 > bArr.length) {
            int length = bArr.length * 2;
            if (i2 + i > length) {
                length = i2 + i;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.itsPool = bArr2;
        }
    }

    public final Object getConstantData(int i) {
        return this.itsConstantData.get(Integer.valueOf(i));
    }

    public final byte getConstantType(int i) {
        return ((Byte) Map.EL.getOrDefault(this.itsPoolTypes, Integer.valueOf(i), (byte) 0)).byteValue();
    }

    public final void setConstantData(int i, Object obj) {
        this.itsConstantData.put(Integer.valueOf(i), obj);
    }

    public final int addConstant(long j) {
        ensure(9);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        int i2 = i + 1;
        this.itsTop = i2;
        bArr[i] = 5;
        this.itsTop = ClassFileWriter.putInt32(bArr, (int) j, ClassFileWriter.putInt32(bArr, (int) (j >>> 32), i2));
        int i3 = this.itsTopIndex;
        this.itsTopIndex = i3 + 2;
        this.itsPoolTypes.put(Integer.valueOf(i3), (byte) 5);
        return i3;
    }

    public final int addConstant(double d) {
        ensure(9);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = 6;
        long doubleToLongBits = Double.doubleToLongBits(d);
        byte[] bArr2 = this.itsPool;
        int i2 = (int) (doubleToLongBits >>> 32);
        this.itsTop = ClassFileWriter.putInt32(bArr2, (int) doubleToLongBits, ClassFileWriter.putInt32(bArr2, i2, this.itsTop));
        int i3 = this.itsTopIndex;
        this.itsTopIndex = i3 + 2;
        this.itsPoolTypes.put(Integer.valueOf(i3), (byte) 6);
        return i3;
    }

    public final int addConstant(int i) {
        ensure(5);
        byte[] bArr = this.itsPool;
        int i2 = this.itsTop;
        int i3 = i2 + 1;
        this.itsTop = i3;
        bArr[i2] = 3;
        this.itsTop = ClassFileWriter.putInt32(bArr, i, i3);
        this.itsPoolTypes.put(Integer.valueOf(this.itsTopIndex), (byte) 3);
        int i4 = this.itsTopIndex;
        this.itsTopIndex = i4 + 1;
        return (short) i4;
    }
}
