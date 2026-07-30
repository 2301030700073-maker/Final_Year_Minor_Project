package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;

/* loaded from: classes.dex */
class DefaultMapStorage extends PhonePrefixMapStorageStrategy {
    private String[] descriptions;
    private int[] phoneNumberPrefixes;

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public int getPrefix(int i) {
        return this.phoneNumberPrefixes[i];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public String getDescription(int i) {
        return this.descriptions[i];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        this.numOfEntries = readInt;
        int[] iArr = this.phoneNumberPrefixes;
        if (iArr == null || iArr.length < readInt) {
            this.phoneNumberPrefixes = new int[this.numOfEntries];
        }
        String[] strArr = this.descriptions;
        if (strArr == null || strArr.length < this.numOfEntries) {
            this.descriptions = new String[this.numOfEntries];
        }
        for (int i = 0; i < this.numOfEntries; i++) {
            this.phoneNumberPrefixes[i] = objectInput.readInt();
            this.descriptions[i] = objectInput.readUTF();
        }
        int readInt2 = objectInput.readInt();
        this.possibleLengths.clear();
        for (int i2 = 0; i2 < readInt2; i2++) {
            this.possibleLengths.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.numOfEntries);
        for (int i = 0; i < this.numOfEntries; i++) {
            objectOutput.writeInt(this.phoneNumberPrefixes[i]);
            objectOutput.writeUTF(this.descriptions[i]);
        }
        objectOutput.writeInt(this.possibleLengths.size());
        Iterator<Integer> it = this.possibleLengths.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
    }
}
